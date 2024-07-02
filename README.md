## Phân tích điểm thi THPT Quốc Gia 2018

I.
✅

II.<br>
**a) Phương pháp lọc dữ liệu điểm môn thi tốt nghiệp & môn thi xét tuyển**
- [x] Bước 1: Xác định các khối thi (Tổ hợp các môn thi) phổ biến.
- [x] Bước 2: Tính và xếp hạng điểm các khối thi của từng thí sinh (Đảm bảo tham gia đầy đủ 3 môn thi).
- [x] Bước 3: Chọn khối thi có tổng điểm cao nhất là khối thi chính và 3 môn trong khối thi đó là môn thi xét tuyển, các môn còn lại là môn thi tốt nghiệp.
> [!IMPORTANT]
> Tránh ``Data Bias``: Theo thống kê, có khoảng 90% thí sinh lựa chọn các tổ hợp A00, A01, B00, C00, D01[^1]. Nếu sử dụng toàn bộ tổ hợp hiện có để xét thì sẽ không đánh giá chính xác và hiệu quả nếu xảy ra đồng thời 2 yếu tố sau:
> - Có một môn thi nằm trong tổ hợp khối thi mà thí sinh kỳ vọng đạt điểm cao có điểm thi thấp hơn một môn thi khác do yếu tố đề thi.
> - Tổng điểm của 3 môn thi có khối thi không nằm trong tổ hợp xét tuyển yêu cầu của ngành/nhóm ngành mà thí sinh xác định ban đầu.
>   
> Do đó, lựa chọn các khối thi phổ biến giúp đảm bảo giảm được ``Selection Bias``.

b) 

**III. Phân bố điểm thi lý tưởng cho kỳ thi THPT Quốc Gia**:<br>

``Yếu tố khách quan``
- [x] **Trọng số của bài thi THPT dùng để xét tốt nghiệp**: Giai đoạn 2015 - 2018, bài thi THPT Quốc gia chiếm 50% ``(Từ năm 2019, chiếm 70%)``. Tương đương với mức độ phân hóa giữa việc thi dùng để tốt nghiệp và thi dùng để xét tuyển Cao Đẳng, Đại Học.
- [x] **Tính chất của bài thi**:  Phân bố điểm thi của nhóm thí sinh thi để tốt nghiệp tương tự phổ điểm bài thi ``Criterion-Referenced Test (CRT)`` và có đỉnh ở điểm phân hóa (từ nhận biết - thông hiểu sang vận dụng - vận dụng cao). Còn đối với phân bố điểm thi của nhóm thí sinh thi xét tuyển sẽ có dạng hình chuông phân phối chuẩn nằm phía bên phải của thang điểm tương tự phổ điểm bài thi ``Norm-Referenced Test (NRT)``.

``Yếu tố chủ quan``
- [x] **Khác biệt yêu cầu về điểm số**: Đối với các thí sinh thi tốt nghiệp, điểm số đủ điểm để tốt nghiệp là khác nhau giữa các thí sinh và phần lớn là ở mức dưới trung bình, do đó điểm số của nhóm thí sinh này khó để đại diện đánh giá kết quả học tập THPT. Trường hợp này phổ điểm có xu hướng lệch dương ``(Positive Skewed Distribution)``
- [x] **Chất lượng giáo dục không đồng đều**: Vì kỳ thi có quy mô toàn Quốc nên số lượng và chất lượng thí sinh cũng sẽ khác nhau ở các khu vực, do sẽ phổ điểm có thể lệch âm ``(Negative Skewed Distribution)``.

a) Mô phỏng phân bố điểm thi sử dụng phân phối nhị thức ``(Binomial Distribution)`` với đề thi trắc nghiệm 40 câu *(Đối với phần tốt nghiệp, từ mức điểm 5.25 trở đi sẽ được cộng thêm xác suất ngẫu nhiên chọn đúng 1/4 đáp án cho 20 câu tiếp theo và sau đó chuẩn hóa lại cho khớp với giả thuyết)*
      
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/b2795328-b071-4084-8b03-66a40d2d2520)

b) Trường hợp đề thi chưa chuẩn (phổ điểm của môn thi có dạng phân phối nhị thức tương tự như khi các thí sinh chọn đáp án ngẫu nhiên):
- [x] TH1: Nếu điểm thi có 

![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/2c5f0af7-0e58-4852-a9e7-da04c13bd3b2)

**III. Phân tích**:<br>
1. Về số lượng<br>
a) Thí sinh dự thi theo môn

|STT|Môn thi|Tổng số thí sinh|Thi để tốt nghiệp|%|Thi để xét tuyển|%|Khối|
|-|-|-|-|-|-|-|-|
|1|Toán|916515|433399|47|483116|53|A00,A01,B00|
|2|Ngữ Văn|901626|250481|28|651145|72|C00,D01|
|3|Tiếng Anh|816202|543966|67|272236|33|A01,D01|
|4|Vật Lí|386731|206978|54|179753|46|A00,A01|
|5|Hóa Học|389276|175752|45|213524|55|A00,B00|
|6|Sinh Học|383298|295904|77|87394|23|B00|
|7|Lịch Sử|565242|142076|25|423166|75|C00|
|8|Địa Lý|548808|125642|23|423166|77|C00|
|9|GDCD|479104|479104|100|||
> [!NOTE]
> Môn ``Tiếng Anh`` và ``Sinh Học`` là các môn có tỉ lệ thí sinh lựa chọn để xét tuyển Đại học thấp, do đó đây là môn sẽ có phân phối điểm thi khác biệt rõ nhất khi tách 2 phần điểm. Môn ``Lịch Sử`` và ``Địa Lý`` do chỉ có một khối thi duy nhất nên sẽ không có khác biệt nhiều so với phổ điểm gốc (toàn bộ thí sinh).

b) Thí sinh dự thi theo khối
|STT|Khối|Tổng số thí sinh có hình thành điểm|Là khối thi có điểm cao nhất|%|% of Total|
|-|-|-|-|-|-|
|1|A00|382694|133927|35|15|
|2|A01|368370|46574|12|5|
|3|B00|381817|87394|22|9|
|4|C00|548411|423166|77|46|
|5|D01|811757|230924|28|25|

|STT|Khối|Số nguyện vọng|%|
|-|-|-|-|
|1|A00|848444|30.83|
|2|D01|743246|27.01|
|3|A01|352149|12.8|
|4|C00|279742|10.17|
|5|B00|259317|9.42|
|6|Khác||10.49|

> [!NOTE]
> Đối chiếu giữa số lượng thí sinh (mỗi thí sinh/ một khối thi) và số lượng nguyên vọng. Khối C00 có số lượng thí sinh thi để xét tuyển cao hơn so với thực tế 
≥ 143,000 thí sinh (Tổng số nguyện vọng/Tổng số thí sinh có điểm khối C00 cao nhất < 1).

> [!IMPORTANT]
> Các môn ``Lịch Sử``, ``Địa Lý`` và ``khối C00`` sẽ không được phân tích chính xác do không thể xác định số lượng thí sinh thực tế sử dụng điểm thi các môn và khối thi này để xét tuyển.

2. Phân tích chi tiết các môn thi<br>
**Môn Toán**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/d26354e0-963a-42c0-8466-2e254b282235)

**Môn Ngữ Văn**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/32ceea05-db1e-4ac5-89a4-cc2e8059a93d)

**Môn tiếng Anh**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/ccb1233d-c211-4fb0-b703-162dbc9e8e6d)

**Môn Vật Lí**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/00046afd-a55f-4ebd-bb52-6ec18ebb4b56)

**Môn Hóa Học**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/37777d70-53f2-445b-a3f1-6a70d5b8ddad)

**Môn Sinh Học**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/f80ec967-5b70-476e-85dd-93b2d33c8ed6)
> [!NOTE]
> Điểm thi của cả hai nhóm thí sinh đều lệch sang trái so với phổ điểm kỳ vọng khoảng 1.5-2.0 điểm.

**Môn Lịch Sử **:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/499dfd5b-cef2-4a79-b606-b2b151a89229)
> [!NOTE]
> Điểm thi của cả hai nhóm thí sinh đều lệch sang trái so với phổ điểm kỳ vọng khoảng 1.5-2.0 điểm.

**Môn Địa Lý**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/cbbd143b-af56-49c7-bac6-ec2a77d9737d)
> [!NOTE]
> Điểm thi của cả hai nhóm thí sinh đều lệch sang trái so với phổ điểm kỳ vọng khoảng 1.5-2.0 điểm.

**Môn Giáo dục Công Dân**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/0b87f0c5-4185-456b-9ee3-c1d8ceeaf765)
> [!NOTE]
> Điểm thi của cả hai nhóm thí sinh đều lệch sang trái so với phổ điểm kỳ vọng khoảng 1.5-2.0 điểm.


**Khối thi**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/4dcf1ac0-44aa-4b7a-bfa1-73cdbe82c472)
> [!NOTE]
> Điểm thi của cả hai nhóm thí sinh đều lệch sang trái so với phổ điểm kỳ vọng khoảng 1.5-2.0 điểm.


[^1]: My reference.

