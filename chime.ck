// originated by http://qiita.com/eri/items/c7facf0925182e629ddb
//SinOsc s => JCRev r => Echo e => dac;
SinOsc s => Echo e => dac;
.2 => s.gain;
//.1 => r.mix;

[0, 2, 4, 7, 9, 11] @=> int scale[];

while(true)
{
    75 + scale[Math.random2(0, scale.cap() - 1)] => Std.mtof => s.freq;
    800::ms => now;
}

