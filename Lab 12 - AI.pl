
% Lab 10 - Graphs
% Directed Graph: Saudi Cities

% Facts
edge('Makkah', 'Madinah').
edge('Madinah', 'Makkah').
edge('Madinah', 'Taif').
edge('Madinah', 'Tabuk').
edge('Makkah', 'Riyadh').

edge('Taif', 'Tabuk').
edge('Tabuk', 'Taif').
edge('Taif', 'Dammam').

edge('Qatif', 'Madinah').
edge('Qatif', 'Dammam').
edge('Dammam', 'Qatif').

edge('Dammam', 'Riyadh').
edge('Riyadh', 'Dammam').


% Rules

travel(From, To, Path) :-
    path(From, To, [From], P),
    reverse(P, Path).

path(X, X, P, P).

path(From, To, Visited, Path) :-
    edge(From, X),
    not(member(X, Visited)),
    path(X, To, [X|Visited], Path).
