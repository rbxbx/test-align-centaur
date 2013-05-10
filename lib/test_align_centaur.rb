require 'centaur'
require 'rspec/core/formatters/base_text_formatter'

class TestAlignCentaur < RSpec::Core::Formatters::BaseTextFormatter

  def print(arg)
    if @centaur.nil?
      @centaur = String::CENTAUR.chomp
    elsif @centaur.empty?
      @centaur = "\n" + String::CENTAUR.chomp
    end
    while char = @centaur.slice!(0)
      break if char == 'x'
      output.print(char)
    end
    output.print(arg)
  end

  def example_passed(example)
    super(example)
    print success_color('.')
  end

  def example_pending(example)
    super(example)
    print pending_color('*')
  end

  def example_failed(example)
    super(example)
    print failure_color('F')
  end

  def start_dump
    super()
    output.puts
  end

end
