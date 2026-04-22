nome= "aghata"
idade=17
serie= 3

print(f"meu nome é {nome} tenho {idade} anos e estou no {serie} ano")




c= float(input("digite a temperatura em celsius para converter para Fahrenheit: "))
f= float

F = print(input((c * 9/5) + 32))




i= int(input("digite um número:"))
for i in range(i, -1, -1):
    print (i)


soma = 0

while True:
    numero = float(input("digite um número: "))
    
    if numero == 0:
        break
    
    soma += numero

print("Soma total:", soma)



nome= str(input("digite um nome:"))
nome1= str(input("digite um nome:"))
nome2= str(input("digite um nome:"))
nome3= str(input("digite um nome:"))
nome4= str(input("digite um nome:"))

nomes = [nome, nome1, nome2, nome3, nome4]
nomes.sort()

print(nomes)




numeros = []
print("Digite 10 itens:")
for i in range(10):
    numero = float(input(f"número {i+1}: "))
    
    if numero %2 == 0:
        numeros.append(numero)
        
print("números pares:" , numeros)




def dobro():
    numero= float(input("digite um número:"))
    resultado= numero*2
    print(resultado)
    
dobro()





def verificador_idade():
    idade= int(input("digite sua idade:"))
    
    if idade ==18 and >18 :
        print("você é maior de idade")
    elif idade < 18:
        print("vocÊ é menor de idade")
    
verificador_idade()