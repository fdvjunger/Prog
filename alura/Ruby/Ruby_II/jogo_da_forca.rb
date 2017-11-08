require_relative "ui_forca"
require_relative 'rank'

	def escolhendo_palavra

		system("clear")
		informa_escolhendo_palavra
		text = File.read("dicionario.txt")
		todas_palavras = text.split("\n")
		numero_palavra = rand(todas_palavras.size)
		palavra_secreta = todas_palavras[numero_palavra]
		palavra_secreta = palavra_secreta.downcase
		informar_palavra_escolhida(palavra_secreta)
		
	end

	def escolhendo_palavra_pouca_memoria

		system("clear")
		informa_escolhendo_palavra
		arquivo = File.new("dicionario.txt")
		quantidade_de_palavras = arquivo.gets.to_i
		numero_escolhido =rand(quantidade_de_palavras)
			for linha in 1..(numero_escolhido -1)
				arquivo.gets
			end
		palavra_secreta = arquivo.gets.strip.downcase
		arquivo.close
		informar_palavra_escolhida(palavra_secreta)
		
	end

	def contador_de_pontos(acertou)
		if(acertou)
			return (100)
		else
			return (-30)
		end
	end

	def pedir_chute_valido(chutes, erros, mascara)
		cabecalho_de_tentativa(chutes, erros, mascara)
		loop do
			chute = pede_um_chute
			if chutes.include? chute
				avisa_chute_efetuado(chute)
			else
				return chute
			end
		end
	end

	def palavra_mascarada(chutes, palavra_secreta)
		mascara = []
		for letra in palavra_secreta.chars
			if chutes.include? letra
				mascara << letra
			else
				mascara << "_"
			end
		end	
		return mascara
	end

	def joga(nome)

		palavra_secreta = escolhendo_palavra_pouca_memoria
		erros =0
		chutes =[]
		pontos =0

		while erros <5	
			system("clear")
			mascara = palavra_mascarada(chutes, palavra_secreta)

			desenha_forca(erros)
			
			chute = pedir_chute_valido(chutes, erros, mascara)
			chutes << chute
			letra = chute.size == 1
			if letra
				letra_procurada = chute[0]
				acerto = palavra_secreta.count (letra_procurada)
				acertou = acerto > 0
				if acertou
					avisa_letra_encontrada(acerto)
					pontos += contador_de_pontos(acertou)
				else
					avisa_letra_nao_encontrada
					pontos += contador_de_pontos(acertou)
					erros+=1
				end
			else
				#palavra
				acertou = chute == palavra_secreta
				if acertou
					avisar_acerto_palavra
					pontos += contador_de_pontos(acertou) * palavra_secreta.size
					break
				else
					avisa_erro_palavra
					pontos += contador_de_pontos(acertou)
					erros += 1
				end	
			end
		end
		informar_pontos(pontos, palavra_secreta)
		return pontos
	end

	def jogo_da_forca
		nome = da_boas_vindas
		pontos_totais = 0
		avisa_campeao_atual(le_rank)
		pausar
			loop  do
				pontos_totais += joga(nome)
				avisa_pontos_totais (pontos_totais)

				if le_rank[1].to_i < pontos_totais
					salvar_rank(nome,pontos_totais)
				end

				if nao_quer_jogar?
					break
				end
			end
	end

