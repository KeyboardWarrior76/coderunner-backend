const { NodeVM } = require("vm2");
const { performance } = require("perf_hooks");


// PROGRAM SETUP
process.stdin.setEncoding('utf8');

let input = null;

const result = {
  stdout: [],
  return: null,
  error: null,
  run_time: null,
};

const vm = new NodeVM({ 
  console: "redirect",
  eval: "false",
  sandbox: {},
  // timeout: 1000,
});


// READ FOR STDIN INPUT
process.stdin.once('readable', () => {
  var chunk = process.stdin.read();
  if (chunk !== null) input = JSON.parse(chunk);
});


// WAIT FOR INPUT TO FINISH AND EXECUTE
process.stdin.on('end', () => {
  const handleStdout = (data) => result.stdout.push(data.toString());
  vm.on('console.log', (data) => handleStdout(data));
  vm.on('console.info', (data) => handleStdout(data));
  vm.on('console.warn', (data) => handleStdout(data));
  vm.on('console.error', (data) => handleStdout(data));
  
  try {
    const t0 = performance.now();
    result.return = vm.run(input.code + input.runScript);
    const t1 = performance.now();
    result.run_time = t1 - t0;
  } catch(error) {
    result.error = error.toString();
  }
  
  process.stdout.write(JSON.stringify(result));
});
