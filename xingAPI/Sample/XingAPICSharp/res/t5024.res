BEGIN_FUNCTION_MAP
    .Func,��ܴ��ָŵ��ֹ�(t5024),t5024,base21=SOFST101,headtype=B;
    BEGIN_DATA_MAP
    t5024InBlock,�⺻�Է�,input;
    begin
        ���ڵ尹��			     ,reccnt 		,reccnt 	   ,long    ,5	    ;
        �Ÿű���			     ,mmgb   		,mmgb   	   ,char    ,1	    ;
        ���¹�ȣ			     ,accno  		,accno  	   ,char    ,20     ;
        ��й�ȣ			     ,passwd 		,passwd 	   ,char    ,8	    ;
        ���������ڵ�			 ,paycode		,paycode	   ,char    ,2	    ;
        �����ȣ			     ,expcode		,expcode	   ,char    ,12     ;
        �ֹ�����			     ,qty    		,qty    	   ,long    ,16     ;
        �ֹ��ܰ�			     ,orddan 		,orddan 	   ,double  ,15.4   ;
    end
    t5024OutBlock,�⺻���,output;
    begin
        ���ڵ尹��			     ,reccnt 		,reccnt 	   ,long    ,5	    ;
        �Ÿű���			     ,mmgb   		,mmgb   	   ,char    ,1	    ;
        ���¹�ȣ			     ,accno  		,accno  	   ,char    ,20     ;
        ��й�ȣ			     ,passwd 		,passwd 	   ,char    ,8	    ;
        ���������ڵ�			 ,paycode		,paycode	   ,char    ,2	    ;
        �����ȣ			     ,expcode		,expcode	   ,char    ,12     ;
        �ֹ�����			     ,qty    		,qty    	   ,long    ,16     ;
        �ֹ��ܰ�			     ,orddan 		,orddan 	   ,double  ,15.4   ;
    end
    t5024OutBlock1,�⺻���1,output;
    begin
        ���ڵ尹��			     ,reccnt  		,reccnt  	   ,long    ,5	    ;
        ���¸�				     ,accno   		,accno   	   ,char    ,40     ;
        �����				     ,expcode 		,expcode 	   ,char    ,40     ;
        �ֹ���ȣ			     ,ordno   		,ordno   	   ,long    ,10     ;
        �ֹ��ݾ�			     ,ordprice		,ordprice	   ,long    ,16     ;
        ������				     ,fee     		,fee     	   ,long    ,16     ;
        ������				     ,paydate 		,paydate 	   ,char    ,8	    ;
    end
    END_DATA_MAP
END_FUNCTION_MAP
