#test for the main file so name is mainfile name_spec
#TDD - Test Driven Development (writing test first, then making code pass our test
#BDD - Behavior Driven Development (writing code then testing)

require 'spec_helper'
require_relative '../payroll.rb'
# require_relative '../main.rb' #requiring the file we want to test

# #begin writing our test
# describe 'sum' do #describing what testing
#   it 'adds two numbers' do #to write test key word is it then whatever testing
#     num1 = 2 #making case statements
#     num2 = 3
#     result = 5 #expected result
#     actual = sum(num1, num2) #this will be from main file
#     expect(actual).to eq(result) #expect the actual to be equal to the result
#   end
# end

describe Payroll do
  before(:each) do
    @payroll = Payroll.new
  end

  it 'prints initial menu' do
    expected = "==== Payroll ====\n) Add employee\n2) Process payroll\n3) Exit\n"
    expect { @payroll.print_menu }.to output(expected).to_stdout
  end

describe 'menu options' do

  it 'makes a valid selection for 1)' do
    expected = 'Add Employee'
    actual = @payroll.menu_options(1)
    expect(expected).to eq(actual)
  end

  it 'makes a valid selection for 2)' do
    expected = 'Process Payroll'
    actual = @payroll.menu_options(2)
    expect(expected).to eq(actual)
  end

  it 'makes a valid selection for 3)' do
    expected = 'Goodbye'
    actual = @payroll.menu_options(3)
    expect(expected).to eq(actual)
  end

  it 'msg for invalid input' do
    expect = 'Invalid choice try again'
    actual  = @payroll.menu_options('fake')
    expect(expected).to eq(actual)
  end

end
