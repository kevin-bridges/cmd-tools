# cmd-tools
Simple batch files to boost productivity with cmd.exe

## desk.cmd
Quickly navigate to desktop directory

## wait.bat
Simplified wait command
```cmd
wait <number-of-seconds>
wait 5
```
## showpath.cmd
Cleanly display your env path variable

## pwd.cmd
Display present working directory

## kdiff.cmd
Open kdiff via cmd.exe (can pass in args)

*must have kdiff3 installed in Program Files -or- saved in %PATH%*
```cmd
kdiff <file1> <file2>
```
## npp.cmd
Open notepad++ via cmd.exe (can pass in args)

*must have notepad++ installed in Program Files (x86) -or- saved in %PATH%*
```cmd
npp
npp <file1>
npp <file1> <file*>
```

## gitlog.cmd
Runs `git log --decorate --oneline --graph` to provide a cleaner view of branch history

## hist.cmd
Simplified way to view cmd history
