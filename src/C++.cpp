#include<iostream>
#include <fstream>
using namespace std;

// This is an example of the C++ language
int main(){
    int arr[2];
    
    int num;
    for(int i=0;i<2;i++){
        cout<<"Enter number "<<i<<endl;
        cin>>num;
        arr[i] = num;
    }

    char op;
    cout<<"Enter operator"<<endl;
    cin>>op;
    
    int result;
    bool invalid = false;
    if(op == '+')
        result = arr[0] + arr[1];
    else if(op == '*')
        result = arr[0] * arr[1];
    else if(op == '-'){
        if(arr[0] >= arr[1])
            result = arr[0] - arr[1];
        else
            result = arr[1] - arr[0];
    }
    else if(op == '/')
        result = arr[0] / arr[1];
    else{
        printf("This operator has not been included.");
        invalid = true;
    }
    
    ofstream handle;
    handle.open("output.txt");
    if(!invalid)
        handle << result << endl;
    else
        handle << "invalid" << endl;

    return 0;
}
