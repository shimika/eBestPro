BEGIN_FUNCTION_MAP
    .Func,���������ֹ�(t5512),t5512,base21=SONBT002,headtype=B;
    BEGIN_DATA_MAP
    t5512InBlock,�⺻�Է�,input;
    begin
        ���ڵ尹��			     ,reccnt       		,reccnt       	   ,long    ,5	    ;
        �ֹ������ڵ�		     ,ordmarketcode		,ordmarketcode	   ,char    ,2	    ;
        ���¹�ȣ			     ,accno        		,accno        	   ,char    ,20     ;
        �Էº�й�ȣ		     ,passwd       		,passwd       	   ,char    ,8	    ;
        �����ɼ������ȣ	     ,expcode      		,expcode      	   ,char    ,32     ;
		�����ɼ��ֹ������ڵ�     ,fnoordptncode     ,fnoordptncode     ,char    ,2      ;	
        dummy���ֹ���ȣ			 ,dummyorgordno     ,dummyorgordno     ,long    ,3      ;
        ���ֹ���ȣ			     ,orgordno     		,orgordno     	   ,long    ,7      ;
        �����ɼ�ȣ�������ڵ�	 ,offergb      		,offergb      	   ,char    ,2	    ;
        �ֹ���				     ,price        		,price        	   ,double  ,13.2   ;
        ��������			     ,qty          		,qty          	   ,long    ,16     ;
        ��Ÿ�ü�ڵ�			 ,tongsingb    		,tongsingb    	   ,char    ,2	    ;
        �����ڵ�			     ,stragb       		,stragb       	   ,char    ,6	    ;
        �׷�ID				     ,groupid      		,groupid      	   ,char    ,20     ;
        �ֹ�ȸ��			     ,ordernum     		,ordernum     	   ,long    ,10     ;
        ��Ʈ��������ȣ			 ,portnum      		,portnum      	   ,long    ,10     ;
        �ٽ��Ϲ�ȣ			     ,basketnum    		,basketnum    	   ,long    ,10     ;
        Ʈ��ġ��ȣ			     ,tranchnum    		,tranchnum    	   ,long    ,10     ;
        �����۹�ȣ			     ,itemnum      		,itemnum      	   ,long    ,10     ;
		�������                 ,mgempno           ,mgempno           ,char    ,9      ;
		�ݵ�ID                   ,fundid            ,fundid            ,char    ,12     ;
		dummy�ݵ���ֹ���ȣ      ,dummyfundorgordno ,dummyfundorgordno ,long    ,3      ;
		�ݵ���ֹ���ȣ           ,fundorgordno      ,fundorgordno      ,long    ,7      ;
		dummy�ݵ��ֹ���ȣ        ,dummyfundordno    ,dummyfundordno    ,long    ,3      ;
		�ݵ��ֹ���ȣ             ,fundordno         ,fundordno         ,long    ,7      ;
    end
    t5512OutBlock,�⺻���,output;
    begin
        ���ڵ尹��			     ,reccnt       		,reccnt       	   ,long    ,5	    ;
        �ֹ������ڵ�		     ,ordmarketcode		,ordmarketcode	   ,char    ,2	    ;
        ���¹�ȣ			     ,accno        		,accno        	   ,char    ,20     ;
        �Էº�й�ȣ		     ,passwd       		,passwd       	   ,char    ,8	    ;
        �����ɼ������ȣ	     ,expcode      		,expcode      	   ,char    ,32     ;
		�����ɼ��ֹ������ڵ�     ,fnoordptncode     ,fnoordptncode     ,char    ,2      ;	
        dummy���ֹ���ȣ			 ,dummyorgordno     ,dummyorgordno     ,long    ,3      ;
        ���ֹ���ȣ			     ,orgordno     		,orgordno     	   ,long    ,7      ;
        �����ɼ�ȣ�������ڵ�	 ,offergb      		,offergb      	   ,char    ,2	    ;
        �ֹ���				     ,price        		,price        	   ,double  ,13.2   ;
        ��������			     ,qty          		,qty          	   ,long    ,16     ;
        ��Ÿ�ü�ڵ�			 ,tongsingb    		,tongsingb    	   ,char    ,2	    ;
        �����ڵ�			     ,stragb       		,stragb       	   ,char    ,6	    ;
        �׷�ID				     ,groupid      		,groupid      	   ,char    ,20     ;
        �ֹ�ȸ��			     ,ordernum     		,ordernum     	   ,long    ,10     ;
        ��Ʈ��������ȣ			 ,portnum      		,portnum      	   ,long    ,10     ;
        �ٽ��Ϲ�ȣ			     ,basketnum    		,basketnum    	   ,long    ,10     ;
        Ʈ��ġ��ȣ			     ,tranchnum    		,tranchnum    	   ,long    ,10     ;
        �����۹�ȣ			     ,itemnum      		,itemnum      	   ,long    ,10     ;
		�������                 ,mgempno           ,mgempno           ,char    ,9      ;
		�ݵ�ID                   ,fundid            ,fundid            ,char    ,12     ;
		dummy�ݵ���ֹ���ȣ      ,dummyfundorgordno ,dummyfundorgordno ,long    ,3      ;
		�ݵ���ֹ���ȣ           ,fundorgordno      ,fundorgordno      ,long    ,7      ;
		dummy�ݵ��ֹ���ȣ        ,dummyfundordno    ,dummyfundordno    ,long    ,3      ;
		�ݵ��ֹ���ȣ             ,fundordno         ,fundordno         ,long    ,7      ;
    end
    t5512OutBlock1,�⺻���1,output;
    begin
        ���ڵ尹��			     ,reccnt		    ,reccnt	           ,long    ,5	    ;
        dummy�ֹ���ȣ			 ,dummyordno 		,dummyordno 	   ,long    ,3      ;
        �ֹ���ȣ			     ,ordno 		    ,ordno 	           ,long    ,7      ;
		������                   ,brnnm             ,brnnm             ,char    ,40     ;
		���¸�                   ,accno             ,accno             ,char    ,40     ;
		�����                   ,isunm             ,isunm             ,char    ,40     ;
		�ֹ����ɱݾ�             ,ordableamt        ,ordableamt        ,long    ,16     ;
		�����ֹ����ɱݾ�         ,mnyordableamt     ,mnyordableamt     ,long    ,16     ;
		�ֹ����űݾ�             ,ordmgn            ,ordmgn            ,long    ,16     ;
		�����ֹ����űݾ�         ,mnyordmgn         ,mnyordmgn         ,long    ,16     ;
		�ֹ����ɼ���             ,ordableqty        ,ordableqty        ,long    ,16     ;
    end
    END_DATA_MAP
END_FUNCTION_MAP
