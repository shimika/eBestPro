BEGIN_FUNCTION_MAP
	.Func,���������ֹ�(t5501),t5501,base21=SONAT000,headtype=B;
	BEGIN_DATA_MAP
	t5501InBlock,�Է�,input;
	begin
		���ڵ尹��,	reccnt,	reccnt,	long,	5;
		���¹�ȣ,	accno,	accno,	char,	20;
		�Էº�й�ȣ,	passwd,	passwd,	char,	8;
		�����ȣ,	expcode,	expcode,	char,	12;
		�ֹ�����,	qty,	qty,	long,	16;
		�ֹ���,	price,	price,	double,	13.2;
		�Ÿű���,	memegb,	memegb,	char,	1;
		ȣ�������ڵ�,	hogagb,	hogagb,	char,	2;
		���α׷�ȣ�������ڵ�,	pgmtype,	pgmtype,	char,	2;
		���ŵ����ɿ���,	gongtype,	gongtype,	char,	1;
		���ŵ�ȣ������,	gonghoga,	gonghoga,	char,	1;
		��Ÿ�ü�ڵ�,	tongsingb,	tongsingb,	char,	2;
		�ſ�ŷ��ڵ�,	sinmemecode,	sinmemecode,	char,	3;
		������,	loandt,	loandt,	char,	8;
		ȸ����ȣ,	memnumber,	memnumber,	char,	3;
		�ֹ����Ǳ���,	ordcondgb,	ordcondgb,	char,	1;
		�����ڵ�,	stragb,	stragb,	char,	6;
		�׷�ID,	groupid,	groupid,	char,	20;
		�ֹ�ȸ��,	ordernum,	ordernum,	long,	10;
		��Ʈ��������ȣ,	portnum,	portnum,	long,	10;
		�ٽ��Ϲ�ȣ,	basketnum,	basketnum,	long,	10;
		Ʈ��ġ��ȣ,	tranchnum,	tranchnum,	long,	10;
		�����۹�ȣ,	itemnum,	itemnum,	long,	10;
		������ù�ȣ,	operordnum,	operordnum,	char,	12;
		�����������ڿ���,	flowsupgb,	flowsupgb,	char,	1;
		�ݴ�Ÿű���,	oppbuygb,	oppbuygb,	char,	1;
	end
	t5501OutBlock,���,output;
	begin
		���ڵ尹��,	reccnt,	reccnt,	long,	5;
		���¹�ȣ,	accno,	accno,	char,	20;
		�Էº�й�ȣ,	passwd,	passwd,	char,	8;
		�����ȣ,	expcode,	expcode,	char,	12;
		�ֹ�����,	qty,	qty,	long,	16;
		�ֹ���,	price,	price,	double,	13.2;
		�Ÿű���,	memegb,	memegb,	char,	1;
		ȣ�������ڵ�,	hogagb,	hogagb,	char,	2;
		���α׷�ȣ�������ڵ�,	pgmtype,	pgmtype,	char,	2;
		���ŵ����ɿ���,	gongtype,	gongtype,	char,	1;
		���ŵ�ȣ������,	gonghoga,	gonghoga,	char,	1;
		��Ÿ�ü�ڵ�,	tongsingb,	tongsingb,	char,	2;
		�ſ�ŷ��ڵ�,	sinmemecode,	sinmemecode,	char,	3;
		������,	loandt,	loandt,	char,	8;
		ȸ����ȣ,	memnumber,	memnumber,	char,	3;
		�ֹ����Ǳ���,	ordcondgb,	ordcondgb,	char,	1;
		�����ڵ�,	stragb,	stragb,	char,	6;
		�׷�ID,	groupid,	groupid,	char,	20;
		�ֹ�ȸ��,	ordernum,	ordernum,	long,	10;
		��Ʈ��������ȣ,	portnum,	portnum,	long,	10;
		�ٽ��Ϲ�ȣ,	basketnum,	basketnum,	long,	10;
		Ʈ��ġ��ȣ,	tranchnum,	tranchnum,	long,	10;
		�����۹�ȣ,	itemnum,	itemnum,	long,	10;
		������ù�ȣ,	operordnum,	operordnum,	char,	12;
		�����������ڿ���,	flowsupgb,	flowsupgb,	char,	1;
		�ݴ�Ÿű���,	oppbuygb,	oppbuygb,	char,	1;
	end
	t5501OutBlock1,���1,output;
	begin
		���ڵ尹��,	reccnt,	reccnt,	long,	5;
		�ֹ���ȣ,	ordno,	ordno,	long,	10;
		�ֹ��ð�,	ordtime,	ordtime,	char,	9;
		�ֹ������ڵ�,	ordmktcode,	ordmktcode,	char,	2;
		�ֹ������ڵ�,	ordcode,	ordcode,	char,	2;
		���������ȣ,	expcode,	expcode,	char,	9;
		���������ȣ,	operno,	operno,	char,	9;
		�ֹ��ݾ�,	ordamt,	ordamt,	long,	16;
		�����ֹ���ȣ,	fillermemegb,	fillermemegb,	long,	10;
		�ݴ�Ÿ��Ϸù�ȣ,	oppbuyseqno,	oppbuyseqno,	long,	10;
		�����ֹ���ȣ,	preeordno,	preeordno,	long,	10;
		�ǹ��ֹ�����,	realordcnt,	realordcnt,	long,	16;
		�����ֹ�����,	recoordcnt,	recoordcnt,	long,	16;
		�����ֹ��ݾ�,	cashordamt,	cashordamt,	long,	16;
		����ֹ��ݾ�,	daeordamt,	daeordamt,	long,	16;
		�����ֹ��ݾ�,	recordamt,	recordamt,	long,	16;
		���¸�,	accno,	accno,	char,	40;
		�����,	hname,	hname,	char,	40;
	end
	END_DATA_MAP
END_FUNCTION_MAP
