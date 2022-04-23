(module
    (func $sos (import "imports" "sos") (param i32) (param i32) (result i32))
    (func (export "mainOnly") (result i32)
        (local $n i32)
        (local $i i32)
        (local.set $n (i32.const 0))
        (local.set $i (i32.const 0))
        (loop $while
            (local.set $i (i32.add (local.get $i) (i32.const 1)))
            (local.set $n (i32.add (local.get $n) (call $sos (local.get $i) (i32.add (local.get $i) (i32.const 1)))))
            (local.set $n (i32.rem_u (local.get $n) (i32.const 1234567)))
            (br_if $while (i32.lt_u (local.get $i) (i32.const 1000000000)))
        )
        (local.get $n)))