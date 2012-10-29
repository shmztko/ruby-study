# coding: utf-8
class MethodCaller
  def execute(message)
    p message
  end
end

if __FILE__ == $0
  caller = MethodCaller.new()
  caller.execute "ほげほげ"
end
