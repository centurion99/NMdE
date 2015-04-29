% Aufgabe 5: Power-Iteration
%
% Die Power-Iteration-Methode zur numerischen Bestimmung des größten Eigenwerts und des dazugehörigen Eigenvektors einer Matrix M ist wie folgt definiert:
%
% x := Mx
% x := x/||x||
% bis x konvergiert
%
% Wenn M genau einen betragsmäßig höchsten Eigenwert besitzt, dann konvergiert x zu einem Vielfachen des korrespondierenden Eigenvektors.
%
%
% ---------------------------------------------------------------------------
% Aufgabenteil I
% 
% In diesem Aufgabenteil soll die Methode verstanden und veranschaulicht werden.
% 
% Gegeben ist die Matrix A= [0.4 -0.6 0.2; -0.3 0.7 -0.4; -0.1 -0.4 0.5]
%
% a) Welchen Rang hat die Matrix A? Was bedeutet dies für die Eigenwerte?
% Berechnen Sie die Eigenwerte und die dazugehörigen Eigenvektoren mit der eig-Funktion in MATLAB. Welches ist der größte Eigenwert lambda_max und zu 
% welchem Eigenvektor v_max gehört er?
%
% Implementieren Sie die oben vorgestellte Methode in der vorgegebenen Funktion showPowerIteration():
% Eingabeparameter: Matrix 'M', Startvektor 'x', Anzahl der Iterationen 'N'
%
% Berechnen Sie für jede Iteration den geschätzten größten Eigenwert von A.
% Ermitteln Sie in jedem Iterationsschritt die Differenz vom normierten 'x' zum tatsächlichen 'v_max'. Als Fehlermaß dient der Euklidsche Abstand.
% Stellen Sie diese Differenz sowie den ermittelten größten Eigenwert für n=1,2...N graphisch nebeneinander (subplot) dar. Skalieren Sie den Betrag
% der Differenz logarithmisch (log10), wählen Sie eine geeignete Achsenskalierung und beschriften Sie die Zeichnung vollständig.
%
% Vervollständigen Sie das Hauptprogramm:
%
% b) Rufen Sie die Funktion im Hauptprogramm für M=A, N=50 und 100 zufällig generierte x auf. 
% Überlagern Sie die Darstellung für alle x und beschreiben Sie das Ergebnis.
%
% c) Rufen Sie die Funktion im Hauptprogramm für M=A, N=10 und x=v_max auf. 
% Was geschieht im Gegensatz zu b) und warum?
%
% d) Rufen Sie die Funktion im Hauptprogramm für M=A, N=10 und x=v_2 auf, dem Eigenvektor zum betragsmäßig zweitgrößten Eigenwert. 
% Was geschieht im Gegensatz zu b) und c) und warum?
%
% e) Rufen Sie die Funktion im Hauptprogramm für M=A, N=50 und x= v_min = 1/sqrt(3) * [1;1;1], den dritten Eigenvektor, auf. 
% Warum geschieht hier etwas unterschiedliches als in d)?
%
% ---------------------------------------------------------------------------
% Aufgabenteil II
%
% In diesem Aufgabenteil soll die Rechenzeit der Power-Iteration-Methode untersucht werden.
%
% Hierzu ist eine Modifikation der bisher implementierten Funktion nötig. Um die Funktionalität von Aufgabenteil I nicht zu beeinträchtigen,
% implementieren Sie für Aufgabenteil II die Funktion measurePowerIteration():
% Eingabeparameter: Wie showPowerIteration(), außerdem Abbruchparameter 'epsilon'
% Rückgabewert: Rechenzeit 'time'
%
% Berechnen Sie für jede Iteration den geschätzten größten Eigenwert von M.
% Ermitteln Sie in jedem Iterationsschritt die Differenz vom normierten 'x' zum tatsächlichen 'v_max'.
% Brechen Sie die Methode ab, sobald diese Differenz kleiner als 'epsilon' wird.
% Bestimmen Sie die benötigte Rechenzeit sowie die Differenz für alle durchlaufenen n und stellen Sie den Zusammenhang graphisch dar. Skalieren Sie die
% Differenz logarithmisch (log10) und beschriften Sie die Zeichnung vollständig.
%
% f) Bestimmen Sie, wie lange die eig-Funktion für die Bestimmung von v_max von A benötigt und speichern Sie den Wert in 'eig_time_A'.
% Rufen Sie nun die Funktion showPowerIteration() für 'A', einen zufälligen Vektor 'x', N=1000 sowie epsilon = 10^-12 auf. Speichern Sie die benötigte 
% Rechenzeit in 'pi_time_A', vergleichen und kommentieren Sie die Ergebnisse.
%
% g) Die Matrix B sei eine quadratische Zufallsmatrix der Dimension 1000. Berechnen Sie wie in f) die Rechenzeiten für beide Methoden und
% speichern Sie die Ergebnisse in 'eig_time_B' sowie 'pi_time_B'. Was beobachten Sie?
%
% h) Nennen Sie einige mögliche Nachteile bzw. Schwachstellen der Power-Iteration.

function aufgabe1_5

% Aufgabenteil I
A= [0.4 -0.6 0.2; -0.3 0.7 -0.4; -0.1 -0.4 0.5];
lambda_max=0;
v_max = zeros(3,1);
v_2 = zeros(3,1);
v_min = 1/sqrt(3)*[1;1;1];

% a)
display('Erläuterung zu den Eigenschaften von A:')

% insert code here

display(lambda_max)
display(v_max)

% b)
N=50;

figure
subplot(1,2,1)
hold on
subplot(1,2,2)
hold on

for i=1:100
    showPowerIteration(A,rand(3,1),N,v_max);
end

% insert code here

display('Erläuterung zu b):')


% c)
N=10;

figure

showPowerIteration(A,v_max,N,v_max);

% insert code here

display('Erläuterung zu c):')

% d)
N=10;

figure

showPowerIteration(A,v_2,N,v_max);

% insert code here

display('Erläuterung zu d):')


% e)
N=50;

figure

showPowerIteration(A,v_min,N,v_max);

% insert code here

display('Erläuterung zu e):')


% Aufgabenteil II
N=1000;
epsilon=10^-12;
eig_time_A=0;
pi_time_A=0;
eig_time_B=0;
pi_time_B=0;

% f)

% insert code here

display(eig_time_A)
display(pi_time_A)
display('Erläuterung zu f):')

% g)

% insert code here

display(eig_time_B)
display(pi_time_B)
display('Erläuterung zu g):')

% h)
display('Nachteile der Power-Iteration:')


end


function showPowerIteration(M,x,N,v_max)

% insert code here

end


function time = measurePowerIteration(M,x,N,v_max,epsilon)
time = 0;

% insert code here

end
