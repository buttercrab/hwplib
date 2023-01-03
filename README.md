
# hwplib

한글과 컴퓨터(한컴)에서 만든 워드프로세서 "한글"의 파일에 대한 라이브러리입니다.<br>

개인적인 취미 생활 또는 사회기여 활동 목적으로 시작한 hwplib 프로젝트가 이 라이브러리를 기반으로 하는 상용 제품이 개발하여 판매하고 있습니다.
이 라이브러리의 저작권은 저 개인에게 있으므로, 라이브러리 사용, 버그 수정요청, 약간의 질문 등은 Apache-2.0 license에 의해 앞으로도 자유롭게 할 수 있습니다.
그 외에 많은 시간을 초래할 수 있는 기술지원 요청이나 유지보수 게약등은 제 메일로 상의해 주셨으면 합니다. <br>

* 사용한 라이브러리나 문서 
	- Apache-POI 라이브러리 - 한글 파일의 하부 구조인 Microsoft Compound File의 부분의 파싱.
	- 한글과컴퓨터에서 공개한  '한글 문서 파일 구조 5.0' 문서 ( http://www.hancom.com/etc/hwpDownload.do?gnb0=269&gnb1=271&gnb0=101&gnb1=140 )

* 이 라이브러리에서 할 수 있는 일.(kr.dogfoot.hwplib.sample 패키지에 샘플 참고.)
	- 한글 파일을 읽어서 객체로 생성 : Reading_HWP_FromFile, Reading_HWP_FromURL ...
	- 만들어진 객체를 파일로 저장 : Rewriting_HWPFile, SimpleEditing_HWPFile ...
	- 한글 파일에서 텍스트 추출 : Extracting_Text, Extracting_Text_From_Big_File ...
	- 필드 텍스트 추출/설정 : Getting_ClickHere_FieldText, Setting_ClickHere_FieldText, Finding_AllField, Setting_FieldText 
	- 조건에 맞는 컨트롤 찾기 : Finding_Control
	- 다른 파일의 내용(문단)을 추가하기. 파일 합치기 : Adding_Paragraph_Between_HWPFile ...
    - 표 컨트롤 조작 : 삽입(Inserting_Table), 셀 합치기(Merging_Cell), 행 삭제(Removing_Table_Row) ...
    - 기타 컨트롤 조작 : 이미지 삽입(Inserting_Image), 하이퍼링크 삽입(Inserting_HyperLink) ....
	- 기타 설정 : 페이지 크기 변경 (Changing_PaperSize),  폰트 크기, 밑줄 등의  글자모양 설정(Inserting_CharShape 참고)  ...

* 이 라이브러리는 다음의 기능을 아직(??) 지원하지 않습니다.
    - 암호화된 HWP 파일에 대한 읽고 쓰기 
    - 이미지 파일, PDF 파일, HTML 파일로 변환  
    - 특정 페이지 내용 가져오기 나 전체 페이지 수를 구하기.

* 메이븐 레파지토리 설정
    ```{.xml}
    <dependency>
        <groupId>kr.dogfoot</groupId>
        <artifactId>hwplib</artifactId>
    </dependency>
    ```

2023.1.3
=========================================================================================  
* 이슈 201 : GSOControl 객체 내부의 caption, ctrldata 레코드의 순서가 유동적일 수 있는 문제 해결..

2022.9.9
=========================================================================================  
* 이슈 193 : ParagraphMerger, ParagraphCopier 클래스에서 ClassCastException 발생하는 오류 수정
* 이슈 194 : 문단 텍스트 추출시.. 개요 번호 출력 기능 수정.

2022.9.5
=========================================================================================  
* 이슈 191 : HtmlToTableExample.java 에서 setBorderFillID()에 올바르지 못한 값을 넣은 부분 수정.

2022.7.7
=========================================================================================  
* 이슈 188 : 배포용 문서 HWP 파일을 읽을 때 오류를 (지원하지 않는다는) 예외로 처리
* 이슈 187 : 텍스트 추출시(TextExtractor.extract() 사용) 문단 번호/개요 번호가 설정된 문단에서 오류 수정

2022.6.24
=========================================================================================  
* 이슈 182 : 메모를 문단마다 반복되는 형태에서 마지막 섹션에 한번만 나오는 형태로 변경..

2022.6.3
=========================================================================================  
* 메이븐 저장소에 1.1.1 버전 등록

2022.5.17
=========================================================================================
* 이슈 177 : TOC 필드 추가

2022.3.17
=========================================================================================
* 이슈 171 : FieldFinder.getAllClickHereText()에 글이 없는 사각형 개체을 포함하는 hwpFile을 입력하여 실행시 오류 수정 (typemild님 요청)

2022.2.25
=========================================================================================
* 이슈 167 : HtmlToTableExample 새버전에 맞게 수정 (Mineru98님 요청)
* ControlField.setName() 추가.
  
2021.12.17
=========================================================================================
* 이슈 163 : 캡션 생성시 오류 수정 (Bobby-m-m님 요철)

2021.12.14
=========================================================================================
* 이슈 162 : 글맵시 컨트롤(ControlTextArt) 추가 (sungjini78님 요철)

2021.11.8
=========================================================================================  
* 메이븐 저장소에 1.1.0 버전 등록

2021.11.8
=========================================================================================
* 이슈 158 : ShapeComponentOLE 객체 읽고 쓰기 할때.. 알 수 없는 바이트 처리(sungjini78님 요철)

2021.11.1
=========================================================================================
* POI 병합 - 다른 버전이 사용되는 경우, jar 버전의 충돌을 방지하기 위해..

2021.10.25
=========================================================================================  
* Pull Request 반영 - 오타 수정 (BinDataCompress 클래스의 ByStroageDefault => ByStorageDefault, BinDataState 클래스의 NotAcceess => NotAccess)

2021.8.27
=========================================================================================  
* 양식 객체 속성값 분석을 위한 Property 객체 추가...
* 양식 객체 Finder 추가...
* 필드값 설정시..해당 문단의 LineSeg 삭제.


2021.7.13
=========================================================================================  
* 양식 개체(라디오 버튼, 체크 박스 등) 읽고 쓰기 추가..
* FieldFinder 추가.

2021.7.2
=========================================================================================  
* 이슈 12,18 : 텍스트 추출시 문단 번호/글머리표를 포함하게 수정. (kr.dogfoot.hwplib.sample.Extracting_Text_With_ParaHead 참고)

2021.6.25
=========================================================================================  
* 섹션(구역) 정의 컨트롤을 복사하는 클래스(SectionDefineCopier) 추가.

2021.5.31
=========================================================================================  
* 단정의 컨트롤(ControlColumnDefine) read/write 수정
* 이슈 143 : 문단 추가 기능(kr.dogfoot.hwplib.tool.paragraphadder)에 단정의 컨트롤 복사 기능 추가.

2021.5.17
=========================================================================================  
* 메이븐 저장소에 1.0.4 버전 등록

2021.5.17
=========================================================================================  
* 이슈 139 : 문단 추가 기능(kr.dogfoot.hwplib.tool.paragraphadder)에 겹침문자 컨트롤 복사 기능 추가.
* 컨트롤의 [본문과의 배치]속성값 수정
* 이슈 140 : CharShape.getBorderFillId()가 0 일때, 문단추가 기능 오류 수정..  


2021.3.12
=========================================================================================  
* docInfo 아래에 객체 쓰기 순서 변경 
* 글자 모양의 밑줄 타입 변경
* 이미지ID(BIN?????.bmp)를 10진수로 인식하던 것을 16진수로 인식하게 함


2021.3.3
=========================================================================================  
* 겹침문자 등에서 한글 고유에 특수문자를 읽고 쓸 때, 코드 변환 오류 수정
* 객체 복사시 오류 수정
* 머리글/꼬리글 예제 추가  sample/Inserting_HeaderFooter.java


2021.2.24
=========================================================================================  
* 4095 바이트 보다 큰 레코드 읽고 쓰기 오류 수정
* 빈 파일 만들기(kr.dogfoot.hwplib.tool.blankfilemaker.BlankFileMaker)에서 빠진 BorderFill 객체 생성.


2021.2.18
=========================================================================================  
* 문단 내에 핊드 테스트 가져오기/섫정하기 함수 수정..
* 이슈 127 : 이미지 읽을 떄 id 찾는 방법 오류 수정..


2021.2.17
=========================================================================================  
* ControlField.clone() 오류 수정
* 문단 복사할 때 ControlField 복사하게 수정


2021.2.5
=========================================================================================  
* 이슈 122 : ParaText.insertString() 추가
* 이슈 123 : kr.dogfoot.hwplib.tool.paragraphadder.docinfo.FaceNameAdder의 equal() 함수 내의 Null 체크 
* 이슈 124 : bullet 복사 부분 수정 
* 이슈 125 : numbering 복사 부분 수정
* 이슈 126 : 묶음(Container) 안에 컨트롤 복사시 오류 수정


2021.2.5
=========================================================================================  
* 텍스트 축출 옵션 추가.


2021.2.3
=========================================================================================  
* 텍스트 축출시 탭, 개행, 하이픈이 빠지는 오류 수정.
* TextExtractMethod.xxxWithControlChar 모드 추가.


2021.1.19
=========================================================================================  
* ParagraphAdder.merge() 함수 추가.


2021.1.12
=========================================================================================  
* 메이븐 저장소에 1.0.3 버전 등록


2020.12.30
=========================================================================================  
* 문단 붙이기을 위한 HWPFile 객체 복사 기능 추가
* sample/Adding_Paragraph_Between_Cloned_HWPFile 참고..

2020.11.17
=========================================================================================  
* 문단 붙이기(ParagraphAdder) 가능 중 그림 컨트롤 복사 오류 수정 

2020.10.23
=========================================================================================  
* 메이븐 저장소에 1.0.2 버전 등록


2020.8.31
=========================================================================================  
* 빈 파일 만드는 코드 추가 - ingyeoking13 님 요청
* sample/Making_BlankFile.java 참조

2020.6.16
=========================================================================================  
* 필드(누름틀) 찾기 중에 그리기 객체에 textBox가 null인 오류 수정  -	j2y0206 님 요청


2020.5.27
=========================================================================================  
* 다른 문서 간에 문단 복사-붙여넣기 기능에 표 컨트롤 복사 기능 추가 - kimeuietae 님 요청
* 다른 문서 간에 문단 복사-붙여넣기 기능에 첫번째 문단을 복사할 때 오류 수정 - kimeuietae 님 요청 
* sample/Copying_Paragraph_Between_HWPFile.java 참조...


2020.2.25
=========================================================================================  
* 큰 파일애서 텍스트 추출을 할 때 메모리 부족현상 수정 - LeeYunSeop 님 요청
* sample/Extracting_Text_From_Big_File.java 참조...


2020.01.31
=========================================================================================
* 읽기 오류 수정 - osc91 님 요청.


2020.01.29
=========================================================================================
* 수식 부분 오류 수정  - osc91 님 요청.


2020.01.07
=========================================================================================
* 5.0.2.5 버전 이상에서 추가된 문단 번호 수준(8-10) 처리.. - Chunsjun 님 요청.


2020.01.02
=========================================================================================
* 메이븐 Central Repository 등록


2019.12.20
=========================================================================================
* html 표를 한글로 만드는 샘플 추가(samle/htmltohwp 폴더) - d_duck@naver.com(이준성) 님 제공


2019.10.22
=========================================================================================
* 홀/짝 조정(페이지 번호 조정) 컨트롤 추가 - kangyongseog 님 요청


2019.10.2
=========================================================================================
* 문단 텍스트 변경하는 샘플 추가 - humblemh 님 요청


2019.09.23
=========================================================================================
* 구버전 파일(5.0.0.0)에 수식 읽기 오류 수정... - sungsik.nam@green-mango.co.kr 님 요청


2019.09.20
=========================================================================================
* 손상된 파일 압축해제 시 무한루프 빠지는 오류 수정(Exception 처리) - LeBronPark 님 요청


2019.09.16
=========================================================================================
* 구버전의 컨테이너(묶음) 컨트롤 읽기 오류 - sungsik.nam@green-mango.co.kr 님 요청


2019.08.13
=========================================================================================
* 스트림으로 출력하는 기능 추가(HWPWriter.toStream())  - KimJason8557 님 요청


2019.06.24
=========================================================================================
* 5.1.0.1 파일 읽기 오류  ....  - jwon0615 님 요청
* ShapeComponentPicture 레코드에 알수 없는 1바이트 추가됨..


2019.06.13
=========================================================================================
* 단 설정에서 "단 너비 동일하게"와 1개 이상의 단을 설정한 후 저장하면, 1개의 단으로 저장되는 오류 수정 - kwon1148 님 요청


2019.06.04
=========================================================================================
* 표 셀에 "안 여백 지정" 속성값 get/set  - kamsi76 님 요청
* ForControlWithAllField.getFieldText() 오류 수정 - kamsi76 님 요청


2019.04.12
=========================================================================================
* 표에서 특정 행을 삭제하는 샘플 추가 - kamsi76 님 요청
* sample/TestRemoveRow.java 참고


2019.04.04
=========================================================================================
* 필드명이 일치하는 셀 찾기 기능 추가. - kwonhyun 님 요청
* sample/TestFindCell.java 참고


2019.01.28
=========================================================================================
* FieldFiner에 이름이 같은 필드 모두 찾는 함수 추가...  - jclab 님 요청
* sample/TestFindAllField.java 참고


2018.11.20
=========================================================================================
* IDMapping의 문단 모양 개수와 저장된 실제 문단 모양 개수가 다를 때 보정..   - boojongmin@gmail.com 님 요청  


2018.10.17
=========================================================================================
* 필드 설정 기능 강화 :멀티라인 텍스트, 이름이 동일한 필드를 위한 값 리스트, 누름틀 필드 이외에 필드 설정... - jhlee@futechsoft.com 님 요청
* sample/TestSetField.java 참고


2018.09.14
=========================================================================================
* 표 셀 병합하기 - codeless73 님 요청
* sample/TestMergingCell.java 참고


2018.08.31
=========================================================================================
* 필드 텍스트 설정 기능 추가 - jhlee@futechsoft.com 님 요청
* sample/TestSetClickHereFieldText.java 참고


2018.08.21
=========================================================================================
* 저장 때 이미지 압축과정에서 오류 수정 - urusaikara@gmail.com 님 요청


2018.08.17
=========================================================================================
* 다른 한글 파일에서 있는 문단 추가하는 기능 추가 - accforaus 님 요청
* 문단에 포함된 글자만 추가됨. 문단에 포함된 컨트롤들과 메모들을 추가하는 부분은 아직 구현 못함(추후 추가 예정임) 
* sample/TestParagraphAdder.java 참고


2018.07.18
=========================================================================================
* 5.0.2.5의 각주 컨트롤 읽을 때 오류 나는 문제 수정  - accforaus 님 요청
* BinData가 스토리지 디폴트 모드로 압축되었을 떄 오류 나는 문제 수정


2018.07.10
=========================================================================================
* 문단의 글자모양(글꼴, 크기, Bold/Italic, 글자색 등) 설정하는 샘플 추가 - zuoliang0 님 요청
* sample/TestMakingCharShape.java 참고


2018.05.04 
=========================================================================================
* 이미지 컨트롤 동적 생성 샘플 추가 - parkmap@gmail.com 님 요청
* sample/TestInsertImage.java 참고


2018.03.20
=========================================================================================
* 표 동적 생성 샘플 추가 - krPlatypus 님 요청
* sample/TestMakingTable.java 참고


2017.11.23
=========================================================================================
* 압축 푸는 방식 개선 등의 오류 수정 및 객체 연결선 컨트롤 추가 - osc91 님 요청


2017.11.14
=========================================================================================
* 메모 있는 문서가 읽히지 않는 오류 수정 - osc91 님 요청


2017.8.31
=========================================================================================
* 컨트롤 찾기 기능 추가 - osc91 님 요청
	- TestFindObject.java 참조
```java
    	public static class MyControlFilter implements ControlFilter {
    		public boolean isMatched(Control control, Paragraph paragrpah, Section section) {
	   		// 필터링 조건 입력 
		}
    	}
	
	ArrayList<Control> result = ControlFinder.find(hwpFile, new MyControlFilter());
```


2017.8.21
=========================================================================================
* URL로 부터 읽는 기능 추가 - osc91 님 요청

```java
	String url = "http://ocwork.haansoft.com/sample/sample.hwp";
	HWPFile hwpFile = HWPReader.fromURL(url); 
```


2017.6.1
=========================================================================================
* 저장 모듈 완료
	- TestEditingHWPFile.java, TestReWritingHWPFile.java 참고
```java
	// 파일을 열어서
	String filename = "sample_hwp\\test-blank.hwp"; 
	HWPFile hwpFile = HWPReader.fromFile(filename); 
	
	if (hwpFile != null) {
	
	    // 첫번째 구역/문단에 문자열 추가하고
		Section s = hwpFile.getBodyText().getSectionList().get(0);
		Paragraph firstParagraph = s.getParagraph(0);
		firstParagraph.getText().addString("이것은 추가된 문자열입니다.");

		// 다른 이름으로 저장
		String writePath = filename.substring(0, 11) + "ed-" + filename.substring(11);
		HWPWriter.toFile(hwpFile, writePath);
	}
```


2017.4.26
=========================================================================================
* 구버전에서 만든 파일 읽기 오류 수정 - quantum123님 요청
	- 5.0.0.6, 5.0.2.4.1, 5.0.0.3, 5.0.1.6, 5.0.3.0.1, 5.0.0.5, 5.0.1.7 버전


2017.4.14
=========================================================================================
* 한 장 이상의 긴 문단을 읽지 못하는 문제 해결


2017.4.4
=========================================================================================
* 누름틀 필드 텍스트 찾기 기능 
	- 필드 텍스트가 여러 줄일때 처리 
	- 필드 텍스트에 컨트롤이 포함되었을 경우 처리
	- FieldFinder.getClickHereText() 에서 필드 텍스트에 컨트롤이 포함되었을 경우 처리를 위해 TextExtractMethod temInField 매개변수를 추가하였습니다.
```java
	String text1 = FieldFinder.getClickHereText(hwpFile, "필드1", TextExtractMethod.OnlyMainParagraph);
```


2017.3.29
=========================================================================================
* 누름틀 필드 텍스트 찾기 기능 완료 - musasin84님 요청
	- test/TestGettingClickHereFieldText.java 파일 참고 
```java
	HWPFile hwpFile = HWPReader.fromFile(filename);
	String text1 = FieldFinder.getClickHereText(hwpFile, "필드이름");
```


2017.3.20
=========================================================================================
* 누름틀 필드 컨트롤 읽기 오류 수정


2017.1.6
=========================================================================================
* 텍스트 추출기 모듈을 추가하였습니다. 
 	- TextExtractor.extract()의 두번째 파라미터 값에 따라 세가지 추출 방법을 구현했습니다.
		- OnlyMainParagraph // 메인 문단에 포함된 텍스트만 추출함
		- InsertControlTextBetweenParagraphText // 컨트롤의 텍스트를 문단 텍스트 사이에 삽입하여 추출함
		- AppendControlTextAfterParagraphText // 컨트롤의 텍스트를 문단 텍스트 뒤에 추가하여 추출함
	- test/TestExtractingText.java 파일 참고 <br> 
```java
	HWPFile hwpFile = HWPReader.fromFile(filename); 
	String hwpText = TextExtractor.extract(hwpFile, TextExtractMethod.InsertControlTextBetweenParagraphText);
```
* 읽기 모듈에서 버그 수정하였습니다.
* 소스 인코딩을 euc-kr에서 utf-8로 변경하였습니다. 


2016.12.23 
=========================================================================================
* 이 번 배포버전은 읽기 모듈 까지만 구현되었습니다. 쓰기 모듈은 추후 상황을 봐서 구현할 계획입니다.
	- 각각의 객체들과 객체에 포함된 메소스들에 대해선 "/doc" 디렉토리에 있는 javadoc 문서를 참고하시기 바랍니다.
```java
	// 파일을 읽는다. 
	HWPFile hwpFile = HWPReader.fromFile(filename);  			
	
	// 파일에서 첫번째 구역을 얻는다. 
	Section s = hwpFile.getBodyText().getSectionList().get(0); 		
	
	// 첫번째 구역에서 첫번째 문단을 얻는다. 
	Paragraph p = s.getParagraphList().get(0);				
	...		
```
