@echo off
cd /d "C:\Users\Rangerson TI\Documents\GitHub\Aplicacao_de_leitura_RFID_Client"
call venv\Scripts\activate

echo "Ambiente virtual iniciado."

pip install pyserial
pip install django
pip install django-cors-headers

echo "Dependencias instaladas com sucesso."

start py manage.py runserver localhost:1524
echo "Servidor local iniciado."
exit