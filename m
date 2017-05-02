Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F983E00972; Tue,  2 May 2017 10:01:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.72 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 873 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 May 2017 10:01:53 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0072.outbound.protection.outlook.com [104.47.34.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF11E00852;
	Tue,  2 May 2017 10:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=WEQqMaY42tFLMdh+fgdXdeXH028YmTy3E52GGvWyc9Q=;
	b=gYMP8RZMqHsP+mZSvFZv44iK1rSflsJ9ou32PCql1x02FebET1GG8N0Ijsp9Kxt7azyOcfwdxxZ/ThiTDIde/UibKtCOAw5WHQmdQOtKOu/XkcnucWb5mLDqNFGkZaZXkSvHeF+k3msKbNzHP7FHE+Dm+CKKrW4IG4OeUMz9ymI=
Received: from BY2PR02CA0023.namprd02.prod.outlook.com (10.141.216.13) by
	BN3PR0201MB0948.namprd02.prod.outlook.com (10.160.155.28) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1061.12; Tue, 2 May 2017 16:47:18 +0000
Received: from SN1NAM02FT062.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e44::200) by BY2PR02CA0023.outlook.office365.com
	(2a01:111:e400:2c40::13) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1075.11 via
	Frontend Transport; Tue, 2 May 2017 16:47:18 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.100 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
	SN1NAM02FT062.mail.protection.outlook.com (10.152.72.208) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.1019.14
	via Frontend Transport; Tue, 2 May 2017 16:47:17 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:52775
	helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1d5axI-0003Tn-LG; Tue, 02 May 2017 09:47:16 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1d5axI-00057x-IG; Tue, 02 May 2017 09:47:16 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	v42GlFm4003496; Tue, 2 May 2017 09:47:16 -0700
Received: from [172.19.131.25] (helo=XSJ-PVEXCAS01.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <MANJUKUM@xilinx.com>)
	id 1d5axH-00057e-Ss; Tue, 02 May 2017 09:47:15 -0700
Received: from XSJ-PSEXMBX01.xlnx.xilinx.com ([fe80::c4cc:6661:8e92:58bf]) by
	XSJ-PVEXCAS01.xlnx.xilinx.com ([::1]) with mapi id 14.03.0319.002;
	Tue, 2 May 2017 09:47:16 -0700
From: Manjukumar Harthikote Matha <manjukumar.harthikote-matha@xilinx.com>
To: Jason Wu <jason.wu.misc@gmail.com>, Pello Heriz
	<pello.heriz@alumni.mondragon.edu>, "meta-xilinx@yoctoproject.org"
	<meta-xilinx@yoctoproject.org>, "meta-xilinx-request@yoctoproject.org"
	<meta-xilinx-request@yoctoproject.org>,
	"meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [meta-xilinx] xen-image-minimal testing
Thread-Index: AQHSww4GXS87O4FCTEeyBnjPsHocPaHhOMOAgAAIA1A=
Date: Tue, 2 May 2017 16:47:15 +0000
Message-ID: <14EB1FFCA0C8D24A8B04EDEC1EA78C2458A8CB02@XSJ-PSEXMBX01.xlnx.xilinx.com>
References: <CAFL6qn5czUYrKRLPxhZbj7EEAgMu_dFr89WNsDBaYxVWKppM_w@mail.gmail.com>
	<b383700f-54c5-7ff1-92a7-89916c413f1a@gmail.com>
In-Reply-To: <b383700f-54c5-7ff1-92a7-89916c413f1a@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.0.12]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.1.0.1062-23044.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(39860400002)(39410400002)(39400400002)(39840400002)(39850400002)(2980300002)(438002)(53754006)(24454002)(52314003)(377454003)(199003)(189002)(13464003)(9170700003)(8676002)(39060400002)(2201001)(2950100002)(6246003)(966004)(55016002)(8936002)(23726003)(7696004)(230783001)(2906002)(189998001)(3846002)(8746002)(6116002)(106466001)(33656002)(38730400002)(55846006)(2171002)(102836003)(356003)(81166006)(47776003)(6306002)(97756001)(53546009)(229853002)(54356999)(7736002)(63266004)(76176999)(5890100001)(2501003)(2920100001)(305945005)(5250100002)(478600001)(5660300001)(46406003)(2900100001)(50466002)(50986999)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN3PR0201MB0948;
	H:xsj-pvapsmtpgw02; FPR:; SPF:Pass; MLV:ovrnspm; A:1; MX:1;
	PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02FT062;
	1:NuEm7pzt5odsGH8dbm0qKTYq5ACDiydapWVaj//yVLU7okw5BQRlYfZOo7+j00rI/JZ+dH1gzu8HjIWX0El56jGBMpUbc3M7+W5a3fMMN0Xpg+209upLzm7+YOEB+ESaD+sbbC/kyJ0plXKsAHQPoY7klHA9O5GsbOAG5XCBnJd1xwWXeKxdfDaQ9IZY+otz1PYKr9GQS+j3B+PGNOaaczW6mYnWdqOihbXI4278yFF3gH3iWigiOfizFkX4FmcSmo4YEZ6HDqvPdU2weRqzsW07GazwO2C0PhcO44l+FdTicaWyyn+WEAebMamNX9a0FWmTe9WOtYd7UcTLF7PhC6gVRWnhdFYvVC8HebS1vf24n5kvowD4MDLFZic4RdsMIrNCf7VeqtSJXV56RfYgp7BrtaiHGYFBVhfrIfuEF/yTm/nV40dfB7Z9PP5gjgZcpts1rsdDguWYI/GrAMWEKQFAY+AAofvOBx4G1W5saI17pG67+YBuRz6/PlMxo3KJAy61nXaDpSjbgFl4bhOOLL+MB80fy5jAXP5DtCKC7KHG+x75xrn/s0g8U5EcIF+v5rW7VNQ13TWSxkMG8jiZ9KnbbRn43NJRlelPzUKAdvs=
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 17ef31b0-632b-4ff3-d500-08d4917ae4fc
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(8251501002)(2017030254075)(201703131423075)(201703031133081);
	SRVR:BN3PR0201MB0948; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0948;
	3:0c/D+V8HjkxeAL9wuBizwkIZCTQhcFPk5xeLJ63D+0U8oioRgZvRYf+aeizUrN3jQVToX3reeni9bx9j+foVa/pFHl6M96aa4UjzNFsGkd5KDx/sDuU5pCaR7JNHcKbF1N5b677hz+4EFFV4CzVnBzg7ASH2WyVyTC/KLietvQ9oaqd2+PdpiKoCLfSwLXsFIweHXBz+UGpDaFpZhhKTTqvxbsQNOE5GDdGT3Nyy5b4SmnzzI0jgYYFV78x7n/kBh+Z40nRMw747WYfnH9kI+ZIT5jl0HtT0xffa4d12FrcEPJFbtvNH/CvwxMZieGlEvsRHJnDSipZRy9MsQU5dFlqjgY8RydIWex5Q2/nLktbulsnN4TRhYAtyDQbqpZxiZgATfl3Zmf9waruRyJLzkyEgR1n0IRQzgLpEupOLnzz4fEHDdGg/jD0+s5mnZXtAUUp0s081JCXyOVnQKQtZ33g+sKByLu4kAkmnDh3as+PECO2IoMkQ7kTqwQOIlZSw
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0948;
	25:+kvtXPEYLQqtazRNS9SxsYI9k8yEWkB/3tBHzRtoDHSN2CuNHkhq4jfG64Ps5DgiaQt7D1blgeK/K8NHvpC+rfMA8gv0XkqXfvmR3FZeL/S6MZck7JeFzA2EWaVZ7sOvWqsxuTB5eykqy0lhgLUPK/VlCwjybQcpOv2cP+u+XFmorNei7JckfYI+trZfgH2h1Tm8fGEQiFrrQArjKhMs/4X2jQIOBeOWOy0a6iPv+i4EC5Tf+oUDvwipVLsxPqtlrvUdj4yscIfjx8BodaOKrUs7hnrigIy3clJ3ATE2oC6Gmd7NY27n/C0+ErpsA6q5V1UtUg//XoCGHxR7WSIiC1vEEltOjGL0GILrXpSGdpVnQFoDn2IV0PYIn3zzkKbEYylCJG7pcoHzp2+LyeWAA/4IrDyplya91uYIPTGBmjS0/AhfleVhMDoGf+skUnbKREZc61kuUyPqrTr94ra8BA==;
	31:cE6T06gCEYPaz8aXLwCEXNH8Zy1XQGP4n60LGYgRsU0YjuUz0H+Ceh6tzlr5wUUM+VwHEfaRzqZ4+FEoU6WbtEXfHw+y9xr3MeuGHGB9+610ZifHIlB6EEGVljgt3DMfcxvWLEpxik69wta9Y5IsCNVNEM+4i5D647le25KL1D5Hn8ltQFg4FI8MyoWxkKV7PEQSxdYwpS9qttyqcgskbuawkYbxmNzOO1dE0tu694ZptmKBB5KcnROMp88RE4S7+JI1c3/Z4uOimtBVFLpeRDRuzNcD32DV8mAK78OOAbA=
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0948;
	20:x5PCP0qboXdf47h0q5CmS7HJ5S3hIGGTYtJ492P21edLNR7Fa0//SWJgUjFnD/BnRnRxgdNeLf45I50gn54hMpD1Kx9WlUSiybfz1YwShtQdTjdADnzIpLDbhB/w5GHpMNDNbH12U5akwSE0J6gnTkjnf9qnTIs6pL5EuzqE5SAcmc4x4VjfuaM6/1hlZisVau95rWQIIN9EXCxi8fRlVYCvsXXwgu+tW6hTA77lyJFak3X2r1vHdTqPnVfKC2mhMIBcD127ar31IVHldAfmBHrx+ApAuO6y8lksHcyRXVFaRpZ6uG3jIqti4JTD9elXWVkxj2meiJZLAeZuaClj36SrrbMA+M2unhe6W93paRW9mk35QOyz0lHjjI9R4vZv8HSGPFQweiASoTPAk9FaqWYxFQaNbba/h232WQj0DbrnHolzBXex+muPwAZpq+8jpo8c9uAoYEsGv+PiDnUhoDDname79UCDFswU2f5lReVy/AQN4oPXU8a3dDUrm+/u
X-Microsoft-Antispam-PRVS: <BN3PR0201MB094849DB68A1FDD6AFC01111B9170@BN3PR0201MB0948.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(192813158149592);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(13015025)(5005006)(8121501046)(13017025)(13023025)(13024025)(13018025)(10201501046)(3002001)(93006095)(93004095)(6055026)(6041248)(20161123555025)(20161123560025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123558100)(6072148);
	SRVR:BN3PR0201MB0948; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0201MB0948; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0948;
	4:lLfQ/WvglmmB2GrXNcDW33JTsRwlssBOT7/DjwvPtM6BjcyhK3TojoxH0ikt3QykR82GEd6dfio4clhiLkDMpRABLKR8Brg4XhemCMVeIXVK1pB3F5OA1BsgC4M0zHDFDcnp+OirAqtpPThD1l0JvOR/a4cLQyFfI4vY8n00re2joiP5/QGaZVt0wpzFlqxstHb07eFwSOct1lp1gOBpeHnGEQMfPC9gXNVJpRyOppoO8DY9XLvvPOMJdr70xfdqRZcs3jGaq8Yq6Vh/OIz6MU1ygq9D+gA1XC4H4CXwLHK77Mj6utFbwQiNdR7P5vAAmTTyVCNajOCVvSL+zBh6ly5bwqXEjSZRKP6r9hOtcLgzMF+ZosB4b2mGXQvkjadwJOlQYg7AbiZ12lPQzecP/ThcQvuWHQQG6x5NmKv7wX1urwowcxCVXBU3FBqbaw03rdUuVtZGSiFfhUEr1i/EXTzrkGCw6uq9Q2Pr+4ALEnTbwDpvvOZUon1DY6ZXSxmethtGcM2gady53+Mxj23Nw0HVPhu4Qd0EkT5TGKS9+JNXM7/c4ua79Nr9lUY4n5K5SPQtWweiQQND1q1Zoxyw2lVf4Vo4vuEmHd9QBqVEi/HWOGClXdSMPjSUT/DJhDVsK0ecfit5ddFMNRiAvvwTg/Rxtkhk9LdZfNoL8QUd2EhLAKJsio6wHPzpgeJk7aDM9GMf7wiReYGYW3DF/DRPrchZmen3PawEiNeHyZdcd1xFNTE2FWrcTvKZeba37EVg72i6ut/zhP+n64lasksTCNbQbVdx20zOyCsBrpkn0257IK7fUoXfFMFdLxp3W1tnGO43bH2g4zcc8xSHy+XeguAfPPt3ag3iIGdDiQ7S0VyEeeY5ej8oAUF64HkOL+30ogDIZp4HV8otoo9LE4msbdCmM659hoj3l5ib5pvk2bJuBpLAU6aVEGeS8Ja+C1IV
X-Forefront-PRVS: 02951C14DC
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BN3PR0201MB0948;
	23:bQTRv3OMhVWiNx0l4ofjO7K+uzodx5nVvsZqtaT?=
	=?us-ascii?Q?T0c5TacQJLWOhsYizvS30cx5Gta7xDXaZeh5pGgJ3w8aSvWuKXJzB8X9FD6Y?=
	=?us-ascii?Q?tKufmv9TObF8tQVDduDAccay5pRbQJRGcGqC9ZnAWWciMr57g6aPILUT1fmR?=
	=?us-ascii?Q?LRjxiqHUzOOa9RVOpfSy+sT6/ii1lUTIxnuR99INN8T4qXps+05Kio0pSnPL?=
	=?us-ascii?Q?qwS5/0abm/1Mq6kpeZxT1XVZDOTyOXlnp2XlpLr/TwSzFkHOeZelIFgeOTyc?=
	=?us-ascii?Q?E6wlnZMMHGO6zcGPJhtrGCZ3vOFQDDTcyT/vmHcb1NVh8n98RDW/9ISzuyE+?=
	=?us-ascii?Q?3Gcj9er/asPxu7Imlvo/O4cZNUbopNoM56pgEjoVMPIeOUrRkN5ed24S4KHl?=
	=?us-ascii?Q?lihALwErdLQnzIB/8vz3XiHLRvofNMEfDUM9k6k/+L2KXDdBvS7/AWhasH8y?=
	=?us-ascii?Q?2ixv7k4A6+1bvli0S/oPy9wrYaAQE734hu95bIBomEAc2DGKosRfHFsfrwQt?=
	=?us-ascii?Q?ZwKYoBfQhtJUvWmC0Erxzp55N5TeKGTFVGPMEvK0aeOLhQI91tJTy4ugwUe3?=
	=?us-ascii?Q?cqpaVnf0Gxge0TOCHxaYqKZ9gxFC2ICb7wS4WFLbnvUyAtLIMpym6TxqmC8C?=
	=?us-ascii?Q?U+h8UMz1T2abAHfjR/CYwoNF5/mmA3h7MS1botlrirHckG/wweA2mi3W0ivH?=
	=?us-ascii?Q?ghowQMJwVnenJDFVVLFrla8QGTIUfQHXFDb2RwqT5qtXc3NzgY+yxlaBLO24?=
	=?us-ascii?Q?voA/LCu8NfdnnHLJNo08fBwFXp66cCouT6AttoLmuRMUyZuKjM+v9cA8P9f9?=
	=?us-ascii?Q?DmiaXX/Gftv4mAC991wJdRKnKoWVnXy1L/y2gkNoPRI7A4z54eOdkAm+byXj?=
	=?us-ascii?Q?hoAAbM7L/OXPzIKXhjD7xNZAPNqB5F4tLWPpMO9vrPzmcdV1qdurUTBa2M6e?=
	=?us-ascii?Q?G6zOA3+94CAw690yhGP+laSUN79G2eIQCPD4iy+7hN9yz0bFqWWFTNEkimXw?=
	=?us-ascii?Q?2T6r4w2oFPsuTRBF3urxVRQKNFu94gqIIlaFYIwKe8kOFIEk5HU4xpcVyH7B?=
	=?us-ascii?Q?RQcpDUvbewxue5K8EFO7S2QIRLjG0CmvAWvs8F7Q1TONfQiXKI84+8F8toOO?=
	=?us-ascii?Q?0IO2UQCqaE2vLK4NSuaRV84Rzgf2zICR8FTCBAaAOuLW68lIQFlwZnoECH5i?=
	=?us-ascii?Q?c390bnJXBOUQn4DIntX952Yr7TkjqjjGhII6oto2RQdhfxh+J+9jZM16YZms?=
	=?us-ascii?Q?BUHVAbEnnicvEHp6ulfriKpX1CWwPrICuGMaDsRnv5flfJdTqDcIxlL8+IpR?=
	=?us-ascii?Q?itiuPQCseulfZCaf/He5tw80QU5BxMbKppFRtWp6qeJXhvOSjSMmDnadSFbJ?=
	=?us-ascii?Q?nG9UlzR5jJPSRQFDpjUDbbPkkUwqVbYx6e5VUD22Vvs4lcT11xPtvXC52AHA?=
	=?us-ascii?Q?gy1Wf/Pmzl2WWF4Mj72C8mEbc1hbsxDRUve7Ru93Eu4XW21DiZuRwOl1l1IN?=
	=?us-ascii?Q?GXa9SY8nvdekdIw=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0948;
	6:V7sQypb7aewnOnoq8up5PMflSM5KUX/pJ89PF8cIh3AOu0ujATLVBbGBDlT+4HUIhop2aFXfSJ9iy0YHWexf5Lp6mKmWoQpkzWIVbZkVNzQSgtku8tRCCiC+moVtm4aNVzi8FT46YR8k67Q6AGTzYoPPeWmlQvr2pnQHoqKzVXScrNECHdRBTCIPoP0gm/c75VI4uVQgwxmB5sG9X0TRbQ0wpCU4CKXYGyUynIGlm8eqmc2k9N1LW3BnYU9BD+jqHImGQJ+dBk5ODETLpvXDc+hWQD5Gmu4IP84JRqBx1kY3qyOUr/nt7wAz0PIwbZs6+AVIyVr52gI4ai6tBwBSEGUNC+o0cYs08f8fs114BecZl73kyKnEPOKGy8dw6JN8AQBJ392w/0d8USpKGRl3yyb/YuZCDS9dWsLakXulVd/wTQ8hln3iWL1q0c/kLB5ps/HuCTBjWyUJZcaD2FDPbUvAST4X2U1xNXNRbh1MCUer9ZcLBMnCl0u4VlNErxisnk7KcMD4oGem5bZl5ZIDiQoq0AisIu25h9mQSiiHWRs=;
	5:zJoGz1ZiFmMRXRlGtbqti30Q79edlKvad7PsVFtVcrB9ej17/MwhJmQYG6LgU9nVcVykYvFtb3cJmUPy2kBODzGL0IZY7BuqAcTDv2SA0Dwq4/XQmFok/wc4gY3ojjn9RgfOj6jLtghe+h+6ZM0YSUi8NRp25QTEZFBsrQSRyyI=;
	24:ZkJ2GI/li+P+RE4cekJydvr4PuY4mv9pw+qqJTOYLykq+3gcQT7d1nRIcpcOtB+c+414sgKsUeCtxyxiI3wX9P3N/tUcISkLGobRWaN/C1o=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0201MB0948;
	7:/Im1yzhHpCnLsBAR4Hxy97SicFhzDgbRu/XjXu5EZVwkTsq9mXf9IXuR8ZYqjCfy/1aBJHi9LZlmJsWJH5WVqS1vp01xfB1R+Rfe2bZwdUoMGGFJeOZNpzXyB5x4+dLpPo5Bvx787rg0GRk3lO/XekjPu++VUkLIQdBpTrzPpdN2Hb2EYV/TyQQvf8OJpZNFGxbD1vcqTp/fWrsTtbYspepEC6yRDit422Tq+pxdy4EkdXaHg885uTnD2FshAnot7DWz1mnnaj0HVc6wj7cccmWrwUjLGRxTUbS2nF1KDoAXfrq4zuMf9Ezj/wfFN5Azu2wYJysUHPV4NA69Mh9VwQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2017 16:47:17.6614 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.100]; Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0201MB0948
Subject: Re: [meta-xilinx] xen-image-minimal testing
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
X-List-Received-Date: Tue, 02 May 2017 17:01:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: meta-xilinx-bounces@yoctoproject.org [mailto:meta-xilinx-
> bounces@yoctoproject.org] On Behalf Of Jason Wu
> Sent: Tuesday, May 02, 2017 2:16 AM
> To: Pello Heriz <pello.heriz@alumni.mondragon.edu>; meta-
> xilinx@yoctoproject.org; meta-xilinx-request@yoctoproject.org; meta-
> virtualization@yoctoproject.org; yocto@yoctoproject.org
> Subject: Re: [meta-xilinx] xen-image-minimal testing
>
>
>
> On 2/05/2017 4:33 PM, Pello Heriz wrote:
> > Hi all,
> >
> > I have built an image using "xen-image-minimal" command with Yocto and
> > I would want to know how can I test if xen functionalities are correct
> > or not with Zynq MPSoC QEMU. How can I do this?
> http://www.wiki.xilinx.com/Building+the+Xen+Hypervisor+with+PetaLinux+201=
6.4+
> and+newer
>
> have look at the "TFTP Booting Xen and Dom0 2016.4" section and hope that=
 helps.
>
> >
> > Anyway, I have seen that sometimes in the QEMU terminal appears the
> > next message when the mentioned image is launched by "runqemu zcu102".
> >
> > INIT: Id "X0" respawning too fast: disabled for 5 minutes
> >
> > What's the meaning of the message? Is it critical?
> It is not critical if you don't need it. The reason you are getting this =
error message is
> because the your inittab trying spawn a console when the device node (e.g=
. hvc0) for
> Id "X0" does not exists.
>

Is there a way to stop inittab from doing this?
Tried few options for initiab, for ex: using "once" instead of "spawn"

Any other good ideas on how we can disable it? Or what is a better approach=
 to resolve this issue during runtime

Thanks
Manju

> Jason
> >
> > Any answer will be welcome,
> >
> > Best regards,
> > Pello
> >
> >
> >
> --
> _______________________________________________
> meta-xilinx mailing list
> meta-xilinx@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-xilinx


This email and any attachments are intended for the sole use of the named r=
ecipient(s) and contain(s) confidential information that may be proprietary=
, privileged or copyrighted under applicable law. If you are not the intend=
ed recipient, do not read, copy, or forward this email message or any attac=
hments. Delete this email message and any attachments immediately.


