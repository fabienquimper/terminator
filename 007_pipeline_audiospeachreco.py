from transformers import pipeline

transcriber = pipeline(task="automatic-speech-recognition")

result = transcriber('./data/audio/texte_FR_EN.wav')
print(result)

'''
OUTPUT:
{'text': 'WE JEVULISAWAS TUTE DE POSIBE MI CUMONT PRICE ETRUPOSIME BECAUSE I CAN SPEAK ALSO IN ENGLISH OF FRENCH WHATERROR'}
'''