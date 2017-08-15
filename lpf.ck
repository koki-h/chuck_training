SqrOsc s => LPF f => dac;
while(true){

  Math.random2f(1,500) => f.freq;
  Math.random2f(1,300) => f.Q;
  100::ms => now;
}

