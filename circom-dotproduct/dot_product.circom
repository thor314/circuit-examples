pragma circom 2.0.0;

/* This  circuit calculates the dot product of two vectors. */  

template Multiplier2() {  
  signal input a;
  signal input b;
  signal output out;

  out <== a * b;  
}

template Adder2() {  
  signal input a;
  signal input b;
  signal output out;

  out <== a + b;  
}

template Adder(N) {  
  signal input in[N];
  signal output out;
  component adder2[N];

  var outvar = 0;
  for (var i = 0; i < N; i++) {
    adder2[i] = Adder2();
    adder2[i].a <== in[i];
    adder2[i].b <== outvar;
    outvar = adder2[i].out;
  }

  out <== outvar;
}

template DotProduct(N) {
  signal input a[N];
  signal input b[N];
  signal input expect;
  signal output out;
  signal products[N];
  component adder = Adder(N);
  component multiplier[N];

  for (var i = 0; i < N; i++) {
    multiplier[i] = Multiplier2();
    multiplier[i].a <== a[i];
    multiplier[i].b <== b[i];
    products[i] <== multiplier[i].out;
  }

  adder.in <== products;
  out <== adder.out;
  out === expect;
}

component main = DotProduct(2);
