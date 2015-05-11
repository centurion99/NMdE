% Aufgabe 2: Maschinengenauigkeit
%
% In dieser Aufgabe soll die Maschinengenauigkeit Ihres Rechners bestimmt werden.
% Unter der Maschinengenauigkeit wird das kleinste epsilon, für das gilt   1 + epsilon > 1, verstanden.
%
% Implementieren Sie die Funktion genauigkeit():
% Eingabewerte sind der Startwert 'start' sowie die Genauigkeit 'precision', in der gerechnet werden soll (1: single precision, 2: double precision)
% Rückgabewert ist die errechnete Maschinengenauigkeit 'epsilon'
%
% (Hinweis: Starten Sie mit epsilon=2 und halbieren Sie epsilon solange, bis 1+epsilon <= 1 gilt.)
%
% Speichern Sie die errechneten Genauigkeiten in den Variablen 'epsilon_single' bzw. 'epsilon_double'
% Diese Werte sowie die Genauigkeit 'eps', mit der MATLAB arbeitet, werden vom Hauptprogramm ausgegeben.
%
% Nützliche Befehle: if, while, single, double

function aufgabe1_2

epsilon_single=genauigkeit(2,1);
epsilon_double=genauigkeit(2,2);

display(epsilon_single)
display(epsilon_double)

display('MATLAB-epsilon:')
display(eps)

end

function epsilon = genauigkeit(start,precision)

if precision == 1
   epsilon=single(start); 
    while single(epsilon+1)>single(1)
        epsilon=epsilon/single(2);
    end
end
if precision == 2
    epsilon=double(start);
    while epsilon+1>1
        epsilon=epsilon/2;
    end
end  
epsilon=epsilon*2;
end