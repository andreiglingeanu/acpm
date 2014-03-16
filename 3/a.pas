var a, b : integer;
begin
    assign(input, 'input.txt');   reset(input);
    assign(output, 'output.txt'); rewrite(output);

    read(a);
    b := a div 10;

    if a = 5 then
        write(25)
    else
        write(b * (b + 1), 25);

end.
