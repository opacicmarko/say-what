# say-what

## Steps
1. Open a terminal
2. Clone and execute the script (single command): 
```bash
git clone https://github.com/opacicmarko/say-what && ./say-what/say.sh
```

## Stopping the script
To stop the script you need to kill the script process:
1. List running processes
```bash
ps -A | grep say
```
2. Find the ID of the process in question
```bash
  PID TTY           TIME CMD
26115 ttys000    0:00.00 /bin/bash ./say-what/say.sh       <-- THE say.sh process
```
3. Kill the process using the PID
```bash
kill 26115
```

## Customization
There are two arguments you can provide to the script:
- MESSAGE - the message that will be passed to `say` to be read out loud.
- INITIAL_TIMEOUT - the time to `sleep` before entering the `say` loop.

The arguments are provided without any keywords:
```bash
./say.sh <MESSAGE> <INITIAL_TIMEOUT>
```
Example:
```bash
./say.sh "ha ha" 10
```
Note that because of the argument order, the timeout cannot be provided without a custom message. The default timeout is set to 60 seconds.

## Troubleshooting
If the script is not executing, run this command before executing the script again:
```bash
chmod +x say-what/say.sh
```
