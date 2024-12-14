#!/bin/bash

# atribuir permissao para o ususario  "sudo chown none_usuario ttyUSB0"
#primeiro criar python3 -m venv venv

# Navegar para o diretório do projeto
cd /home/rangersonti/Documentos/GitHub/Aplicacao_de_leitura_RFID_Client/
echo "Pasta não foi localizada." exit

# Ativar o ambiente virtual
source venv/bin/activate
echo "Ambiente virtual iniciado."

# Instalar dependências necessárias
pip install pyserial
pip install django
pip install django-cors-headers
echo "Dependências instaladas com sucesso."

# atribuir permissao para o ususario ter acesso ao prototivo via porta Serial
sudo chown rangersonti /dev/ttyUSB0 || exit

# Iniciar o servidor local
python3 manage.py runserver localhost:1524
echo "Servidor local iniciado."
