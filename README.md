# Testing Test::BDD::Cucumber and CI
This is a basic repository that tests one of [CPAN]'s [Cucumber] implementations
with prove/continuous integration.

The reason for this repository is to figure out why using [Test2::Suite],
specifically [Test2::Bundle::More] turns on verbose output when using with
`pherkin` or `prove`.

# Running the tests

```bash
$ pherkin t/cucumber/
1..0
  this is a test
    Oh and this is a description. Neat, huh?

    Scenario: Testing with Test2::Bundle::More
ok 1
      Given foo
ok 2
      Then bar

$ prove --source Feature --feature-option extensions=.feature --ext=.feature -r t/
1..0
t/cucumber/basic.feature .. ok 1
t/cucumber/basic.feature .. 1/? ok 2
t/cucumber/basic.feature .. ok
All tests successful.
Files=1, Tests=2,  0 wallclock secs ( 0.20 usr +  0.02 sys =  0.22 CPU)
Result: PASS
```

[CPAN]: https://metacpan.org/
[Cucumber]: https://p3rl.org/Test::BDD::Cucumber
[Test2::Bundle::More]: https://p3rl.org/Test2::Bundle::More
[Test2::Suite]: https://p3rl.org/Test2::Suite
