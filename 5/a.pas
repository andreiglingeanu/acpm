type max = 1..100;
     days_in_month = 1 .. 31;
var i, n : max;
    month : array [max] of days_in_month;
    days_with_four, days_with_three : 0 .. 31;
    days_with_four_written, days_with_three_written : 0 .. 31;
begin
    assign(input, 'input.txt');   reset(input);
    assign(output, 'output.txt'); rewrite(output);

    readln(n);

    for i := 1 to n do
        read(month[i]);

    days_with_three := 0;
    days_with_four  := 0;

    for i := 1 to n do
        if month[i] mod 2 <> 0 then
            inc(days_with_three);
    for i := 1 to n do
        if month[i] mod 2 = 0 then
            inc(days_with_four);

    days_with_four_written  := 0;
    days_with_three_written := 0;

    for i := 1 to n do
        if month[i] mod 2 <> 0 then
            begin
                inc(days_with_three_written);
                if days_with_three_written = days_with_three then
                    write(month[i])
                else
                    write(month[i], ' ');
            end;

    writeln();
    for i := 1 to n do
        if month[i] mod 2 = 0 then
            begin
                inc(days_with_four_written);
                if days_with_four_written = days_with_four then
                    write(month[i])
                else
                    write(month[i], ' ');
            end;
    writeln();

    if days_with_four >= days_with_three then
        write('YES')
    else
        write('NO');
end.
