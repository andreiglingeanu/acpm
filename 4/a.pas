var a : integer;
begin
    assign(input, 'input.txt');   reset(input);
    assign(output, 'output.txt'); rewrite(output);

    read(a);
    write(a, 9, 9 - a);
end.
