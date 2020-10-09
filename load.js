//var banish = require('to-zalgo/banish');
var string = require('string-sanitizer');
var brain = require('brain.js');
var fs = require('fs');
var removePunctuation = require('remove-punctuation');
var readline = require('readline');
var net = new brain.recurrent.LSTM();
var rl = readline.createInterface({
input: process.stdin,
output: process.stdout
});

fs.readFile('trained.net', (err, data ) => {
net.fromJSON(JSON.parse(data.toString()));
boot();
});


//  { input: '', output: ''},


//net.fromJSON(JSON.parse(data.toString()));
//net.fromJSON(trained);
console.clear();

const boot = () => {
rl.question('Input: ', (input) => {
var input = removePunctuation(input);
var input = input.toLowerCase();
var output = net.run(input);
//console.log('Input: ' + input);
console.log('Output: ' + output);
console.log('');
boot();
});
}