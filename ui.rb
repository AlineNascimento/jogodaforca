def boas_vindas
    puts "/****************************/\n"
    puts "/*      JOGO DA FORCA       */"
    puts "/****************************/\n"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n"
    puts "Começaremos o jogo para você, #{nome}." 
    nome
end

def desenha_forca(erros)
    cabeca = "   "
    bracos = "   "
    pernas = "   "
    corpo = "   "
    if erros >= 1
        cabeca = "(_)"
    end
    if erros >= 2
        bracos = " | "
        corpo = "|"
    end
    if erros >= 3
        bracos = "\\|/"
    end
    if erros >= 4
        pernas = "/ \\"
    end 
    puts "  _______     \n"
    puts " |/      |    \n"
    puts " |      #{cabeca}    \n"
    puts " |      #{bracos}    \n" 
    puts " |        #{corpo}    \n"
    puts " |      #{pernas}    \n"
    puts " |              \n"
    puts "_|__              \n"
    puts "\n\n"


end

def avisa_campeao_atual dados
    puts "Nosso campeão atual é #{dados [0]} com #{dados[1]} pontos."

end

def avisa_pontos_totais pontos_totais
    puts "Você possui #{pontos_totais} pontos." 
end

def avisa_escolhendo_palavra 
    puts "Escolhendo uma palavra secreta ..."
end

def palavra_escolhida palavra_secreta
    puts "Palavra secreta escolhida com #{palavra_secreta.size} letras ... Boa Sorte! "
    palavra_secreta
end

def nao_quer_jogara
    puts "Deseja jograr novamente? (S/N)"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end

def cabecalho_de_tentativa chutes, erros, mascara
    puts "\n\n\n"
    desenha_forca erros
    puts "Palavra secreta: #{mascara}"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
end

def pede_um_chute(chutes,erros)
    puts "Entre com uma letra ou uma palavra"
    chute = gets.strip
    puts "Será que você acertou: Você chutou #{chute}"
    chute 

end

def avisa_chute_efetuado chute
    puts "Você já chutou #{chute}"
end

def avisa_letra_n_encontrada chute
    puts "Você errou, não há a letra #{chute} na palavra"
end

def avisa_letra_encontrada total_encontrado
    puts "Parabéns, você encontrou a letra #{total_encontrado} vezes."
end

def acertos 
    puts "Parabéns! Acertou!"
end

def erro
    puts "Que pena... Errou!"
end

def pontuacao pontos_ate_agora
    puts "Você ganhou #{pontos_ate_agora} pontos."
end