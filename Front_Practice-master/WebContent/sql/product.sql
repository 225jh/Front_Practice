insert into product values(pNum_seq.nextval, 'LG전자 노트북 16인치', 1000000, 'https://file.mk.co.kr/meet/neds/2022/02/image_readtop_2022_92915_16436841154931279.jpg',
'가벼운 사무용, 휴대용 노트북', '자체적인 배터리와 화면 출력장치, 마우스와 키보드가 있어 공책처럼 접히는 형태의 휴대용 컴퓨터를 이르는 용어. 그 중에서도 PC[1]나 Mac과 같은 개인용 컴퓨터와 Microsoft Windows, Linux, macOS 등 소프트웨어적으로 호환성이 있는 휴대용 컴퓨터를 말한다. 크기와 목적에 따라 여러 가지 하위 분류로 나뉘며, 휴대성에는 별 신경을 쓰지 않아 태생상 그럴 필요도 없는 크고 무거운 데스크톱 컴퓨터와는 달리, 노트북은 부피와 무게를 비롯한 휴대성을 제일 중시하기에 상대적으로 작고 가볍다는 점이 특징.'
, 'elec2'); --상품번호, 이름, 가격, 이미지주소, 간략설명, 상세설명, 카테고리명

insert into product values(pNum_seq.nextval, '드럼 세탁기', 600000, 'https://m.rentalplanner.kr/web/product/big/20200218/540af28491683e4d29552053c06a9166.jpg',
'빨래 겁나잘되는 세탁기', '최초의 세탁기는 크랭크(손)로 돌려야 했고, 지금도 손으로 돌리거나 발판을 발로 밟아 돌리는 노가다로 작동하는 세탁기가 친환경이나 적정기술 사례로 드문드문 있다. 19세기 중반에는 산업혁명의 영향으로 증기 기관을 이용한 세탁기가 등장해 빨래를 하기 위해 힘들게 크랭크를 돌려야 할 필요가 없어졌지만 엄청난 증기 배출과 진동에 의한 울림, 소음 등이 겹쳐 민원이 속출하자 사장되었다. 이후 원시적인 형태의 세탁기가 다시 두루 사용되다, 1908년 아버 피셔가 전기로 돌아가는 세탁기를 발명했다.'
, 'elec2');

insert into product values(pNum_seq.nextval, 'LG전자 TV', 3000000, 'https://www.thelec.kr/news/photo/202204/16580_14904_5151.jpg',
'넓은 화면으로 집을 영화관처럼 만들어주는 TV', '셀레늄의 광전효과, 즉 빛을 받으면 전기가 흐르는 효과를 아일랜드 전신기사 조지프 메이가 발견하면서 시작되었다고 볼 수 있다. 이후 이 원리를 이용하여 빛을 셀리늄판에 투과시켜 전자신호로 바꾸고 역으로 과정을 거쳐서 빛을 발산하여 화면을 보이게 하는 기술을 알렉산더 베인이 개발하였다. 그러나 이것은 기계식으로만 동작했기 때문에 단일사진만 보낼 수 있었다.'
, 'elec2');

insert into product values(pNum_seq.nextval, 'xx전자 선풍기', 159000, 'https://t1.daumcdn.net/cfile/tistory/9999A43B5F092C592F',
'요즘 SNS에서 난리난 선풍기', '선풍기는 영어로 부채와 같은 Fan이다. 선풍기[1]라는 단어는 일본어에서 유래되었는데, 한국에 선풍기가 처음 들어온 경로가 일본을 통해서였기 때문이다.
중국어로는 두 글자의 순서를 바꿔 风扇[fēngshàn]이라고 하며, 전자기기라는 점을 착안하여 电(電, 번개 전)을 붙여 电风扇[diànfēngshàn] 혹은 电扇[diànshàn]이라고도 한다.'
,'elec2');

insert into product values(pNum_seq.nextval, '노트북 20인치', 5000000, 'https://file.mk.co.kr/meet/neds/2022/02/image_readtop_2022_92915_16436841154931279.jpg',
'가벼운 사무용, 휴대용 노트북', '노트북에 관한 상세설명 입니다.', 'elec2');

insert into product values(pNum_seq.nextval, '노트북 20인치', 6000000, 'https://file.mk.co.kr/meet/neds/2022/02/image_readtop_2022_92915_16436841154931279.jpg',
'가벼운 사무용, 휴대용 노트북', '노트북에 관한 상세설명 입니다.', 'elec2');

insert into product values(pNum_seq.nextval, '노트북 20인치', 7000000, 'https://file.mk.co.kr/meet/neds/2022/02/image_readtop_2022_92915_16436841154931279.jpg',
'가벼운 사무용, 휴대용 노트북', '노트북에 관한 상세설명 입니다.', 'elec2');

insert into product values(pNum_seq.nextval, '노트북 20인치', 8000000, 'https://file.mk.co.kr/meet/neds/2022/02/image_readtop_2022_92915_16436841154931279.jpg',
'가벼운 사무용, 휴대용 노트북', '노트북에 관한 상세설명 입니다.', 'elec2');

select * from product;
delete from product where pName='LG전자 TV';
