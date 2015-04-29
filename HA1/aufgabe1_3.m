% Aufgabe 3: Maschinengenauigkeit am Beispiel der Zahl e
% 
% Die Zahl e ist durch lim n->inf (1+1/n)^n definiert. In dieser Aufgabe sollen Sie die Approximation von e untersuchen.
% 
% Implementieren Sie das Hauptprogramm:
% Approximieren Sie e für die 200 vorgegebenen Werte 'n' zwischen 10 und 10^20, jeweils in single sowie double precision.
% Berechnen Sie für beide die Abweichung zwischen dem Ergebnis, das MATLAB liefert und dem approximiertem Wert und speichern Sie den Fehler in den vorgegebenen Feldern
% 'err_single' bzw. 'err_double'.
% Stellen Sie den Verlauf der Abweichung über n in einer Zeichnung dar (verschiedene Farben! Beschriftung!) und kommentieren Sie die Ergebnisse.
%
% Nützliche Befehle: exp, plot, hold


function aufgabe1_3

err_single=zeros(200,1);
err_double=zeros(200,1);

for i=10:200
    n=10^(i/10);
    
    %e=0;
    %e=double(e);
    %es=0;
    %es=single(es);
    e=(1+1/n)^n;
    %es=(1+1/n)^n;
    
    err_double(i)=e;
    %err_single(i)=exp(1)-es;
end

plot(err_double);

title('Rundungsfehler')
xlabel('Iterationen')
ylabel('Rundungsfehler')

%hold all;

%plot(err_single);

   

% insert code

disp('Erläuterung:')

end
