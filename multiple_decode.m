function x = multiple_decode(sir)
  
  %se imparte sirul in litere care se salveaza intr-un cell array y
  y = strsplit(sir, ' ');
  %initializare x
  x = '';
  
  for i = 1:length(y)
    %pentru fiecare element din y(fiecare litera codata)
    %se aplica functia morse_decode si se salveaza in aux rezultatul
    aux = morse_decode(y{i});
    %litera se concateneaza cu sirul x existent
    x = strcat(x, aux);
  endfor
  
endfunction
  