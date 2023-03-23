use dep::std::println;
fn main(x : [Field; 2], y : pub [Field; 2], expect: Field) {
    let out = dotproduct(x,y);
    println("x: ");
    println(x);
    println("y: ");
    println(y);
    println("computed dotproduct: ");
    println(out);
    constrain out == expect;
}

fn dotproduct(x : [Field; 2], y : [Field; 2]) -> Field {
    let mut out = 0;
    for i in 0..2 {
        out = out + x[i] * y[i];
    }
    out
}

// testing in nargo
#[test]
fn test_main() {
    constrain dotproduct([1,2],[3,4]) == 11;
}
