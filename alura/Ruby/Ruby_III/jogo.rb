require_relative "ui"

def posicoes_validas_a_partir_de(mapa, posicao)
	posicoes = []
	
	return posicoes
end

def move_fantasma(mapa, linha, coluna)
	posicoes = posicoes_validas_a_partir_de(mapa, [linha, coluna])
	posicao = [linha, coluna + 1]
	if posicao_valida?(mapa, posicao)
		mapa[linha][coluna] = " "
		mapa[posicao[0]][posicao[1]] = "F"
	end
end

def move_fantasmas(mapa)
	caractere_fantasma = "F"
	mapa.each_with_index do |linha_atual, linha|
		linha_atual.chars.each_with_index do |caractere_atual, coluna|
			e_fantasma = caractere_atual == caractere_fantasma
			if e_fantasma
				move_fantasma(mapa, linha, coluna)
			end
		end
	end
end

def le_mapa(numero)
	
	arquivo = "map#{numero}.txt"
	texto = File.read(arquivo)
	mapa = texto.split("\n")
	return mapa
end

def encontrar_jogador(mapa)
	heroi = "H"
	mapa.each_with_index do |linha_atual, linha|
		coluna = linha_atual.index(heroi)
		if coluna
					return [linha, coluna]
		end
	end
end

def nova_posicao(heroi, direcao)
	heroi = heroi.dup
	movimentos = {
		"W" => [-1, 0],
		"S" => [+1, 0],
		"A" => [0, -1],
		"D" => [0, +1]
	}
    movimento = movimentos[direcao]
	heroi[0] += movimento[0]
	heroi[1] += movimento[1]
    heroi
end

def posicao_valida?(mapa,posicao)
		linhas = mapa.size
		colunas = mapa[0].size
		estourou_linhas = posicao[0] < 0 || posicao[0] >= linhas
		estourou_colunas = posicao [1] < 0 || posicao[1] >= colunas

		if estourou_linhas || estourou_colunas
			return false
		end
		valor_atual = mapa[posicao[0]][posicao[1]]
		if valor_atual == "X" || valor_atual == "F"
			return false
		end
		return true
end

def joga (nome)
	mapa = le_mapa(2)

	while true
		desenha_mapa(mapa)
		direcao = pede_movimento
		heroi = encontrar_jogador(mapa)
		posicao = nova_posicao(heroi, direcao)
		if posicao_valida?(mapa,posicao)
			mapa[heroi[0]][heroi[1]] = " "
			mapa[posicao[0]][posicao[1]] = "H"
		else
			next
		end
		move_fantasmas(mapa)

	end

end

def iniciar_jogo
	
	nome = da_boas_vindas
	joga(nome)

end