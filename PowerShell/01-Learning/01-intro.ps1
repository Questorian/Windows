# SV-B319 - PowerShell for Beginners - Jeffery Snover & Travis Jones
# 2012-05-28


# NOTE: this script is designed to work with PowerShell 3.0!
# Some of the cmdlets in this script are only available starting PS 3.0. Thus
# check the version of PowerShell you are running under with the command:
#
#   $host.version
# 



# COMMENTS
# --------
# comments are currently single line comments and there appear to be no block 
# comments in PS yet
# '#' hash sigh = a comment - Just like Perl (bash, etc)


# get-process applet
# ------------------
# comments can go after the command too ...
get-process     # return all information on all running processes



get-process -name svchost       # find SVCHOST processes only

get-process -n svchost          # will match first uique parameter
                                # first not ambiguous parameter

get-process svchost             # find SVCHOST processes only

get-process svcho*              # SVCHost - with wildcards

gps -name svchost               # use a shell alias - gps -> get-process

gps -n svc*                     # everything abbreviated 
                                # plus - wild cards for parameters

gps svc*                        # positional parameters

# ALIAS
# -----
# Same as the bash, sh, alias functions - very handy for command line action

alias           # see all current aliases


# SORT clause
# -----------
# Very useful to get the relevant data implemented as a filter

get-process | sort handles          # sort process list by handle count

get-process | sort handles -desc    # process by descending handle count

gps | sort id                       # processes sorted by PID - ascending

gps | sort workingset               # processes by workingset memory usage


gps | sort workingset -desc         # workingset memory usage - top-down

gps | sort -desc workingset         # workingset memory - top-down (better way)



# WHERE clause
# ------------
# pipe data into WHERE clauses 

# get-process | where handles -ge 900 - currently does not work!


# VERSION
# Finding the current PowerShell version

$host.version       # use builtin variable '$host'

get-host            # call this applet to return version and other stuff

$PSVersionTable     # similar but different output to get-host
                    # note - this seems to return different (ie more) 
                    # information when called within a script



