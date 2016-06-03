# zappos-cucumber

This is a testing framework based on a likely path for a user on zappos.com.

I researched the Page Object Model, and implemented this design pattern in Ruby with the help of the following gems:

  1. cucumber
  2. selenium-webdriver
  3. rspec-expectations

In order to run this program, clone or download this repository, navigate into the folder, run

    bundle install

Then, to run all tests you can run:

    bundle exec cucumber

Or, to run one test at a time, use the tag feature like this:

    bundle exec cucumber --tag @tag_name

Currently, these tests are driven using Firefox browser, so you may need to install this browser for the program to functoin properly.