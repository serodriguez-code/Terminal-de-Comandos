# generated by Git for Windows
test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc

# Mensaje de bienvenida de la consola
echo "                         Welcome to Git bash console";
echo "-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-,------,";
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~|   /\_/\ ";
echo "-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-|__( o .o)";
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ''   ''";
echo "";
ls -d */ 2>/dev/null || ls; # Si el comando " ls -d */ " falla el " 2>/dev/null impide que se imprima el mensaje de error " 
                            # La " || " indica que en caso de error se ejecuta lo siguiente.
echo "";

# Alias---------------------------------------------------------------------------------------------------------------------

    alias arbol="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"   
        # Crea un árbol de subdirectorios y archivos 

    alias escritorio="cdd /c/Users/sergi/desktop"
        # Mueve la consola al escritorio

    alias repositorios="cdd /c/Users/sergi/Repositorios"
        # Mueve la consola a la carpeta de los repositorios

    alias comandos="less /c/Users/sergi/Repositorios/Terminal\ de\ Comandos/Bash\ Español.txt"
        # Muestra un less de la lista de comandos de bash en español
    
    alias gitBash="cp /c/Users/sergi/.bash_profile /c/Users/sergi/Repositorios/Terminal\ de\ Comandos/.bash_profile"
        # copia el contenido de este fichero a un repositorio para conservar la información en Github
        gitBash # Ejecución del comando para que actualice el archivo cada vez que se entre en consola

    # Páginas en alias----------------------------------------------------------------------------------------------------------

        alias github="start https://github.com/serodriguez-code?tab=repositories"
            # Abre el navegador en la página de repositorios de GitHub

        alias evagd="start https://www3.gobiernodecanarias.org/medusa/evagd/laguna/my/"
            # Abre el navegador en la página de EvaGD

        alias gmail="start https://mail.google.com/mail/u/0/#inbox"
            # Abre el navegador en la página de Gmail

        alias twitter="start https://twitter.com/" 
            # Abre el navegador en la página de twitter

        alias platzi="start https://platzi.com/clases/"
            # Abre el navegador en la página de Platzi
        

# Functions-----------------------------------------------------------------------------------------------------------------

    function remindMe (){ 
        echo ""
        echo "  -ccd/cdd:       Mueve la consola a la carpeta indicada y ejecuta un ls"
        echo "  -arbol:         Crea un árbol de subdirectorios y archivos"
        echo "  -escritorio:    Mueve la consola al escritorio"
        echo "  -repositorios:  Mueve la consola a la carpeta de los repositorios"
        echo "  -comandos:      Muestra un less de la lista de comandos de bash en español"
        echo "  -gitBash:       Copia el contenido de este fichero a un repositorio para conservar la información en Github"
    }                       # Imprime en la consola una lista de los alias creados con una pequeña explicación

    function paginas (){
        echo ""
        echo "  -github"
        echo "  -evagd"
        echo "  -gmail"
        echo "  -twitter"
        echo "  -platzi"
    }                       #Imprime en la consola una lista de las páginas web anexadas a un alias

    function ccd () {   
        cd "$@" && ls
    }                       # Hace un cd y muestra un ls

    function cdd () {
        cd "$@" && ls
    }                       # Hace un cd y muestra un ls

    function commitTerminal() {
        cd /c/Users/sergi/Repositorios/Terminal\ de\ Comandos && git add . && git commit -am "commit automático" && git push origin master
    }                       # Funcionara?