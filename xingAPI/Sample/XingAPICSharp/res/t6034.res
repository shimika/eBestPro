BEGIN_FUNCTION_MAP
    .Func,���¿�Ź��Ȳ(����/�ɼ�)(t6034),t6034,base21=SONBQ105,headtype=B;
    BEGIN_DATA_MAP
    t6034InBlock,�⺻�Է�,input;
    begin
        ���ڵ尹��                 ,reccnt               ,reccnt               ,long    ,5      ;
        ���¹�ȣ                   ,accno                ,accno                ,char    ,20     ;
        ��й�ȣ                   ,passwd               ,passwd               ,char    ,8      ;
    end
    t6034OutBlock,�⺻���,output;
    begin
        ���ڵ尹��                 ,reccnt               ,reccnt               ,long    ,5      ;
        ���¹�ȣ                   ,accno                ,accno                ,char    ,20     ;
        ��й�ȣ                   ,passwd               ,passwd               ,char    ,8      ;
    end
    t6034OutBlock1,�⺻���1,output;
    begin
        ���ڵ尹��                 ,reccnt              ,reccnt                ,long    ,5      ;
        ���¸�                     ,accname             ,accname               ,char    ,40     ;
        ��Ź���Ѿ�                 ,yetaktotamt         ,yetaktotamt           ,long    ,16     ;
        ������                     ,yesuamt             ,yesuamt               ,long    ,16     ;
        ���ݾ�                   ,dyamt               ,dyamt                 ,long    ,16     ;
        ��翹Ź���Ѿ�             ,addyetaktotamt      ,addyetaktotamt        ,long    ,16     ;
        ��翹����                 ,addyesuamt          ,addyesuamt            ,long    ,16     ;
        �������ͱݾ�               ,futprofitamt        ,futprofitamt          ,long    ,16     ;
        ���Ⱑ�ɱݾ�               ,outamt              ,outamt                ,long    ,16     ;
        ���Ⱑ�����ݾ�             ,outcashamt          ,outcashamt            ,long    ,16     ;
        ���Ⱑ�ɴ��ݾ�           ,outdyamt            ,outdyamt              ,long    ,16     ;
        ���űݾ�                   ,dipositamt          ,dipositamt            ,long    ,16     ;
        �������űݾ�               ,cashdipositamt      ,cashdipositamt        ,long    ,16     ;
        �ֹ����ɱݾ�               ,ordpoamt            ,ordpoamt              ,long    ,16     ;
        �����ֹ����ɱݾ�           ,cashpoamt           ,cashpoamt             ,long    ,16     ;
        �߰����űݾ�               ,adddipositamt       ,adddipositamt         ,long    ,16     ;
        �����߰����űݾ�           ,cashadddipositamt   ,cashadddipositamt     ,long    ,16     ;
        �����ϼ�ǥ�Աݾ�           ,supyoinamt          ,supyoinamt            ,long    ,16     ;
        �����ɼ����ϴ��ŵ��ݾ�   ,foptpredymedoamt    ,foptpredymedoamt      ,long    ,16     ;
        �����ɼǱ��ϴ��ŵ��ݾ�   ,fopttodaydymedoamt  ,fopttodaydymedoamt    ,long    ,16     ;
        �����ɼ����ϰ��Աݾ�       ,foptpreaddamt       ,foptpreaddamt         ,long    ,16     ;
        �����ɼǱ��ϰ��Աݾ�       ,fopttodayaddamt     ,fopttodayaddamt       ,long    ,16     ;
        ��ȭ���ݾ�               ,fordyamt            ,fordyamt              ,long    ,16     ;
        �����ɼǰ��»������űݸ�   ,foptaccpositname    ,foptaccpositname      ,char    ,20     ;
    end
    t6034OutBlock2,�⺻���2,output,occurs;
    begin
        ��ǰ���ڵ��               ,groupcodname        ,groupcodname          ,char    ,20     ;
        ���������űݾ�             ,dangerpositamt      ,dangerpositamt        ,long    ,16     ;
        �������űݾ�               ,pricepositamt       ,pricepositamt         ,long    ,16     ;
        �����������űݾ�           ,spreadpositamt      ,spreadpositamt        ,long    ,16     ;
        ���ݺ������űݾ�           ,priceratepositamt   ,priceratepositamt     ,long    ,16     ;
        �ּ����űݾ�               ,minpositamt         ,minpositamt           ,long    ,16     ;
        �ֹ����űݾ�               ,ordpositamt         ,ordpositamt           ,long    ,16     ;
        �ɼǼ��ż��ݾ�             ,optsunmesuamt       ,optsunmesuamt         ,long    ,16     ;
        ��Ź���űݾ�               ,wtpositamt          ,wtpositamt            ,long    ,16     ;
        �������űݾ�               ,ujpositamt          ,ujpositamt            ,long    ,16     ;
        �����ż�ü��ݾ�           ,fmesucheamt         ,fmesucheamt           ,long    ,16     ;
        �����ŵ�ü��ݾ�           ,fmedocheamt         ,fmedocheamt           ,long    ,16     ;
        �ɼǸż�ü��ݾ�           ,optmesucheamt       ,optmesucheamt         ,long    ,16     ;
        �ɼǸŵ�ü��ݾ�           ,optmedocheamt       ,optmedocheamt         ,long    ,16     ;
        �������ͱݾ�               ,flossamt            ,flossamt              ,long    ,16     ;
		��������Ź���ű�		   ,totriskwtpositamt   ,totriskwtpositamt	   ,long    ,16     ;
    end
    END_DATA_MAP
END_FUNCTION_MAP
