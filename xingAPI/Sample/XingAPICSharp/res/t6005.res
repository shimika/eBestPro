BEGIN_FUNCTION_MAP
    .Func,���ű������ֹ����ɱݾ���ȸ(t6005),t6005,base21=SONAQ201,headtype=B;
    BEGIN_DATA_MAP
    t6005InBlock,�⺻�Է�,input;
    begin
        ���ڵ尹��			                 ,reccnt		    ,reccnt		           ,long    ,5	    ;
        �Ÿű���			                 ,memegb 		    ,memegb  	           ,char    ,1	    ;
        ���¹�ȣ			                 ,accno  		    ,accno   	           ,char    ,20     ;
        �Էº�й�ȣ			             ,passwd 		    ,passwd  	           ,char    ,8	    ;
        �����ȣ			                 ,expcode		    ,expcode 	           ,char    ,12     ;
        �ֹ���				                 ,hopemesu  		,hopemesu   	       ,double  ,13.2   ;
        ��Ÿ�ü�ڵ�			             ,mechegb		    ,mechegb 	           ,char    ,2	    ;
    end
    t6005OutBlock,�⺻���,output;
    begin
        ���ڵ尹��			                 ,reccnt		    ,reccnt		           ,long    ,5	    ;
        �Ÿű���			                 ,memegb  		    ,memegb  	           ,char    ,1	    ;
        ���¹�ȣ			                 ,accno   		    ,accno   	           ,char    ,20     ;
        �Էº�й�ȣ			             ,passwd  		    ,passwd  	           ,char    ,8	    ;
        �����ȣ			                 ,expcode 		    ,expcode 	           ,char    ,12     ;
        �ֹ���				                 ,hopemesu   		,hopemesu   	       ,double  ,13.2   ;
        ��Ÿ�ü�ڵ�			             ,mechegb 		    ,mechegb 	           ,char    ,2	    ;
    end
    t6005OutBlock1,�⺻���1,output;
    begin
        ���ڵ尹��			                 ,reccnt		    ,reccnt		    	   ,long    ,5	    ;
        ���¸�				                 ,accname      		,accname      		   ,char    ,40     ;
        �����				                 ,codename     		,codename     		   ,char    ,40     ;
        ������				                 ,depoamt      		,depoamt      		   ,long    ,16     ;
        ���ݾ�			                 ,daeamt       		,daeamt       		   ,long    ,16     ;
        �ſ�㺸����ݾ�		             ,cdamreuse    		,cdamreuse    		   ,long    ,16     ;
        �����ֹ����ɱݾ�		             ,cashordamt      	,cashordamt       	   ,long    ,16     ;
        ����ֹ����ɱݾ�		             ,orddae       		,orddae       		   ,long    ,16     ;
        �������űݾ�			             ,margincash   		,margincash   		   ,long    ,16     ;
        ������űݾ�			             ,margindae    		,margindae    		   ,long    ,16     ;
        �ŷ��ұݾ�			                 ,kospiamt     		,kospiamt     		   ,long    ,16     ;
        �ڽ��ڱݾ�			                 ,kosdaqamt    		,kosdaqamt    		   ,long    ,16     ;
        ����������(D+1) 		             ,d1cash       		,d1cash       		   ,long    ,16     ;
        ����������(D+2) 		             ,d2cash       		,d2cash       		   ,long    ,16     ;
        ��ݰ��ɱݾ�			             ,chulcanamt   		,chulcanamt   		   ,long    ,16     ;
        �̼��ݾ�			                 ,misuamt      		,misuamt      		   ,long    ,16     ;
        ��������			                 ,susuryorate  		,susuryorate  		   ,double  ,11.8   ;
        �߰�¡���ݾ�			             ,addchamt     		,addchamt     		   ,long    ,16     ;
        ������ݾ�			             ,resuseamt    		,resuseamt    		   ,long    ,16     ;
        ����������ݾ�		             ,cashresuseamt		,cashresuseamt		   ,long    ,16     ;
        �̿�����űݷ�			             ,usemarginrate		,usemarginrate		   ,double  ,7.4    ;
        ���������ݾ�		             ,daereuseamt  		,daereuseamt  		   ,long    ,16     ;
        �������űݷ�			             ,daeresuseamt 		,daeresuseamt 		   ,double  ,7.4    ;
        �������űݷ�			             ,charate      		,charate      		   ,double  ,7.4    ;
        �ŷ����űݷ�			             ,marginrate   		,marginrate   		   ,double  ,7.4    ;
        ������				                 ,susuryo      		,susuryo      		   ,long    ,16     ;
        ���űݷ�50�ۼ�Ʈ�ֹ����ɱݾ�	     ,ordamt50		    ,ordamt50			   ,long    ,16     ;
        ���űݷ�50�ۼ�Ʈ�ֹ����ɼ���         ,ordcashqty50		,ordcashqty50		   ,long    ,16     ;
        ���űݷ�30�ۼ�Ʈ�ֹ����ɱݾ�	     ,ordamt30		    ,ordamt30			   ,long    ,16     ;
        ���űݷ�30�ۼ�Ʈ�ֹ����ɼ���	     ,ordqty30		    ,ordqty30			   ,long    ,16     ;
        ���űݷ�40�ۼ�Ʈ�ֹ����ɱݾ�	     ,ordamt40		    ,ordamt40			   ,long    ,16     ;
        ���űݷ�40�ۼ�Ʈ�ֹ����ɼ���	     ,ordqty40		    ,ordqty40			   ,long    ,16     ;
        ���űݷ�100�ۼ�Ʈ�ֹ����ɱݾ�	     ,ordamt100		    ,ordamt100			   ,long    ,16     ;
        ���űݷ�100�ۼ�Ʈ�ֹ����ɼ���        ,ordqty100		    ,ordqty100			   ,long    ,16     ;
        ���űݷ�100�ۼ�Ʈ�����ֹ����ɱݾ�    ,ordcashamt100		,ordcashamt100		   ,long    ,16     ;
        ���űݷ�100�ۼ�Ʈ�����ֹ����ɼ���    ,ordcashqty100		,ordcashqty100		   ,long    ,16     ;
        ���űݷ�20�ۼ�Ʈ���밡�ɱݾ�	     ,reamt20		    ,reamt20		       ,long    ,16     ;
        ���űݷ�30�ۼ�Ʈ���밡�ɱݾ�	     ,reamt30		    ,reamt30		       ,long    ,16     ;
        ���űݷ�40�ۼ�Ʈ���밡�ɱݾ�	     ,reamt40		    ,reamt40		       ,long    ,16     ;
        ���űݷ�100�ۼ�Ʈ���밡�ɱݾ�      ,reamt100		    ,reamt100			   ,long    ,16     ;
        �ֹ����ɼ���			             ,memeqty		    ,memeqty		       ,long    ,16     ;
        �ֹ����ɱݾ�			             ,ordamt		    ,ordamt		    	   ,long    ,16     ;
    end
    END_DATA_MAP
END_FUNCTION_MAP
