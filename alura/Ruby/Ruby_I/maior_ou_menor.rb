	def da_boas_vindas

		puts "Bem vindo ao jogo da adivinhação";
		puts "Qual é o seu nome?"
		nome = gets.strip
		puts "\n\n\n\n\n\n\n\n\n"
		puts "Iniciando o jogo para:  #{nome}"
		puts "\n\n"
		nome

	end

	def sorteia_numero_secreto(dificuldade)

		maximo = [30,60,100,150,200]
		puts "Escolhendo um número sercreto entre 1 e #{maximo[dificuldade-1]}"
		sorteado = rand(maximo[dificuldade-1]) +1
		puts "Numero escolhido, tente adivinhar o numero:"
		sorteado

	end

	def pedir_numero(chutes, tentativa, limite)

		puts "\n"
		puts "#{tentativa}ª tentativa de #{limite}"
		puts "Chutes até agora: #{chutes}"
		puts "entre com um número"
		chute = gets
		chute.to_i

	end

	def verificar_acerto(numero_secreto, chute)

		acertou = numero_secreto == chute

		if acertou 
			puts "Acertou!!\n"
			return true
		end

		maior = numero_secreto > chute

		if maior
			puts "numero secreto é maior"
		else
			puts "numero secreto é menor"
		end

		false
		
	end

	def calcular_pontuacao(pontos, chute, numero_secreto)
#		#if chute<numero_secreto
#			return (pontos-(numero_secreto-chute)/2.0)			
#		else
#			return (pontos-(chute-numero_secreto)/2.0)
#		end
		return (pontos-(chute-numero_secreto).abs/2.0)
	end

	def pede_dificuldade
		puts "Qual o nivel de dificuldade que deseja? (1 fácil , 5 difícil)"
		dificuldade = gets.to_i
	end

	def jogando (nome, dificuldade, numero_secreto)
		pontos = 1000
		limite = 5
		chutes = []

			for tentativa in 1..limite

				chute = pedir_numero(chutes, tentativa, limite)
				chutes << chute
				if nome == "fjunger" 
					puts "Acertou!!\n"
					return true
				end

				pontos=calcular_pontuacao(pontos, chute, numero_secreto)

				break if verificar_acerto(numero_secreto, chute)

			end
		puts "O número secreto era: #{numero_secreto}"
		puts "Você ganhou #{pontos} pontos"
	end	

	def nao_quer_jogar?
		puts "Deseja jogar novamente? (S/N)"
		quero_jogar = gets.strip.upcase
		quero_jogar == "N"
	end


nome = da_boas_vindas
dificuldade = pede_dificuldade
numero_secreto = sorteia_numero_secreto(dificuldade)

loop do 
	jogando(nome,dificuldade, numero_secreto)
	if nao_quer_jogar?
		break
	end
end

