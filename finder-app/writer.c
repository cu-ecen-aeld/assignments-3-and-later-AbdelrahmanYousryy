#include <syslog.h>
#include <stdio.h>
#include <stdlib.h>



int main(int argc , char*argv[])
{
    if(argc < 3)
    {
        syslog(LOG_ERR,"%s" , "Error no sufficient arguments ");
        exit(1);
    }
    char* writefile = argv[1];
    char* writestr = argv[2];
    syslog(LOG_DEBUG, "Writing %s to %s", writestr, writefile);
    FILE* file;

    // Create new file
    file = fopen(writefile,"w");
    // write to this file
    fputs(writestr,file);
    // close the file
    fclose(file);
    return(0);
}

