//
//  main.c
//  PrintDiamond
//
//  Created by yutao on 15-4-30.
//  Copyright (c) 2015年 yutao. All rights reserved.
//
// http://stackoverflow.com/questions/10456654/print-star-diamond-in-c-with-nested-loops

#include <stdio.h>

void outLine(int numSpeaces,int numStars){
    for(int i = 1;i <= numSpeaces;i++) printf(" ");
    for(int i = 1;i <= numStars;i++) printf("*");
    printf("\n");
}

void printDiamond(int n){

    int numSpeaces = (n - 1)/2;
    int numStars = 1;

    while(numSpeaces > 0){
        outLine(numSpeaces,numStars);
        numSpeaces-=1;
        numStars+=2;
    }
    
    while(numStars > 0){
        outLine(numSpeaces,numStars);
        numSpeaces+=1;
        numStars-=2;
    }
}

int main(int argc, const char * argv[]) {
    
    int n = 21;
    
    printDiamond(n);
    
    return 0;
}
