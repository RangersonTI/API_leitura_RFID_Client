@echo off
cd /d "C:\Users\Rangerson TI\Documents\GitHub\Aplicacao_de_leitura_RFID_Client"
call venv\Scripts\activate

echo "Ambiente virtual iniciado."


#start pip install django-extensions
#start pip install pyOpenSSL
#start pip install Werkzeug

#start py manage.py runserver_plus localhost:8000 --cert-file=ssl.crt --key-file=ssl.key

start py manage.py runserver localhost:8000
echo "Servidor local iniciado."
exit