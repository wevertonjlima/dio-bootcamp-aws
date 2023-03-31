# -----------------------------------------------------------------------------
# Desafio de projeto
# Infraestrutura como Código: 
# Script in Shell linux para Criação de Estrutura de Diretórios,
# Grupos/Usuários e Permissões
#
# by Weverton lima <wevertonjlima@gmail.com>
# v1.0 / 2023-03-02
# -----------------------------------------------------------------------------
#


# 1) Manipulando Pastas: 
# #############################################################################

echo " "
echo " "
echo " >>> 1a FASE: DIRETORIOS <<< "
echo " "
echo " "
sleep 3

#
# ---------------------------
# 1.1 - Ecluindo Pastas
# ---------------------------
echo "Excluindo Pastas... se houver!"
sleep 1
echo " "

rm -rf /Publico
rm -rf /Adm
rm -rf /Ven
rm -rf /Sec


# ---------------------------
# 1.2 - Criando Pastas
# ---------------------------
echo "Criando Pastas... "
sleep 1
echo " "

mkdir /Publico
mkdir /Adm
mkdir /Ven
mkdir /Sec



# 2) Manipulando Usuarios e Grupos.
# #############################################################################

echo " "
echo " "
echo " >>> 2a FASE: USUARIOS & GRUPOS <<< "
echo " "
echo " "
sleep 3
echo " "

#
# ---------------------------
# 2.1 - Excluindo Usuários
# ---------------------------
echo "Excluindo Contas de Usuários... se houver!"
sleep 1
echo " "

userdel -rf carlos > \dev\null 2>&1
userdel -rf joao > \dev\null 2>&1
userdel -rf maria > \dev\null 2>&1

userdel -rf debora > \dev\null 2>&1
userdel -rf roberto > \dev\null 2>&1
userdel -rf sebastiana > \dev\null 2>&1

userdel -rf amanda > \dev\null 2>&1
userdel -rf josefina > \dev\null 2>&1
userdel -rf rogerio > \dev\null 2>&1


# ---------------------------
# 2.2 - Excluido Grupos
# ---------------------------
echo "Excluindo Grupos de Usuários... se houver!"
sleep 1
echo " "

groupdel -f GRP_ADM > \dev\null 2>&1
groupdel -f GRP_VEN > \dev\null 2>&1
groupdel -f GRP_SEC > \dev\null 2>&1


# ---------------------------
# 2.3 - Criando Grupos
# ---------------------------
echo "Criandos novos Grupos de Usuários... "
sleep 1
echo " "

groupadd GRP_ADM > \dev\null 2>&1
groupadd GRP_VEN > \dev\null 2>&1
groupadd GRP_SEC > \dev\null 2>&1


# ---------------------------
# 2.3 - Criando Usuarios
# ---------------------------
echo "Criandos novas Contas de Usuários... "
sleep 1
echo " "

useradd carlos 		-c "Carlos Carneiro"		-m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM > \dev\null 2>&1
useradd joao   		-c "Joao Jacare" 		-m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM > \dev\null 2>&1
useradd maria  		-c "Maria Mariposa" 		-m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM > \dev\null 2>&1

useradd debora 		-c "Debora Doninha" 		-m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN > \dev\null 2>&1
useradd roberto		-c "Roberto Rato"		-m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN > \dev\null 2>&1
useradd sebastiana	-c "Sebastiana Sabia"	-m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN > \dev\null 2>&1

useradd amanda		-c "Amanda Abelha"		-m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC > \dev\null 2>&1
useradd josefina	-c "Josefina Joaninha"	-m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC > \dev\null 2>&1
useradd rogerio		-c "Rogerio Raposa"		-m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC > \dev\null 2>&1




# 3) Manipulando Permissões de Grupos e Usuarios.
# #############################################################################
echo " "
echo " "
echo " >>> 3a FASE: PERMISSÕES DE USUARIOS & GRUPOS AS PASTAS <<< "
echo " "
echo " "
sleep 3


#
# ---------------------------
# 3.1 - Atribuindo Permissãode Proprietatio das Pastas
# ---------------------------
echo "Atribuindo Permissão de Proproprietário as Pastas!"
sleep 1
echo " "

chown root:root -Rf /Publico
chown root:GRP_ADM -Rf /Adm
chown root:GRP_VEN -Rf /Ven
chown root:GRP_SEC -Rf /Sec


# ---------------------------
# 3.2 - Atribuindo Permissão de Acesso das Pastas
# ---------------------------
echo "Atribuindo Permissão de Acesso das Pastas!"
sleep 1
echo " "

chmod 777 -Rf /Publico
chmod 770 -Rf /Adm
chmod 770 -Rf /Ven
chmod 770 -Rf /Sec


echo " "
echo " "
sleep 3
echo "Concluido!"
echo " "
echo " "
