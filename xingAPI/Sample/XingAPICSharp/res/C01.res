BEGIN_FUNCTION_MAP
.Feed, �����ֹ�ü��, C01, key=8, group=1;
    BEGIN_DATA_MAP
    InBlock,�Է�,input;
    begin
    end
    OutBlock,���,output;
    begin
		�����Ϸù�ȣ,   lineseq,    lineseq,    long,   10;
		���¹�ȣ,		accno,	    accno,	    char,	11;
		������ID,		user,	    user,	    char,	8;

		�Ϸù�ȣ,   	seq,    	seq,    	long,   11;
		trcode,		    trcode, 	trcode,     char,	11;
		���Խð��ܱ���, typecode,	typecode,	char,	1;
		ȸ����ȣ,		memberno,	memberno,	char,	5;
		������ȣ,		bpno,	    bpno,	    char,	5;
		�ֹ���ȣ,		ordno,	    ordno,	    char,	10;
		���ֹ���ȣ,		ordordno,	orgordno,	char,	10;
		�����ڵ�,		expcode,	expcode,	char,	12;
		������ȣ,		yakseq,	    yakseq,	    char,	11;
		ü�ᰡ��,		cheprice,	cheprice,	float,	11.2;
		ü�����,		chevol,		chevol,		long,	10;
		ü������,		ordgb,	    ordgb,	    char,	2;
		ü������,		chedate,	chedate,	char,	8;
		ü��ð�,		chetime,	chetime,	char,	9;
		�ֱٿ�ü�ᰡ��,	spdprc1,	spdprc1,	float,	11.2;
		���ٿ�ü�ᰡ��,	spdprc2,	spdprc2,	float,	11.2;
		�ŵ�������,		dosugb,	    dosugb,	    char,	1;
		���¹�ȣ1,		accno1,	    accno1,	    char,	12;
		��������ȣ������,sihogagb,	sihogagb,	char,	11;
		��Ź���ȣ,		jakino,	    jakino,	    char,	5;
		����ֱǰ��¹�ȣ,daeyong,	daeyong,	char,	12;
		mem_filler,     mem_filler, mem_filler, char,   6;       
		mem_accno,      mem_accno,  mem_accno,  char,  11;       
		mem_filler1,    mem_filler, mem_filler1,char,  23;       
		Filler,			filler,	    filler,	    char,	81;
    end
    END_DATA_MAP
END_FUNCTION_MAP
