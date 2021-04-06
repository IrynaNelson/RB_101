# def foo(param = "no")
#   "yes"
# end
# p bar(foo)

def bar(param = "no")
  p param == "no" ? "yes" : "no"
end
