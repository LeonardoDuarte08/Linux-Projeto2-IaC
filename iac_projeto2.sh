#!/bin/bash

echo "Atualizando o sistema!"

apt upgrade -y

echo "Sistema atualizado com sucesso!"

echo "Instalando o apache2"

apt install apache2 -y

echo "Apache2 instalado com sucesso!"

echo "Instalando a extensão unrar"

apt install unrar -y

echo "Extensão unrar instalada com sucesso!"

echo "Baixando a aplicação"

cd /tmp
wget -O /tmp/linux-site-main.rar https://github.com/AngeloAntunes/02-Projeto/raw/refs/heads/main/linux-site-main.rar

echo "Aplicação baixada com sucesso!"

echo "Extraindo o arquivo da aplicação"

cd /tmp
unrar x /tmp/linux-site-main.rar

echo "Arquivo extraído com sucesso!"

echo "Copiando os arquivos da aplicação para o diretório apache"

cp -R /tmp/linux-site-main/* /var/www/html/

echo "Cópia finalizada com Sucesso!"

echo "Instalando extensão git"

apt install git -y

echo "Instalado com Sucesso!"

echo "Subindo o arquivo de script no github"

cd /scripts/projeto2
git init
git config --global user.email "leo.saduarte08@gmail.com"
git config --global user.name "LeonardoDuarte08"
git init
git add iac_projeto2.sh
git commit -m "Arquivo IaC v.2"
git branch -M main
git remote add origin https://github.com/LeonardoDuarte08/Linux-Projeto2-IaC.git
git push -u origin main

echo "Finalizado!!:)"

