require_relative 'ui'

def joga(nome)
    palavra_secreta = escolhe_palavra_secreta

    erros = 0
    chutes = []
    pontos_ate_agora = 0

    while erros < 5
        chute = pede_um_chute chutes, erros
        if chutes.include? chute
            avisa_chute_efetuado chute
            next
        end
        chutes << chute
        chutou_uma_letra = chute.size == 1
        if chutou_uma_letra
            letra_procurada = chute[0]
            total_encontrado = palavra_secreta.count letra_procurada

            if total_encontrado == 0
                avisa_letra_n_encontrada chute
                erros += 1
            else
               avisa_letra_encontrada total_encontrado
            end
        else
            acertou = chute == palavra_secreta
            if acertou
                acertos
                pontos_ate_agora += 100
                break
            else
                erro
                pontos_ate_agora -= 30
                erros += 1
            end
        end

            #verifica se acertou ou errou
    end
    pontuacao pontos_ate_agora
end

def jogo_da_forca
    nome = boas_vindas
    loop do 
        joga nome
        if nao_quer_jogara
            break
        end
    end
end

