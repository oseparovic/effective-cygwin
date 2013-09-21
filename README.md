Effective-Cygwin
----------------

Effective Cygwin is a collection of configurations and instructions designed to set up Cygwin to closely mimic a linux bash shell by puttying into your local cygwin environment to get the benefits of a putty terminal. Keep in mind this is still far from a true linux terminal and you will likely run into some compatibility issues.

Setup
-----

1. **Download [Puttycyg][1]**. When you start puttycyg create a new saved session called `local` with command: `-` and port `-`. Select `Cygterm` as the connection type and save.

2. **Set up your session shortcut**. Create a shortcut to your putty.exe and add the following command line paramters to your target field `-load local` e.g. `C:\tools\puttycyg-20101029\putty.exe -load local`. Here `local` represents the name of the saved session we created in step 1 to be loaded automatically when the shortcut is selected. In the shortcut settings you can also supply a shortcut key command to open puttycyg. Personally I like to use `Ctrl + Alt + T`.

3. **Configure Cygwin HOME**. First make sure to set the Windows HOME variable e.g. `HOME=C:\Users\MY_USER`. Then execute the following command: `mkpasswd -l -p "$(cygpath -H)" > /etc/passwd`
    
    This will set the home dir of each user to be that users directory. **important** - remember that ssh (e.g. if you are using git) explicitly ignores the HOME variable.

4. **OPTIONAL install effective-cygwin configuration files**. If you've followed the above steps correctly your C:\Users\MY_USER directory is now the home directory of your cygwin installation. As such putting a `.bashrc`, `.bash_profile` or `.vimrc` configuration files here like the ones included in this repo will ensure it is executed by the cygwin terminal.

Notes
-----

* **Python** - do not install python port through cygwin. Version 2.6 is OLD. Install through windows installer and then follow steps below if for some reason you need to use the interactive prompt.
Non-cygwin interactive prompts often do not work in cygwin. See [this][2] google code issue. **Workaround** - if you want to use the python interactive prompt run `python -i`.

* **MongoDb** - non-cygwin interactive prompts often do not work in cygwin. See [this][2] google code issue. **Workaround** - no known way of making MongoDb interactive prompt work in cygwin :(

[1]: http://puttycyg.googlecode.com/files/puttycyg-20101029.zip
[2]: http://code.google.com/p/mintty/issues/detail?id=56
