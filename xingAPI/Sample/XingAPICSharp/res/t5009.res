BEGIN_FUNCTION_MAP
    .Func,���ɺ������º������������ֹ�,t5009,base21=SONBT712,headtype=B;
    BEGIN_DATA_MAP
    t5009InBlock,�⺻�Է�,input;
    begin
        ���ڵ尹��			     ,reccnt   		,reccnt   	   ,long    ,5	    ;
        ��Ÿ�ü�ڵ�			 ,tongsingb		,tongsingb	   ,char    ,2	    ;
        ���ڵ尹��1			     ,reccnt1  		,reccnt1   	   ,long    ,5	    ;
    end
    t5009InBlock1,�⺻�Է�1,input,occurs;
    begin
        ���¹�ȣ			     ,accno   		,accno   	   ,char    ,20     ;
        �Էº�й�ȣ			 ,passwd  		,passwd  	   ,char    ,8	    ;
        �����ɼ������ȣ		 ,expcode 		,expcode 	   ,char    ,32     ;
        �Ÿű���			     ,mmgubun 		,mmgubun 	   ,char    ,1	    ;
        �����ɼ�ȣ�������ڵ�	 ,hogagb  		,hogagb  	   ,char    ,2	    ;
        �ֹ���				     ,price   		,price   	   ,double  ,13.2   ;
        �ֹ�����			     ,qty     		,qty     	   ,long    ,16     ;
        ������ù�ȣ			 ,opjisino		,opjisino	   ,char    ,12     ;
    end
    t5009OutBlock,���,output;
    begin
        ���ڵ尹��			     ,reccnt   		,reccnt   	   ,long    ,5	    ;
        ��Ÿ�ü�ڵ�			 ,tongsingb		,tongsingb	   ,char    ,2	    ;
    end
    t5009OutBlock1,���1,output,occurs;
    begin
        ���¹�ȣ			     ,accno   		,accno   	   ,char    ,20     ;
        �Էº�й�ȣ			 ,passwd  		,passwd  	   ,char    ,8	    ;
        �����ɼ������ȣ		 ,expcode 		,expcode 	   ,char    ,32     ;
        �Ÿű���			     ,mmgubun 		,mmgubun 	   ,char    ,1	    ;
        �����ɼ�ȣ�������ڵ�	 ,hogagb  		,hogagb  	   ,char    ,2	    ;
        �ֹ���				     ,price   		,price   	   ,double  ,13.2   ;
        �ֹ�����			     ,qty     		,qty     	   ,long    ,16     ;
        ������ù�ȣ			 ,opjisino		,opjisino	   ,char    ,12     ;
    end
    t5009OutBlock2,���2,output,occurs;
    begin
        dummy�ֹ���ȣ			 ,dummyordno    ,dummyordno    ,long    ,3      ;
        �ֹ���ȣ			     ,ordno   		,ordno   	   ,long    ,7      ;
        �޽����ڵ�			     ,msgcode 		,msgcode 	   ,char    ,4	    ;
        �޽�������			     ,msg     		,msg     	   ,char    ,100    ;
        ó���ð�			     ,proctime		,proctime	   ,char    ,9	    ;
    end
    END_DATA_MAP
END_FUNCTION_MAP
