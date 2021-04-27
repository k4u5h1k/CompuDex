#include<stdio.h>
#include<string.h>
#include<math.h>

// This is an example of the C language
int main(){
    int arr[2];

    for(int i=0;i<2;i++){
        printf("Enter number %d\n", i+1);
        int num;
        scanf("%d", &num);
        arr[i] = num;
    }

    char operator;
    printf("Enter operator\n");
    scanf("%*c%c", &operator); // %*c discards preceeding newline

    int result;
    int invalid = 0;
    if(strncmp(&operator, "+", 1) == 0)
        result = arr[0] + arr[1];
    else if(strncmp(&operator, "*", 1) == 0)
        result = arr[0] * arr[1];
    else if(strncmp(&operator,"-",1) == 0){
        if(arr[0] >= arr[1])
            result = arr[0] - arr[1];
        else
            result = arr[1] - arr[0];
    }
    else if(strncmp(&operator, "/", 1) == 0)
        result = arr[0] / arr[1];
    else{
        printf("This operator has not been included.");
        invalid = 1;
    }

    FILE *handle = fopen("output.txt", "w+");
    if(!invalid)
        fprintf(handle, "%d\n", result);
    else
        fprintf(handle, "Invalid operation\n");
    fclose(handle);

    return 0;
}

/* Usage:
 * 1. Compile the script with gcc C.c
 * 2. You should now have an a.out file in the same directory
 * 3. Execute compiled binary with ./a.out
 * 4. Result will be written to output.txt
 */
