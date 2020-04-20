#include <iostream>
#include <string.h>
#include <algorithm>
#include <stdio.h>
#include<stack>
#include<queue>
#include<math.h>
using namespace std;
const int INF = 0x7fffffff;
const int N =11;
int p[N];
int temp[N][N];
int w[N][N];
int dp[N][N];
int n;
int amount=0;
void dfs(int chenshu,int i ,int j)
{
    if(i!=0)
    {
        if(dp[i-1][j]==dp[i][j]+w[i-1][j])
            dfs(chenshu+1,i-1,j);
    }
    if(j!=n-1)
    {
        if(dp[i][j+1]==dp[i][j]+w[i][j+1])
            dfs(chenshu+1,i,j+1);
    }
    if(i==0&&j==n-1)amount++;
}

int main()
{
    cin>>n;
    fill(&dp[0][0],&dp[0][0]+n*n,0);
    fill(&temp[0][0],&temp[0][0]+n*n,0);
    for(int i =0;i<n;i++)
    {
        for(int j =0;j<n;j++)
        {
            cin>>w[i][j];
        }
    }
    dp[n-1][0]=w[n-1][0];

    for(int i =n-1;i>=0;i--)
    {
        for(int j =0;j<n;j++)
        {
            if(i!=0)
            {
                dp[i-1][j]=max(dp[i-1][j],dp[i][j]+w[i-1][j]);//向上
            }
            if(j!=n-1)
            {
                dp[i][j+1]=max(dp[i][j+1],dp[i][j]+w[i][j+1]);//向右
            }
                
           
        }
    }
    dfs(1, n-1, 0);
    cout<<amount<<" "<<dp[0][n-1];
    
}

