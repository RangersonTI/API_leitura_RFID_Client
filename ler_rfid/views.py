from django.views.decorators.csrf import csrf_exempt
from django.http import JsonResponse
import serial
import platform

@csrf_exempt
def ler_rfid(request):

    so_atual = platform.system()
    
    if so_atual == "Windows":
        portaCOM = 'COM16'

    elif so_atual == "Linux":
        portaCOM = ''
        
    else:
        return JsonResponse({'error': 'Não foi possivel configurar o tipo de SO na aplicação "Leitor Rfid". SO é desconhecido'})

    
    try:
        #ser = serial.Serial(portaCOM,9600)
        rfid="AR 4F C2 QA"

        try:
            #rfid = str(ser.readline().decode('utf-8').strip())
            print(rfid)
            return JsonResponse({'rfid' : rfid})
        except Exception as ex:
            return JsonResponse({'error' : str(ex)})
    except Exception as ex:
        return JsonResponse({'error' : "Erro ao conectar com dispositivo. O mesmo não foi localizado."})