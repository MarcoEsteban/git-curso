#####################################################################################################
#                               Comandos Git - Algoritmo de Uso                                     #
#####################################################################################################
[*] Inicializamos un proyecto en Git:
  > git init

[*] Visualizamos como esta actualmente nuestro repositorio de Git:
  > git status

[*] Una ves Visualizado lo que tenemos, le indicamos que pase de nuestro 'Word Directory' a 'Staging Area':
  > git add name_file 

[*] Una vez agregado al 'Staging Area', podemos hacer un commit para agregar al 'Local Repository':
  > git commit -m "Aqui entre las comillas agregamos una descripcion del commit."

[*] En caso de que nos de un error de la configuracion global realizamos los siguiente:
  > git config --global user.email "ejemplo@gmail.com"
  > git config --global user.name "Your Name"

[*] Pava visualizar los commit realizados con su descripcion:
  > git log
  > git log --oneline   #Indico que me lo muestre todo en una sola linea.

[*] Si tenemos variaos commit realizados y queremos volver a un commit o version anterior:
  > git checkout codigo_commit_anterior(rama o branch) ó (master)

[*] Si queremos borrar un commit porque creemos que esta mal escrito o algo:
  > git reset codigo_commit

[*] En el caso que borramos un archivo y lo guardamos en el 'Local Repository' lo podemos recuperar:
  > git restore name_file


#####################################################################################################
#                               Rama en Git                                                         #
#####################################################################################################
[*] Para visualizar las ramas(branch) que tenemos:
  > git branch

[*] Sirve para crear una rama.
  > git checkout -b name_branch   

[*] Subiendo mi rama a Github, la rama en Github es independiente de la rama master:
  > git push -u origin name_branch 

#####################################################################################################
#                          Pull Request en Github                                                   #
#####################################################################################################
[*] Una ves que  hicimos un Merge Pull Request en Github, es decir de haber unidos las ramas podemos
    descargar el Merge Pull Request:
  > git pull

#####################################################################################################
#                          Mesclando Ramas Localmente con merge                                     #
#####################################################################################################
[*] Una vez que tenemos modificados nuestras ramas, podemos unir nuestras ramas Localmente, sin afectar la rama master:
  > git merge name_branch

#####################################################################################################
#                               Subiendo mi Proyecto a Github                                       #
#####################################################################################################
[*] Cuando creas un proyecto en Github, el programa te genera un documento con los comando a seguir que Puedes subir tanto mediante 'HTTPS' ó 'SSH':
  ######################################################################################
  #                     Subiendo desde linea de comando con SSH                        #
  ######################################################################################
  Pasos a Seguir o Algoritmo:
    [*] Paso 1: Indicamos el Servidor remoto al que vamos a subir:
      > git remote add origin git@github.com:repositorio/Curso-Git.git
      > git remote -v   #Indicamos que nos muestre el repositorio remoto al que estamos subiendo. (fetch = Bajar) & (push = Subir)

    [*] Paso 2: Es opcional es para indicarle que queremos cambiar el nombre de la 'rama=branch':
      > git branch -M main

    [*] Paso 3: Generar el codigo 'SSH' o 'SSH keys'
      > ssh-keygen -t ed25519 -C "Your_Correo@gmail"
      Opcional:
        > rm-rf /home/username/.ssh      #Elimina la clave ssh generadas.

    [*] Paso 4: Hacer un push de nuestra rama master:
      > git push -u origin master

    [*] Si queremos descargar o clonar un repositorio de Github ya sea por 'HTTPS' ó 'SSH'
      > git clone git@github.com:repositorio/curso-git.git             #Descargando Repository mediante SSH.
      > git clone https://github.com/repositorio/curso-git.git         #Descargando Repository mediante HTTPS.
  
