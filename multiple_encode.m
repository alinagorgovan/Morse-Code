function x = multiple_encode(str)
  
  str = upper(str);
  %initializare x si aux
  x = '';
  aux = '';
  for i = 1:length(str)
    %pentru fiecare caracter din sir se aplica functia encode
    %si se salveaza in variabila aux rezultatul conversiei 
    aux = encode(str(i));
    %se concateneaza ceea ce s-a salvat in x cu un spatiu si variabila aux
    %rezultatul devine un cell array cu un string-ul dorit in el
    x = strcat(x, {' '}, aux);
  endfor
  %se salveaza doar string-ul din cell array
  x = x{1};
endfunction