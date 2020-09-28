C:\Windows\system32>sqlplus / as sysdba     /* open command prompt as administrator then log in as sysdba */
show user                                   /* make sure your in sys user*/
 archive log list;                          /* to check weather it is on archive log mode or no archive log mode */
 shutdown immediate;                        /* if its on no archive log mode then you have to shut down the database */
 startup mount                              /*after its dismounted startup mount*/
 alter database archivelog;                 /* change the database log mode*/
 alter database open;                       /* because its on mount stage,we can't perform any query here so make it open*/
 archive log list                           /*check again the database log mode and its done*/
