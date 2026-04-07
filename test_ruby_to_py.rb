if !defined?(MetaCallRbLoaderPort) && (!defined?(metacall) || !defined?(metacall_load_from_file))
  begin
    require 'metacall'
  rescue LoadError => e
    puts '=== Ruby -> Python ==='
    puts "[BLOCKED] Ruby port not bootstrapped as caller: #{e.message}"
    exit 0
  end
end

mc_load = lambda do |tag, paths|
  if defined?(MetaCallRbLoaderPort)
    MetaCallRbLoaderPort.metacall_load_from_file(tag, paths)
  elsif defined?(MetaCall)
    MetaCall.metacall_load_from_file(tag, paths)
  else
    metacall_load_from_file(tag, paths)
  end
end

mc_call = lambda do |name, *args|
  if defined?(MetaCallRbLoaderPort)
    MetaCallRbLoaderPort.metacall(name, *args)
  elsif defined?(MetaCall)
    MetaCall.metacall(name, *args)
  else
    metacall(name, *args)
  end
end

mc_load.call('py', ['py_functions.py'])

puts "=== Ruby -> Python ==="

r_int = mc_call.call('py_int', 3, 4)
puts "[INT]   py_int(3, 4)        = #{r_int}   | expected: 7          | pass: #{r_int == 7}"

r_float = mc_call.call('py_float', 1.5, 2.5)
puts "[FLOAT] py_float(1.5, 2.5)  = #{r_float} | expected: 4.0        | pass: #{r_float == 4.0}"

r_str = mc_call.call('py_str', 'hello', 'world')
puts "[STR]   py_str(hello,world)  = #{r_str} | expected: helloworld | pass: #{r_str == 'helloworld'}"

r_bool = mc_call.call('py_bool', true)
puts "[BOOL]  py_bool(true)        = #{r_bool}  | expected: false      | pass: #{r_bool == false}"

r_null = mc_call.call('py_null')
puts "[NULL]  py_null()            = #{r_null}  | expected: 0          | pass: #{r_null == 0}"