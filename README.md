Dev environment repo to easily bootstrap a mac

## use on mac
```
./bootstrap_mac.sh
```

## Add new configs or apps
### A **cask** app/font
- add the **app/font** to `cast_tasks`
- add a folder with the name of the **app/task**
- add a `_bootstrap.sh` and add the needed commands to link config files, set options, etc. -> have a look at existing tasks

### Everything else
- add a `*.sh` script to the `_scripts` folder
- call it from `bootstrap_mac.sh`, optional with a prompt for user
