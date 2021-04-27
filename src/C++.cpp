// This is an example of the C++ language

#include<iostream>
#include <fstream>
using namespace std;

int main(){
    int arr[2];
    
    int num;
    for(int i=0;i<2;i++){
        cout<<"Enter number "<<i+1<<endl;
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
    else if(op == '-')
        result = arr[0] >= arr[1]?arr[0]-arr[1]:arr[1]-arr[0];
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
