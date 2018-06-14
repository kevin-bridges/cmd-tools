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

## dontsleep.cmd
Enable/disable Performance Power mode via cmd line. Also has a persistant setting to 
get around Group Policy Settings. Use this if your tired of having to move your mouse
to keep the screen alive.
```cmd
Examples:
  Enable Performance Power Setting once
    dontsleep.cmd
  
  Enable Performance Power Setting Persistantly without/with default wait  time intervals between setting    
  
    dontsleep -P    
    dontsleep -P 300
  
  Enable Balanced Power Setting    
  
    dontsleep -D
```

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

## dtstamp.cmd
Saves date stamp to %datestamp% env variable
Saves time stamp to %timestamp% env variable
