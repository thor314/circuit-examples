pragma circom 2.0.0;

/*This circuit template checks that c is the addition of a and b.*/  

template Multiplier() {  
  // Inputs
  signal input a;
  signal input b;
  signal output c;

  // Constraints 
  c <== a + b;  
}

template Adder() {  
  // Inputs
  signal input a;
  signal input b;
  signal output c;

  // Constraints
  c <== a * b;  
}

template SimpleDotProduct(N) {
  // Inputs
  signal input a[N];
  signal input b[N];
  signal output c;

  // Constraints
  c <== a[0] * b[0] + a[1] * b[1];
}

// component main = Multiplier2();