tarefas = []

def listar():
    if len(tarefas) == 0:
        print('Nenhuma tarefa cadastrada.')
    else:
        for i, t in enumerate(tarefas, 1):
            print(f'{i}. {t}')

def adicionar():
    tarefa = input("Digite a nova tarefa: ")
    tarefas.append(tarefa)
    
def remover():
    if len(tarefas) == 0:
        print("Nenhuma tarefa para remover.")
        return
    
    listar()
    num = int(input("Digite o número da tarefa: "))
    tarefas.pop(num - 1)
    

while True:
    print("1 - ver lista de tarefas")
    print("2 - adicionar tarefa")
    print("3 - remover tarefa")
    print("4 - sair")
    menu= int(input("Selecione sua opção: "))
    
    if menu == 1:
        listar()
        
    elif menu == 2:
        adicionar()
        
    elif menu == 3:
        remover()
    
    elif menu == 4:
        break