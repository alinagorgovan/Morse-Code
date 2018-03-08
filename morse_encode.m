function x = morse_encode(c)
  
  c = upper(c);
  %se genereaza M, un cell array ce contine doar arborele
  M = {morse};
  %se genereaza un cell array continand un string gol unde se va adauga treptat salva calea parcursa
  R = {''};
  %cat timp arborele M nu este goala
  while isempty(M) == 0
    %variabila a salveaza caracterul de la M
    a = M{1};
    %in x se salveaza valoarea din R, si anume cale parcursa pana la R
    x = R{1};
  
    %daca nodul nu este gol se va salva caracterul din nod
    if isempty(a) == 0
      if a{1} == c
        return;
      else
        %nodurile corespondente ramurilor pentru '.' si '-' se salveaza la inceputul cell array-ului
        M = {a{2} a{3} M{:}};
        R = {[x '.'] [x '-'] R{:}};
      endif
    endif
    %cell array-ul ce contine arborele elimina cate un nod
    M = M(2:end);
    R = R(2:end);
  endwhile
  %daca nu se gaseste caracterul cautat se intoarce *
  x = '*';
endfunction