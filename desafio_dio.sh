#!/bin/bash

echo "Criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios"

useradd carlos -c "Carlos" -s /bin/bash -m
echo 'carlos:Senha123' | chpasswd
useradd maria -c "Maria" -s /bin/bash -m
echo 'maria:Senha123' | chpasswd
useradd joao -c "Joao" -s /bin/bash -m
echo 'joao:Senha123' | chpasswd

useradd debora -c "Debora" -s /bin/bash -m
echo 'debora:Senha123' | chpasswd
useradd sebastiana -c "Sebastiana" -s /bin/bash -m
echo 'sebastiana:Senha123' | chpasswd
useradd roberto -c "Roberto" -s /bin/bash -m
echo 'roberto:Senha123' | chpasswd

useradd josefina -c "Josefina" -s /bin/bash -m
echo 'josefina:Senha123' | chpasswd
useradd amanda -c "Amanda" -s /bin/bash -m
echo 'amanda:Senha123' | chpasswd
useradd rogerio -c "Rogerio" -s /bin/bash -m
echo 'rogerio:Senha123' | chpasswd

echo "Adicionando aos grupos"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "Selecionando permissoes dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado"
