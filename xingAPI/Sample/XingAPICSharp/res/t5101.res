BEGIN_FUNCTION_MAP
	.Func,�������������ֹ�,t5101,base21=SONAT016,headtype=B;
	BEGIN_DATA_MAP

	t5101InBlock,�Է�,input;
	begin
		���ڵ尹��			,	reccnt		,	reccnt		,	long	,	5;
		��Ÿ�ü�ڵ�		,	tongsingb	,	tongsingb	,	char	,	2;
		�����ֹ�Ƚ��		,	ordercnt	, 	ordercnt	,	long	,	6;
		���ڵ尹��1			,	reccnt1		,	reccnt1		,	long	,	5;
	end
	t5101InBlock1,�Է�,input,occurs;
	begin
		�ֹ�ó������		,	ordergb		,	ordergb		, 	char	,	1;
		���ֹ���ȣ			,	orgordno	,	orgordno	,	long	,	10;
		���¹�ȣ			,	accno		,	accno		,	char	,	20;
		�Էº�й�ȣ		,	passwd		,	passwd		,	char	,	8;
		�Ÿű���			,	memegb		,	memegb		,	char	,	1;
		�����ȣ			,	expcode		,	expcode		,	char	,	12;
		�ֹ�����			,	qty			,	qty			,	long	,	16;
		�ֹ���				,	price		,	price		,	double	,	13.2;
		ȣ�������ڵ�		,	hogagb		,	hogagb		,	char	,	2;
		���ŵ����ɿ���		,	gongtype	,	gongtype	,	char	,	1;
		���ŵ�ȣ������      ,   ghogagb     ,   ghogagb     ,   char    ,   1;
		�ֹ����Ǳ���		,	ordcondgb	,	ordcondgb	,	char	,	1;
		���α׷�ȣ�������ڵ�,	pgmtype		,	pgmtype		,	char	,	2;
		������ù�ȣ		,	operordnum	,	operordnum	,	char	,	12;
		�ſ�ŷ��ڵ�		,   sincd	    ,   sincd       ,   char    ,   3;
		������				,   loandt      ,   loandt      ,   char    ,   8;
		�����������ڿ���    ,   flowsupgb   ,   flowsupgb   ,   char    ,   1;
		�����ֹ��Ϸù�ȣ	,	multiordno	,	multiordno	,	long	,	10;
		�ֹ���ȣ			,	ordno		,	ordno		,	long	,	10;
		�޼����ڵ�			,	msgcode		,	msgcode		,	char	,	4;
		�޼�������			,	msg			,	msg			,	char	,	100;
		ó���ð�			,	proctm		,	proctm		,	char	,	9;
	end
	t5101OutBlock,�Է�,output;
	begin
		���ڵ尹��			,	reccnt		,	reccnt		,	long	,	5;
		��Ÿ�ü�ڵ�		,	tongsingb	,	tongsingb	,	char	,	2;
		�����ֹ�Ƚ��		,	ordercnt	, 	ordercnt	,	long	,	6;
	end
	t5101OutBlock1,�Է�,output,occurs;
	begin
		�ֹ�ó������		,	ordergb		,	ordergb		, 	char	,	1;
		���ֹ���ȣ			,	orgordno	,	orgordno	,	long	,	10;
		���¹�ȣ			,	accno		,	accno		,	char	,	20;
		�Էº�й�ȣ		,	passwd		,	passwd		,	char	,	8;
		�Ÿű���			,	memegb		,	memegb		,	char	,	1;
		�����ȣ			,	expcode		,	expcode		,	char	,	12;
		�ֹ�����			,	qty			,	qty			,	long	,	16;
		�ֹ���				,	price		,	price		,	double	,	13.2;
		ȣ�������ڵ�		,	hogagb		,	hogagb		,	char	,	2;
		���ŵ����ɿ���		,	gongtype	,	gongtype	,	char	,	1;
		���ŵ�ȣ������      ,   ghogagb     ,   ghogagb     ,   char    ,   1;
		�ֹ����Ǳ���		,	ordcondgb	,	ordcondgb	,	char	,	1;
		���α׷�ȣ�������ڵ�,	pgmtype		,	pgmtype		,	char	,	2;
		������ù�ȣ		,	operordnum	,	operordnum	,	char	,	12;
		�ſ�ŷ��ڵ�		,   sincd	    ,   sincd       ,   char    ,   3;
		������				,   loandt      ,   loandt      ,   char    ,   8;
		�����������ڿ���    ,   flowsupgb   ,   flowsupgb   ,   char    ,   1;
		�����ֹ��Ϸù�ȣ	,	multiordno	,	multiordno	,	long	,	10;
		�ֹ���ȣ			,	ordno		,	ordno		,	long	,	10;
		�޼����ڵ�			,	msgcode		,	msgcode		,	char	,	4;
		�޼�������			,	msg			,	msg			,	char	,	100;
		ó���ð�			,	proctm		,	proctm		,	char	,	9;
	end
	END_DATA_MAP
END_FUNCTION_MAP
