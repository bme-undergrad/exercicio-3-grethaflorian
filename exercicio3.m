function [mu] = exercicio3(t, NC)

% t: vetor de tempo com instâncias das medições
% NC: medida do número de células a cada instante t

%%%%%%%%%%%%%%%%%%%%%%%%%%
tempo_quad = t.^2

N = length(t)

soma_tempo = sum(t)
soma_tempo_quad = sum(tempo_quad) 

ln_celulas = log(NC)

soma_ln_celulas = sum(ln_celulas) 

tempo_X_ln_celulas = t.*ln_celulas

soma_do_produto = sum(tempo_X_ln_celulas)

a1 = (N*soma_do_produto - soma_tempo*soma_ln_celulas)/(N*soma_tempo_quad - soma_tempo^2)

a0 = soma_ln_celulas/N - a1*(soma_tempo/N)

% mantenha essas duas linhas finais, subtituindo mu pelo valor que você calculou
mu = a1;

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
