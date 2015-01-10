#!/bin/bash
export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=$ORACLE_BASE/product/11.2.0/db_1
export ORACLE_SID=xxx
export PATH=$ORACLE_HOME/bin:/u01/app/ogg:$PATH
expdp xxx/xxx directory=dpdata1 schemas=xxx dumpfile=xxx-`date +%Y-%m-%d`.dmp
gzip /u01/dumpfiles/xxx-`date +%Y-%m-%d`.dmp
rm -f /u01/dumpfiles/xxx-`date -d '6 days ago' +%Y-%m-%d`.dmp.gz

