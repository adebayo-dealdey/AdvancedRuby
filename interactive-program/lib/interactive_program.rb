class InteractiveProgram
  def self.start
    program = ''
    each_line = ''
    until each_line.strip.match(/q/i)
      print 'ipr(main):001:0> '
      each_line = gets
      if each_line.strip == ''
        print 'ipr(main):001:0> '
        eval(program)
        program = ''
        puts
      else
        program += each_line
      end
    end
    exit
  end
end

