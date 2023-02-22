INSERIR_RECEITAS = 1
VISUALIZAR_RECEITAS = 2
SAIR = 3

def bem_vindo()
  puts "BEM VINDO AS MINHAS RECEITAS "
  puts "Hoje iremos cadastar algumas receitas "
end

def menu()
  puts "[#{INSERIR_RECEITAS}] Cadastrar uma receita "
  puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receita "
  puts "[#{SAIR}] Sair "
  puts
  return gets.to_i()
end

def inserir_receita()
  puts "Digite o nome da sua receita"
  nome = gets.chomp()
  # chomp elimina o /n do enter
  puts "Digite o tipo da sua receita"
  tipo = gets.chomp()
  puts
  puts " Receita de #{ nome } cadastrada com sucesso "
  puts
  return {nome: nome, tipo: tipo}
end
def imprimir_receitas(receitas)
  puts "----- Foram cadastradas as seguintes receitas ------"
  puts
  receitas.each do |receita|
  puts"#{receita[:nome]}-#{receita[:tipo]}"
  end  
  puts
  if receitas.empty?
    puts "Nenhuma receita cadastrada "
    puts
  end
end

bem_vindo()

receitas = []

opção = menu

#while elemento de repeticão
loop do
  if(opção == INSERIR_RECEITAS)
    receitas << inserir_receita()    
  elsif(opção == VISUALIZAR_RECEITAS)
    imprimir_receitas(receitas)
  elsif(opção == SAIR)
    break
  end
    opção = menu
end
puts
puts "Obrigado por visualizar meu livro de receitas,"
puts "See you later"