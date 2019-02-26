class Payroll
  def print_menu
    puts '==== Payroll ===='
    puts '1) Add employee'
    puts '2) Process payroll'
    puts '3) Exit'
  end

  def get_user_input
    gets.to_i
  end

  def menu_options(choice)
    case choice
    when 1
      'Add Employee'
    when 2
      'Process Payroll'
    when 3
      'Goodbye'
    else
      'Invalid choice try again'
    end
  end
end
