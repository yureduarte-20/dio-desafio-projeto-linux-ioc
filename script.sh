#!/bin/bash
mkdir /publico
mkdir /adm 
mkdir /ven 
mkdir /sec 
echo "criado grupos"
groupadd GPR_ADM
groupadd GPR_VEN
groupadd GPR_SEC
echo "criando usuários"
#admins
useradd carlos -c "Carlos" -m -p $(openssl passwd -crypt Senha123) -g GPR_ADM
useradd maria -c "Maria" -m -p $(openssl passwd -crypt Senha123) -g GPR_ADM
useradd joao_ -c "Joao" -m -p $(openssl passwd -crypt Senha123) -g GPR_ADM
#ven
useradd debora -c "Débora" -m -p $(openssl passwd -crypt Senha123) -g GPR_VEN
useradd sebastiana -c "Sebastiana" -m -p $(openssl passwd -crypt Senha123) -g GPR_VEN
useradd roberto -c "Roberto" -m -p $(openssl passwd -crypt Senha123) -g GPR_VEN
#sec
useradd josefina -c "Josefina" -m -p $(openssl passwd -crypt Senha123) -g GPR_SEC
useradd amanda -c "Amanda" -m -p $(openssl passwd -crypt Senha123) -g GPR_SEC
useradd rogerio -c "Rogerio" -m -p $(openssl passwd -crypt Senha123) -g GPR_SEC

echo "mudando dono das pastas"
chown root:GPR_ADM /adm -r
chown root:GPR_VEN /ven -r
chown root:GPR_SEC /sec -r

echo "mudando permissão das pastas"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico