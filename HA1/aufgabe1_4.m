% Aufgabe 4: Die Reihenfolge von Operationen kann das Ergebnis beeinflussen
%
% In der Numerik ist es manchmal vorteilhaft, eine Formel in einen mathematisch äquivalenten Ausdruck umzuformen.
% Dies soll an folgendem Beispiel demonstriert werden.
%
% Die Summe über k=1,2...K von k^-2 konvergiert für K->inf zu pi²/6.
% 
% Berechnen Sie die Summe mit einfacher Genauigkeit (single precision) bis K=10^8. Brechen Sie die Schleife ab, wenn sich die Summe nicht mehr
% verändert und geben Sie das k zu diesem Zeitpunkt aus.
% Speichern Sie die Abweichung zu pi²/6 in 'err_forward'.
%
% Führen Sie nun die Summation in umgekehrter Reihenfolge (k=K,K-1,...1) durch und speichern Sie die Abweichung zu pi²/6 in 'err_backward'.
%
% Vergleichen und begründen Sie die Ergebnisse.

function aufgabe1_4
K=10^8;
res=pi^2/6;
erg=0;

err_forward=0;
err_backward=0;

for k=1:K
    ergp=erg;
    erg=single(erg+1/k^2);
    if ergp==erg
        display(k);
        err_forward=res-erg;
        break
    end    
end

erg=0;

for k=K:-1:1
    ergp=erg;
    erg=single(erg+1/k^2);
    if ergp==erg
        display(k);
        err_backward=res-erg;
        break
    end    
end

display(err_forward)
display(err_backward)
disp('Erläuterung:')

end