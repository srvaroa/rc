# ~/.bash_profile: executed by bash for login shells
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
# export PATH