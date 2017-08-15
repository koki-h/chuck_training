// originated by sndbuff.ck
// sound file
me.dir() + "data/mospeada.wav" => string filename;
if( me.args() ) me.arg(0) => filename;

// the patch 
SndBuf buf => dac;
// load the file
filename => buf.read;

// time loop
while( true )
{
   Math.random2(1000,3470000) => buf.pos;
    Math.random2f(.2,.5) => buf.gain;
    Math.random2f(.5,1.5) => buf.rate;
    5000::ms => now;
}
