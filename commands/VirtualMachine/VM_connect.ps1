"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"

################################################################
"GENERATE SCRIPTS TO CONNECT TO THE VM AND DEPLOY THE APP :"

#copy a basic Flask app from local machine to the VM
scp -r ./${application_path} ${AdminUsername}@${IP}:/home/${AdminUsername}

"NOW GO AND DEPLOY THE APP" 
ssh ${AdminUsername}@${IP}