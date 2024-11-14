from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse
import serial
import platform

@csrf_exempt
def ler_rfid(request):

    so_atual = platform.system()
    
    if so_atual == "Windows":
        portaCOM = 'COM15'

    elif so_atual == "Linux":
        portaCOM = ''
        
    else:
        return HttpResponse(f"Não foi possivel configurar o tipo de SO na aplicação 'Leitor Rfid'. SO é desconhecido")

    
    try:
        ser = serial.Serial(portaCOM,9600)
        rfid=""

        try:
            rfid = str(ser.readline().decode('utf-8').strip())
            return HttpResponse(f"{rfid}")
        except Exception as ex:
            return HttpResponse(f"Erro: {ex}")
    except Exception as ex:
        return HttpResponse(f"Erro ao conectar com dispositivo. Porta {portaCOM} não localizada")