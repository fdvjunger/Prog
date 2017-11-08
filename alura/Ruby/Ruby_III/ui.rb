def da_boas_vindas
	puts "Bem vindo ao jogo"
	puts "Qual o seu nome?"
	nome = gets.strip
	puts "\n\n"
	puts "Começando novo jogo para: #{nome}"
	nome
end

def desenha_mapa(mapa)
	system("clear")
	puts mapa
end

def pede_movimento
	puts "para onde deseja ir?"
	movimento = gets.strip.upcase
	return movimento
end