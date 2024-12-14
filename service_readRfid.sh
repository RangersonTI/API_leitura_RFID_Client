#!/bin/bash

# Navega para o diretório da API
cd /home/rangersonti/Documentos/GitHub/API_leitura_RFID_Client/ || echo "Pasta não foi localizada." exit
echo "Pasta não foi localizada." exit

#Configura o ambiente virtual caso nao esteja configurado
source venv/bin/activate || echo "Ambiente virtual nao  configurado" python3 -m venv venv

# Ativa o ambiente virtual
source venv/bin/activate echo "Ambiente virtual iniciado."|| python3 -m venv venv
echo "Ambiente virtual iniciado."


# Instala dependências necessárias
pip install pyserial
pip install django
pip install django-cors-headers

echo "Dependências instaladas com sucesso."

#Configura a porta de comunicacao do prototipo
chown rangersonti /dev/ttyUSB0

# Inicia a API local
python3 manage.py runserver localhost:1524

echo "Servidor local iniciado."

echo "A TELA DEVER'A PERMANECER EM ABERTO ENQUANTO UTILIZA-SE O SISTEMA"
