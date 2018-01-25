# simple_curve_fitting
## error analyzing
```
e=A'*W-b; %error vector
sum=0;
for i=1:100
    sum=sum+e(i)^2;
end
sum=sum/100;
```
## result
* 指數函數
  * dataset1(0.0750)
  <img width='50%' src='https://github.com/maxam2017/simple_curve_fitting/blob/master/result/1-1.png'>
  
  * dataset2(0.0236)
  <img width='50%' src='https://github.com/maxam2017/simple_curve_fitting/blob/master/result/1-2.png'>
* 高斯函數
  * dataset1(0.0741)
  <img width='50%' src='https://github.com/maxam2017/simple_curve_fitting/blob/master/result/2-1.png'>
  
  * dataset2(0.0169)
  <img width='50%' src='https://github.com/maxam2017/simple_curve_fitting/blob/master/result/2-2.png'>
