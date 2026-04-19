nome = "nicoly"
idade = 17
cidade = ("Fraiburgo")
print = input(f"Oi, meu nome é {nome} tenho {idade} anos e moro em {cidade}")




n1=float(input("digite um número:"))
n2=float(input("digite um número: "))

print (n1+n2)
print (n1-n2)
print (n1/n2)
print (n1*n2)




numero= float(input("digite um número:"))

for i in range(1,11):
    print(numero * i)




numero= int(input("digite um número:"))
senha=5

while numero!=senha:
    numero=int(input("errou, digite outro número:"))
    
    if numero > senha:
        print("é um número menor")
    
    elif numero < senha:
        print("é um número maior")
        
    elif numero == senha:
        print("acertou!")
        break




compras = []
c1 = str(input("digite sua compra: "))
c2 = str(input("digite sua compra: "))
c3 = str(input("digite sua compra: "))
c4 = str(input("digite sua compra: "))
c5 = str(input("digite sua compra: "))

compras.append(c1)
compras.append(c2)
compras.append(c3)
compras.append(c4)
compras.append(c5)

for i, compra in enumerate(compras):
    print(f"{i}: {compra}")



notas = (5, 6, 7, 8, 9, 7)

maior= max(notas)
menor = min(notas)
media= sum(notas)/len(notas)

print= input(f"maior nota: {maior}")
print= input(f"menor nota: {menor} " )
print= input(f"média: {media}")



def par_ou_impar():
    n= float(input("digite um número: "))
    numero = n%2
    if numero  == 1:
        print("esse número é ímpar")
    elif numero == 0:
        print("esse número é par")
        
par_ou_impar()



def calcular_imc():
    peso= float(input("digite seu peso: "))
    altura= float(input("digite sua altura: "))
    
    imc=float
    
    imc= peso / (altura ** 2)
    
    print(f"seu imc é: {imc}")
    
    return imc
    
def classificar_imc(imc):
    if imc < 18:
        print("Abaixo do peso")
    elif imc < 25:
        print("Peso ideal")
    elif imc < 30:
        print("Sobrepeso")
    else:
        print("Obesidade")
    
    
    
imc = calcular_imc()

classificar_imc(imc)