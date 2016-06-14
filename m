Return-Path: <Jeffrey.D.Boyer@jci.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F398E00B04; Tue, 14 Jun 2016 07:15:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.63 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0063.outbound.protection.outlook.com [65.55.169.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16B32E00AA2
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 07:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jci.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=AQTWgytk/xwuiC5UNqtCbQoR3vvTUAaK01EjCyFN8qE=;
	b=iMMfu5YOQOg1YdDMMoqhV57PtxfBMeIZpRfwzgPcsuwsK9nQZguuaHV2PQDDsrPfUN0KG3MADoW4yJ07M+HZq5//nug68o1fucNbjwHtlExCMlYM1ewmCzIPE+WlxjwT6g3gesUc8EjNTdilwK4iihIwoGWuRFpAW+hWH40UN74=
Received: from BN3PR0301CA0015.namprd03.prod.outlook.com (10.160.180.153) by
	CY1PR0301MB2041.namprd03.prod.outlook.com (10.164.2.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.517.8; Tue, 14 Jun 2016 13:48:32 +0000
Received: from BN1AFFO11FD009.protection.gbl (2a01:111:f400:7c10::193) by
	BN3PR0301CA0015.outlook.office365.com (2a01:111:e400:4000::25) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.517.8 via
	Frontend Transport; Tue, 14 Jun 2016 13:48:33 +0000
Authentication-Results: spf=softfail (sender IP is 23.103.243.116)
	smtp.mailfrom=jci.com; topic.nl; dkim=none (message not signed)
	header.d=none;topic.nl; dmarc=fail action=none header.from=jci.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
	jci.com discourages use of 23.103.243.116 as permitted sender)
Received: from 062-smtp-out.jci.com (23.103.243.116) by
	BN1AFFO11FD009.mail.protection.outlook.com (10.58.52.69) with Microsoft
	SMTP Server (TLS) id 15.1.511.7 via Frontend Transport;
	Tue, 14 Jun 2016 13:48:32 +0000
Received: from BN3PR97MB0132.062d.mgd.msft.net (141.251.173.212) by
	BN3PR97MB0132.062d.mgd.msft.net (141.251.173.212) with Microsoft SMTP
	Server (TLS) id 15.1.506.9; Tue, 14 Jun 2016 13:48:31 +0000
Received: from BN3PR97MB0132.062d.mgd.msft.net ([141.251.173.212]) by
	BN3PR97MB0132.062d.mgd.msft.net ([141.251.173.212]) with mapi id
	15.01.0506.017; Tue, 14 Jun 2016 13:48:31 +0000
From: Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com>
To: Mike Looijmans <mike.looijmans@topic.nl>, Christopher Larson
	<clarson@kergoth.com>
Thread-Topic: [yocto] Mounting USB drives on a "read-only-rootfs" based system
Thread-Index: AdHFuMNyfcoYoG6/QWuF1oCmyic8agABlM0AACAItQAAAK8lcA==
Date: Tue, 14 Jun 2016 13:48:31 +0000
Message-ID: <ea5b572b51f542459e034c49f2f05d76@BN3PR97MB0132.062d.mgd.msft.net>
References: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
	<CABcZANkeE_RumUN=6D8n8zFQW8hEb-nRQgXBbc5ZMPkZniPLjA@mail.gmail.com>
	<5760041E.1010809@topic.nl>
In-Reply-To: <5760041E.1010809@topic.nl>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.150.4]
X-MS-Office365-Filtering-Correlation-Id: 11c005a3-2792-4b9b-e6c8-08d3945a9333
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:23.103.243.116; IPV:NLI; CTRY:; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(979002)(6009001)(7916002)(2980300002)(69234005)(71364002)(13464003)(189002)(377454003)(24454002)(199003)(377424004)(252514010)(106466001)(87936001)(230783001)(5003600100002)(92566002)(11100500001)(24736003)(5008740100001)(15974865002)(108616004)(15975445007)(8936002)(9686002)(81166006)(6806005)(2900100001)(22756006)(81156014)(8676002)(189998001)(86146001)(50986999)(2906002)(3846002)(102836003)(6116002)(23676002)(10400500002)(5001770100001)(2950100001)(19580395003)(86362001)(356003)(50466002)(97736004)(16796002)(19580405001)(105596002)(5004730100002)(33646002)(66066001)(47776003)(586003)(54356999)(76176999)(4326007)(68736007)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0301MB2041;
	H:062-smtp-out.jci.com; FPR:; SPF:SoftFail;
	PTR:InfoDomainNonexistent; MX:1; A:0; CAT:NONE; LANG:en;
	CAT:NONE; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD009;
	1:4Gh3W1Fr1Vru6CRVqQb5LUkK2NJj8159O9s4CGVcz6wEZk51WVNdddr74t9f4BuI6YF/DpN4UNI+cNIxQL4U2KsBIh496dmErp/OmKSVG3rcEqRh3Ezg7Qo3kC0ZdjJoMkL2pjScuzqfQbbP3DqgNs0XdqimjdUklzGYdz994E1b8e8qHaBVHpvYpDPJh3C3eEf+CEIUFR28HteaGf0weiqdBt9aFAeSlVtIZEFHRYghe5K1st6sU6hMuRgHmFDLJvJww2Zb95NqEu5bMPVrEACur2CT3pncbz9sqoiRW3kjinA8DA5z+e4sbnfXdq1Ts/KLHBbTTeFWLTbdmyJH5QFLjTespQWGcZSeP8yNW2tSXu/rM2GmsV3X2jWfUbE60F7qBdQlvDI0ZlXskbChSOzShlGnu9lF7KT97rh31Hk=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0301MB2041;
	2:0Riq40TlIplUd86CUNgEkbQjBS+ayW2mXat8sdLpb9qK1JH1fkdM524c/nl5JivTICy57hPPbhj2ijYax3Ctfch3qdBEcxNJdUFWTYhV7Mn+0yN23MWnghdeFLm7n40eeupEbDq01CbTA5WcFEHHx/SrpOPAX8Qi4xdxpHoIVEtWLwUnyNmjVcDXs2RHQly+;
	3:CJRV35nKEtK6Q7DxUPK1TcC1lInG/oZnvuqE2zIsJHWkvQ3CKZQlU74wLYon0SpsKtcCGL6Lhk0lTnVaDaAYGveWfJ3pYnT6+vLuLCrqHub2kcNnf0DITIK8QvNtO1T2q7/p+UQVshnXMx0h3/ps92mNpFzOHud5jY2jHqJYrDdw8jEwkG6edw9Lr7GqZTjFtq9AHQ3DJsG2J/O0TbOFtvvywQrQrB2hAgN4ctRK87g=;
	25:/0LZJQnahlTrxCQLobjw4/doPVW575LMrpFYnFkPgIdY8MNlqbN7cInOujgAA3niQp4l7RSHVf0QB8On1pDM0bavDqd/YGmOMeUKTZs+lahwnmZva0rcvV6f60EbJFT3h5/oAg61vRA43xOPo6Efj9eeOxtS/bBULm8q7YhT1+2jgmtud3uAwe+eVvCjVr/n+xYjRJ1+Jm+Dz6zQWz7mvqs9c8jeWvBNBfmwTXt5RPuWelrrzZKviWHODT/nbt9kLQkgOBGoDZg080bZA4ZEe781IDyOeoG/9qE2tQYj2v8qwHSzONb5+tjMsPfnLOxL/uhozvK9rOOrqI+Icfppsm6tCDYu78YDLOAhlD2zSQ3QadoX3Y5QOybqzll7MD8CdCpXuSrngo1SYHgl2DXMnBk5q0aPSy6PcR+jAplZNJk=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0301MB2041;
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0301MB2041;
	20:1xjk4P7CtZWGNQ4x1geZ7AOL6zRHqTQOVjIIR3Xt4yWwLv4eYoHP50GqeSEWDsF4pRKgoY+T85vX55FPc9lwxgkgYGMwpHYqolbhNtnjfmiH3gU3MLQbM/1z3kahDP4ppFkrdwgQqe9UG6vajfssyqQv9hgYIILh1o4oln8I4+TRmLuL+jQ3ucAaockViWX1y/rSu8jwUyB9FbGB2At34zUSkJcNVMd3eItN5G33hLHOAfNtdEb2ZE5rQWRhXjFx6fl+IlFdyApvPtafr9cfmLa2QhqL94p/9diAcFMxS2gu+dTfcjT3C1JxvGgeqMRP8GuqW3EFWTvNrF/YrmmDiHbtwbG5+mQMWNRYqqOQDW3R/3/znw902FUvdgNBXoR9G+sq+a8T2hZmLcQEEYwMeiRrgKPMJ8ITaCUl3XNpCSMtGtTtKfVzqu4UQj9e7ZMz8DM0vDGYrhdLtFH+jRzUiOrl/BqkCVJx/afTrv2DgX/PUnEEPdRVDlRCsQZTxIDL
X-Microsoft-Antispam-PRVS: <CY1PR0301MB20414F00A8A320DD525479F9B3540@CY1PR0301MB2041.namprd03.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(219970919918780);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13016025)(13018025)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:CY1PR0301MB2041; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0301MB2041; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0301MB2041;
	4:JZtyjjMUcsf90bAVYVAlVM2FTJrPRToIW5KkT5t3B2Hddthj8DPn+vI5arZQsNj6WXWz9LMbwuti2sZlpWEqsLLvekb7imbvidJl1+TYqj9E6Sb0hV6Jwynpb31n12QrPz1AC2U2xdXPBr6OgnlvJA93WM+awJ8IHUZqsWM7TZzxcBMP97S5fbS27VIl2ZjPp/rrBWuiY72N4whIDLLtKUDKpO+HemfvhT3+Rrm7rfudEHLXl5cx2s55xRPug4ReTMmHIns4L0MiWSLpfYyOEe6FHL2prkwAoC7tLPK98lWnmVeBNdDNSBWDUW7xUlskcNP2BTa8ydMPoAyhkyBW5aH/KncLC7AhZPdQA5zR/kc5K8SdGbcHM1Gy91FColZ6F1u0lA1tAHOGcOHr9T50Y4ZudHbwfpwlhR2/4R2Fquha7pXU5JQ9CGfZ48oJ7adMV6GSXWtfnF27bfRBioKauA==
X-Forefront-PRVS: 09730BD177
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTFQUjAzMDFNQjIwNDE7MjM6NExpaGNZZ3J1L0cxWHh2NlFudDd3REd6?=
	=?utf-8?B?YWdCYXZxWlFUSnBiUzZYN1lmY0t2ODE0M255RUo5aU5ZR253Q21CVU42V2xX?=
	=?utf-8?B?VnJ2OHFKRDYrOG8ydkQ5MjgyZmt6bUd5WEVDQkxpWGRERkVkMzlVb1I2UXVr?=
	=?utf-8?B?eE1Jd2RvN1h6dzZIQ2ZpZTAxVXVDcm1HUStJenB5OHBtei95aTE1dit4RFRh?=
	=?utf-8?B?M0Y2Z3hBd2RVUHo1U3NiYWxHL3pKSkcybG1jQXpRY3NTM0FlY0RjNUxSb25E?=
	=?utf-8?B?aGZxNWlqSTlsUXBFRVRJZk5nTFIyUVdkdWV5SmxXZUpQRkFSMFI4bUZqaFl3?=
	=?utf-8?B?VXVldjd2UGMzZi9DR1Fkb1NiaUZKN3lGbjRLWHR5ZlRVdjE3NWgzRmJ0QkRQ?=
	=?utf-8?B?UEZ5TDhqSFZRaXJleEFTY2Z3cFZsUlphZ3c3TklhdUN1ek14b09ndU5VVnNJ?=
	=?utf-8?B?YlhPajl6a0U2U1J4MmJlUkc2Ym8yUVlpcEtzaXBpVTFHdHc5djhkRDlNM09U?=
	=?utf-8?B?NkpPWWd0OW9rUGNrYWdOVWZlY0RUMTV6QXh0VlEreXc0RmwvakRVRDg4amFj?=
	=?utf-8?B?azcya3FsN3VZS0tCbGNQT1dKbStpejJITUpzalYyQ002UENiVWJ0NjJKQVBR?=
	=?utf-8?B?UVl4bWt1ejVGR2RkL0ROYUZ2VFZkRjVLMVBEYXRiTk9aeVk2N1g0UDJDZEho?=
	=?utf-8?B?YXh1aGRXRUhpV3FvWksxYzg2T0JONE0wQkJWOHJBMjBGcjFDMzBORVJEb2VB?=
	=?utf-8?B?WDAzdkJmUktmWThLWlBPK3o3ektjR2NCT25oR1lnTVpiajA2SEpqMlFvVGUw?=
	=?utf-8?B?cnZGNjVQTVJHelh0Y2d0UkltQmMrcnZ2WTAycmt2UkllRjIwcTZzTm8rcWxp?=
	=?utf-8?B?amsySVU0MFdBdUY1Nlp5cmY5b0N4NXZOdTNBTHR2QjR0dWJPV0Q5Zy81a0FS?=
	=?utf-8?B?K3JSMTI0T1BRZFV2eDd5ck94N1dCMUlIb3ZjVmk5a21nWFlzRFZZN0VVTUx3?=
	=?utf-8?B?Y0JYQjl1SCtNcVJYQTZZc2NOWThZcHdnQ0ZWUG5wNyt0cFFYK3hGaFFDcllm?=
	=?utf-8?B?TGlHMkpTZHY5WjZUaG4vUUxNN01wTUNaRW9iSXlNMlcyL2VqalBjTmI2THRS?=
	=?utf-8?B?LzRuY1F3ZkZoRUpvclA2UzJjVnh3RDRyQjNHM0V6akh1Q3JtM2xTOEJFMjBY?=
	=?utf-8?B?bU9yYThJbXdhWE95Tm80enpiQnprVVRxelRBRm5Ld3F0clZXRGx5cmMyT0hP?=
	=?utf-8?B?Y2pZMVcweW1udm4rNngrdkVTaG9uOTNXTWVBOFBjQm9OZUJWMkFoVnVISmlv?=
	=?utf-8?B?ZE5KcDZFbjFGSk96dHJQTjJMYzJhR01OUGN1RE9saTMwQU9QRjdwcEU5Zzk1?=
	=?utf-8?B?MjNQWUlFSGgvTFhoTzZnTUJUancxUzFZZHA3cmN5WWhna3hwRHdrSUNFbm13?=
	=?utf-8?B?MGJVdVdYZmxSUDlGNUN0MU40WVVoNEt5VWJnNlhnZ0ZQT2o2cWxyUHkxUVNv?=
	=?utf-8?B?emh5NnBMYlJqTzdDSFlaam1JbjFTb1R4TUZPNXZtbkNuSTVjWUlkbkM1R25R?=
	=?utf-8?B?RFA0VGhzZW1SNUVXeERyNzFnWlh2UC9yRjVnY21FWjlRTlIycmxrS3pZb0Vt?=
	=?utf-8?B?SnpXZGxxWW1oVG9GM3ZMaHM0NVVlampET0o5dnRKNUd1cUVOdGdDTE1QZDls?=
	=?utf-8?B?TEk5enVaQjZ1Q3IwWlUxNFBLMTEyZVVUb3JHaWxlSXlCWVhUaXBoQ1JHbVpj?=
	=?utf-8?B?SnVaczd5RUExMmxaV3piNHI0OWZsRU1VajI3TmNPRlpVSWxnakVTeXY2WDZO?=
	=?utf-8?B?NTBzN3B5QkwvSkRKUENKTVhsNWljNDNqTE9EY2g2bENDaTBOQ01wbVkrTGc1?=
	=?utf-8?B?WUs3aHBxZ014R2I2NGxLVm5sclNOcFFwMGtMQTlLeXNNQk50bnlNL1kvbTBq?=
	=?utf-8?B?dUZYay9EbktpWHBwbkc1WktFMTMvZFUvS3BtejNCQXhwTDhQbzFWUjl6RGJm?=
	=?utf-8?B?dzZFNVdCcGJHa3NEYmtZdjNQZzRyWElWUWxPa2gyckl0UTl5L0szaXdJeWZv?=
	=?utf-8?B?UDQ4OXk2UHhJQlJkbDJNcklKYUtDWjFFMU1XeTVVVVVENHBRRVJuQkNsRDhL?=
	=?utf-8?Q?JEp8UZtGQh4IbgPL+hww+83KE=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0301MB2041;
	6:lBop7/VotbqBgwbMqIjV0uVXOaOaQYrvrZJOCzTLb+HmWeqZy2fsh+Iv9vabtd5s1BTOhd9ZsDKRs3Oeu+XtzyohWyhrOGmwSy5YpwrPfIuIARqNbWOv9o6ibhS0D3pxTlji0e7SGKf7rSL0645URCFHvtH6fpQdn74dPax19j+k36SJk24tfuISAEYr1MmRh6umYY6e2SlBROE0icheZMQd6KG6SbCqDwbvNWVZ4gpxyJp4vYKpCGOauhGnBeozedne0a64Yi1dbJluJGe/oqTRc7fLiBWd6AbCj7F3EDrPMGnVV9cGC4bJPMj1TsBI;
	5:UYY6x1vY/dnMgQDRsoIZUa5DCrkP9PV53gfACGcbkPkxlcLlNvxOl8I3joGrGPPUk0l3ZUtbNCyWyv5w5BLQcS7boxpSThRhO1W1IH3ycZR7pfsY/VcODqXnB8Pw6JCdRH9QlRZgtEC22Bxe5/0VVg==;
	24:nTUzjlS8YnBbMJM8qVfu7K87rcJ9lenYb7Umx8k9gE2Y6ALlbGUDXDECTusWGUxhO5ClpXNqUqCzUCSjQzuiwaBwiizzucD95Sqg6hmi5g0=;
	7:CoEXhMuvc2Ee8XA68TzNcMoo41AmCK3c8HOdDv+YeB1bA7jqk7pr8kiJuGxO6qJRVCMZX5fDd/6dIQsnqavluCgSTcaYPlFF5way0Yw3w3ZV+8CAjoShNnnzHKYexFq6nMEoeax3UeU4TYqV9YwASeh5OsTL/Vf9+MLil13feSQzUUjpiUXUf+cC1NomBe3y54Y1T6xH4cFJEEZoIbFFcA==
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2016 13:48:32.6835 (UTC)
X-MS-Exchange-CrossTenant-Id: a1f1e214-7ded-45b6-81a1-9e8ae3459641
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a1f1e214-7ded-45b6-81a1-9e8ae3459641;
	Ip=[23.103.243.116]; Helo=[062-smtp-out.jci.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0301MB2041
X-Microsoft-Exchange-Diagnostics: 1; CY1PR0301MB2041;
	23:lV6vdFY54b0pwb3E8brUlOSf3sxgZ8Lbnfi/cquCprdSl/tieYMHm5RSKJibui4DmmGwtZAp2y17+tLK6R8UutsDBIjzV3G2LgLx1cKW3NmT0x/ZRCcxK3f8t9SF3gkBclLX7fj579OfLIGkQOb2JCkB/2gQ60KJkppd5rlTFE08RRo9yUgf9uTwf+8MLkVd
X-OriginatorOrg: jci.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Mounting USB drives on a "read-only-rootfs" based system
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
X-List-Received-Date: Tue, 14 Jun 2016 14:15:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U29ycnksIC9tZWRpYSBpcyBub3QgYSBzeW1saW5rIGFuZCB0aGVyZSBpcyBubyAvcnVuL21lZGlh
IGxpbmsgb3IgZGlyZWN0b3J5IHByZXNlbnQgb24gbXkgcnVubmluZyBzeXN0ZW0uICBXaGVuIEkg
aW5zZXJ0IGFuIFNEIGNhcmQsIGZvciBleGFtcGxlLCBJIGdldCBhIGJpdCBvZiB0ZXh0IG9uIHRo
ZSBkZWJ1ZyBzZXJpYWwgcG9ydCB0aGF0IGEgY2FyZCBoYXMgYmVlbiBkZXRlY3RlZCwgYnV0IEkg
ZG9uJ3Qgc2VlIGEgbW91bnQgcG9pbnQgYW55d2hlcmUgYWZ0ZXIgdGhhdC4NCg0KCXJvb3RAbXlT
eXM6LyMgbW1jMTogbmV3IGhpZ2ggc3BlZWQgU0RIQyBjYXJkIGF0IGFkZHJlc3MgMTIzNA0KCW1t
Y2JsazE6IG1tYzE6MTIzNCBTQTA0RyAzLjYzIEdpQg0KCSBtbWNibGsxOiBwMQ0KDQpJdCBzaG91
bGQgYmUgbm90ZWQgdGhhdCBpZiBJIGV4Y2x1ZGUgdGhlICIgcmVhZC1vbmx5LXJvb3RmcyIgb3B0
aW9uIGluIHRoZSBiYiBzY3JpcHQsIGEgbm9ybWFsIHJlYWQvd3JpdGUga2VybmVsIGltYWdlIGlz
IHByb2R1Y2VkIGFuZCB0aGUgYWN0aW9uIG9mIGluc2VydGluZyBhbiBTRCBjYXJkIHVuZGVyIHRo
b3NlIGNvbmRpdGlvbnMgd2lsbCBhdXRvbWF0aWNhbGx5IHByb2R1Y2UgYSBtb3VudCBwb2ludCBh
dCAvbWVkaWEvbW1jYmxrMXAxDQoNCkZZSSwgSSdtIHJ1bm5pbmcgMy4xNCBrZXJuZWwuICBJcyB0
aGlzIGEgam9iIGZvciBhdWZzPyAgSWYgc28sIGhvdyB3b3VsZCBJIGdvIGFib3V0IGNvbmZpZ3Vy
aW5nIGl0Pw0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBNaWtlIExvb2lq
bWFucyBbbWFpbHRvOm1pa2UubG9vaWptYW5zQHRvcGljLm5sXSANClNlbnQ6IFR1ZXNkYXksIEp1
bmUgMTQsIDIwMTYgOToxOCBBTQ0KVG86IENocmlzdG9waGVyIExhcnNvbiA8Y2xhcnNvbkBrZXJn
b3RoLmNvbT47IEplZmZyZXkgRCBCb3llciA8SmVmZnJleS5ELkJveWVyQGpjaS5jb20+DQpDYzog
eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gTW91bnRpbmcgVVNC
IGRyaXZlcyBvbiBhICJyZWFkLW9ubHktcm9vdGZzIiBiYXNlZCBzeXN0ZW0NCg0KWXVwLCBldmVu
IG1kZXYgYmFzZWQgaW1hZ2VzIGRvIHRoYXQgd2l0aCBjdXJyZW50IE9FLg0KDQpJJ2QgZXhwZWN0
ICIvbWVkaWEiIHRvIHN5bWxpbmsgdG8gInJ1bi9tZWRpYSIgb24gbW9zdCBkZXZpY2VzIChyZWdh
cmRsZXNzIHdoZXRoZXIgdGhlIHJvb3RmcyBpcyByZWFkLW9ubHkgb3Igbm90KS4gQ2hlY2sgaWYg
dGhhdCdzIHRoZSBjYXNlIG9uIHlvdXIgc3lzdGVtLg0KDQpPbiAxNC0wNi0xNiAwMDowMSwgQ2hy
aXN0b3BoZXIgTGFyc29uIHdyb3RlOg0KPiBBZmFpayB1c2Igc3RvcmFnZSBpcyBhbHJlYWR5IGF1
dG9tb3VudGVkIGJ5IHVkZXYgb24gL3J1bi9tZWRpYS8sIHNvIA0KPiB0aGVyZSdzIG5vIG5lZWQg
dG8gdXNlIC9tZWRpYSBmb3IgdGhhdCBwdXJwb3NlLg0KPg0KPiBPbiBNb24sIEp1biAxMywgMjAx
NiBhdCAyOjIyIFBNLCBKZWZmcmV5IEQgQm95ZXIgDQo+IDxKZWZmcmV5LkQuQm95ZXJAamNpLmNv
bSA8bWFpbHRvOkplZmZyZXkuRC5Cb3llckBqY2kuY29tPj4gd3JvdGU6DQo+DQo+ICAgICBIZWxs
byxfX19fDQo+DQo+ICAgICBfXyBfXw0KPg0KPiAgICAgTmV3IHRvIHRoZSBsaXN0IGhlcmUsIHNv
IEnigJltIHNvcnJ5IGlmIHRoaXMgcXVlc3Rpb24gaGFzIGJlZW4gYXNrZWQgYmVmb3JlLA0KPiAg
ICAgYnV0IEkgY291bGRu4oCZdCBmaW5kIGEgZGlyZWN0IGFuc3dlciB0byBpdC4gX19fXw0KPg0K
PiAgICAgX18gX18NCj4NCj4gICAgIEkgaGF2ZSBhIHlvY3RvIGltYWdlIHRoYXQgd2FzIGJ1aWx0
IHVzaW5nIHRoZSBmb2xsb3dpbmcgYmIgc2NyaXB0IGxpbmU6DQo+ICAgICBJTUFHRV9GRUFUVVJF
UyArPSAiIHJlYWQtb25seS1yb290ZnMiLiBfX19fDQo+DQo+ICAgICBfXyBfXw0KPg0KPiAgICAg
QXMgdGhpcyBpbWFnZSBldmVudHVhbGx5IHJlc2lkZXMgb24gYSBzdGF0aWMgZmxhc2ggZGV2aWNl
LCBpdCBtdXN0IGJlDQo+ICAgICByZWFkLW9ubHkuICBIb3dldmVyLCB0aGUgc3lzdGVtIGhhcmR3
YXJlIHN1cHBvcnRzIHJlbW92YWJsZSBtZWRpYSAoU0QgY2FyZA0KPiAgICAgYW5kIFVTQiBkcml2
ZXMpLCBhbmQgSeKAmWQgbGlrZSB0byBiZSBhYmxlIHRvIG1vdW50IGFuZCB3cml0ZSB0byB0aG9z
ZQ0KPiAgICAgcmVtb3ZhYmxlIGRyaXZlcyAvIHBhcnRpdGlvbnMgZm9yIGRhdGEgbG9nZ2luZyBw
dXJwb3Nlcy4gIFdoYXQgbmVlZHMgdG8gYmUNCj4gICAgIGRvbmUgaW4gb3JkZXIgdG8gbWFrZSB0
aGUgL21lZGlhIGRpcmVjdG9yeSBhdXRvLW1vdW50YWJsZSB3aGVuIGENCj4gICAgIOKAnHJlYWQt
b25seeKAnSBpbWFnZSBpcyBzcGVjaWZpZWQgYnkgdGhlIGJ1aWxkIHNjcmlwdD9fX19fDQo+DQo+
ICAgICBfXyBfXw0KPg0KPiAgICAgVGhhbmtzLl9fX18NCj4NCj4gICAgIF9fIF9fDQo+DQo+DQo+
ICAgICAtLQ0KPiAgICAgDQoNCktpbmQgcmVnYXJkcywNCg0KTWlrZSBMb29pam1hbnMNClN5c3Rl
bSBFeHBlcnQNCg0KVE9QSUMgRW1iZWRkZWQgUHJvZHVjdHMNCkVpbmRob3ZlbnNld2VnIDMyLUMs
IE5MLTU2ODMgS0ggQmVzdA0KUG9zdGJ1cyA0NDAsIE5MLTU2ODAgQUsgQmVzdA0KVGVsZWZvb246
ICszMSAoMCkgNDk5IDMzIDY5IDc5DQpFLW1haWw6IG1pa2UubG9vaWptYW5zQHRvcGljcHJvZHVj
dHMuY29tDQpXZWJzaXRlOiB3d3cudG9waWNwcm9kdWN0cy5jb20NCg0KUGxlYXNlIGNvbnNpZGVy
IHRoZSBlbnZpcm9ubWVudCBiZWZvcmUgcHJpbnRpbmcgdGhpcyBlLW1haWwNCg0KDQoNCg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiAgICAgeW9j
dG8gbWFpbGluZyBsaXN0DQo+ICAgICB5b2N0b0B5b2N0b3Byb2plY3Qub3JnIDxtYWlsdG86eW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZz4NCj4gICAgIGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zy9saXN0aW5mby95b2N0bw0KPg0KPg0KPg0KPg0KPiAtLQ0KPiBDaHJpc3RvcGhlciBMYXJzb24N
Cj4gY2xhcnNvbiBhdCBrZXJnb3RoIGRvdCBjb20NCj4gRm91bmRlciAtIEJpdEJha2UsIE9wZW5F
bWJlZGRlZCwgT3BlblphdXJ1cyBNYWludGFpbmVyIC0gVHNsaWIgU2VuaW9yIA0KPiBTb2Z0d2Fy
ZSBFbmdpbmVlciwgTWVudG9yIEdyYXBoaWNzDQo+DQo+DQoNCg==

