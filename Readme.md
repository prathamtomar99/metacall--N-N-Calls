# MetaCall Polyglot Examples

6 working cross-language boundary tests: JS↔Python, JS↔Ruby, Python↔Ruby

## Run

metacall test_js_to_py.js  // working
metacall test_js_to_ruby.js // not working (after result -> clearnup issue)
metacall test_py_to_js.py // working
metacall test_py_to_ruby.py // working
metacall test_ruby_to_py.rb // working
metacall test_ruby_to_js.rb // working

## Known Issues

- rb_null() returns Invalid/None across boundaries — Ruby loader bug in v0.9.20
- Ruby as caller requires MetaCallRbLoaderPort (not bare globals)
