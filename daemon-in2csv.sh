source check.sh

cd $WORKSPACE                          

while [ 1 -eq 1 ]                      
do                                     
  for i in $(ls *.xlsx 2> /dev/null)   
  do                                   
    if [ ! -f "${i/.xlsx/.csv}" ]      
    then                               
      echo "Proceeding $i to ${i/.xlsx/.csv}"                                  
      ${BIN_IN2CSV} -f xlsx $i > ${i/.xlsx/.csv}                                      
      touch ${i/.xlsx/.end}            
    fi                                 
  done                                 
  sleep 2                              
  find ${WORKSPACE} -type f -mtime +1 -exec rm {} \;                           
done
