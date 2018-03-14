#!/usr/bin/env perl

use v5.10;
use strict;
use warnings;
use Test::BDD::Cucumber::StepFile;
use Test2::Bundle::More;

Given qr/foo/ => sub {
    ok 1;
};

Then qw/bar/ => sub {
    ok 1;
};

done_testing;
