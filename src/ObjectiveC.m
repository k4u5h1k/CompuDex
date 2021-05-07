// This is an example of 

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        int a, i;
        int arr[2];
        char c[5];
        for(i=0;i<2;i++)
        {
            NSLog(@"Enter number : ");
            a = scanf("%d", &arr[i]);
        }
        NSLog(@"Enter operator : ");
        a = scanf("%s", c);
        
        bool valid = true;
        int res;
        if(c[0]=='+')
            res = arr[0]+arr[1];
        else if(c[0]=='-')
            res = arr[0]-arr[1];
        else {
            NSLog(@"The operator has not been included");
            valid = false;
        }
        
        if(valid) {
            NSString *st = [NSString stringWithFormat:@"%i",res];
            NSFileHandle *file;
            file = [NSFileHandle fileHandleForUpdatingAtPath: @"./output.txt"];
            if (file == nil)
                NSLog(@"Failed to open file");
            [file seekToFileOffset: 10];
            [file writeData: st];
            [file closeFile];
        }
        [pool drain];
        return 0;
}

/*
*  You can run this code in any online code editor
*  that supports objective C.
*  Setup instruction Windows, MAC and Linux can be found here : 
*  https://www.tutorialspoint.com/objective_c/objective_c_environment_setup.htm
*/