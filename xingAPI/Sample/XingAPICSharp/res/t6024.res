BEGIN_FUNCTION_MAP
    .Func,�ֹ����ɼ���/���ű�(t6024),t6024,base21=SONBQ103,headtype=B;
    BEGIN_DATA_MAP
    t6024InBlock,�⺻�Է�,input;
    begin
        ���ڵ尹��			     ,reccnt  		    ,reccnt  	       ,long    ,5	    ;
        ���¹�ȣ			     ,accno   		    ,accno   	       ,char    ,20     ;
        �Էº�й�ȣ			 ,passwd  		    ,passwd  	       ,char    ,8	    ;
        �ݾ׼�������			 ,gubun   		    ,gubun   	       ,char    ,1	    ;
        �����ɼ�ȣ�������ڵ�	 ,fohogagb		    ,fohogagb	       ,char    ,2	    ;
        �ֹ��ݾ�			     ,ordamt  		    ,ordamt  	       ,long    ,16     ;
    BEGIN_DATA_MAP
    t6024InBlock1,�⺻�Է�1,input;
    begin
        ���ڵ尹��2			     ,reccnt2  		    ,reccnt2  	       ,long    ,5	    ;
    end
    t6024InBlock2,�⺻�Է�2,input,occurs;
    begin
        �����ɼ������ȣ		 ,focodeno		    ,focodeno	       ,char    ,32     ;
        �Ÿű���			     ,memegb  		    ,memegb  	       ,char    ,1	    ;
        �ֹ���				     ,price   		    ,price   	       ,double  ,13.2   ;
        �ֹ�����			     ,ordqty  		    ,ordqty  	       ,long    ,16     ;
    end
    t6024OutBlock,�⺻���,output;
    begin
        ���ڵ尹��			     ,reccnt  		    ,reccnt  	       ,long    ,5	    ;
        ���¹�ȣ			     ,accno   		    ,accno   	       ,char    ,20     ;
        �Էº�й�ȣ			 ,passwd  		    ,passwd  	       ,char    ,8	    ;
        �ݾ׼�������			 ,gubun   		    ,gubun   	       ,char    ,1	    ;
        �����ɼ�ȣ�������ڵ�	 ,fohogagb		    ,fohogagb	       ,char    ,2	    ;
        �ֹ��ݾ�			     ,ordamt  		    ,ordamt  	       ,long    ,16     ;
    end
    t6024OutBlock1,�⺻���1,output,occurs;
    begin
        �����ɼ������ȣ		 ,focodeno		    ,focodeno	       ,char    ,32     ;
        �Ÿű���			     ,memegb  		    ,memegb  	       ,char    ,1	    ;
        �ֹ���				     ,price   		    ,price   	       ,double  ,13.2   ;
        �ֹ�����			     ,ordqty  		    ,ordqty  	       ,long    ,16     ;
    end
    t6024OutBlock2,�⺻���2,output;
    begin
        ���ڵ尹��			     ,reccnt       		,reccnt       	   ,long    ,5	    ;
        ���¸�				     ,accname      		,accname      	   ,char    ,40     ;
        �ֹ���				     ,date         		,date         	   ,char    ,8	    ;
        �ֹ����ɱݾ�			 ,ordnamtqty   		,ordnamtqty   	   ,long    ,16     ;
        �����ֹ����ɱݾ�		 ,ordcashamt   		,ordcashamt   	   ,long    ,16     ;
        ����ֹ����ɱݾ�		 ,orddyamt     		,orddyamt     	   ,long    ,16     ;
        �ҿ伱�����űݾ�		 ,syfpriceamt  		,syfpriceamt  	   ,long    ,16     ;
        �ҿ伱���������űݾ�	 ,syfcashamt   		,syfcashamt   	   ,long    ,16     ;
        �ҿ伱��������űݾ�	 ,syfdyamt     		,syfdyamt     	   ,long    ,16     ;
        �ҿ�ɼ����űݾ�		 ,syoptpriceamt		,syoptpriceamt	   ,long    ,16     ;
        �ҿ�ɼ��������űݾ�	 ,syoptchashamt		,syoptchashamt	   ,long    ,16     ;
        �ҿ�ɼǴ�����űݾ�	 ,syoptdyamt   		,syoptdyamt   	   ,long    ,16     ;
        �ҿ佺���������űݾ�	 ,syspdpriceamt		,syspdpriceamt	   ,long    ,16     ;
        �ҿ佺�������������űݾ� ,syspdcashamt 		,syspdcashamt 	   ,long    ,16     ;
        �ҿ佺�����������űݾ� ,syspddyamt   		,syspddyamt   	   ,long    ,16     ;
        �ҿ����űݾ�			 ,sypriceamt   		,sypriceamt   	   ,long    ,16     ;
        �ҿ��������űݾ�		 ,sychashamt   		,sychashamt   	   ,long    ,16     ;
        �ҿ������űݾ�		 ,sydyamt      		,sydyamt      	   ,long    ,16     ;
        ���ű��ܾ�			     ,namamt       		,namamt       	   ,long    ,16     ;
        �������ű��ܾ�			 ,cashnamamt   		,cashnamamt   	   ,long    ,16     ;
        ������ű��ܾ�			 ,dynamamt     		,dynamamt     	   ,long    ,16     ;
    end
    END_DATA_MAP
END_FUNCTION_MAP
