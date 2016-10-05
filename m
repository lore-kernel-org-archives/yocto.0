Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88CE7E00BBA; Wed,  5 Oct 2016 19:37:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.53 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10807 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Oct 2016 19:37:29 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0053.outbound.protection.outlook.com [104.47.41.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CF6CE009BB
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 19:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=PlHVJZJj5c96F0jR2qMitNMOfuu3updDVJ0uXQRcp6M=;
	b=ocLXsGTc7j80W2ioU7IvLYO7wDTIvPFzIT5Ptfe6yIgSkQSUcL1DQ9YC7lVp94AkcmoLjWXHid+AqV/2tL/mJ3FR80tom4oxl2D2jpuMTFemUDMtEUhcNSSEsIMhfTanmidRnhBjHtmXzJ3pzkQaLa5G2hPpYNGrl2n99YdR7OM=
Received: from MWHPR02CA0014.namprd02.prod.outlook.com (10.168.209.152) by
	CO1PR02MB127.namprd02.prod.outlook.com (10.242.163.153) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.639.5; Wed, 5 Oct 2016 23:04:40 +0000
Received: from BN1BFFO11FD012.protection.gbl (2a01:111:f400:7c10::1:113) by
	MWHPR02CA0014.outlook.office365.com (2603:10b6:300:4b::24) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.639.5 via
	Frontend Transport; Wed, 5 Oct 2016 23:04:40 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=sierrawireless.com; yoctoproject.org;
	dkim=none (message not
	signed) header.d=none; yoctoproject.org; dmarc=bestguesspass action=none
	header.from=sierrawireless.com;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.44) by
	BN1BFFO11FD012.mail.protection.outlook.com (10.58.144.75) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.629.5 via Frontend Transport; Wed, 5 Oct 2016 23:04:39 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	CARMD-EXCHHUB01.sierrawireless.local ([::1]) with mapi; Wed, 5 Oct 2016
	16:04:38 -0700
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: Randy Mortensen <randy.mort@gmail.com>
Date: Wed, 5 Oct 2016 16:04:36 -0700
Thread-Topic: [yocto] openjdk build fails due to checksum mismatches from
	icedtea-native
Thread-Index: AdIfXNjt003TCD4UQha3ZFGxRFCSWQ==
Message-ID: <2E6C63C1-C4D3-4646-ADD4-62EBF047EA0F@sierrawireless.com>
References: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
In-Reply-To: <CAN+d=aScNFOQBaGXSCG+UGqpZ_hWzcAynrAAncgyXoW46ej6Mg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:208.81.121.44; IPV:NLI; CTRY:CA; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(7916002)(2980300002)(438002)(199003)(24454002)(189002)(377454003)(4546004)(104016004)(246002)(7846002)(7636002)(16236675004)(7906003)(76176999)(11100500001)(50986999)(356003)(54356999)(33656002)(19580405001)(19580395003)(106466001)(2900100001)(15975445007)(19617315012)(77096005)(4326007)(30436002)(8936002)(83716003)(92566002)(110136003)(84326002)(82746002)(36756003)(2906002)(87936001)(102836003)(512874002)(586003)(5660300001)(86362001)(2950100002)(189998001)(16601075003)(6916009)(626004)(7099028)(5001870100001)(104396002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CO1PR02MB127;
	H:mail.sierrawireless.com; FPR:; SPF:Pass;
	PTR:carmdsmtp.sierrawireless.com,spf.sierrawireless.com; A:1;
	MX:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1BFFO11FD012;
	1:QTrj3XsKx9+Yi8wHeITXX0T0HBj+HqkCAKlNbORX7XiiGyjk4SB47KRPVxhJmJJG1cmp6Zw6H7v3V4whctNLdEXld84XqCTUiVeUtJjRq/0KZUo/RWWLBAFcbwk/acmemNr7iZ+aoetBj4T//SQX3iMtS/QUBkoFlNwTmybayi7AZQ0OxS0JSgClVM7i6GJYUwhlHrI3NARSAlbg1HL+MEZePlXax3x1u/jikwpqm6dqaNJF80iH+C/tRbZ+6JvCi8qETBnU0wGddpNtlwQsmv2qIlpukhl+c0bCqF7gy/Vonv/rpa8aGKColBRj8Z3E1TBv7aFrUy/1FlZsZZMIqZ9bIAfsAUM3tAddyBXKvsN58zGWVfAFmNPn9RJfALfDk9KK5FZnOn2hfVEeTwyFGcQZrvcAgzjgAP3G1MuAtuCfVfxo4DDa/vJFqfjO1rv3R70Qp+BpHb4JxuR5ppS+MnbkkGjFH6LrHo49VpZJCnMY7g+YocV+Ss+lxfERXt2quqd3JY//PI6m8zXql+pyF9B0822Ws63XFlNlryD+U19zs0HcI6q3gqenKGaBHqfyzsez54SLZctYuTyn8U/fw+lc8fv+/IBPNFtT7QfyQ2c=
X-MS-Office365-Filtering-Correlation-Id: 30198473-9d57-4c03-c896-08d3ed73fc6a
X-Microsoft-Exchange-Diagnostics: 1; CO1PR02MB127;
	2:uysGiBVAdSfpFn9gd3cUZMB957hCH+je3CjONYmEhYavQufwgEKTtU3kw1ywt//esXVdjJR0DiNGJLVwOoN63pHOb5mCsqotmPV8kJuQaPgS/l2tm63AuJwRq0FcoAG8Zl93qLQRmOad1nebixStZdkRihhFqWju9f3a4xdSlmCIQeOb6wI7jAR3mjFicBBf;
	3:9i12asVQblixecUD4woMkmsLB7KvuXeBuTNnW8Ajkui4H3/tFt106R3an9HZRcKFX7EUzE6Fr8bssZGxb7LCzKc+VQh1d5fILIlbLYgt3I0EGumsxVn6j0rzy4CyLnFgl8ER3+cvWuStmDHY5ZR/QEh/fH/XkxiMnQWOGVbYEMrONBFFBWmYxbrW3Tukg6nKhcgS81ezTp7TttlfQZimwhIHYwna9OaCTRZ5ut9Y3VuuUhPE5rLd9pNdGLk55AMZH6iKmlYiRNuOCMpFlfRfLQ==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:CO1PR02MB127; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CO1PR02MB127;
	25:iPZ2o9XkZqg1K6+bwsZ5rNqZiNTu3DV37KvIL2AE3O?=
	=?us-ascii?Q?UAYGO6AHPGAmAif8+TUdPuc26nEGEzqPIWokUmT7bNcQRw4KlxO5FL1Ryr4X?=
	=?us-ascii?Q?2kg9CPsU++49Ew6coRGztb9y1ai2hFhQMeacd1jTyZhjqOLWy0Eo4SitVOa2?=
	=?us-ascii?Q?1EBsjLWcvxthJeMN981e4K7GdU8o1BkWljOISQJa9B6kTvbMWaKSoxzaKD6J?=
	=?us-ascii?Q?iAGHAcUsQ2Nf9X5BzEqzvetZv6oGS8gPtDTFMXmbLDZWqK/XejjY16d6XdQW?=
	=?us-ascii?Q?nleu+FGFK6P21g01lAwhYBtXM9Ukiv4IHNHczskctOmq6FQwyi9zSi8jVi7d?=
	=?us-ascii?Q?8kinOoJyEJ69uXmKceaR07z3uQu4QdoD9OE1YEeCAV2xsfBPNQUbwMb+tX5+?=
	=?us-ascii?Q?+pEvrxtlYqNzwBVilQXt4fTeRP6MaFILN3wlcwiNnuFXtvvT+tSDjCp40L2y?=
	=?us-ascii?Q?/9cbkHzDpI4ZMtdGxkTR3w6DZ+kozhmaUNBBfalWZaMGZSDlRh1agqMYFGGt?=
	=?us-ascii?Q?z3nYNTXwohdJYsN6GTqhk74mwWVWT536aTdRZ1GNwMnq44w2qQckqCr9qhSK?=
	=?us-ascii?Q?rzvqm+wuP8qfWSjpFNgjeBPaK4COiN/xRWDEiPwHvOnu4mtWpiDBgVfpzP1+?=
	=?us-ascii?Q?RUMj71CD16hweSiiFVwJdU90afSPHdP1ETw4866H2eiZ0knEumRc2aBIp0RK?=
	=?us-ascii?Q?V0zXSxM6HAguErOKLmAQqGC/t445dBhuDqRxLCusOXg+ztnFLLBc3ziH1RGt?=
	=?us-ascii?Q?669AgYQt6dl2UW7TKLFpfirGg9ah6YtXiMD5jLfnEuOUiZSqyg9/8WabNNF0?=
	=?us-ascii?Q?dN+QyZtbNOVCMG/KJOFnW6O7vEun50hrkPwhnYu7hxckIRRWvoMhQW4Gh1Io?=
	=?us-ascii?Q?HvX163zrTN3e1CySvMHJFXURp+HfmfVqaOrDYd7rmsSbTA1CZLtxs4Gqurma?=
	=?us-ascii?Q?GgRs/XfSbSVrzPn0zRvr3Vo6/lGCDuhSmgIxpUIw2rOtIrddF1i89kqp7xpp?=
	=?us-ascii?Q?Ruh/KFk6oo8XvDU4sVbTKR?=
X-Microsoft-Exchange-Diagnostics: 1; CO1PR02MB127;
	31:HyW0yPeXdwvFBMenlGjVBp1uVfpIz2j5BEX4LDp6S8HaA2QDqz8RsYBzwlWFH6wJlQR0NgWvSoBRT/kooFB18XNtLaG+d/3cWHS22mCyRiSGBMQ2bT5MehAav27mc2MxdDJY4Mcvr+ZfyBHKTIIKr+gy60zI1FsB/49aIKc/p/4XmGR3v8F2ZO8r14gy9gTtDbfxVb2yvmJnQP+V5nA2wLeX9aMVR47WJVy5OtUsF7U=;
	20:NEX5wFXF188a4DWDlh1h/RukdrNx5lWYiph0+dv+6l/3u2vf552PfWFuTTi/jKl0AYSL5H6NlPzSfyTY47fibo5Bi1sMC3gfrRb3t2cCfmb1LQ03rIAa8vFOC4pRl081bs+UPY57jzyH0LNKP/qIsVHKcWcd4USc/1JqQr1u/wDIE+BPibua/P041S/HAhsqeIZ5KnUsU52W40HKuXrHTVZJNXS8/XjJcKd30LqTMwiaIbvzmMo3zisN8NExJk85apx7Y/UHVvts53hVJ2+33VgXcuqImXHgeLKBMjx3iwkkEl7sp+yr0Ml7jCP1+UxJyy5LGHJ8qMixDBu6GCUISx5z6BMkSYWkWP63RYgimOdCgYbBNLMwklmvmHM9mOmKmUnqXJJt4q8FVHlTZjROdAT3ii28h/6O5RItxQMjTWtDuslz/MF7pqLZSkwWvGaEcZI6ROKkF0L1CE2LdFRS0JHVprFcPF56LOc+VF7mbb4CcBQMF9Sw4qLrIJRluRi8
X-Microsoft-Antispam-PRVS: <CO1PR02MB127FE5D5E02143A427D7A84B2C40@CO1PR02MB127.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(192374486261705);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(13018025)(13024025)(8121501046)(13015025)(13017025)(13023025)(10201501046)(3002001)(6055026);
	SRVR:CO1PR02MB127; BCL:0; PCL:0; RULEID:; SRVR:CO1PR02MB127; 
X-Microsoft-Exchange-Diagnostics: 1; CO1PR02MB127;
	4:IMgtSO8O6xXme9TcHyBJJhZoXgUU+Gs2Y9ciEkFShdV3ewJUKVhd05Dr3498LTJqTnu24sM5twFUUUgTsjEBfon33UZi+rp+1UVd18esRmzg+X6zl3oOFFSr7MC9I08aOHrW80kI4ICJCYoD7Za5HRL2O/YV4YFhDCA00fIdbmJpdf0zUU1f40BOn8Pekx2yrrNpptly4M+ubxsoLwAYBYleOLipJd5UF00fDue7eftFL0KaBu5ffo1faEiN0CZaaqLssm50JxBQH/pOkMTr6ISNtXji5Z9spKUOdx3uMQVs4eaY2YX0HXpbuQGhJ6UHY+uPMVgmP749CKeqVvWVVuQTriDmdOOAY1DtCKHD5T+luwGFdYSAcaOt2vB/f6ZiDQKwsbBF5gk+rF5dC+MgJCspODJRuTfUV5vxHsyOIQgo24b+UC7aIsNCPUivsJ1pf3Z7XFDhcnzLPyXPfw7WiDxISg3A8ztytWY24Zsj9f9vGJFEwg7NgjoSnU+jvgSzoUJvdyR7zRaK4wgjKW/IZ3iZYZTEqhYC46b5iqXn6Rk=
X-Forefront-PRVS: 008663486A
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CO1PR02MB127;
	23:aMsut08nTIDcmoA/frkitwKFrVCRdRE0A63Soo82MV?=
	=?us-ascii?Q?5IHzy17W7nK2WGJ/Danym7cl0Ny+tIf1Jd7IMms6vreGLu87PJkQcbGZLsIN?=
	=?us-ascii?Q?2FmB7xrb3svRbTl9H2rYV/pEVy+tL0akH1bG67uUvf+qJ/nJn2OGuMl+YC9h?=
	=?us-ascii?Q?HlXvTPNmS1mqUsDTJzKmfN3lPVrNtwf0mEyNQZnQsOR9g6HF5BpTG9m/9Amq?=
	=?us-ascii?Q?GV2hoh2t1/l8jXefunmWQECIqKqafCAYnG+zRbG+g/VKQGZZsk5DRm5Jld+8?=
	=?us-ascii?Q?LRMsg5yiF2Tj3HeGHrIJmXG8aIMmtvO6ZDWFflwBaPdsnzpAkaYd1kP5yzFp?=
	=?us-ascii?Q?d4KpWsea66r/0qldMiKby3G6pCpCIKrHA/KTP1U5wVJ+AmUytud0+q2JD5nd?=
	=?us-ascii?Q?DTI5BTHbz6QYexgrkxSxgosSe+WuR6D6PpNYAAn3FZAh/+k1qTGsHqCzFfuC?=
	=?us-ascii?Q?bZuTzCqYJlibzw2cXUzhztFs9p18ep/WEo0G6c0mmWwKV+6GiegkemSo9fGN?=
	=?us-ascii?Q?GXzK6EkRCm64pgyfznrZLnp/BYC9QF6Dqa6dM5g9PivXHSHO9eUC9zFb1FAK?=
	=?us-ascii?Q?TaohbnZMZDIvKvZzo/AOP0OEZDGhMW0juSWZXD9KTixvFJwir+70f7SF31uD?=
	=?us-ascii?Q?nNfMvBTH+XPU6WnCtGoF4dRRWACGsboOJUN33DT0dAs0YGtWmyyrHZv58CnO?=
	=?us-ascii?Q?WuIxewpZG7gx2v/9RDyUmc6i+p9TJlSDK5WrC1/SLPvL7udQn2T3idHSAhyM?=
	=?us-ascii?Q?HAnzE7uIuead66f5I9VKwZAyepXoiNZexlPWrc7kQPjRp0yxU548aQy9aSZL?=
	=?us-ascii?Q?PEv3rqglY5jPW/2zJPlbKQIznXs6ebM8JJzJaCNuHcnJX1yWFNcealKHxsrq?=
	=?us-ascii?Q?j9u6BaAHQhE56GMJ1cVE5wpkaD6MHSu6BRziEsn7NNJaT3ZrO4lyJsDOEd2L?=
	=?us-ascii?Q?2BdpkYnVCbM7NF7RA/R+U1UNo0elyGssKgEKHqWc61hIXe/XmzKqtt/LSdrH?=
	=?us-ascii?Q?rxNwoQgqeyfk4h2pQbDHh9RTFjTKqPYkCGWUUce3XKSKhCyLmEkiZJabCOb/?=
	=?us-ascii?Q?9qkfLygX0QU6acNQ4ZH3XCKxevi7tDadvV9GLWme/2BTD2MGFXe7toclBgi/?=
	=?us-ascii?Q?c68xn087h+0g+SrMEkS1/XCLtywENDDxS3QqZw7FwTxBxoD4UDqcqNiZScCn?=
	=?us-ascii?Q?qlpZeM3IpAF0FsZCeYV6VR65vWXzk9vHkLn0KEfZ1JdzYYq/xc6z4mUw=3D?=
	=?us-ascii?Q?=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CO1PR02MB127;
	6:1rvnwDMrwSmU3rK8m8ALi2jVkLats55UMF+KApqShO96BpVr+eMyt2NLrJBvWy09afYfeDrwOLP/2GcysmrQCEvem8Z0CoS6ai/zkYFEIYB725+zFT4CsJQMVrmN1kG9N4UbYa5wo18LXyupYbXaL4SKrjZl+p3YHolYylEEOicyu5WXj8E7pEuBIhDHjpY8LCRiZ2kkg38yCz3ogkZIMXhq/20M+TyjXId24pXo4Odk8zStgc49Q3UtlNHR5iPdciFE8tkXWaoKL3LmBbQr9XTlgtwln5XhifmTjQWRjySXENa9Byk6pYT3AXg5EFP2fzuSB0Ve29m0GGkXizm6zw==;
	5:8QvcBr6V3tkYcZBUPQvnbYfZ03+1CjxnDX6ZuUx3VHEzHH/ziIdlwb9CpdNoh1c9LIYdKHJ4pP2PmEUpczy7bi6poZspVfPRuhCH9UvLY65veYP5w66q9JxrPrkq+uLH1+Lprp+7IZI4+/6R7Qw3vA==;
	24:u0hs4q9IO9zEu7E0nrDvD78b7EnXKfxLN+yaiy+CEEs3KUhX9Y70rIYYAQHP2Ap5SfrX+XtgdIb+ZsFC67ksScYSJni0nsutG3+iauj9SPw=;
	7:4AU8Ag5rNmIBSQJ/C0HXVQrXcxnBptU9OHv/aOqB0C7WWVIac1X6YQWmFpSDA3Itr1szbjGM6aaEiQfvmF0vn2cPbO4KqH9OItdf22CJKyDGMdJnHcfWmxLEkJB/19kDoMgM1gu0sbZ0sKhjtG4WFjDcvEX0jMtV+rnH6oI6l08sZXif8cCT72FFLYjJ0c+HjJ7NDov7ZIszt2Z8nx5tt38DW4iRnlA6mc+Q1gpOEtbJB7zbSQyso/KTkhVC3UjZPm0xet5TarfF0/moLtmRfaO9MSb16PXMPooxYMp+PSTg4Idx0J8u66LgBWSnflFL
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2016 23:04:39.6726 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR02MB127
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openjdk build fails due to checksum mismatches from	icedtea-native
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
X-List-Received-Date: Thu, 06 Oct 2016 02:37:33 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_2E6C63C1C4D34646ADD462EBF047EA0Fsierrawirelesscom_"

--_000_2E6C63C1C4D34646ADD462EBF047EA0Fsierrawirelesscom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbSB3aGF0IEkgZ2xlYW5lZCBmcm9tIHJlY2VudCBkaXNjdXNzaW9ucyBvZiBmZXRjaGVyIGVy
cm9ycywgdGhpcyBpcyBzb21laG93IGNvbm5lY3RlZCB3aXRoIHJvbGxvdXQgb2YgUHl0aG9uIHJl
bGF0ZWQgc2VjdXJpdHkgZml4ZXMgdG8gdmFyaW91cyBMaW51eCBkaXN0cmlidXRpb25zIGFuZC9v
ciBzb21lIC4uLi1uYXRpdmUgcmVjaXBlcy4NCg0KSXQgd2FzIGEgYnVuY2ggb2YgdGFyIGJhbGxz
IHRoYXQgYXJlIG5hbWVkIGFzIG1lcmN1cmlhbCBoYXNoZXMgZnJvbSB3aXRoaW4gaWNlZCB0ZWEg
cmF0aGVyIHRoYW4gdGhlIHlvY3RvIGZldGNoLiBJIHdvcmtlZCBhcm91bmQgaXQgYnkgZ3JhYmJp
bmcgdGhlIHRhcmJhbGxzIGZyb20gYSBkaWZmZXJlbnQgY2hlY2tvdXQgc2luY2UgSSBkaWRuJ3Qg
aGF2ZSB0aW1lIHRvIGRpZyBpbnRvIGl0Lg0KDQpJdCBhZmZlY3RlZCBhIGZyZXNoIGNoZWNrb3V0
IEkgd2FzIGJ1aWxkaW5nIGZyb20gc2NyYXRjaC4NCg0KDQotLS0NCg0KUmVnYXJkcywNCg0KRGFy
Y3kNCg0KRGFyY3kgV2F0a2lucw0KU3RhZmYgRW5naW5lZXIsIEZpcm13YXJlDQpTaWVycmEgV2ly
ZWxlc3MNCmh0dHA6Ly9zaWVycmF3aXJlbGVzcy5jb20NCltNM10NCg0KT24gT2N0IDUsIDIwMTYs
IGF0IDM6NTEgUE0sIFJhbmR5IE1vcnRlbnNlbiA8cmFuZHkubW9ydEBnbWFpbC5jb208bWFpbHRv
OnJhbmR5Lm1vcnRAZ21haWwuY29tPj4gd3JvdGU6DQoNClVzaW5nIEpldGhybyByZWxlYXNlIGFu
ZCBhdHRlbXB0aW5nIHRvIGJ1aWxkIGVpdGhlciBvcGVuamRrLTcgb3IgOCBmYWlscyB3aGVuIGZl
dGNoaW5nIGljZWR0ZWE3LW5hdGl2ZS8yLjEuMy1yMS4wIGR1ZSB0byBjaGVja3N1bSBtaXNtYXRj
aGVzIChvbiBhbGwgdGhlIFNSQ19VUkkgZW50cmllcykuDQpvcGVuamRrLTcgZGlkIHN1Y2Nlc3Nm
dWxseSBidWlsZCBhYm91dCBhIG1vbnRoIGFnby4NCg0KSXMgdGhlcmUgYSB3b3JrYXJvdW5kLCBm
aXggb3Igb3RoZXIgc3VnZ2VzdGlvbnM/DQpUaGFua3MNCi0tDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KeW9jdG8gbWFpbGluZyBsaXN0DQp5b2N0b0B5
b2N0b3Byb2plY3Qub3JnPG1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnPg0KaHR0cHM6Ly9s
aXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo=

--_000_2E6C63C1C4D34646ADD462EBF047EA0Fsierrawirelesscom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj0iY29udGVudC10eXBlIiBjb250ZW50PSJ0ZXh0
L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPjwvaGVhZD48Ym9keSBkaXI9ImF1dG8iPjxkaXY+RnJvbSB3
aGF0IEkgZ2xlYW5lZCBmcm9tIHJlY2VudCBkaXNjdXNzaW9ucyBvZiBmZXRjaGVyIGVycm9ycywg
dGhpcyBpcyBzb21laG93IGNvbm5lY3RlZCB3aXRoIHJvbGxvdXQgb2YgUHl0aG9uIHJlbGF0ZWQg
c2VjdXJpdHkgZml4ZXMgdG8gdmFyaW91cyBMaW51eCBkaXN0cmlidXRpb25zIGFuZC9vciBzb21l
IC4uLi1uYXRpdmUgcmVjaXBlcy4mbmJzcDs8L2Rpdj48ZGl2IGlkPSJBcHBsZU1haWxTaWduYXR1
cmUiPjxicj48L2Rpdj48ZGl2IGlkPSJBcHBsZU1haWxTaWduYXR1cmUiPkl0IHdhcyBhIGJ1bmNo
IG9mIHRhciBiYWxscyB0aGF0IGFyZSBuYW1lZCBhcyBtZXJjdXJpYWwgaGFzaGVzIGZyb20gd2l0
aGluIGljZWQgdGVhIHJhdGhlciB0aGFuIHRoZSB5b2N0byBmZXRjaC4gSSB3b3JrZWQgYXJvdW5k
IGl0IGJ5IGdyYWJiaW5nIHRoZSB0YXJiYWxscyBmcm9tIGEgZGlmZmVyZW50IGNoZWNrb3V0IHNp
bmNlIEkgZGlkbid0IGhhdmUgdGltZSB0byBkaWcgaW50byBpdC4mbmJzcDs8L2Rpdj48ZGl2IGlk
PSJBcHBsZU1haWxTaWduYXR1cmUiPjxicj48L2Rpdj48ZGl2IGlkPSJBcHBsZU1haWxTaWduYXR1
cmUiPkl0IGFmZmVjdGVkIGEgZnJlc2ggY2hlY2tvdXQgSSB3YXMgYnVpbGRpbmcgZnJvbSBzY3Jh
dGNoLiZuYnNwOzxicj48YnI+PGJyPjxkaXY+LS0tPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5S
ZWdhcmRzLDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+RGFyY3k8L2Rpdj48ZGl2Pjxicj48L2Rp
dj48ZGl2PkRhcmN5IFdhdGtpbnM8L2Rpdj48ZGl2PlN0YWZmIEVuZ2luZWVyLCBGaXJtd2FyZTwv
ZGl2PjxkaXY+U2llcnJhIFdpcmVsZXNzPC9kaXY+PGRpdj48YSBocmVmPSJodHRwOi8vc2llcnJh
d2lyZWxlc3MuY29tIj5odHRwOi8vc2llcnJhd2lyZWxlc3MuY29tPC9hPjwvZGl2PjxkaXY+W00z
XTwvZGl2PjwvZGl2PjxkaXY+PGJyPk9uIE9jdCA1LCAyMDE2LCBhdCAzOjUxIFBNLCBSYW5keSBN
b3J0ZW5zZW4gJmx0OzxhIGhyZWY9Im1haWx0bzpyYW5keS5tb3J0QGdtYWlsLmNvbSI+cmFuZHku
bW9ydEBnbWFpbC5jb208L2E+Jmd0OyB3cm90ZTo8YnI+PGJyPjwvZGl2PjxibG9ja3F1b3RlIHR5
cGU9ImNpdGUiPjxkaXY+PGRpdiBkaXI9Imx0ciI+PHNwYW4gc3R5bGU9ImNvbG9yOnJnYigwLDAs
MCk7Zm9udC1mYW1pbHk6aGVsdmV0aWNhO2ZvbnQtc2l6ZToxMnB4Ij5Vc2luZyBKZXRocm8gcmVs
ZWFzZSBhbmQgYXR0ZW1wdGluZyB0byBidWlsZCBlaXRoZXIgb3Blbmpkay03IG9yIDggZmFpbHMg
d2hlbiBmZXRjaGluZyBpY2VkdGVhNy1uYXRpdmUvMi4xLjMtcjEuMCBkdWUgdG8gY2hlY2tzdW0g
bWlzbWF0Y2hlcyAob24gYWxsIHRoZSBTUkNfVVJJIGVudHJpZXMpLiZuYnNwOzwvc3Bhbj48YnIg
c3R5bGU9ImNvbG9yOnJnYigwLDAsMCk7Zm9udC1mYW1pbHk6aGVsdmV0aWNhO2ZvbnQtc2l6ZTox
MnB4Ij48c3BhbiBzdHlsZT0iY29sb3I6cmdiKDAsMCwwKTtmb250LWZhbWlseTpoZWx2ZXRpY2E7
Zm9udC1zaXplOjEycHgiPm9wZW5qZGstNyBkaWQgc3VjY2Vzc2Z1bGx5IGJ1aWxkIGFib3V0IGEg
bW9udGggYWdvLjwvc3Bhbj48YnIgc3R5bGU9ImNvbG9yOnJnYigwLDAsMCk7Zm9udC1mYW1pbHk6
aGVsdmV0aWNhO2ZvbnQtc2l6ZToxMnB4Ij48YnIgc3R5bGU9ImNvbG9yOnJnYigwLDAsMCk7Zm9u
dC1mYW1pbHk6aGVsdmV0aWNhO2ZvbnQtc2l6ZToxMnB4Ij48c3BhbiBzdHlsZT0iY29sb3I6cmdi
KDAsMCwwKTtmb250LWZhbWlseTpoZWx2ZXRpY2E7Zm9udC1zaXplOjEycHgiPklzIHRoZXJlIGEg
d29ya2Fyb3VuZCwgZml4IG9yIG90aGVyIHN1Z2dlc3Rpb25zPzwvc3Bhbj48YnIgc3R5bGU9ImNv
bG9yOnJnYigwLDAsMCk7Zm9udC1mYW1pbHk6aGVsdmV0aWNhO2ZvbnQtc2l6ZToxMnB4Ij48c3Bh
biBzdHlsZT0iY29sb3I6cmdiKDAsMCwwKTtmb250LWZhbWlseTpoZWx2ZXRpY2E7Zm9udC1zaXpl
OjEycHgiPlRoYW5rczwvc3Bhbj48YnI+PC9kaXY+DQo8L2Rpdj48L2Jsb2NrcXVvdGU+PGJsb2Nr
cXVvdGUgdHlwZT0iY2l0ZSI+PGRpdj48c3Bhbj4tLSA8L3NwYW4+PGJyPjxzcGFuPl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPC9zcGFuPjxicj48c3Bhbj55
b2N0byBtYWlsaW5nIGxpc3Q8L3NwYW4+PGJyPjxzcGFuPjxhIGhyZWY9Im1haWx0bzp5b2N0b0B5
b2N0b3Byb2plY3Qub3JnIj55b2N0b0B5b2N0b3Byb2plY3Qub3JnPC9hPjwvc3Bhbj48YnI+PHNw
YW4+PGEgaHJlZj0iaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3Rv
Ij5odHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG88L2E+PC9zcGFu
Pjxicj48L2Rpdj48L2Jsb2NrcXVvdGU+PC9ib2R5PjwvaHRtbD4=

--_000_2E6C63C1C4D34646ADD462EBF047EA0Fsierrawirelesscom_--
