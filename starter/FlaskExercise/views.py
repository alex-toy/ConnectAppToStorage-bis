from flask import render_template, redirect, request
from FlaskExercise import app, db
from FlaskExercise.forms import AnimalForm
import FlaskExercise.models as models
import pyodbc
import config as cfg
import FlaskExercise.queries.animal as query

imageSourceUrl = f"https://{app.config['BLOB_ACCOUNT']}.blob.core.windows.net/{app.config['BLOB_CONTAINER']}"

@app.route('/')
@app.route('/home')
def home():
    return render_template('home.html')


@app.route('/animal')
def animals():
    # animals = models.Animal.query.all()
    animals = query.getAll();
    print(animals)
    return render_template(
        'index.html',
        imageSource=imageSourceUrl,
        animals=animals
    )


@app.route('/animal/<int:id>', methods=['GET', 'POST'])
def animal(id):
    # animal = models.Animal.query.get(int(id))
    animal = query.get(int(id));
    form = AnimalForm(formdata=request.form, obj=animal)
    if form.validate_on_submit():
        _file = request.files['image_path']
        query.store_image(_file, id)
        return redirect('/')
    return render_template(
        'animal.html',
        imageSource=imageSourceUrl,
        form=form,
        animal=animal
    )
