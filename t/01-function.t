use v6;
use Test;
use Data::Section::Simple;

my %all = get-data-section;
my $foo = get-data-section('foo.html');

is %all<bar.tt>, q:to/EOF/;
[% IF true %]
Foo
[% END %]
EOF

is $foo, q:to/EOF/;
<html>
<body>Hello</body>
</html>

EOF

done-testing;

=finish

@@ foo.html
<html>
<body>Hello</body>
</html>

@@ bar.tt
[% IF true %]
Foo
[% END %]
