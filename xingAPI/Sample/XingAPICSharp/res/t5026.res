BEGIN_FUNCTION_MAP
    .Func,�ϰ�û���ֹ�/���ɿ�����ȸ(t5026),t5026,base21=SONBT701,headtype=B;
    BEGIN_DATA_MAP
    t5026InBlock,�⺻�Է�,input;
    begin
	    ���ڵ尹��              ,reccnt       ,reccnt       ,   long, 5   ;
	    ���¹�ȣ                ,accno        ,accno        ,   char, 20  ;
	    �Էº�й�ȣ            ,passwd       ,passwd       ,   char, 8   ;
	    ��ȸó������            ,qrygb        ,qrygb        ,   char, 1   ;
	    �����ɼǰŷ������ڵ�    ,fotradgb     ,fotradgb     ,   char, 2   ;
	    ��Ÿ�ü�ڵ�            ,tongsingb    ,tongsingb    ,   char, 2   ;
	    ó������                ,gb           ,gb           ,   char, 1   ;
    end
    t5026OutBlock,�⺻���,output;
    begin
	    ���ڵ尹��              ,reccnt       ,reccnt       ,   long, 5   ;
	    ���¹�ȣ                ,accno        ,accno        ,   char, 20  ;
	    �Էº�й�ȣ            ,passwd       ,passwd       ,   char, 8   ;
	    ��ȸó������            ,qrygb        ,qrygb        ,   char, 1   ;
	    �����ɼǰŷ������ڵ�    ,fotradgb     ,fotradgb     ,   char, 2   ;
	    ��Ÿ�ü�ڵ�            ,tongsingb    ,tongsingb    ,   char, 2   ;
	    ó������                ,gb           ,gb           ,   char, 1   ;
    end
    t5026OutBlock1,�⺻���1,output;
    begin
	    ���ڵ尹��              ,reccnt       ,reccnt       ,   long, 5   ;
	    ���¸�                  ,accno        ,accno        ,   char, 40  ;
	    �ֹ�ó������            ,ordgb        ,ordgb        ,   char, 1   ;
	    �ֹ�ó�����и�          ,ordgbnm      ,ordgbnm      ,   char, 20  ;
    end
    t5026OutBlock2,�⺻���2,output,occurs;
    begin
	    ����                    ,seq          ,seq          ,   long, 4   ;
	    �����ɼ�������������    ,offergb      ,offergb      ,   char, 1   ;
	    �����ɼ������ȣ        ,focode       ,focode       ,   char, 32  ;
	    �Ÿű���                ,mmgb         ,mmgb         ,   char, 1   ;
	    �Ÿű��и�              ,mmgbnm       ,mmgbnm       ,   char, 10  ;
	    �̰�������              ,openyak      ,openyak      ,   long, 16  ;
	    ��ü�����              ,micheqty     ,micheqty     ,   long, 16  ;
	    ���簡                  ,price        ,price        ,   double, 13.2;
	    �ݴ�ȣ������            ,banhoqty     ,banhoqty     ,   long, 16  ;
	    �ֹ�ó������            ,ordgb        ,ordgb        ,   char, 1   ;
	    �ֹ�ó�����и�          ,ordgbnm      ,ordgbnm      ,   char, 20  ;
    end
    END_DATA_MAP
END_FUNCTION_MAP
