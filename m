Return-Path: <ayana.vincent@nestgroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C763E00C61; Wed, 30 May 2018 02:40:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DEAR_SOMETHING,
	DKIM_SIGNED,DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 856 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 May 2018 02:40:13 PDT
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0118.outbound.protection.outlook.com
	[104.47.100.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D0D9E00B4C
	for <yocto@yoctoproject.org>; Wed, 30 May 2018 02:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=NESTGROUP.onmicrosoft.com; s=selector1-nestgroup-net;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=YVPXVbKG9QPEcYlNRgvT+EAFI1pNgVamBVNKg/Lhfls=;
	b=FBEdLs6WNLptDTeRfpO+agAwqNDADpFITxCK2gyqSG1n1tqonW3gxBEB0VTuQEjE90s4tPUfMVGVbSt6WNL8Njix0a0ta1bOElWzy0GNVclsGWt+mJQWqeJ939BB3JkkLVp0MZcRrlWNuj4GNzBEzMG38nuexnApBBi9F0KvhIg=
Received: from MA1PR01CA0009.INDPRD01.PROD.OUTLOOK.COM
	(2a01:111:e400:5a14::16) by PN1PR0101MB2030.INDPRD01.PROD.OUTLOOK.COM
	(2603:1096:c00:1c::19) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.797.11;
	Wed, 30 May 2018 09:25:55 +0000
Received: from BO1IND01FT007.eop-IND01.prod.protection.outlook.com
	(2a01:111:f400:7ea5::206) by MA1PR01CA0009.outlook.office365.com
	(2a01:111:e400:5a14::16) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.820.11 via
	Frontend Transport; Wed, 30 May 2018 09:25:55 +0000
Authentication-Results: spf=fail (sender IP is 121.241.182.131)
	smtp.mailfrom=nestgroup.net; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=nestgroup.net;
Received-SPF: Fail (protection.outlook.com: domain of nestgroup.net does not
	designate 121.241.182.131 as permitted sender)
	receiver=protection.outlook.com; client-ip=121.241.182.131;
	helo=mx-03.nestgroup.net;
Received: from mx-03.nestgroup.net (121.241.182.131) by
	BO1IND01FT007.mail.protection.outlook.com (10.152.202.83) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.20.820.8 via Frontend Transport; Wed, 30 May 2018 09:25:54 +0000
Received: from [10.4.0.132] (port=21981 helo=webmail.nestgroup.net)
	by mx-03.nestgroup.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <ayana.vincent@nestgroup.net>) id 1fNxMd-00086Y-1X
	for yocto@yoctoproject.org; Wed, 30 May 2018 14:55:51 +0530
Received: from MBCHN01.chn.nestgroup.net ([169.254.2.109]) by
	CHNCAHT1.chn.nestgroup.net ([10.4.0.134]) with mapi id 14.03.0319.002;
	Wed, 30 May 2018 14:55:50 +0530
From: Ayana Vincent <ayana.vincent@nestgroup.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Build QT5 SDK statically for yocto krogoth for IMX6
Thread-Index: AdP39+2eVGBHgasFTMKsVhwRr1/EsA==
Date: Wed, 30 May 2018 09:25:50 +0000
Message-ID: <89DA79CB3177AB468D716C07B29FBB378203E8D0@MBCHN01.chn.nestgroup.net>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.2.42]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:121.241.182.131; IPV:CAL; SCL:-1; CTRY:IN;
	EFV:NLI; SFV:NSPM;
	SFS:(10019020)(39380400002)(346002)(376002)(39850400004)(396003)(2980300002)(1110001)(1109001)(339900001)(189003)(199004)(59450400001)(44832011)(426003)(26005)(85426001)(84326002)(8676002)(316002)(102836004)(336012)(126002)(54896002)(1730700003)(2920100001)(77096007)(186003)(5890100001)(2501003)(2906002)(8936002)(33656002)(2351001)(476003)(2900100001)(6306002)(486006)(260700001)(6116002)(790700001)(3846002)(71366001)(86362001)(26826003)(356003)(5660300001)(413944005)(6916009)(55846006)(5640700003)(55016002)(16586007)(7736002)(246002)(7696005)(106466001)(14454004)(105606002)(7636002)(7596002)(478600001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:PN1PR0101MB2030;
	H:mx-03.nestgroup.net; FPR:; SPF:Fail; LANG:en;
	PTR:mx-03.nestgroup.net; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; BO1IND01FT007;
	1:7AGOIoBj5pFtcu9DXN7CXlvv/dgP/7HqQBWTPA0T3BMNdw4uD+r6MEcHR5jnkNY9dYpsKI5xtueaDHRsNc9LMdY/VZ1C42qSEMNdZbvn+fpAGoZvChaKRM9lyCOGYXnk
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:PN1PR0101MB2030; 
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB2030;
	3:Mhjaua/x1Auvd8a2AYacnUKSIOfuBzc7RhOS0b7e6hpndXKFgf/JSTNnYVV9af3y9Ijc5OJTR9t9BxUbo7r+pGhHs5bROr9qx3BiG8n8Vm5vUv1R+8K+j3OVjeaxi2EEiUSG5wQiXKM8vJeOJXY2xVoHhZyRx340trztDFFYecy/4dRnjKRFvx79Wyoo0m6aNRKKnki0ET7xCNycUePhmnmylYnfcgQqnEBy/xhiqg71gMA5bQ15D/VVoB0t0CldTax6jUNcDkARNPUkZm1zuQW+l1HzzBxtAisVaQEp3zNE221WuoVbGedCxghuequBlSiECH1OU8cbikPpUMpVV4j+5RpSXJNM3jZFz+RUFwc=;
	25:SgPY+ISUSmFvQ2bS5OXHvtJm54J3dRBV5iXJ+jLgeXOOoAOJT9at12QW+KWbVBIxkzt/K5sjPQPsOoj+lAX7TwP3mF6ZlLTfVO9v0/tMHWCUlqph5mk2iyPXuZtuv6WX2YawqbZL/RNUF5BqlhOh3hf34G67S/vElWmcIFoFaCVcC8ds8jaH7OEhKvyX6JxoiYJvcFFgl2AS5jCHjSdMxLHGq1BWjs+Ft1afUS5mJxveWtI7xRgnXhHIPRfD4IggOpojoiUYmE0bHI2bvDDDtWU4HmCeX+/HCMTlEKJEJaCPkbzwdORXsdFYzU1Svv1vbgnLkId1Ne4Guygb930Hyg==
X-MS-TrafficTypeDiagnostic: PN1PR0101MB2030:
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB2030;
	31:CIh3BX6mX2ToZLff4MwTkzhncm5J9dx18wdQe3Ra4NCKqJQ4GkYS34cSIrRwUI63mS78pRH8cMjrVmfJeUJrS79BSEXnqGIs1T/e4X+MHbCvgHO6NugUmMm+3QXm/5VuH2Mj1XhbQdY9QhJZzbYWMF15aElhZfngqR0g2OriOwgJXUXbN+f+x6scZ6/cM57CFQKhRDC7a+igjFhle9KuW1TwlXWvHIpT0osgbSNihZU=;
	20:969d+ayX2+13eP7fRO11agK24HJ+sh+IctXcu2g836rq9T4sv0ICmzEkWvJvpY548BIEQBpsRouVyJlhIgJ6D+26ApDbo2vMvYIsLT67rJeY4+XbES7hT/JEwQCqtc70wqToiJJZ2j7uiQfWIrcx1kYPU04oFqK4ZMDvaWKLl/3aHXrXrYMsuTMUDbq3IfmsO6TYtYT77qMZlJFxzjtA4cqwIt+C3ed1UgfnFEdpdXL7mtYwtgI9BThO47Wkg4G21lLGYCZrk3MhM9VqUIixwc4WGs0knpU4K9N7JcfbTf5EGX2EeXNwclKQhHBBNeRa36Uf7Yn961aA0cYFterdfgDq9EkGFe9Xj7QR85CAsoBl3mcDuv/nggS+fTXeCqFyMYdY42J5l1asU1St6/vfjpdWpIXt5v4S/eFN8FK8AEXNO2pSXtqynml2v88LgXcNbhEgdAZpu9mjymA3/D9JgFWb1c5NP2ll2BKQTP6vOEUuhN/RakETML/8dbQRXlVi
X-Microsoft-Antispam-PRVS: <PN1PR0101MB2030C8F75CAF0BB2155AA635ED6C0@PN1PR0101MB2030.INDPRD01.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(21748063052155);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231254)(944501410)(52105095)(93006095)(93001095)(3002001)(10201501046)(149027)(150027)(6041310)(20161123564045)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(6072148)(201708071742011)(7699016);
	SRVR:PN1PR0101MB2030; BCL:0; PCL:0; RULEID:;
	SRVR:PN1PR0101MB2030; 
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB2030;
	4:HI777PLqAaYzouJ1Q9B6zYFUCY5JCBauJMOV0rT91YDGR+EyXVgAxDS60zBx3vG56UbwYCn8YIZ07LUv+36WHRVyhQCCkAl3iSPCoeOaM0QBSWVXGtVklZiaY6ZXPYD1g0DAvjR2JFNRnJoXj9wX/OpGwSsroAwfbar9PTWJC6KF4k/qdsUOGu7ElqqEYY6ty/HFrnB99tR5wcZZRmzgx8tAtdCdEQd/Ia+IrGP5b75mxoGYwZa1zWd60mP6ocjzBT5yNrP/HWD4yWQTNUM8XzI0WP8DS4Ar+2e1n9gt1zFyTTwKiS7u65s/9ttmG90++VlFVSCb1LdQ54WIj9hSIzs7SFSDPm98Q4LQpvlfm1g=
X-Forefront-PRVS: 0688BF9B46
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; PN1PR0101MB2030;
	23:1NZplpWebCGPUpVTQS0vjpM4ikTtMv1RLqg4BF/?=
	=?us-ascii?Q?Po1w8elvarvQ/I6bilBdeP7k+J46wQpsYpCcnIohYW0z8aJeiMFHnd120odp?=
	=?us-ascii?Q?1IqhaG4Bjob4ZJFlsE8nvX/4OUaKE1tt3/F938/T7P/1id1wI4WIG2D3NneL?=
	=?us-ascii?Q?MVtpK+9OGiWZFmzjgeGWro8nhsKf+5VyKMcaqT9uro/5tJkWlEvos2IhjW0r?=
	=?us-ascii?Q?7AhCUyzaFCKJxhN4l03LpEz+F6uonXOO1QzgmjlOG4l2aM8BkLMKzt3EWSsW?=
	=?us-ascii?Q?q1qhdCsSKsfN2qk5MjRvS480RToUFj0TUXNOb5McnPz6UNKqflMmezg91UAP?=
	=?us-ascii?Q?DNSwXCfVvbfmLTMWvRLZ8W7/gtEFe1qyZC3hFGsf34/cmpBcREZHydYHCBeM?=
	=?us-ascii?Q?regAMGeqQLgH1wKFNhg1LQRRxAzusW2jy2fJK5ShySwFUm8Lio6yqy7ZNUWG?=
	=?us-ascii?Q?GYqkwHMo+RuGtfK50JYwpHAhRE2/fGg7OmuE6bSbdHCb3vX+p/8wMtTM7sh9?=
	=?us-ascii?Q?3MXdhuE2WQ9oOuBG2gfgpAhXlsEm9WGL1JQkdYduS8/s2aqM3bUhTkrgxUEv?=
	=?us-ascii?Q?IEm4ikBa2RJXyWWPvoC28OHmb8k7KEjqncPuLFzp7s3yJuTuCdvBWFk3m3U4?=
	=?us-ascii?Q?CoNk7dfLe7Brgz4CPpuY/4H6eFuo0QNclzJsvEzzU/yK6HnskWjneq2fkILX?=
	=?us-ascii?Q?4unqNBRUU3cNaPJp0zfxIAMqUH/VQjqoHuAPb8iGiDzVVYgLDRu/pbmMhMI0?=
	=?us-ascii?Q?C4QtrgmPvmM0+2noJ6DpkmHLUTkKlS5iIzTvmvxfVlgwcBDJ8EhxY3KESa3d?=
	=?us-ascii?Q?kP93Vogj4QW2g4dMJrD/PPOcoTblJ3W25yQOQyCqjKL5LH0BplaAd1hQmBWg?=
	=?us-ascii?Q?MK5Cr0JOY8CIiS4VJ2PchD9szR3Z4dzrCd2nDJJXsnRhQAiZChn16ksShfTZ?=
	=?us-ascii?Q?5XGRKheXqRO5cdze3eEIrYUQSLLvo9xqc/B4Ly9zrwYFjWKeM1gjyklmh0zb?=
	=?us-ascii?Q?d5kynyhMU61N55oFU1bbiRijp/0UBsz44FV5/KR64hU+vTUJVkiLvxcX3KK3?=
	=?us-ascii?Q?vRxVzIR4FHC4TBLI2tPFYBFo/DqNnf8wOaZg6JhkV5SWhZekChJ30rfPgD4I?=
	=?us-ascii?Q?9oZO2OJjwl86EnyWi4xlXZCaeeGSWH3ub62bJH00cKUby+ksMKC4SvGrWVdU?=
	=?us-ascii?Q?a9U9MHC74EDKvRSITPok0ZjThMsqoDjYQEvkUDabah9PpJ1UNofqqIUr48pC?=
	=?us-ascii?Q?FDlBmCGQFNdhy5lQ2Fnp2tEfYiZjHo81iilsT71DwGc4y2oGgK3bEJbtVkVx?=
	=?us-ascii?Q?mb5ZHEAIihFDqRf+O5F7n9ReOds7pKI9Gddo0W5x5qIrfilvtPreitCYKeMK?=
	=?us-ascii?Q?sHrBvtCVfLxSEyDeHCOp2i3TI8X8=3D?=
X-Microsoft-Antispam-Message-Info: EgGjrGgoIJRVGPIymunjaEDlqyHX6uGPFRw371nG0s6Rm45xatmqlyBFuf/8FVeJUMPa/RzYclKUzM/Fxroq3RjqBWK9ycbeUPVz8/OeYlRr9MhBDwO90nRUykwaVfwCaQfqN/1vVzjWs8s2GJzXQTJXFZ8oqNptJqlUfZgdk1rbRO0qfiS3DutcSigPESCPVoYfZyZtKb/fJ8h82v60/lFKuwBS/4GwHcJ9dNkqHXbGKTRvfWmOa6GfiZd7zNe5
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB2030;
	6:joPM2SeJdoNnZq1aAKyKVaQJUjOP0weQ44XKNHJjbaiHvwfSGlMBi6QLohIUv7J2Vr7zw3j90hD2BzczEKMSX98ZQscaZG2+B4UhX8Pwd9svGx68Sn7czcbLYKjFhvjGN1UNx/p0YCL8KOvDNZEQyq26oJZOOGHnROVMyLvk3X+Ece0vYv4EsnG7Id72s3pBpFe9Ubg9JjUAJCL25a6BfJb/wGzUPlObzqklhvxUjgsE/jhNqA6hf3rS0CYb2gQNcwZig6rd2pjDkaUxgl4yzLiHKpmOANKCj4/2+nTXjRFkkOeducLJe0t9LfULBZDxxlED/bFmwHpc3ymFMqTs1oiNIiUIt4DMjjzj95sQT49rfUXyKACvIJd0peXQMAqlvJoZChQ10ZrhAIbQ4iMXk7IVw3FOQmFDh8EadiQhIXGdIB4MJPFyI4RUb6uygDZw2NpTym7oPZR6wnElmsNY6Q==;
	5:QFq02w1GLAF4GAWimVwghyqzAlVcIoOiogLtbdrCRclJSpqhmHwA7PsFXUEEgA2j6BBnbp4/SXmHvKmkk9zumir2jgAtx7GMJWVWq6lcKhjEzz4MBFIkB3kXtkJW6RSGtapJPuEVYZ+dzAisC2q2aKUBKSWdcZ3VYMuKcON8W6M=;
	24:fSRAhLS1MY7TfvnOIhJWTkQd/qTZM0a+De9t5MpkOhH9XN0yEsMFZ+54uJfsoIUHxzmvql46LJKBJazvx9gk0B8igFAs1/YT8v1RxRr81Zw=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; PN1PR0101MB2030;
	7:2+Qs5gQnFB+pjB4E9t2lxIEkfXWn+3C5gRfZmGuAnfu+2xyGLURlk/yp8NVMKyvmlApitqiY74nuy2wTob+2lDbycTz5uqDoJoHBSe4fXaKNVHtbVYf5eEkh9sdDOR8t3u6O6odfsKuwkPTtHrI7RtXocZPVp18/mQ8HfYO36iq5fwZLYol//Chu2RAWZiAgJ0SRT1QILnMc29UsBQHqlPej8uHBq3PKLpZLW6uZ33Q3bJzuzsHijhjOQLySqx6e
X-MS-Office365-Filtering-Correlation-Id: 16940deb-2c8d-48c8-9418-08d5c60f5805
X-OriginatorOrg: nestgroup.net
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2018 09:25:54.4487 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 16940deb-2c8d-48c8-9418-08d5c60f5805
X-MS-Exchange-CrossTenant-Id: 413238b0-a7ed-471d-b1a9-615aa47d504c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=413238b0-a7ed-471d-b1a9-615aa47d504c;
	Ip=[121.241.182.131]; Helo=[mx-03.nestgroup.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR0101MB2030
X-Mailman-Approved-At: Mon, 04 Jun 2018 01:11:40 -0700
Subject: Build QT5 SDK statically for yocto krogoth for IMX6
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
X-List-Received-Date: Wed, 30 May 2018 09:40:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_89DA79CB3177AB468D716C07B29FBB378203E8D0MBCHN01chnnestg_"

--_000_89DA79CB3177AB468D716C07B29FBB378203E8D0MBCHN01chnnestg_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dear Sir,

I am using IMX6 sabre auto board and yocto build version is Krogoth.
I would like to link QT libraries statically.

1.       How can we build QT SDK statically in yocto build.

Regards,
Ayana Vincent

________________________________

Confidentiality Statement / Disclaimer : This message and any attachments i=
s intended for the sole use of the intended recipient. It may contain confi=
dential information. Any unauthorized use, dissemination or modification is=
 strictly prohibited. If you are not the intended recipient, please notify =
the sender immediately then delete it from all your systems, and do not cop=
y, use or print. Internet communications are not secure and it is the respo=
nsibility of the recipient to make sure that it is virus/malicious code exe=
mpt.

The company/sender cannot be responsible for any unauthorized alterations o=
r modifications made to the contents. If you require any form of confirmati=
on of the contents, please contact the company/sender. The company/sender i=
s not liable for any errors or omissions in the content of this message.

________________________________

--_000_89DA79CB3177AB468D716C07B29FBB378203E8D0MBCHN01chnnestg_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:454762851;
	mso-list-type:hybrid;
	mso-list-template-ids:372281684 67698703 67698713 67698715 67698703 676987=
13 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear Sir,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using IMX6 sabre auto board and yocto build ver=
sion is Krogoth.<o:p></o:p></p>
<p class=3D"MsoNormal">I would like to link QT libraries statically.<o:p></=
o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>How can we build QT SDK statically in yocto build.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Ayana Vincent<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<style>P {margin:0cm;margin-bottom:.0001pt:}</style>
<hr>
<p><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot; "><b>Confidentiality Statement / Disclaimer</b> : This message a=
nd any attachments is intended for the sole use of the intended recipient. =
It may contain confidential information. Any unauthorized
 use, dissemination or modification is strictly prohibited. If you are not =
the intended recipient, please notify the sender immediately then delete it=
 from all your systems, and do not copy, use or print. Internet communicati=
ons are not secure and it is the
 responsibility of the recipient to make sure that it is virus/malicious co=
de exempt.
<br>
<br>
The company/sender cannot be responsible for any unauthorized alterations o=
r modifications made to the contents. If you require any form of confirmati=
on of the contents, please contact the company/sender. The company/sender i=
s not liable for any errors or omissions
 in the content of this message.</span> <br clear=3D"none">
</p>
<hr>
</body>
</html>

--_000_89DA79CB3177AB468D716C07B29FBB378203E8D0MBCHN01chnnestg_--
