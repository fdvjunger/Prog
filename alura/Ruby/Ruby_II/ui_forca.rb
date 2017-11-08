	def da_boas_vindas

		puts "Bem vindo ao jogo da forca"
		puts "Qual é o seu nome?"
		nome = gets.strip
		puts "\n\n\n\n\n\n\n\n\n"
		puts "Iniciando o jogo para:  #{nome}"
		puts "\n\n"
		nome

	end

	def desenha_forca(erros)
		cabeca = "   "
		bracos = "   "
		pernas = "   "
		corpo = " "
		
		if erros >=1
			cabeca = "(_)"
		end
		if erros >=2
			bracos = " | "
			corpo = " | "
		end
		if erros >=3
			bracos = "/|\\"
		end
		if erros >=4
			pernas = "/ \\"
		end
		
		puts "  __________"
		puts " |/         |"
		puts " |         #{cabeca}"
		puts " |         #{bracos}"
		puts " |         #{corpo}"
		puts " |         #{pernas}"
		puts " |"
		puts " |"
		puts "_|__"
		puts "\n\n"
	end

	def nao_quer_jogar?

		puts "Deseja jogar novamente? (S/N)"
		quero_jogar = gets.strip.upcase
		nao_quero_jogar = quero_jogar =="N"

	end

	def cabecalho_de_tentativa(chutes, erros, mascara)
		puts "\n"
		puts "Palavra secreta #{mascara}"
		puts "Erros até agora: #{erros}"
		puts "Chutes até agora: #{chutes}"
	end

	def pede_um_chute 
		puts "Entre com uma letra ou palavra:\n"
		chute = gets.strip.downcase
		puts "Você chutou: #{chute}"
		chute
	end

	def avisa_letra_nao_encontrada
		puts "Letra não encontrada" 
		pausar		
	end

	def avisa_letra_encontrada(acerto)
		puts "Letra encontrada #{acerto} vezes."
	end

	def avisar_acerto_palavra
		puts "Acertou!"
		pausar
	end

	def avisa_erro_palavra
		puts "Errou!!"
		pausar
	end

	def avisa_chute_efetuado (chute)
		puts "Letra/palavra já utilizada: #{chute}"
	end

	def informar_pontos(pontos, palavra_secreta)
		puts "Você ganhou #{pontos} pontos"
		puts "A palavra secreta era: #{palavra_secreta}"
	end

	def informa_escolhendo_palavra
		puts "Escolhendo palavra secreta"
	end

	def informar_palavra_escolhida(palavra_secreta)
		puts "Palavra secreta com #{palavra_secreta.size} letras ..... \n BOA SORTE!!!"
		system("pause")
		palavra_secreta
	end

	def avisa_pontos_totais(pontos_totais)
		puts "Total de pontos: #{pontos_totais}"
	end

	def avisa_campeao_atual(dados)
		puts ("Nosso campeão é #{dados[0]} com #{dados[1]} pontos.")
	end

	def pausar
		system("pause")
	end