//
//  main.m
//  Selection_sort
//
//  Created by yutao on 15-4-17.
//  Copyright (c) 2015年 yutao. All rights reserved.
//

#import <Foundation/Foundation.h>

//我自己的实现

/*
#include <stdio.h>
void selection_sort(int arr[], int len) {
    int i, j, temp,min;
    for (i = 0; i < len - 1; i++)
    {
        min = i;//假设第一个数是最小的
        
        // j = i + 1  从前到后升序 始终把最新值放在最前边 在从这个值的后一个数开始寻找最小值
        for (j = i + 1; j < len; j++)//通过一轮循环找到真正的最小值
        {
            if (arr[min]> arr[j]) {
                min = j;
            }
        }
        
        
        
        if (min != i) {//如果最小的值不是我们假设的最小值 存储找到的最小值和当前假设的最小值进行交换
            temp = arr[min];
            
            arr[min] = arr[i];
            
            arr[i] = temp;
        }
    }
    
}
 
*/

//====标准C语言程式碼====
void selection_sort(int arr[], int len) {
    int i, j, min, temp;
    for (i = 0; i < len - 1; i++) {
        min = i;
        for (j = i + 1; j < len; j++){
            if (arr[min] > arr[j]){
                min = j;
            }
        }
        
        if (min != i) {
            temp = arr[min];
            arr[min] = arr[i];
            arr[i] = temp;
        }
    }
}

int main() {
    int arr[] = { 22, 34, 3, 32, 82, 55, 89, 50, 37, 5, 64, 35, 9, 70 };
    int len = (int) sizeof(arr) / sizeof(*arr);
    selection_sort(arr, len);
    int i;
    for (i = 0; i < len; i++)
        printf("%d ", arr[i]);
    printf("\n");
    return 0;
}
 
 
 
 
