use v6;
unit class A;
use Data::Section::Simple;

method foo {
    # TODO retrieve caller's =finish
    my %all = get-data-section;
    # do something
    return %all;
}
