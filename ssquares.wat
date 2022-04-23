(module
    (func (export "sos") (param $x i32) (param $y i32) (result i32)
        (i32.add (i32.mul (local.get $x) (local.get $x)) (i32.mul (local.get $y) (local.get $y)))))