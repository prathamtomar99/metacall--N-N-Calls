from metacall import metacall_load_from_file, metacall

metacall_load_from_file('node', ['js_functions.js'])

print("=== Python -> JS ===")

r_int = metacall('js_int', 3, 4)
print(f"[INT]   js_int(3, 4)        = {r_int}   | expected: 7          | pass: {r_int == 7}")

r_float = metacall('js_float', 1.5, 2.5)
print(f"[FLOAT] js_float(1.5, 2.5)  = {r_float} | expected: 4.0        | pass: {r_float == 4.0}")

r_str = metacall('js_str', 'hello', 'world')
print(f"[STR]   js_str(hello,world)  = {r_str} | expected: helloworld | pass: {r_str == 'helloworld'}")

r_bool = metacall('js_bool', True)
print(f"[BOOL]  js_bool(True)        = {r_bool}  | expected: False      | pass: {r_bool == False}")

r_null = metacall('js_null')
print(f"[NULL]  js_null()            = {r_null}  | expected: 0          | pass: {r_null == 0}")