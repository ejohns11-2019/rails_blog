# def sum(num1, num2)
#   num1 + num2
# end

require_relative 'payroll'

@payroll = Payroll.new
@payroll.print_menu
choice = @payroll.get_user_input
@payroll.menu_options(choice)
