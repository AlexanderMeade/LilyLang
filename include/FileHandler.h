/* date = November 4th 2021 9:03 am */

#ifndef _FILE_HANDLER_H
#define _FILE_HANDLER_H

char *read_file(const char *fileName);

int file_exists(char *file_name);

void file_write(char *file_name, char *frmt, char *content);

FILE *file_flush(FILE *file);

FILE *file_create(char *fileName);

void file_writeTo(FILE *file);
#endif //_FILE_HANDLER_H
