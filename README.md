# find-problems
Script that finds problems with wordrpess sites on shared hosting, use it in crontab.

## Installation
Put this file into the root of your hosting and add to crontab. 

## Example:
```
35 10 * * * /path/to/home/find-problems.sh 2>&1 | mail -s "Cron: Files modified today" miami@blackcrystal.net >/dev/null 2>&1
```
