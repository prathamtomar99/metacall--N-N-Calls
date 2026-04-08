from metacall import metacall_load_from_file, metacall

def add(a, b):
    return a + b

def multiply_via_js(a, b):
    metacall_load_from_file('node', ['functions.js'])
    return metacall('js_multiply', a, b)

def complex_calc(a, b):
    metacall_load_from_file('node', ['functions.js'])  # load once ideally
    added = add(a, b)
    return metacall('js_multiply', added, b)

if __name__ == "__main__":
    print(complex_calc(3, 4))