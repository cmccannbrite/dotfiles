local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
return{
  s("test", t{"//test this thing is testing"}),
  s("foo", t{"//bar"}),
  s("new", t{"//the newest thing around"}),
  
  s("fn", fmt([[
      function {1} ({2}){{
        {3} 
      }};
  ]], {i(1, "functionname"), i(2, "arguments"), i(3, "//TODO: WRITE CODE HERE")})),
}
