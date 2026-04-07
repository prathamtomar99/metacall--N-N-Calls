
function js_int(a, b) { return Math.trunc(a) + Math.trunc(b); }
function js_float(a, b) { return parseFloat(a) + parseFloat(b); }
function js_str(a, b) { return String(a) + String(b); }
function js_bool(a) { return !Boolean(a); }
function js_null() { return 0; }

module.exports = { js_int, js_float, js_str, js_bool, js_null };