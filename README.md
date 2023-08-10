# Test Project

## Build
```
make
```

## Debug
```
export LD_LIBRARY_PATH=".:$LD_LIBRARY_PATH"
lldb main
(lldb) image lookup -vn add
(lldb) breakpoint set --shlib test_lib.so --name add
(lldb) b main.cc : 8
(lldb) r
```
