//
//  main.m
//  AlgorithmsStudy
//  学习地址 http://zh.wikipedia.org/wiki/冒泡排序 
//  Created by yutao on 15-4-16.
//  Copyright (c) 2015年 yutao. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SIZE 8

void bubble_sort(int a[],int n);

/**
 *
 实例:
 
 原始待排序数组| 6 | 2 | 4 | 1 | 5 | 9 |
 
 
 
 第一趟排序(外循环)
 
 第一次两两比较6 > 2交换(内循环)
 
 交换前状态| 6 | 2 | 4 | 1 | 5 | 9 |
 
 交换后状态| 2 | 6 | 4 | 1 | 5 | 9 |
 
 
 
 第二次两两比较,6 > 4交换
 
 交换前状态| 2 | 6 | 4 | 1 | 5 | 9 |
 
 交换后状态| 2 | 4 | 6 | 1 | 5 | 9 |
 
 
 
 第三次两两比较,6 > 1交换
 
 交换前状态| 2 | 4 | 6 | 1 | 5 | 9 |
 
 交换后状态| 2 | 4 | 1 | 6 | 5 | 9 |
 
 
 
 第四次两两比较,6 > 5交换
 
 交换前状态| 2 | 4 | 1 | 6 | 5 | 9 |
 
 交换后状态| 2 | 4 | 1 | 5 | 6 | 9 |
 
 
 
 第五次两两比较,6 < 9不交换
 
 交换前状态| 2 | 4 | 1 | 5 | 6 | 9 |
 
 交换后状态| 2 | 4 | 1 | 5 | 6 | 9 |
 
 
 
 第二趟排序(外循环)
 
 第一次两两比较2 < 4不交换
 
 交换前状态| 2 | 4 | 1 | 5 | 6 | 9 |
 
 交换后状态| 2 | 4 | 1 | 5 | 6 | 9 |
 
 
 
 第二次两两比较,4 > 1交换
 
 交换前状态| 2 | 4 | 1 | 5 | 6 | 9 |
 交换后状态| 2 | 1 | 4 | 5 | 6 | 9 |
 
 
 
 第三次两两比较,4 < 5不交换
 
 交换前状态| 2 | 1 | 4 | 5 | 6 | 9 |
 交换后状态| 2 | 1 | 4 | 5 | 6 | 9 |
 
 
 
 第四次两两比较,5 < 6不交换
 
 交换前状态| 2 | 1 | 4 | 5 | 6 | 9 |
 
 交换后状态| 2 | 1 | 4 | 5 | 6 | 9 |
 
 
 
 第三趟排序(外循环)
 
 第一次两两比较2 > 1交换
 
 交换后状态| 2 | 1 | 4 | 5 | 6 | 9 |
 
 交换后状态| 1 | 2 | 4 | 5 | 6 | 9 |
 
 
 
 第二次两两比较,2 < 4不交换
 
 交换后状态| 1 | 2 | 4 | 5 | 6 | 9 |
 交换后状态| 1 | 2 | 4 | 5 | 6 | 9 |
 
 
 
 第三次两两比较,4 < 5不交换
 
 交换后状态| 1 | 2 | 4 | 5 | 6 | 9 |
 交换后状态| 1 | 2 | 4 | 5 | 6 | 9 |
 
 
 
 第四趟排序(外循环)无交换
 
 第五趟排序(外循环)无交换
 
 
 助记码
 i∈[0,N-1)                //循环N-1遍
 j∈[0,N-1-i)              //每遍循环要处理的无序部分
 swap(j,j+1)              //两两排序（升序/降序）
 
 */


/*
 *  我的练习
 *  @param a 数组
 *  @param n 数组长度
 */
/*
void bubble_sort(int a[],int n)//n为数组a的元素个数
{
    int i,j,temp;
    
    for(j=0;j<n-1;j++)//总共有几次排序
    {
        for(i=0;i<n-1-j;i++)//每一次排序有多少次交换
        {
            if(a[i] > a[i+1])//数组元素大小按升序排列
            {
                temp = a[i];
                a[i] = a[i+1];
                a[i+1] = temp;
            }
        }
    }
}
int main()
{
    int number[SIZE]={95,45,15,78,84,51,24,12};
    int i;
    bubble_sort(number,SIZE);
    for(i=0;i<SIZE;i++)
    {
        printf("%d,",number[i]);
    }
    printf("\n");
}
*/

//====标准C语言程式碼====
#include <stdio.h>
void bubble_sort(int arr[], int len) {
    int i, j, temp;
    for (i = 0; i < len - 1; i++)
        for (j = 0; j < len - 1 - i; j++)
            if (arr[j] > arr[j + 1]) {
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
}
int main() {
    int arr[] = { 22, 34, 3, 32, 82, 55, 89, 50, 37, 5, 64, 35, 9, 70 };
    int len = (int) sizeof(arr) / sizeof(*arr);
    bubble_sort(arr, len);
    int i;
    for (i = 0; i < len; i++)
        printf("%d ", arr[i]);
    printf("\n");
    return 0;
}
