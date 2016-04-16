#!/bin/bash
#De chay bai nay voi watch ta go watch -n 2 "./watch.sh"
function abc
{
i=$(ps aux | awk '{sum +=$3}END{print sum}')
echo $i
# Nhan so thuc len cho 10 de bien no thanh so binh thuong vi so sanh va tinh toan so thuc 
# rat kho. Truong hop nay so thuc co dang 1.2, 2.3 nen chi can nhan len cho 10 la thanh so 
# binh thuong
abc=$(echo $i*10 | bc)
# Sau khi nhan len 10 so se co dang la 76. nen van chua la so binh thong gi vay ta can bo di 
# dau . 
abc=$(echo $abc | awk -F. '{print $1}')
while [ $abc -gt 0 ]
do
 echo -e "* \c"
  abc=$(($abc-10))
done
}
abc
