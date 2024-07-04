## Title

## I. Đặt Vấn Đề

Kỳ thi THPT Quốc Gia (2015 – 2019), là một kỳ thi quan trọng đối với học sinh THPT. Mục đích của kỳ thi là xét tốt nghiệp và làm cơ sở để xét tuyển vào các trường Cao đẳng, Đại học. Sau khi kết thúc kỳ thi, Bộ GD&ĐT sẽ công bố điểm thi trên các trang thông tin điện tử để thí sinh và giáo viên có thể đánh giá kết quả. Tuy nhiên, kết quả phân tích phổ điểm thi trong những năm gần đây chưa phản ánh đúng theo mục tiêu của kỳ thi khi lấy kết quả của toàn bộ thí sinh để đánh giá:

``1. Phổ điểm môn thi: Mỗi thí sinh có mục tiêu về điểm số khác nhau ở từng môn thi ``<br>
- Trong kỳ thi THPT Quốc Gia 2018 - Có 879.705 thí sinh dự thi để xét công nhận tốt nghiệp THPT và có 688.466 thí sinh (chiếm 74.3%) dùng kết quả để xét tuyển Cao đẳng, Đại học[^1]. Điều này không đồng nghĩa với việc mỗi môn thi có 74.3% thí sinh dự thi để xét tuyển mà sẽ phân bố khác nhau theo từng môn theo khối thi. Việc sử dụng điểm thi của toàn bộ thí sinh để đánh giá độ khó của đề thi có thể không chính xác, vì độ khó sẽ bị ảnh hưởng bởi tỉ lệ thí sinh thi để xét tốt nghiệp và thi để xét tuyển. Để hiểu rõ hơn về phổ điểm của các môn thi, chúng ta cần phải xem xét phổ điểm của từng nhóm thí sinh riêng biệt.


``2. Phổ điểm khối thi: Cách tổng hợp điểm thi chưa hợp lý``<br>
- Với việc bắt buộc tham dự tối thiểu 6 môn thi thì mỗi thí sinh sẽ hình thành nhiều tổ hợp môn thi khác nhau, thí sinh có xu hướng chọn tổ hợp môn thi có điểm cao nhất để xét tuyển *(Điểm trúng tuyển giữa các tổ hợp xét tuyển trong cùng 1 ngành là bằng nhau)*, do đó điểm khối thi khác sẽ không được sử dụng (hay không có giá trị thống kê). Tương tự với phổ điểm môn thi, phổ điểm khối thi cũng đang tồn tại hai nhóm điểm, gây khó khăn trong việc xác định chính xác số lượng thí sinh sử dụng điểm khối thi và có thể dẫn đến nhận định sai về điểm số.

Từ những nguyên nhân trên, bài viết này sẽ tập trung vào việc đề xuất phương pháp phân tích phổ điểm một cách chính xác hơn theo từng nhóm điểm thi thông qua việc lọc điểm thi, ngoài ra còn trình bày thêm một số vấn đề còn bất cập khi tổ chức kỳ thi.

## II. Tổng quan về dữ liệu

**1. Phương án lọc dữ liệu điểm môn thi tốt nghiệp & môn thi xét tuyển**

- [x] **Bước 1**: Xác định các khối thi (Tổ hợp các môn thi) phổ biến.
- [x] **Bước 2**: Tính và xếp hạng điểm các khối thi của từng thí sinh (Đảm bảo tham gia đầy đủ 3 môn thi).
- [x] **Bước 3**: Chọn khối thi có tổng điểm cao nhất là khối thi chính và 3 môn trong khối thi đó là môn thi xét tuyển, các môn còn lại là môn thi tốt nghiệp.
> [!WARNING]
> Tránh ``Data Bias``: Theo thống kê, có khoảng 90% thí sinh lựa chọn các tổ hợp A00, A01, B00, C00, D01 và chỉ có 10% cho các tổ hợp [^2]. Nếu sử dụng toàn bộ tổ hợp hiện có để xét thì sẽ không đánh giá chính xác và hiệu quả nếu xảy ra đồng thời 2 điều sau:
> - Có một môn thi nằm trong tổ hợp khối thi mà thí sinh kỳ vọng đạt điểm cao có điểm thi thấp hơn một môn thi khác do yếu tố đề thi.
> - Tổng điểm của 3 môn thi có khối thi không nằm trong tổ hợp xét tuyển yêu cầu của ngành/nhóm ngành mà thí sinh xác định ban đầu.

**2. Thu thập và xử lý dữ liệu**<br>
```
Xem chi tiết: ...
```

## III. Phân bố điểm thi lý tưởng cho kỳ thi THPT Quốc Gia

``Yếu tố khách quan``
- [x] **Trọng số của bài thi THPT dùng để xét tốt nghiệp**: Giai đoạn 2015 - 2018, bài thi THPT Quốc gia chiếm 50% ``(Từ năm 2019, chiếm 70%)``. Tương đương với mức độ phân hóa giữa việc thi dùng để tốt nghiệp và thi dùng để xét tuyển Cao Đẳng, Đại Học.
- [x] **Tính chất của bài thi**:  Phân bố điểm thi của nhóm thí sinh thi để tốt nghiệp tương tự phổ điểm bài thi ``Criterion-Referenced Test (CRT)`` và có đỉnh ở điểm phân hóa (từ nhận biết - thông hiểu sang vận dụng - vận dụng cao). Còn đối với phân bố điểm thi của nhóm thí sinh thi xét tuyển sẽ có dạng hình chuông phân phối chuẩn nằm phía bên phải của thang điểm tương tự phổ điểm bài thi ``Norm-Referenced Test (NRT)``.

``Yếu tố chủ quan``
- [x] **Khác biệt yêu cầu về điểm số**: Đối với các thí sinh thi tốt nghiệp, điểm số đủ điểm để tốt nghiệp là khác nhau giữa các thí sinh và phần lớn là ở mức dưới trung bình, trường hợp này phổ điểm có xu hướng lệch dương ``(Positive Skewed Distribution)``
- [x] **Chất lượng giáo dục không đồng đều**: Vì kỳ thi có quy mô toàn Quốc nên số lượng và chất lượng thí sinh cũng sẽ khác nhau ở các khu vực, do sẽ phổ điểm có thể lệch âm ``(Negative Skewed Distribution)``.

a) Mô phỏng phân bố điểm thi sử dụng phân phối nhị thức ``(Binomial Distribution)`` : Với điểm thi tốt nghiệp nằm ở giữa biểu đồ $B(n=40, p= 0.5)$ và điểm thi xét tuyển nằm ở 3/4 biểu đồ $B(n=40, p= 0.75)$.
      
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/5e37d992-8fc8-47a7-85fc-debc0362ce51)

b) Trường hợp đề thi chưa chuẩn (phổ điểm của môn thi có dạng phân phối nhị thức tương tự như khi các thí sinh chọn đáp án ngẫu nhiên): TN: $B(n=40, p= 0.25)$ và XT: $B(n=20, p= 0.25)$ tịnh tiến qua phải 5 điểm.
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/2c5f0af7-0e58-4852-a9e7-da04c13bd3b2)

**Xác định mục tiêu của các phổ điểm:**
- [x] **Điểm thi tốt nghiệp**: Nếu xét theo đề thi thì kỳ thi THPT Quốc Gia 2018 có ngưỡng điểm để đánh giá học sinh đạt tiêu chuẩn là 5.0, nhưng vì kỳ thi chỉ chiếm 50% hoặc thấp hơn (+ điểm ưu tiên) nên nhóm điểm này khó để dùng để đánh giá chất lượng do điều kiện đạt điểm trên 5.0 là không bắt buộc.
- [x] **Điểm thi xét tuyển**:  Đánh giá mức độ phân hóa của đề thi, là phân bố điểm thi chính thức của kỳ thi để phân loại thí sinh, có thể sử dụng để đánh giá chất lượng giáo dục thay thế cho điểm thi tốt nghiệp.
- [x] **Khối thi xét tuyển**:  Vì là kết quả tổng hợp nên tập trung giá trị Bách Phân vị ``Percentile`` , mục đích là giúp thí sinh so sánh và xếp hạng điểm thi của mình như thế nào so với các thí sinh khác về phần trăm và số lượng. Không dùng để đánh giá do số lượng thí sinh lớn nên hình dạng phổ điểm sẽ có xu hướng tiệm cận phân phối chuẩn.

## IV. Phân tích

### 1. Đánh giá chung về kết quả thi THPT Quốc Gia 2018

|Image|Text|
|-|-|
|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/8e439a22-f76f-4036-8dfd-dd57f330f54f" alt="..." width="500" />|**Biểu đồ biểu diễn mối quan hệ và phân bố điểm thi thông qua hai giá trị Range (Khoảng biến thiên điểm số) (trục x) và Average (Điểm trung bình) (trục y) của thí sinh THPT**.<br>abc|

a) Về số lượng<br>
- Thí sinh dự thi theo môn

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

- Thí sinh dự thi theo khối
  
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

**b) Về phân bố điểm số chung**
- a

2. Phân tích chi tiết các môn thi<br>
**Môn Toán**:

|c|a|b|
|-|-|-|
|Toán|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/d26354e0-963a-42c0-8466-2e254b282235" alt="..." width="500" />|a|
|Ngữ Văn|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/32ceea05-db1e-4ac5-89a4-cc2e8059a93d" alt="..." width="500" />|a|
|Tiếng Anh|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/ccb1233d-c211-4fb0-b703-162dbc9e8e6d" alt="..." width="500" />|a|
|Vật Lí|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/00046afd-a55f-4ebd-bb52-6ec18ebb4b56" alt="..." width="500" />|a|
|Hóa Học|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/37777d70-53f2-445b-a3f1-6a70d5b8ddad" alt="..." width="500" />|a|
|Sinh Học|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/f80ec967-5b70-476e-85dd-93b2d33c8ed65" alt="..." width="500" />|a|
|Lịch Sử|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/499dfd5b-cef2-4a79-b606-b2b151a89229" alt="..." width="500" />|a|
|Địa Lý|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/cbbd143b-af56-49c7-bac6-ec2a77d9737d" alt="..." width="500" />|a|
|Giáo dục Công Dân|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/0b87f0c5-4185-456b-9ee3-c1d8ceeaf765" alt="..." width="500" />|a|


**Khối thi**:
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/4dcf1ac0-44aa-4b7a-bfa1-73cdbe82c472)
> [!NOTE]
> Điểm thi của cả hai nhóm thí sinh đều lệch sang trái so với phổ điểm kỳ vọng khoảng 1.5-2.0 điểm.


[^1]: My reference.
[^2]: My reference.
