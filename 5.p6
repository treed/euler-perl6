my $number = 0;
my $try = 20;
while ($number == 0) {
    say "Trying $try" if $try %% 50;
    $number = $try if $try %% all(11..20);
    $try++;
}
