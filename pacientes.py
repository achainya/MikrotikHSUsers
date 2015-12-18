#!/usr/bin/python

def leer_fichero_pacientes(entrada):
    '''Lee el fichero de pacientes

    Debe ser un fichero separado por espacios o tabuladores,
    sin datos faltantes y con los campos: nombre, edad y diabetico.
    '''
    pacientes = []  #una lista a la que anyadiremos los pacientes

    for linea in open(entrada):
        #la primera linea se ignora porque es la cabecera
        if 'nombre' in linea.lower():
            continue

        linea = linea.strip()
        nombre, edad, diabetico = linea.split()

        #La edad es un enterio
        edad = int(edad)

        #la enfermedad la pasamos a bool
        if diabetico.lower() == 'si':
            diabetico = True
        else:
            diabetico = False
        #esto se podria escribir como
        #diabetico = True if diabetico.lower() == 'si' else False

        #creamos un diccionario para cada paciente
        paciente = {'nombre': nombre,
                    'edad': edad,
                    'diabetico': diabetico}

        #anadimos el paciente a la lista de pacientes
        pacientes.append(paciente)

    #esta funcion devuelve a lista de pacientes completa
    return pacientes

def filtrar_pacientes(pacientes, min_edad, diabetico):
    '''Filtra los pacientes

    Esta funcion requiere una lista de pacientes y devuelve
    una lista nueva con los pacientes filtrados.

    min_edad es la edad minima con la que se acepta un paciente
    diabetico indica que clase de pacientes se acepta.
    '''

    #creamos una lista para los pacientes que cumplen los
    #requisitos
    pacientes_filtrados = []
    for paciente in pacientes:
        if not (paciente['edad'] < min_edad or
                paciente['diabetico'] != diabetico):
            pacientes_filtrados.append(paciente)
    return pacientes_filtrados

def formatear_paciente(paciente):
    'Dado un paciente devuelve la linea a imprimir'

    linea = []  #una lista con los str a imprimir
    linea.append(paciente['nombre'])
    linea.append(str(paciente['edad']))
    if paciente['diabetico']:
        linea.append('Si')
    else:
        linea.append('No')

    linea = ' '.join(linea)
    linea += '\n'
    return linea

def escribir_fichero_pacientes(fichero, pacientes):
    'Escribe el fichero de pacientes separado por espacios'

    fhand = open(fichero, 'w')

    #escribimos la cabecera
    fhand.write('Nombre Edad Diabetico\n')

    for paciente in pacientes:  #recorremos todos los pacientes
        linea = formatear_paciente(paciente)
        fhand.write(linea)

def escribe_pacientes_filtrados(entrada, salida):
    'Filtra el fichero de entrada y escribe el de salida'

    pacientes = leer_fichero_pacientes(entrada)
    pacientes = filtrar_pacientes(pacientes, 20, False)
    escribir_fichero_pacientes(salida, pacientes)

if __name__ == '__main__':
    escribe_pacientes_filtrados('pacientes.txt',
                      'pacientes_filtrados.txt')
