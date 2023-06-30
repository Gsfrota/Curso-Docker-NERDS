
#Administração de cotainers 

#obtendo informações a respeito de um container 

#primeiro vamos criar um container teste
    docker run -d --name meu_container nginx

#Estressando o Contêiner

#Agora, vamos estressar o contêiner para gerar algum uso de 
#CPU. Para isso, podemos utilizar a ferramenta "stress".
    docker exec -it meu_container bash

#Uma vez dentro do contêiner, execute o seguinte comando para 
#instalar o "stress":
    apt-get update
    apt-get install stress #instalando a ferramenta de stress

#Agora, execute o seguinte comando para estressar a CPU dentro do contêiner:
    stress --cpu 2 --timeout 60s

#Isso irá estressar a CPU do contêiner com 2 threads durante 60 segundos.

#Passo 3: Obtendo Informações sobre o Uso de CPU
#Agora que temos o contêiner em execução e estressado, vamos obter informações sobre o uso de CPU dele.
    docker stats meu_container

#Esse comando irá exibir informações em tempo real sobre o uso de CPU, memória, entre outros recursos do contêiner.

#Passo 4: Limitando o Uso de CPU do Contêiner
#Por fim, vamos limitar o uso de CPU do contêiner para controlá-lo.
    docker update --cpus 0.5 meu_container
#Esse comando irá limitar o contêiner "meu_container" a utilizar no máximo 50% da CPU do sistema.


#Criando o container no cenário
    docker run containerDB