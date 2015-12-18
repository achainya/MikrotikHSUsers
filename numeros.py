#!/usr/bin/env python

fhand = open('numeros.txt', 'w')

for numero in range(0, 101):
	fhand.write(str(numero))
	fhand.write('\n')

fhand.close()

