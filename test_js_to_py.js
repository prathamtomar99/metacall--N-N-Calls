const { metacall, metacall_load_from_file } = require('metacall');

metacall_load_from_file('py', ['py_functions.py']);

console.log("=== JS -> Python ===");

const r_int = metacall('py_int', 3, 4);
console.log(`[INT]   py_int(3, 4)       = ${r_int}   | expected: 7   | pass: ${r_int === 7}`);

const r_float = metacall('py_float', 1.5, 2.5);
console.log(`[FLOAT] py_float(1.5, 2.5) = ${r_float} | expected: 4.0 | pass: ${r_float === 4.0}`);

const r_str = metacall('py_str', 'hello', 'world');
console.log(`[STR]   py_str(hello,world) = ${r_str} | expected: helloworld | pass: ${r_str === 'helloworld'}`);

const r_bool = metacall('py_bool', true);
console.log(`[BOOL]  py_bool(true)       = ${r_bool}  | expected: false | pass: ${r_bool === false}`);

const r_null = metacall('py_null');
console.log(`[NULL]  py_null()           = ${r_null}  | expected: 0     | pass: ${r_null === 0}`);