var a : double;
begin
    assign(input, 'input.txt');   reset(input);
    assign(output, 'output.txt'); rewrite(output);

    read(a);
    write(a*a:0:0);
end.
