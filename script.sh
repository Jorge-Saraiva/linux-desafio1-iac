#!/bin/bash

echo "Criando Diretórios"

cd /

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Criando Grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando Usuários e Adicionando aos seus Respectivos Grupos"

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Débora" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogério" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Atribuindo Permissões dos Diretórios"

chown root:GRP_ADM /adm/
chown root:GRP_SEC /sec/
chown root:GRP_VEN /ven/

chmod 770 /adm/
chmod 770 /sec/
chmod 770 /ven/

echo "Atribuindo Permissão total para o diretório Publico"

chmod 777 /publico/

echo "Script finalizado!"
