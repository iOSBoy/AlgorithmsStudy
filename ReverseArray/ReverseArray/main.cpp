//
//  main.cpp
//  ReverseArray
//
//  Created by yutao on 15-4-29.
//  Copyright (c) 2015年 yutao. All rights reserved.
//

/**
 *  问题：编写一个能够支持数组快速移位的算法，时间复杂度在O(N)以内。
 */

/**
 *  答：要实现在线性的时间内实现数组的快速移动，就要考虑如何使用逆序算法来达到移动的目的。例如，我要移动的数组元素称为A，剩余的部分称为B，那么原来次序为AB，如何变成BA呢？其实根据倒置的算法是可以实现移位操作的，我们先取A'为A的逆序序列，B'为B的逆序序列,进行(A'B')'操作即可得到BA序列。实现算法如下：
 */

#include <iostream>
using namespace std;

void PintArray(int dataArray[],int n){
    
    for(int i=0;i<n;++i){
        cout<<dataArray[i]<<" ";
    }
    
    cout<<endl;
}

void ReverseArray(int dataArray[],int start,int end){
    int low=start,high=end;
    
    if(start>end){
        cout<<"Index Error!"<<endl;
        cout<<"start:"<<start<<" end:"<<end;
    }
    
    while(low<high){//对数据进行逆序  第一个 和 最后一个数据交换位置
        int tempDate = dataArray[low];//取第一个数据 存起来
        dataArray[low] = dataArray[high];//取最后一个数据放到第一个数据的位置
        dataArray[high] = tempDate;//将第一个位置的数据存到最后一个位置上
        ++low;//底位递增
        --high;//高位递减
    }
    
}


void QuickShift(int dataArray[],int shift,int n){
    int len =n;
    PintArray(dataArray,n);//原始数据   1 2 3 4 5 6 7 8 9 10
    
    ReverseArray(dataArray, 0, shift-1);//A`逆序
    
    PintArray(dataArray,n);//数据顺序为 4 3 2 1 5 6 7 8 9 10
    
    ReverseArray(dataArray, shift, len-1);//B`逆序
    
    PintArray(dataArray,n);//数据顺序为 A`B`   A`:[4 3 2 1] B` :[10 9 8 7 6 5]
    
    ReverseArray(dataArray, 0, len-1);//对 A`B` 逆序 的到BA
    
    PintArray(dataArray,n);//得到的结果 5 6 7 8 9 10 1 2 3 4
}



int main (int argc, const char * argv[])
{
    int dataArray[10]={1,2,3,4,5,6,7,8,9,10};
    int n = sizeof(dataArray)/sizeof(int);
    
    QuickShift(dataArray, 4,n);
    
    return 0;
}


