# day-mode
Scripts which will change color schemes depending on if it is night or day outside

The initial scripts can be found here: https://gist.github.com/Skehmatics/4c683abb2b612434aa304ecc09aad51d

I am using it the day and night check file with a cron job.
My crontab file looks as follows:

` Minute   Hour   Day of Month       Month          Day of Week        Command
 (0-59)  (0-23)     (1-31)    (1-12 or Jan-Dec)  (0-6 or Sun-Sat)
    *       *           *               *               *           /home/azak/git/day-mode/day-night-cycle > /home/azak/git/day-mode/log
`
