% Aufgabe 1: Numerische Phänomene
% 
% Vervollständigen Sie die Funktion rundungsfehler():
% Eingabewerte sind eine Zahl 'x' sowie die Anzahl der Iterationen 'n'
% Rückgabewert ist 'f'
% Die Funktion besteht aus zwei Schleifen. In der ersten Schleife soll n-mal die Wurzel aus x gezogen, in der zweiten Schleife x wieder n-mal quadriert werden.
%
% Vervollständigen Sie das Hauptprogramm:
% Werten Sie die Funktion rundungsfehler() mit x=100 und n=60 aus und speichern Sie das Ergebnis in der Variable 'result', die vom Hauptprogramm ausgegeben wird.
% Beschreiben und erklären Sie Ihre Beobachtungen.
%
% Ermitteln Sie den Rückgabewert der Funktion für n von 1 bis 60, speichern Sie die Werte im Feld 'results' und stellen Sie sie graphisch dar.
% Skalieren Sie die Achsen sinnvoll und beschriften Sie diese.
% 
% Nützliche Befehle: sqrt

function aufgabe1_1
N=60;
x=100;

result=0;

% insert code here

display(result)
display('Erläuterung:')


results=zeros(N,1);

for n=1:N
    % insert code here
end

plot(results);
% axis([xmin xmax ymin ymax])
title('Überschrift')
xlabel('X-Achsenbeschriftung')
ylabel('Y-Achsenbeschriftung')

end


function f = rundungsfehler(x,n)
for i=1:n
    % insert code here
end;

for i=1:n
    % insert code here
end;

% insert code here
end