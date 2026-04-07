def rb_int(a, b)
  a.to_i + b.to_i
end

def rb_float(a, b)
  a.to_f + b.to_f
end

def rb_str(a, b)
  a.to_s + b.to_s
end

def rb_bool(a)
  !a
end

def rb_null
  "0"
end