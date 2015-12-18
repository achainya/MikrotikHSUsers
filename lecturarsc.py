#!/usr/bin/python

def leer_fichero_clientes(entrada):
    '''Lee el fichero de clientes

    Debe ser un fichero separado por espacios o tabuladores,
    sin datos faltantes y con los campos: nombre, edad y moroso.
    '''
    clientes = []  #una lista a la que anyadiremos los clientes

    for linea in open(entrada):
        #la primera linea se ignora porque es la cabecera
        if 'nombre' in linea.lower():
            continue

        linea = linea.strip()
        nombre, edad, moroso = linea.split()

        #La edad es un enterio
        edad = int(edad)

        #la enfermedad la pasamos a bool
        if moroso.lower() == 'si':
            moroso = True
        else:
            moroso = False
        #esto se podria escribir como
        #moroso = True if moroso.lower() == 'si' else False

        #creamos un diccionario para cada paciente
        cliente = {'nombre': nombre,
                    'edad': edad,
                    'moroso': moroso}

        #anadimos el cliente a la lista de clientes
        clientes.append(cliente)

    #esta funcion devuelve a lista de clientes completa
    return clientes

def filtrar_clientes(clientes, min_edad, moroso):
    '''Filtra los clientes

    Esta funcion requiere una lista de clientes y devuelve
    una lista nueva con los clientes filtrados.

    min_edad es la edad minima con la que se acepta un cliente
    moroso indica que clase de clientes se acepta.
    '''

    #creamos una lista para los clientes que cumplen los
    #requisitos
    clientes_filtrados = []
    for cliente in clientes:
        if not (cliente['edad'] < min_edad or
                cliente['moroso'] != moroso):
            clientes_filtrados.append(cliente)
    return clientes_filtrados

def formatear_cliente(cliente):
    'Dado un cliente devuelve la linea a imprimir'

    linea = []  #una lista con los str a imprimir
    linea.append(cliente['nombre'])
    linea.append(str(cliente['edad']))
    if cliente['moroso']:
        linea.append('Si')
    else:
        linea.append('No')

    linea = ' '.join(linea)
    linea += '\n'
    return linea

def escribir_fichero_clientes(fichero, clientes):
    'Escribe el fichero de clientes separado por espacios'

    fhand = open(fichero, 'w')

    #escribimos la cabecera
    fhand.write('Nombre Edad Moroso\n')

    for cliente in clientes:  #recorremos todos los clientes
        linea = formatear_cliente(cliente)
        fhand.write(linea)

def escribe_clientes_filtrados(entrada, salida):
    'Filtra el fichero de entrada y escribe el de salida'

    clientes = leer_fichero_clientes(entrada)
    clientes = filtrar_clientes(clientes, 20, False)
    escribir_fichero_clientes(salida, clientes)

if __name__ == '__main__':
    escribe_clientes_filtrados('clientes.txt',
                      'clientes_filtrados.txt')
