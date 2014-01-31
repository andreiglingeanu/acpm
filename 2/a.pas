var i, n, s : integer;
begin
  assign(input, 'input.txt');   reset(input);
  assign(output, 'output.txt'); rewrite(output);
  read(n);

  s := 0;

  if n <= 0 then
    for i := 1 downto n do
      s := s + i
  else
    for i := 1 to n do
      s := s + i;

  write(s);
end.
