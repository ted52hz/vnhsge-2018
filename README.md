# Phân tích điểm thi THPT Quốc Gia 2018
> 07/2018 - 07/2024

## I. Đặt Vấn Đề

Kỳ thi THPT Quốc Gia (2015 – 2019) là một kỳ thi quan trọng đối với học sinh THPT, với mục đích xét tốt nghiệp và làm cơ sở để xét tuyển vào các trường Cao đẳng, Đại học. Sau khi kết thúc kỳ thi, Bộ Giáo dục và Đào tạo (GD&ĐT) sẽ công bố điểm thi trên các trang thông tin điện tử để thí sinh và giáo viên có thể đánh giá kết quả. Tuy nhiên, kết quả phân tích phổ điểm thi trong những năm gần đây chưa phản ánh đúng theo mục tiêu của kỳ thi khi lấy kết quả của toàn bộ thí sinh để đánh giá. Bài viết này sẽ tập trung vào việc đề xuất phương pháp phân tích phổ điểm một cách chính xác hơn theo từng nhóm điểm thi, và trình bày một số vấn đề còn bất cập khi tổ chức kỳ thi.

``1. Phổ điểm môn thi: Sự khác biệt về mục tiêu của thí sinh ``<br>
- Trong kỳ thi THPT Quốc Gia 2018, có 879.705 thí sinh dự thi để xét công nhận tốt nghiệp THPT và có 688.466 thí sinh (chiếm 74.3%) sử dụng kết quả để xét tuyển Cao đẳng, Đại học[^1]. Tuy nhiên, không phải tất cả các môn thi đều có 74.3% thí sinh dự thi với mục đích xét tuyển, vì tỉ lệ này thay đổi theo từng môn và khối thi. Việc sử dụng điểm thi của toàn bộ thí sinh để đánh giá độ khó của đề thi có thể không chính xác, vì độ khó sẽ bị ảnh hưởng bởi tỷ lệ thí sinh thi để xét tốt nghiệp và thi để xét tuyển. Để hiểu rõ hơn về phổ điểm của các môn thi, cần xem xét phổ điểm của từng nhóm thí sinh riêng biệt.


``2. Phổ điểm khối thi: Vấn đề trong tổng hợp điểm thi``<br>
- Với quy định bắt buộc tham dự tối thiểu 6 môn thi, mỗi thí sinh sẽ hình thành nhiều tổ hợp môn thi khác nhau. Thí sinh có xu hướng chọn tổ hợp môn thi có điểm cao nhất để xét tuyển, vì các trường Đại học có xu hướng xét điểm trúng tuyển giữa các tổ hợp xét tuyển trong cùng một ngành là bằng nhau. Điều này dẫn đến việc điểm của các khối thi khác không được sử dụng (hay không có giá trị thống kê). Tương tự với phổ điểm môn thi, phổ điểm khối thi cũng tồn tại hai nhóm điểm, gây khó khăn trong việc xác định chính xác số lượng thí sinh sử dụng điểm khối thi và có thể dẫn đến nhận định sai về điểm số.

Từ những vấn đề nêu trên, bài viết đề xuất phương pháp phân tích phổ điểm một cách chính xác hơn theo từng nhóm điểm thi thông qua việc lọc điểm thi. Ngoài ra, bài viết cũng trình bày một số vấn đề còn bất cập khi tổ chức kỳ thi, nhằm góp phần cải thiện độ chính xác và công bằng trong đánh giá kết quả của kỳ thi THPT Quốc Gia.

## II. Tổng quan về dữ liệu

### 1. Phương án lọc dữ liệu điểm môn thi tốt nghiệp & môn thi xét tuyển

- [x] **Bước 1**: Xác định các khối thi (tổ hợp các môn thi) phổ biến.
> Đầu tiên, chúng ta cần xác định các tổ hợp môn thi phổ biến mà thí sinh thường sử dụng để xét tuyển vào các trường Đại học, Cao đẳng[^2]. Những tổ hợp phổ biến bao gồm: <br>
> - A00: Toán, Lý, Hóa <br>
> - A01: Toán, Lý, Anh <br>
> - B00: Toán, Hóa, Sinh <br>
> - C00: Văn, Sử, Địa <br>
> - D01: Toán, Văn, Anh <br>

- [x] **Bước 2**: Tính và xếp hạng điểm các khối thi của từng thí sinh
> Đối với từng thí sinh, chúng ta cần tính tổng điểm của các tổ hợp môn thi mà thí sinh đã tham gia. Chỉ những tổ hợp có đầy đủ ba môn thi mới được tính tổng điểm. Sau khi tính tổng điểm, xếp hạng các tổ hợp theo thứ tự từ cao xuống thấp.

- [x] **Bước 3**: Chọn khối thi có tổng điểm cao nhất là khối thi chính và 3 môn trong khối thi đó là môn thi xét tuyển, các môn còn lại là môn thi tốt nghiệp.
> Sau khi xếp hạng, chọn tổ hợp có tổng điểm cao nhất làm khối thi chính của thí sinh. Ba môn thi trong khối thi chính này sẽ được coi là các môn thi xét tuyển. Những môn thi còn lại sẽ được coi là các môn thi tốt nghiệp.

> [!WARNING]
> Tránh sai lệch dữ liệu (Data Bias): Theo thống kê, có khoảng 90% thí sinh lựa chọn các tổ hợp A00, A01, B00, C00, D01 và chỉ có 10% cho các tổ hợp khác. Nếu sử dụng toàn bộ các tổ hợp hiện có để xét tuyển thì kết quả có xu hướng chọn 3 môn cao nhất của mỗi thí sinh, kết quả có thể không chính xác và hiệu quả nếu xảy ra đồng thời hai trường hợp sau:
> - Một môn thi nằm trong tổ hợp khối thi mà thí sinh kỳ vọng đạt điểm cao có điểm thi thấp hơn một môn thi khác (Độ khó đề thi không đồng đều giữa các môn thi).
> - Tổng điểm của ba môn thi có khối thi không nằm trong tổ hợp xét tuyển yêu cầu của ngành/nhóm ngành mà thí sinh xác định ban đầu (Các nhóm ngành khác ít thí sinh thực sự lựa chọn).


### 2. Thu thập và xử lý dữ liệu
```
Xem chi tiết: ...
```

## III. Phân bố điểm thi lý tưởng cho kỳ thi THPT Quốc Gia

### 1. Yếu tố khách quan

``Trọng số của bài thi THPT dùng để xét tốt nghiệp``
- [x] Giai đoạn 2015 - 2018, bài thi THPT Quốc gia chiếm 50%. Tương đương với mức độ phân hóa giữa việc thi dùng để tốt nghiệp và thi dùng để xét tuyển Cao Đẳng, Đại Học.
- [x] Mức độ phân hóa giữa việc thi để tốt nghiệp và thi để xét tuyển Cao đẳng, Đại học thay đổi theo sự thay đổi trọng số này *(Từ năm 2019, bài thi THPT Quốc Gia chiếm 70%)*.

``Tính chất của bài thi``
- [x] Nhóm thí sinh thi để tốt nghiệp: Phân bố điểm thi tương tự phổ điểm của Criterion-Referenced Test (CRT), có đỉnh ở điểm phân hóa từ nhận biết - thông hiểu sang vận dụng - vận dụng cao.
- [x] Nhóm thí sinh thi để xét tuyển: Phân bố điểm thi có dạng hình chuông, phân phối chuẩn, nằm phía bên phải của thang điểm, tương tự phổ điểm của Norm-Referenced Test (NRT) [^3].


### 2. Yếu tố chủ quan 

``Khác biệt yêu cầu về điểm số``

- [x] Đối với các thí sinh thi tốt nghiệp, điểm số đủ để tốt nghiệp là khác nhau và phần lớn ở mức dưới trung bình. Thêm nữa, điểm số dùng để xét tốt nghiệp là kết quả trung bình cộng các môn thi, nên điểm số của các môn này thường sẽ không quá cao và có xu hướng tập trung ở mức trung bình hoặc thấp hơn. Điều này làm cho phổ điểm của nhóm thí sinh thi tốt nghiệp có xu hướng lệch dương *(Positive Skewed Distribution)*.

``Chất lượng giáo dục không đồng đều``

- [x] Vì kỳ thi có quy mô toàn quốc nên số lượng và chất lượng thí sinh khác nhau ở các khu vực. Điều này có thể dẫn đến phổ điểm lệch âm *(Negative Skewed Distribution)*.

### 3. Tránh nhầm lẫn với phổ điểm có tính phân hóa và phổ điểm chưa chuẩn

- [x] Đối với bài thi NRT, đề thi yêu cầu phân loại thí sinh cao, và độ khó của đề thi có thể điều chỉnh để phù hợp với yêu cầu phân loại thí sinh theo các mức độ khác nhau. Tuy nhiên, vì đề thi bắt buộc có nội dung cơ bản chiếm 50% nên độ khó vẫn cần được đánh giá một cách cẩn thận để đảm bảo tính công bằng và phù hợp của bài thi đánh giá cho 2 nhóm đối tượng.
- [x] Trong kỳ thi THPT Quốc Gia 2018, phổ điểm của thí sinh dự thi để xét tuyển phải có xu hướng tách biệt với nhóm thí sinh thi tốt nghiệp (Q3 [Tứ phân vị thứ 3] của điểm thi tốt nghiệp < Q1 [Tứ phân vị thứ 1] của điểm thi xét tuyển), nếu phổ điểm 2 nhóm có xu hướng gần nhau thì xem như phổ điểm chưa chuẩn.

### 4. Mô phỏng phổ điểm

- [x] Mô phỏng phân bố điểm thi sử dụng phân phối nhị thức ``(Binomial Distribution)`` : Với điểm thi tốt nghiệp nằm ở giữa biểu đồ $B(n=40, p= 0.5)$ và điểm thi xét tuyển nằm ở 3/4 biểu đồ $B(n=40, p= 0.75)$.
      
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/5e37d992-8fc8-47a7-85fc-debc0362ce51)


- [x] Mô phỏng trường hợp đề thi chưa chuẩn cho 2 nhóm điểm thi (phổ điểm của môn thi có dạng phân phối nhị thức tương tự như khi các thí sinh chọn đáp án ngẫu nhiên): TN: $B(n=40, p= 0.25)$ và XT: $B(n=20, p= 0.25)$ tịnh tiến qua phải 5 điểm.
  
![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/2c5f0af7-0e58-4852-a9e7-da04c13bd3b2)

### 5. Xác định mục tiêu của các phổ điểm

``Điểm thi tốt nghiệp``
- [x] Ngưỡng điểm để đánh giá học sinh đạt tiêu chuẩn là 5.0, nhưng vì kỳ thi chỉ chiếm 50% hoặc thấp hơn (+ điểm ưu tiên) nên nhóm điểm này khó dùng để đánh giá chất lượng do điều kiện đạt điểm trên 5.0 không bắt buộc.
      
``Điểm thi xét tuyển``
- [x] Đánh giá mức độ phân hóa của đề thi, là phân bố điểm thi chính thức của kỳ thi để phân loại thí sinh, có thể sử dụng để đánh giá chất lượng giáo dục thay thế cho điểm thi tốt nghiệp.
      
``Khối thi xét tuyển``
- [x] Vì là kết quả tổng hợp, tập trung giá trị bách phân vị (Percentile), giúp thí sinh so sánh và xếp hạng điểm thi của mình so với các thí sinh khác về phần trăm và số lượng. Không dùng để đánh giá do số lượng thí sinh lớn nên hình dạng phổ điểm sẽ có xu hướng tiệm cận phân phối chuẩn.

## IV. Phân tích

### 1. Đánh giá chung về kết quả thi THPT Quốc Gia 2018 *(Chứng minh Giả thuyết: Mỗi thí sinh có mục tiêu về điểm số khác nhau ở từng môn thi)*

**Ghi chú**: Nhóm thí sinh THPT là thí sinh dự thi chính có mục tiêu chung để xét tốt nghiệp, không bao gồm thí sinh tự do hoặc không tham dự đủ 6 hoặc 9 môn thi.

|Plot|Description|
|-|-|
|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/8e439a22-f76f-4036-8dfd-dd57f330f54f" alt="..." width="500" />|**Biểu đồ biểu diễn mối quan hệ và phân bố điểm thi thông qua hai giá trị Range (Khoảng biến thiên điểm số) (trục x) và Average (Điểm trung bình) (trục y) của nhóm thí sinh THPT**.<br>*Nhận xét*: Phân bố điểm thi có mật độ cao ở nhóm thí sinh có điểm trung bình [4;6] và khoảng biến thiên [3;5]. Xét ở ngưỡng điểm trung bình là 5.0 và khoảng biến thiên là 2.0 (Mức đánh giá thí sinh đạt chuẩn) thì chỉ có 3% thí sinh đạt|
|<img src="https://i.imgur.com/pxpCQJw.png" alt="..." width="600" />|**Biểu đồ biểu diễn tần số tích lũy giảm dần theo số lượng thí sinh đạt điểm trung bình các môn thi của nhóm thí sinh THPT**.<br>*Nhận xét*: Đối chiếu với tỉ lệ tốt nghiệp của nhóm thí sinh này là 98,36% [^4], điểm thi tối thiểu trung bình chung cho các thí sinh đã tốt nghiệp là 3.25 - 3.5, tỉ lệ giảm mạnh từ mức 4.0.|

**Kết luận**: Điểm số có biến động mạnh không chỉ ở từng môn thi mà còn ở mỗi thí sinh. Việc này cho thấy sự khác biệt lớn trong khả năng và mục tiêu thi của thí sinh, ảnh hưởng đến phân bố điểm thi và việc đánh giá độ khó của đề thi.

### 2. Về số lượng thí sinh dự thi THPT Quốc Gia 2018 *(Chứng minh Giả thuyết: Cách tổng hợp điểm thi chưa hợp lý)*

a) Về số lượng thí sinh dự thi theo môn thi<br>

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

b) Về số lượng thí sinh dự thi theo khối thi
  
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
≥ 143,000 thí sinh ([Tổng số nguyện vọng/Tổng số thí sinh có điểm khối C00 cao nhất] < 1).

> [!IMPORTANT]
> Đối chiếu từ dữ liệu có sẵn là số nguyện vọng theo khối thi, các môn ``Lịch Sử``, ``Địa Lý`` và ``khối C00`` sẽ không được phân tích chính xác do không thể xác định số lượng thí sinh thực tế sử dụng điểm thi các môn và khối thi này để xét tuyển, nguyên nhân là do tỉ lệ thí sinh tham dự tổ hợp KHXH cao và thí sinh chỉ thi tốt nghiệp có xu hướng chọn tổ hợp môn này.

Kết luận: 
- Việc tách số lượng thí sinh dự thi ra thành hai nhóm là hoàn toàn hợp lý khi có sự khác biệt về tỉ lệ chọn môn thi và khối thi. Điều này đặc biệt quan trọng khi xem xét số lượng thí sinh ở từng khối thi, vì việc lọc ra thí sinh có khối thi lớn nhất sẽ giảm áp lực lên phổ điểm, giúp phản ánh chính xác hơn năng lực của thí sinh.

- Đặc biệt, ở khối D1 gồm ba môn thi bắt buộc (Toán, Văn, Anh), hầu hết toàn bộ thí sinh đều có điểm thi ở các môn này. Điều này làm tăng mật độ thí sinh trong phổ điểm của khối D1, và việc phân tách này sẽ giúp tránh sự ảnh hưởng của mật độ thí sinh quá cao đến việc so sánh điểm thi.

### 3. Phân tích chi tiết điểm môn thi (Điểm thi của nhóm thí sinh xét tuyển)
|Cat|Plot|Description|
|-|-|-|
|Toán|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/d26354e0-963a-42c0-8466-2e254b282235" alt="..." width="800" />|Điểm thi của nhóm thí sinh xét tuyển thấp có xu hướng thấp, chưa đạt mức phân hóa (Q3 điểm thi tốt nghiệp = 4.8, Q1 điểm thi xét tuyển = 5.0), chỉ có 2.34% thí sinh đạt mức điểm ≥ 8.0. Đề thi chỉ mới phân loại được nhóm thí sinh xuất sắc và giỏi, chưa phân loại được nhóm thí sinh khá và trung bình khá.|
|Ngữ Văn|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/32ceea05-db1e-4ac5-89a4-cc2e8059a93d" alt="..." width="500" />|Là môn tự luận và đặc thù toàn bộ thí sinh phải thi nên phổ điểm của cả 2 nhóm có xu hướng tập trung ở mức 5 - 6 điểm, ở mức điểm 7 trở lên, nhóm thí sinh thi xét tuyển nhiều hơn. |
|Tiếng Anh|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/ccb1233d-c211-4fb0-b703-162dbc9e8e6d" alt="..." width="500" />|Phổ điểm trải rộng không hình thành rõ ràng đỉnh phổ điểm và điểm số lượng thí sinh đạt từng mức điểm chỉ chênh lệch trước và sau ~0.15%, chưa đủ dữ kiện để xác định mức điểm phân hóa. Số lượng thí sinh đạt điểm cao nhiều (~8% thí sinh đạt ≥ 8.0) và điểm thấp cũng nhiều (52.4% thí sinh đạt điểm < 5).|
|Vật Lí|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/00046afd-a55f-4ebd-bb52-6ec18ebb4b56" alt="..." width="500" />|Môn Lý có phổ điểm khá giống với môn Toán nhưng xét về mức phân hóa thì tốt hơn ở nhóm điểm 7 - 8 (chênh lệch giữa các mức điểm là ~0.5% và có lượng thí sinh phủ được mức điểm 9 trở lên [Đề thi không quá khó]).|
|Hóa Học|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/37777d70-53f2-445b-a3f1-6a70d5b8ddad" alt="..." width="500" />|Nếu không tính ngưỡng đảm bảo chất lượng đề thi là mức 5.0 thì phổ điểm phân hóa tốt, phổ điểm tương tự môn Lý nhưng lệch sang trái khoảng 0.5 điểm. |
|Sinh Học|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/f80ec967-5b70-476e-85dd-93b2d33c8ed65" alt="..." width="500" />|Tương tự như môn Hóa, đỉnh phổ điểm thấp so với kỳ vọng, mức độ phân hóa kém hơn ở nhóm điểm 6 - 8.|
|Lịch Sử|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/499dfd5b-cef2-4a79-b606-b2b151a89229" alt="..." width="500" />|Chưa đủ dữ kiện để phân tích|
|Địa Lý|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/cbbd143b-af56-49c7-bac6-ec2a77d9737d" alt="..." width="500" />|Chưa đủ dữ kiện để phân tích|
|Giáo dục Công Dân|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/0b87f0c5-4185-456b-9ee3-c1d8ceeaf765" alt="..." width="500" />|Phổ điểm chưa đạt chuẩn, là môn thi không hoặc ít nằm trong các khối thi xét tuyển nhưng điểm thi cũng cần phải tuân theo quy tắc 50 cơ bản - 50 nâng cao vì điểm thi còn dùng để xét tốt nghiệp nên cần có sự đồng đều về điểm số.|

### 4. Tổng hợp điểm khối thi

|CDF|PDF|
|-|-|
|<img src="https://i.imgur.com/GGsVPqV.png" alt="..." width="1000" height="250" />|<img src="https://github.com/khoaht312/vnhsge-2018/assets/69152064/fe03e255-b93a-4cac-813d-294072f2db27" alt="..." width="1000" height="250" />|

|P|A00|A01|B00|D01|C00
|-|-|-|-|-|-|
|30%	|19.50+ (40355)	|20.60+ (14080)	      |18.35+ (26440)	|18.15+ (69469)	|16.25+ (130743)
|20%	|20.50+ (26982)	|21.60+ (9417)	      |19.55+ (17664)	|19.30+ (46996)	|17.25+ (90987)
|10%	|21.85+ (13737) 	|22.90+ (4699)	      |21.25+ (8793)	|20.90+ (23618)	|19+ (44180)
|5%	|22.95+ (6883)	|23.80+ (2406)	      |22.50+ (4477)	|22.10+ (11884)	|20.50+ (22274)
|1%	|24.8+ (1375)	|25.35+ (471)	      |24.06+ (906)	|23.95+ (2394)	|23.50+ (4372)


### 5. Xu hướng điểm thi theo khu vực

|Phân phối tỉ lệ thí sinh lựa chọn môn thi là môn xét tuyển của từng khu vực|Phân phối tỉ lệ thí sinh theo khối trên toàn khu vực|
|-|-|
|<img src="https://i.imgur.com/9gAAQmg.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/wPkDY0z.png" alt="..." width="1000" height="250" />|

|Toán|Ngữ Văn|
|:---:|:---:|
|<img src="https://i.imgur.com/Tx8zuCj.pngg" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/q07PoIn.png" alt="..." width="1000" height="250" />|
|**Tiếng Anh**|**Vật Lí**|
|<img src="https://i.imgur.com/BUPZAGm.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/v1thcor.png" alt="..." width="1000" height="250" />|
|**Hóa Học**|**Sinh Học**|
|<img src="https://i.imgur.com/BMEsSCG.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/uk7AVXc.png" alt="..." width="1000" height="250" />|
|**Lịch Sử**|**Địa Lý**|
|<img src="https://i.imgur.com/0g65WRK.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/ZTFfq1W.png" alt="..." width="1000" height="250" />|

|A00|A01|
|:---:|:---:|
|<img src="https://i.imgur.com/4UHsQw7.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/turky77.png" alt="..." width="1000" height="250" />|
|**B00**|**C00**|
|<img src="https://i.imgur.com/z1FmdfX.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/xnjKPcT.png" alt="..." width="1000" height="250" />|
|**D01**|
|<img src="https://i.imgur.com/HnUqXF5.pngg" alt="..." width="1000" height="250" />|

### 6. Xác định các giá trị ngoại lai (Outliers)
- [x] Outliers: Sử dụng dữ liệu điểm thi tốt nghiệp để xác định nhóm thí sinh đạt điểm cao nhưng không nằm trong tổ hợp xét tuyển phổ biến (xét với nhóm thí sinh tự do, có số lượng môn thi < 6):
> Sử dụng giá trị Upper Fence [Q3 + 1.5(IQR)] để xác định các giá trị được xem là ngoại lai của từng khu vực, từ đó xác định được thí sinh có điểm cao trội hơn so với nhóm thí sinh còn lại.


![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/c59ac296-e88a-4d3a-a128-ee3af39844f0)

|Toán|Văn|
|:---:|:---:|
|<img src="https://i.imgur.com/nKfrneK.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/W6bmMys.png" alt="..." width="1000" height="250" />|
|**Tiếng Anh**|**Vật Lí**|
|<img src="https://i.imgur.com/CFyFtOM.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/294wVYA.png" alt="..." width="1000" height="250" />|
|**Hóa Học**|**Sinh Học**|
|<img src="https://i.imgur.com/Vwlnxz5.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/yENy3S9.png" alt="..." width="1000" height="250" />|
|**Lịch Sử**|**Địa Lý**|
|<img src="https://i.imgur.com/W6ckjY5.png" alt="..." width="1000" height="250" />|<img src="https://i.imgur.com/qC2igwV.png" alt="..." width="1000" height="250" />|

**Nhận xét**: Từ kết quả phân tích cho thấy, phần lớn điểm số cao là của các thí sinh dự thi đúng 3 môn thi là Toán, Ngữ Văn và Lịch Sử : Có 3,978 thí sinh đạt điểm cao môn Lịch Sử và 292 thí sinh đạt điểm cao môn Toán.

 - Có 15,793 thí sinh tự do có tổ hợp môn dự thi Toán - Ngữ Văn - Lịch Sử (C03), môn Lịch Sử có xu hướng điểm thi cao hơn khối C00, ở khu vực Trung du miền núi Bắc bộ có nhiều thí sinh đạt điểm cao hơn nếu không tính các tỉnh nằm trong vụ gian lận.[^5].

![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/5026d07c-3e0d-4323-bb57-62b3f4bd7464)

![image](https://github.com/khoaht312/vnhsge-2018/assets/69152064/fb6e57c9-fd39-4c27-8c52-9ab47c0646ba)

## V. Bàn Luận
> Kể từ khi đổi tên kỳ thi THPT Quốc Gia thành Kỳ thi trung học phổ thông[^6], tiếng Anh luôn là môn được đánh giá là "đội sổ" do điểm trung bình thi thấp và luôn có 2 đỉnh hình thành (một ở nhóm điểm thấp và một ở nhóm điểm cao). Tuy nhiên, khi xét điểm thi 4 năm từ 2019 - 2022 với cách lọc điểm tương tự thì nhận thấy rằng: Môn tiếng Anh đã giảm mức độ phân hóa đáng kể, tính đến năm 2022, mức độ phân hóa chỉ còn 1 điểm (mức 9 - 10) điểm. Trong khi đó điểm thi tốt nghiệp vẫn giữ mức đỉnh 4.0. Ngoài ra, số lượng thí sinh miễn thi môn tiếng Anh tương đối cao (Năm 2021: 28,620, Năm 2022: 35,391)[^7]. Do đó, đề thi môn tiếng Anh không đủ chuẩn để dùng cho xét tuyển mà chỉ đơn thuần là bài thi xét tốt nghiệp,trong khi đó chỉ tiêu dùng bài thi tốt nghiệp THPT Quốc Gia hiện nay vẫn là xu hướng chính do dễ tiếp cận với hầu hết thí sinh so với các kỳ thi riêng[^8]. 

|Năm|Điểm thi tốt nghiệp|Điểm thi xét tuyển|
|-|-|-|
|2019|<img src="https://i.imgur.com/xVYdtEl.png" alt="..." width="500" height="250" />|<img src="https://i.imgur.com/MypkkA8.png" alt="..." width="500" height="250" />|
|2020|<img src="https://i.imgur.com/hHbNILu.png" alt="..." width="500" height="250" />|<img src="https://i.imgur.com/57ldeZ9.png" alt="..." width="500" height="250" />|
|2021|<img src="https://i.imgur.com/sKGPkB5.png" alt="..." width="500" height="250" />|<img src="https://i.imgur.com/JzxwDTO.png" alt="..." width="500" height="250" />|
|2022|<img src="https://i.imgur.com/Fu3taC4.png" alt="..." width="500" height="250" />|<img src="https://i.imgur.com/iwg9Ezm.png" alt="..." width="500" height="250" />|

[^1]: Ngoc Ha (2018, Jun, 24). Hơn 925.000 thí sinh dự kỳ thi THPT quốc gia 2018. Báo Tuổi Trẻ. [https://tuoitre.vn/hon-925-000-thi-sinh-du-ky-thi-thpt-quoc-gia-2018-20180623192739292.htm](https://tuoitre.vn/hon-925-000-thi-sinh-du-ky-thi-thpt-quoc-gia-2018-20180623192739292.htm)
[^2]: Minh Giang (2018, Apr, 27). Hơn 2,7 triệu nguyện vọng xét tuyển đại học 2018. Báo Tuổi Trẻ. [https://tuoitre.vn/hon-2-7-trieu-nguyen-vong-xet-tuyen-dai-hoc-2018-2018042711360019.htm](https://tuoitre.vn/hon-2-7-trieu-nguyen-vong-xet-tuyen-dai-hoc-2018-2018042711360019.htm)
[^3]: Tran D. P., Vu C. T., (2023). Tiêu chuẩn định lượng cho một bảng điểm kết thúc học phần đẹp. Tạp Chí Nghiên Cứu Khoa Học & Phát Triển. Tập. 2 Số. 1, 35-40. [https://vjol.info.vn/index.php/jsrd/article/view/78451](https://vjol.info.vn/index.php/jsrd/article/view/78451).
[^4]:Quynh Nga (2018, Jul 12). Tỷ lệ học sinh tốt nghiệp THPT năm 2018 đạt 97.57%, Báo Tổ Quốc. [https://toquoc.vn/ty-le-hoc-sinh-tot-nghiep-thpt-nam-2018-dat-9757-99240152.htm](https://toquoc.vn/ty-le-hoc-sinh-tot-nghiep-thpt-nam-2018-dat-9757-99240152.htm)
[^5]: Gian Lận Thi Cử. Báo Thanh Niên. [https://thanhnien.vn/trend-2018-gian-lan-thi-cu-185815811.htm](https://thanhnien.vn/trend-2018-gian-lan-thi-cu-185815811.htm)
[^6]:Ha Linh (2020, Apr 22). Thứ trưởng Nguyễn Hữu Độ lí giải vì sao 'đổi tên' kỳ thi THPT năm nay. Báo Tiên Phong. [https://tienphong.vn/thu-truong-nguyen-huu-do-li-giai-vi-sao-doi-ten-ky-thi-thpt-nam-nay-post1234069.tpo](https://tienphong.vn/thu-truong-nguyen-huu-do-li-giai-vi-sao-doi-ten-ky-thi-thpt-nam-nay-post1234069.tpo)
[^7]:Ba Duy (2023, Dec 28). Thí sinh được miễn thi tốt nghiệp do có chứng chỉ ngoại ngữ quốc tế tăng vọt. Vov2.[https://vov2.vov.vn/giao-duc-dao-tao/thi-sinh-duoc-mien-thi-tot-nghiep-do-co-chung-chi-ngoai-ngu-quoc-te-tang-vot-46560](https://vov2.vov.vn/giao-duc-dao-tao/thi-sinh-duoc-mien-thi-tot-nghiep-do-co-chung-chi-ngoai-ngu-quoc-te-tang-vot-46560)
[^8]: Pham Mai (2024, Jun 29). Bộ GD-ĐT sẽ đề nghị trường đại học tăng chỉ tiêu xét tuyển theo điểm thi THPT. Báo điện tử VietnamPlus. [https://www.vietnamplus.vn/bo-gd-dt-se-de-nghi-truong-dai-hoc-tang-chi-tieu-xet-tuyen-theo-diem-thi-thpt-post961965.vnp](https://www.vietnamplus.vn/bo-gd-dt-se-de-nghi-truong-dai-hoc-tang-chi-tieu-xet-tuyen-theo-diem-thi-thpt-post961965.vnp)

