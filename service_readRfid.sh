#!/bin/bash

# Navegar para o diretório do projeto
cd "/home/rangerti/Documentos/GitHub/Aplicacao_de_leitura_RFID_Client/service_readRfid.sh" || echo "Pasta não foi localizada." exit

# Ativar o ambiente virtual
source venv/bin/activate

echo "Ambiente virtual iniciado."

# Instalar dependências necessárias
pip install pyserial
pip install django
pip install django-cors-headers

echo "Dependências instaladas com sucesso."

# Iniciar o servidor local
python3 manage.py runserver localhost:1524

echo "Servidor local iniciado."
