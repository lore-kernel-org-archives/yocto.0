Return-Path: <manjukumar.harthikote-matha@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F251E00DA5; Tue, 23 Aug 2016 12:05:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0058.outbound.protection.outlook.com [104.47.36.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF537E00D76
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 12:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=kqPttgN0anLVDYdWZZni0gFg9n3TKg74otnZZ2Xe57Q=;
	b=y2Iw4TekqGidrZ6mgmGfRtMlkPNEcqHZObqFUEOY4zK7kZAxXUSrN/eLQeAvYtXUmrYyS7G29vPGU0wq+8voUWuB6QvPo+WzHrSTbMPxlczaLhVRFYTF0SDd8IfIQPX01MPZ1fDFSn8FLl07/KKGiq4/fo5ZcStUSmd7CzLvY0c=
Received: from BLUPR02CA021.namprd02.prod.outlook.com (10.160.23.139) by
	BLUPR02MB1620.namprd02.prod.outlook.com (10.162.212.158) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.587.9; Tue, 23 Aug 2016 19:05:22 +0000
Received: from SN1NAM02FT011.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e44::206) by BLUPR02CA021.outlook.office365.com
	(2a01:111:e400:8ad::11) with Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id 15.1.587.13 via
	Frontend Transport; Tue, 23 Aug 2016 19:05:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; linux.intel.com;
	dkim=none (message not signed)
	header.d=none;linux.intel.com; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	SN1NAM02FT011.mail.protection.outlook.com (10.152.72.82) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.587.6
	via Frontend Transport; Tue, 23 Aug 2016 19:05:22 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bcGyU-00038U-A0; Tue, 23 Aug 2016 12:03:02 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bcGyV-0007i9-38; Tue, 23 Aug 2016 12:03:03 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	u7NJ32XG019756; Tue, 23 Aug 2016 12:03:02 -0700
Received: from [172.19.74.183] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bcGyU-0007hk-Ew; Tue, 23 Aug 2016 12:03:02 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <ebf6a9f3-caad-9d46-b949-d91cbd4dedf7@xilinx.com>
	<10227417.bNpvINI2jx@peggleto-mobl.ger.corp.intel.com>
From: Manjukumar Harthikote Matha <manjukumar.harthikote-matha@xilinx.com>
Message-ID: <3777d43f-ac66-bbb3-97b5-8701e02f0540@xilinx.com>
Date: Tue, 23 Aug 2016 11:59:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <10227417.bNpvINI2jx@peggleto-mobl.ger.corp.intel.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.0.0.1202-22530.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(2980300002)(438002)(3190300001)(24454002)(189002)(199003)(377454003)(189998001)(5660300001)(92566002)(110136002)(2950100001)(23746002)(626004)(47776003)(33646002)(77096005)(4001350100001)(2906002)(11100500001)(8936002)(356003)(9786002)(31696002)(586003)(8676002)(31686004)(305945005)(50986999)(87936001)(63266004)(54356999)(81166006)(64126003)(7846002)(50466002)(76176999)(81156014)(106466001)(230700001)(86362001)(4326007)(65956001)(65806001)(36756003)(83506001)(65826006)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR02MB1620; H:xsj-pvapsmtpgw01;
	FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com; MX:1; A:1; LANG:en;
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02FT011;
	1:aqLUsTyLfHGMgXBS8I4zSxiRPW6uvWVw3kLwRmyy3WmFC7dmPZv33+HRkyRqfPOqUmyoukdu2tPe7scrE0XCDWbvRXDOsKgusIb3O2mdCoT5E8Pmykl+vkNrgXGj7vPeskfSnHXWb8wHld5iv5pZAbzz5AcqOdCdakyyUp/Qe+mUpMWsr72muwKPQeGu1B5u0DsPpc4qAqGhMsg1o0Ym6QFyZtr5nXAgVgSa8Y15sSerkDSmBMVklMDSEy1YKQTrKfWvy5M+MESdwn0YPUqna//4QdqXRDj4wRwKsR0pw+hGXQf9WYov68XE/eoHcgg4FPWMM8KTwns353ATy1GsnHARg/HiqKSmtK1W+hqVOthz7FMUkpw2VadvTBLlF9MdklPOu/27QKrTDF1qFhyEMAek0yzUXT1epbHAfj9HtvBRNnLRo9bxUwyCp/12BjkbNJPN4IwrRQ9qbWZ5/ivrd4gCDQmBB2kzOvsW2VZgt7abCkTUbJBsic0+XlIBVPD9n5zqImPnVMKd2DZZVw15v/MYrc2YnC5udvvkUMhKOzivCzqqv5YyXBaccCkXo5O5ESNrG6y5qnecaQK+RaOKn88SaphrHJ9Ll/aYMt941MwNgCqKB7CyHiaIIqPtOVmV
X-MS-Office365-Filtering-Correlation-Id: a8fe4061-7a1b-4521-bbcd-08d3cb886f31
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1620;
	2:sLnAEOjknDu+fvP7ee3yhKrnDbvitzMkuF84aHvisxEC1/shE9dq7xF6ZEAxi0aA8BYb2qTyKliHGRrPuWfCMqj0hpeG9D6LHMxxVD+UpeJOZb2Yk9QlTeCEt8hn1oq5ShQA1FBSJDxStsGU+tuPGqNakwi01Ff2AZG6yimr4QTH6BXpmNct6PRNhUs+htC5;
	3:NagbrfAbsn1yj8WvJ4Xy4wALKKa/u/D0QG1P8WYSyWxZUZTyjHD3qaNNw5a6k4s00jAOsEs345G+T1qoLBPXhf4cyeJ1/HhM0Lhcf7Iet6+BOUw21EsLa70x7yfWSs6hmdvYzz64j2uPXni6ngTuy17al9IP+D+4ERwQMpsHLeaGDwTwkb5932XKidG5dCFk8lTvNKS3JEwJOPX4wfLYygWoUf57muf5D1o5E0YYIwJWGVy9Oy/M9Js71YHGVe++oeJGkNHxeThSTF7JiGmYHw==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:BLUPR02MB1620; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1620;
	25:VXQfAZG4DNt2SDV059TwzDVAjFiOkYDhkLIS9fCkYZWRsvoVMYVwhnQZCr/H2dYbXD7CxOxW3nxZWyYeRhNLjki+BPWqWk63j+p7rmf4LaBON8iJY3+Jdp4D4q8y/DNUIp5jiwlyPdpr4Z1HfK1hivJcFk7mTB/b4MxDuS0Emd3OyPxpqT2uj+ci0A/P27HtINj7husN31E0w8D13QoM0i1jbR/fkOiOJVUOFN1qHddC31DXhjs/XnnX4IVpNPnaURxOn/K/ZMLprS/mmSvBBVqM5bSfyc1qTq+mDAHrgrNRpKtH/Lu5/lNkDwgkFTHECyJTxP06NqbB0PYxaADM7FFXJ/wBKcX75Bml+JU9nwxsZSCMRSpop8z3oFNLPVMdX9BXYReyMbM8vJ2T9e6C0CwJoFyTly+RftfbtXkUZgiQpJEEkPSREjAH6Qax2tEzNydxHdFsa8SJJ6FCdBbcRpOP8IuDwyGohIOwysa3oGIgFaRB0TycLExmgJBzJCuHtRPIs6GAYw5ECH4o0i4Pi1IvBKTl45Wc7PCeCIES71Y041TlnvL34w7fVQ8ZqwnHjZ+iw2KlX6slMbOEUGrd4cA9fIVjfWfYlVP2ny8AhGOCF9Nmwxz8qugFF2jhJkhDFNQFSl6vlPD6LoFETh7owsdTSVdzErB+SbYOedqOM1IHAOQhsR/xWlZd2N21mAGZ6LrLJM+8N2pdF5y8RBe6g8u+6i4QUGPZIWdQkLCYdDhgXOtJ5cxxm9GrQ+tMwzvTxTg9crqJVtNbum+pCBFnZW0gbnyag1FTRx8/8w2cBrk=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1620;
	31:9LdLnxGEOitAeCAGrm+DxLxlxC3YsLJ1WmLO0otTIGZ1rqDSU4lZ+i+6RhLsPCc0e1mm4dqad1OSTuTCkXx3nPkMZvlhnkbfA89wJyW6JLW4H/SQYgg7T27Sc4rnkqv2Tm1LF9U+G1PgGuUbw0xtwS2G1r+mAJcuSkiQSVxOL3jOAjvWTW17oxTlEr5mZkNsM4q/3bDYs4bj9qxEvkHEzTGYJgURo8yg38Pe2LgRj+M=;
	20:tgq+Lv1IR+RmGwKG57WxlVAy2wxCRsoHfYrn0sAmfvslt+L5dHPIJw4cXJHG32hUGO6d1XU0d734wKbzaxoYgAMDuNWZSMSjjDOLYDWsFzeIpNq/WfKuj3FJ+lYOAKzKk3R1ORRKBzuYOLRZdrvLNgyTE8PYp5MO8OnRrC+iCtWF/lKwYeltDTCifldWSNjLi0ZtF2fg6C8k25rjqecX1AhJMa8dwoUnJeWBmmlR8kkKZvoAyDlW/YI+VtKq7cb1+sIGmwAVOWGLYBq3fKv7TfazWCwRPzx7/LRrL+uZXGNYHVm5ejDMGTR4oD0kgXq1rpZfdai2vdllKW/0zVcWz1LjgQSnUkGwpfsA1U4LFduUI6FX5FzO01YQ11GPUsT5ngCzajadCQiCn0nhwMi9Ic8DoPynyc+QX7xROPnuTLMfjZotsXiK7SC4MOY3+8I+Rk0ergubDmQ4lLwYqVJ4+kvZIdxX0mfaZ7NVxfRcT0NKqmfmWcU4LEzJOF3HPeSi
X-Microsoft-Antispam-PRVS: <BLUPR02MB162007EE30A1BE83347311BBC3EB0@BLUPR02MB1620.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(13015025)(13017025)(13023025)(13024025)(13018025)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:BLUPR02MB1620; BCL:0; PCL:0; RULEID:; SRVR:BLUPR02MB1620; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1620;
	4:YJlWYH9aqqgeoTVyrgob2rF1rC2P2MDQjdQcv3k37gapFmzZxhmhAZ+EOTxpzqcPSVFN2LEjaJ8M0otGWHgoYhmxpGfTIgpnqQGxCw00HwBIY9wmXL0LwPpNngmrY8D6JSCopZxIKPQIupZKplNwWBlspk/+nwFMImmyDP1IYTTTs+xoPCjzSYwIfTYcvx/BEYq2Uwe/qeoIAl+ps2296umJuIcqfBXwhyxv3hXj0Huw0LYCvUI7ImmkZWgLCp+hpBHYKp28XIhHYsYjEsHQuOftmCvTphG7BoMBc90SVC1+FOLM06Hth33w8gZVX0yrQ3GxndhCHShBDA1pTSSZxaU3n/aRPfviWaOGma9IRNR7ACSx75Y7JG/X/c1mm96mdQ9EK7LWTLLvQ40VTgYPaZePaRp3Wykznuk0mWEhUeLVx40+mZ0Qs8RF4bI0yqUMEvoSb3ufUOMjWbA0tllyt7T9LOl6Q0yVDVVgUboTbgJjo4h/W2p1NwPeyjP1XZ8Z
X-Forefront-PRVS: 004395A01C
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BLUPR02MB1620;
	23:6FFs8DVJ82cL3FCx577mCSRQl2g4Xl9/8F5Xt?=
	=?Windows-1252?Q?8JY031wA8hOLI3p7UW/GRg2DsxNvcgP5BNQq2XGmAnkL8oZch+1zEVQM?=
	=?Windows-1252?Q?nPZatJsb2fQI6i9nWI5+NdPJ0XIDlxwemRjOjyX1uKYU+WgKqCO3U1zu?=
	=?Windows-1252?Q?MbEVqib6TRV2QZDUg8zw3k50tOfwAv3vX1WIJXA3w78CYSCLEwEzImMo?=
	=?Windows-1252?Q?xCQ1XGVB5vKqGa2oFvCrv0x393J8hf9vaZw0Ve1v9AeKR2YSP8UXPBSH?=
	=?Windows-1252?Q?I8GOsAkCUlP/Ae6Y8fWyGeRoy59bvBrBeZ2WzNgKch1UOGIM3hm8y0gt?=
	=?Windows-1252?Q?B2GoFbIllRPIvZzFlqC140++HH6ZUXnsd4x+orsYGehFtq083PuIBU4s?=
	=?Windows-1252?Q?BNTJA/O+pElZ2WrUNyLuE8JOgEPiSCwEzkca/SziLY5mV9qTQV/xN7pn?=
	=?Windows-1252?Q?m3H+P43ZU1qT5WdP5wawFvQGIyulMw8/fTbZZdTjGGhESgCaW/8kmGkL?=
	=?Windows-1252?Q?fOZ/hst4O4T/1EDQLBRHgO9hGSIRrABYaVxAg3fp1ie7bw4X1lBM3k4a?=
	=?Windows-1252?Q?BVD4LQykkDxyDIqbgdKSHPFW2CZSxKeiexuxruBDHR/1ldFaiXXCUbAg?=
	=?Windows-1252?Q?vNX4lbRHyqf92Grdizy+LIgQD7klDMXtPqwTCUtn5O9MpvZ+Oyl9bMf9?=
	=?Windows-1252?Q?BlC5s8URUk2Ls2ZmxJOn9UWgunNFGAie1M3ilgZlWYTB1pAEAPueBgat?=
	=?Windows-1252?Q?FZgMxH6T76fs6AjmQYl/D+y9sWKRYBNq9R7KcbStGb6NONxBUVS1eY7C?=
	=?Windows-1252?Q?hdFgkgk00Zbup6mDP+dLLTT2P4kR6SN54HZSMUxIYH0uCOAijfKCcOvW?=
	=?Windows-1252?Q?UpHwRv3TPSjuwDDsk9T/cE2wBE9otLMySTAxhCyrEVowLlyWe9YnrdKi?=
	=?Windows-1252?Q?hhI1+YKcS6jQ+oPJngag5KFXFBZul884iRxECDW8VoGt93YL1lddbJdo?=
	=?Windows-1252?Q?TPxCe4MELJs81wB1zDC9A4o81u36D4T1yaZk9ZZ3MeJOpY6E88BOMESH?=
	=?Windows-1252?Q?5rDn2/k27r6DI64CdwqRCyo30tY3SVJg+XYmzcM1YJ9JbSGgcIFrO59F?=
	=?Windows-1252?Q?SqQ7A3FmTA/h9wpje4WieE08gCFZmQPL9qv6seLVMdHQC0tTKLsFEwaA?=
	=?Windows-1252?Q?iRywzO4qGfV0st89yhlSTNx0euugxa6Z/M7oTAj9b2Mkpd+m6THEtYJZ?=
	=?Windows-1252?Q?aaKPfqewb4w2GGM4jX1j36FojjuMCj5x2XN1hI=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR02MB1620;
	6:iBfT/4V0j3gNzAlztjRsBjQOZU2H7qHwL5rYZR3UufOvbbwuM+phVdzFFjMVIXxW2iDXLB1q61ye9Vf1jujlzyBTTuAsSw6wpfK/LKL9obqumLTa2w7rctutjD5LUq5DvANLeS2g9l8yMMxrrWy33/AxXuBNW56Q2wjTaxKzVqEPVNeNP5wbHiuhp2tKKi4pbuhJGOjYVHTZ8DkR9ZwHQM3qhNFJVYxEu7oypxzYAXunDasnujNMeGt234dmzjLQ9CFCcaaSS7emg71Eul+u6TnYZfLPUlCkYdRBNUnUEHYYbOFwtgz0kCgEYAFS3w3djS32bNScXX1l7IMtGxWxJw==;
	5:0cnvYXaIZcuWR4Qei3vwUck+kP9KgPyoGf0gr2cnJkijTmzudFvriPFL3flqvH3zeo/27EKaHRm4O+Yq0ebE7Pvq3w+vbwZXygIlyxaukufSJuObTUbVxrS3sQe+IiNwzg4mbJe0yn2qZvsdWXBcDQ==;
	24:TFGLKEBv9eMfArUh1a5daPAfysNalThDJNJ25OJble2AAZm8OAEbAGbP/+JsaNmtMmhszWYc/sIMRfN8yhfYZ5C+HXzNUuerVqeDp8gsSeI=;
	7:ylAXEbLae/vSHJ6gDkMFMlhd3ONfn1gdv506DEqWBdGRxbKd1scekqmodDJVoDPtCqnJ/2sccV4OyOJBVfuT5vc0IcbxobnSplNvm/7IBAM+K1215ikxwpjUMeuoWwpbdJUfdYWwF2siQxRI0we4g/Ixd3lcLJesCTgM3RmLJ+mndb8yjbTGUtQb3i5icM41y0hgRJUWOe2nvHFhZD8p8GBWklh9A9JN6IlcaLC2BfDKpW93pxve+2ptRxszaYOD
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2016 19:05:22.9642 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR02MB1620
Cc: yocto@yoctoproject.org
Subject: Re: eSDK errors and sstate signature issues
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Aug 2016 19:05:28 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul.

On 08/22/2016 09:47 AM, Paul Eggleton wrote:
> Hi Manju,
>
> Sorry for the delayed reply.
>
No worries.
> On Mon, 15 Aug 2016 17:43:23 Manjukumar Harthikote Matha wrote:
>> I am trying to build Yocto eSDK with OE_core and meta-xilinx layers.
>>
>> Having issues while extracting the eSDK, it warns quite a bit on
>> signature mismatch. Can this happen due to the fact that I am using
>> external tool chain??
>>
>> And eventually bails stating
>> ERROR: Unexpected tasks or setscene left over to be executed:
>>
>> meta-xilinx/recipes-kernel/linux/linux-xlnx_4.6.bb, do_fetch
>> meta-xilinx/recipes-kernel/linux/linux-xlnx_4.6.bb, do_unpack
>> meta-xilinx/recipes-kernel/linux/linux-xlnx_4.6.bb, do_kernel_configme
>> ....
>>
>> How do I go about investigating why set scene was corrupted or not
>> executed correctly while building kernel?
>
> So it looks like linux-xlnx is attempting to build for some reason and yet we
> don't expect it to be because it's locked. It may or may not be related to the
> use of an external toolchain - I'm not sure because it's not a scenario I have
> tested.
>
Thanks YP masters for having bitbake-diffsig. This enabled us to 
identify the distro settings that were incorrect, specially on 
UNINATIVE. After we corrected our distro(meta-petalinux) to use this 
concept, the error disappeared.

We also had to remove some INITRAMFS and IMAGEFSTYPES from the machine 
as well. We are working on krogoth branch, but I did notice a patch on 
master to correct this in populate_sdk_ext.

We are able to build and test SDK using external toolchain now and its 
super cool :)

Is there a way to make tasks for a recipe ARCH specific instead of 
MACHINE ARCH? For ex: Kernel is packaged as machine specific, however if 
you do_fetch (and maybe do_patch) could use ARCH specific, then multiple 
machines belonging to the same ARCH can use it from sstate, instead of 
downloading it again.

> Are the layers / toolchain you are using downloadable, i.e. could I reproduce
> the issue here?
>
Layers and toolchain are available but not for the dev branch which we 
are working on. It is going through legal-sweep, hence I am unable to 
share it :(

Thanks
Manju

