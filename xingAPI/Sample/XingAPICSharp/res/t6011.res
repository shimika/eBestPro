BEGIN_FUNCTION_MAP
    .Func,���º� ������ ��ȸ(t6011),t6011,base21=SONAQ109,headtype=B;
    BEGIN_DATA_MAP
    t6011InBlock,�⺻�Է�,input;
    begin
        ���ڵ尹��			            ,reccnt   		        ,reccnt   	           ,long    ,5	    ;
        ����������ȣ		            ,kwbpno   		        ,kwbpno   	           ,char    ,3	    ;
        ���¹�ȣ			            ,accno    		        ,accno    	           ,char    ,20     ;
        ��й�ȣ			            ,passwd   		        ,passwd   	           ,char    ,8	    ;
        �ܰ��������		            ,jangb  		        ,jangb  	           ,char    ,1      ;
    end
    t6011OutBlock,�⺻���,output;
    begin
        ���ڵ尹��			            ,reccnt   		        ,reccnt   	           ,long    ,5	    ;
        ����������ȣ		            ,kwbpno   		        ,kwbpno   	           ,char    ,3	    ;
        ���¹�ȣ			            ,accno    		        ,accno    	           ,char    ,20     ;
        ��й�ȣ			            ,passwd   		        ,passwd   	           ,char    ,8	    ;
        �ܰ��������		            ,jangb  		        ,jangb  	           ,char    ,1      ;
    end
    t6011OutBlock1,�⺻���1,output;
    begin
        ���ڵ尹��			            ,reccnt   		        ,reccnt   	            ,long    ,5	    ;
		������							,bpname					,bpname				    ,char	,40		;
		���¸�							,name					,name				    ,char	,40		;
		�����ֹ����ɱݾ�				,ordcamt				,ordcamt				,long	,16		;
		��ݰ��ɱݾ�					,drawamt				,drawamt				,long	,16		;
		�ŷ��ұݾ�						,kospiamt				,kospiamt				,long	,16		;
		�ڽ��ڱݾ�						,kosdaqamt				,kosdaqamt				,long	,16		;
		�򰡱ݾ�						,evlamt					,evlamt					,long	,16		;
		�̼��ݾ�						,sunapsum				,sunapsum				,long	,16		;
		��Ź�ڻ��Ѿ�					,yetaktot				,yetaktot				,long	,16		;
		���ͷ�							,sonik					,sonik					,double	,12.6	;
		���ڿ���						,tujawon				,tujawon				,long	,20		;
		���ڼ��ͱݾ�					,tujason				,tujason				,long	,16		;
		�ſ�㺸�ֹ��ݾ�				,sindambo				,sindambo				,long	,16		;
		������							,depoamt				,depoamt				,long	,16		;
		���ݾ�						,daeamt					,daeamt					,long	,16		;
		D1������						,d1depoamt				,d1depoamt				,long	,16		;
		D2������						,d2depoamt				,d2depoamt				,long	,16		;
		���ݹ̼��ݾ�					,cashamt   				,cashamt   				,long	,16		;
		���ű�����						,margincash				,margincash				,long	,16		;
		���űݴ��						,margindae				,margindae				,long	,16		;
		��ǥ�ݾ�						,supyoamt				,supyoamt				,long	,16		;
		����ֹ����ɱݾ�				,ordcamtdae				,ordcamtdae				,long	,16		;
		���űݷ�100�ۼ�Ʈ�ֹ����ɱݾ�	,ord100					,ord100					,long	,16		;
		���űݷ�35%�ֹ����ɱݾ�			,inordamt				,inordamt				,long	,16		;
		���űݷ�50%�ֹ����ɱݾ�			,ord50					,ord50					,long	,16		;
		���ϸŵ�����ݾ�				,dmdosoamt				,dmdosoamt				,long	,16		;
		���ϸż�����ݾ�				,dmsusoamt				,dmsusoamt				,long	,16		;
		���ϸŵ�����ݾ�				,todosoamt				,todosoamt				,long	,16		;
		���ϸż�����ݾ�				,tosusoamt				,tosusoamt				,long	,16		;
		D1��ü�����ҿ�ݾ�				,dmpayneed				,dmpayneed				,long	,16		;
		D2��ü�����ҿ�ݾ�				,topayneed				,topayneed				,long	,16		;
		D1�������Ⱑ�ɱݾ�				,d1drawamt				,d1drawamt				,long	,16		;
		D2�������Ⱑ�ɱݾ�				,d2drawamt				,d2drawamt				,long	,16		;
		��Ź�㺸����ݾ�				,dambore				,dambore				,long	,16		;
		�ſ뼳��������					,limreq					,limreq					,long	,16		;
		���ڱݾ�						,loanamt				,loanamt				,long	,16		;
		�㺸����						,damborate				,damborate				,double	,9.3	;
		���㺸�ݾ�						,cashjan				,cashjan				,long	,16	 	;
		�δ㺸�ݾ�						,bucashjan				,bucashjan				,long	,16		;
		�ҿ�㺸�ݾ�					,needdambo				,needdambo				,long	,16		;
		���㺸�����ݾ�					,orgdambo				,orgdambo				,long	,16		;
		�㺸�����ݾ�					,dambolack				,dambolack				,long	,16		;
		�߰��㺸����					,chugadambo				,chugadambo				,long	,16		;
		D1�ֹ����ɱݾ�					,d1jumun				,d1jumun				,long	,16		;
		�ſ����ڹ̳��ݾ�				,sinimnap				,sinimnap				,long	,16		;
		��Ÿ�뿩�ݾ�					,etcloan				,etcloan				,long	,16		;
		���������ݴ�Ÿűݾ�			,nextbandae				,nextbandae				,long	,16		;
		���㺸�հ�ݾ�					,cashjantot				,cashjantot				,long	,16		;
		�ſ��ֹ����ɱݾ�				,sinordamt				,sinordamt				,long	,16		;
		�δ㺸�հ�ݾ�					,bucashjantot			,bucashjantot			,long	,16 	;
		�ſ�㺸������					,sindamcash				,sindamcash				,long	,16		;
		�ſ�㺸���ݾ�				,sindamdae 				,sindamdae 				,long	,16		;
		�߰��ſ�㺸����				,addsindamcash			,addsindamcash			,long	,16		;
		�ſ�㺸����ݾ�				,sindamreuseamt			,sindamreuseamt			,long	,16		;
		�߰��ſ�㺸���				,addsindamdae			,addsindamdae			,long	,16		;
		�ŵ���ݴ㺸����ݾ�			,mddaedamloanamt		,mddaedamloanamt		,long	,16		;
		ó�����ѱݾ�					,chlimitamt				,chlimitamt				,long	,16		;
    end
    END_DATA_MAP
END_FUNCTION_MAP
