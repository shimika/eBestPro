BEGIN_FUNCTION_MAP
	.Func,선물/옵션현재가(시세)조회(t2101),t2101,attr,block,headtype=A;
	BEGIN_DATA_MAP
	t2101InBlock,기본입력,input;
	begin
		단축코드,focode,focode,char,8;
	end
	t2101OutBlock,출력,output;
	begin
		한글명,hname,hname,char,20;
		현재가,price,price,float,6.2;
		전일대비구분,sign,sign,char,1;
		전일대비,change,change,float,6.2;
		전일종가,jnilclose,jnilclose,float,6.2;
		등락율,diff,diff,float,6.2;
		거래량,volume,volume,long,12;
		거래대금,value,value,long,12;
		미결제량,mgjv,mgjv,long,8;
		미결제증감,mgjvdiff,mgjvdiff,long,8;
		시가,open,open,float,6.2;
		고가,high,high,float,6.2;
		저가,low,low,float,6.2;
		상한가,uplmtprice,uplmtprice,float,6.2;
		하한가,dnlmtprice,dnlmtprice,float,6.2;
		52최고가,high52w,high52w,float,6.2;
		52최저가,low52w,low52w,float,6.2;
		베이시스,basis,basis,float,6.2;
		기준가,recprice,recprice,float,6.2;
		이론가,theoryprice,theoryprice,float,6.2;
		괴리율,glyl,glyl,float,6.3;
		CB상한가,cbhprice,cbhprice,float,6.2;
		CB하한가,cblprice,cblprice,float,6.2;
		만기일,lastmonth,lastmonth,char,8;
		잔여일,jandatecnt,jandatecnt,long,8;
		종합지수,pricejisu,pricejisu,float,6.2;
		종합지수전일대비구분,jisusign,jisusign,char,1;
		종합지수전일대비,jisuchange,jisuchange,float,6.2;
		종합지수등락율,jisudiff,jisudiff,float,6.2;
		KOSPI200지수,kospijisu,kospijisu,float,6.2;
		KOSPI200전일대비구분,kospisign,kospisign,char,1;
		KOSPI200전일대비,kospichange,kospichange,float,6.2;
		KOSPI200등락율,kospidiff,kospidiff,float,6.2;
		상장최고가,listhprice,listhprice,float,6.2;
		상장최저가,listlprice,listlprice,float,6.2;
		델타,delt,delt,float,6.4;
		감마,gama,gama,float,6.4;
		세타,ceta,ceta,float,6.4;
		베가,vega,vega,float,6.4;
		로우,rhox,rhox,float,6.4;
		근월물현재가,gmprice,gmprice,float,6.2;
		근월물전일대비구분,gmsign,gmsign,char,1;
		근월물전일대비,gmchange,gmchange,float,6.2;
		근월물등락율,gmdiff,gmdiff,float,6.2;
		이론가,theorypriceg,theorypriceg,float,6.2;
		역사적변동성,histimpv,histimpv,float,6.2;
		내재변동성,impv,impv,float,6.2;
		시장BASIS,sbasis,sbasis,float,6.2;
		이론BASIS,ibasis,ibasis,float,6.2;
		근월물종목코드,gmfutcode,gmfutcode,char,8;
		행사가,actprice,actprice,float,6.2;
	end
	END_DATA_MAP
END_FUNCTION_MAP

