#Interagindo com containers

#criando um diretório dentro do nosso container usando o comando docker exec

#Para contêineres baseados em sistemas Linux, utilize o comando mkdir para criar o diretório:
    docker exec <ID ou nome do contêiner> mkdir <caminho do diretório dentro do contêiner>

#Por exemplo, para criar o diretório "/app" dentro do contêiner com ID "abcd1234":
    docker exec abcd1234 mkdir /app

#Para listar os diretórios dentro de um container, você pode usar o comando ls ou dir, dependendo do sistema operacional do container.
    docker exec <ID ou nome do contêiner> ls <caminho do diretório>

#Por exemplo, para listar os diretórios no diretório raiz ("/") de um contêiner com ID "abcd1234":
    docker exec abcd1234 ls /


#Utilizando o Comando "docker cp" para Copiar Arquivos de/para um Container

#Obtenha o ID ou nome do contêiner. Use o comando docker ps para listar os contêineres em execução e obter essa informação.

#Para copiar um arquivo do host para o container:

#Execute o comando "docker cp" seguido do caminho do arquivo no host e do ID ou nome do contêiner, invertendo a ordem dos argumentos:
    docker cp <caminho do arquivo no host> <ID ou nome do contêiner>:<caminho de destino dentro do contêiner>

#Por exemplo, para copiar o arquivo "dados.txt" da pasta "/home/usuario" no host para o contêiner com ID "abcd1234"
#e colocá-lo no diretório "/app":
    docker cp /home/usuario/dados.txt abcd1234:/app

#Execute o comando "docker cp" seguido do ID ou nome do contêiner e do caminho do arquivo dentro do contêiner
    docker cp <ID ou nome do contêiner>:<caminho do arquivo dentro do contêiner> <caminho de destino no host>

#Por exemplo, para copiar o arquivo "dados.txt" do contêiner com ID "abcd1234" para a pasta "/home/usuario" no host:
    docker cp abcd1234:/app/dados.txt /home/usuario
#O arquivo será copiado para o caminho de destino especificado dono host.

#Agora vamos abrir o nosso arquivo.txt que está dentro do container 
    docker exec -it <nome_do_container> cat /local/do/arquivo 
