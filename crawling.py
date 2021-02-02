############# python 3.6.9 #############
import json 
from urllib.request import urlopen
from bs4 import BeautifulSoup



#################경남 청년 일자리 사업 공지사항 크롤링##################

html = urlopen("https://gnjobs.kr/html/sub06_02.php")  
soup = BeautifulSoup(html, "html.parser") 
hotKeys = soup.select("a.list_tit")
TITLE=[]

#####게시글 제목#####
for key in hotKeys:
    TITLE.append(key.text.strip())

#####게시글 URL#####
title = soup.find_all(class_='list_tit')
URL=[]
for i in title:
    URL.append(i.attrs['href'])


#####긁어온 코드 도시별로 구분#####
products=[]
for i,j in zip(URL,TITLE):
    k=i.split('¤') #url을 긁었을때 저 이상한 문자가 같이 긁혀서 지우는 코드
    
    """창원시"""
    if j.rfind('창원')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("창원시 :  "+k[0]+"   "+j)
            product = {"region": 창원, "title": j, "link": k[0]}
            products.append(product)
    
    """진주시"""
    if j.rfind('진주')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("진주시 :  "+k[0]+"   "+j)
    
    """통영시"""
    if j.rfind('통영')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("통영시 :  "+k[0]+"   "+j)
    
    """사천시"""
    if j.rfind('사천')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("사천시 :  "+k[0]+"   "+j)
    
    """김해시"""
    if j.rfind('김해')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("김해시 :  "+k[0]+"   "+j)
            product = {"region": '경남',"city": '김해', "title": j, "link": k[0]}
            products.append(product)
    """밀양시"""
    if j.rfind('밀양')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("밀양시 :  "+k[0]+"   "+j)
      
    """거제시"""
    if j.rfind('거제')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("거제시 :  "+k[0]+"   "+j)

    """양산시"""
    if j.rfind('양산')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("양산시 :  "+k[0]+"   "+j)

    """의령군"""
    if j.rfind('의령')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("의령군 :  "+k[0]+"   "+j)

    """함안군"""
    if j.rfind('함안')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("함안군 :  "+k[0]+"   "+j)

    """창녕군"""
    if j.rfind('창녕')>0:
         if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("창녕군 :  "+k[0]+"   "+j)

    """고성군"""
    if j.rfind('고성')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("고성군 :  "+k[0]+"   "+j)

    """남해군"""
    if j.rfind('남해')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("남해군 :  "+k[0]+"   "+j)

    """하동군"""
    if j.rfind('하동')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("하동군 :  "+k[0]+"   "+j)

    """산청군"""
    if j.rfind('산청')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("산청군 :  "+k[0]+"   "+j)

    """함양군"""
    if j.rfind('함양')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("함양군 :  "+k[0]+"   "+j)

    """거창군"""
    if j.rfind('거창')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("거창군 :  "+k[0]+"   "+j)

    """합천군"""
    if j.rfind('합천')>0:
        if j.rfind('사업장')==-1 and j.rfind('업체')==-1 and j.rfind('기업')==-1 and j.rfind('참여')==-1 or j.rfind('청년 모집')>0 or j.rfind('청년구직')>0:
            print("합천군 :  "+k[0]+"   "+j)
    
    

    
#########json 으로 저장하기#######


for i in products:
  print(i)

file = open("./GN.json","w+")
file.write(json.dumps(products))


########json파일 읽어보기##########
with open('/content/GN.json', 'r') as f:
    json_data = json.load(f)
print(json.dumps(json_data,indent="\t"))

