Return-Path: <Tom.Vajzovic@irisys.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B3ABE00CA3; Mon, 18 Apr 2016 03:17:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.105 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0105.outbound.protection.outlook.com [157.56.110.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE9DEE0077F
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 03:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=danahertm.onmicrosoft.com; s=selector1-irisys-co-uk;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=eE8a6LXi5qssrya515pwOZ53JR36FMZDwuHqogi5ruA=;
	b=fs+B//+XjybikkzvWJQZbUUjVIsNkze4HK2egHQUAxBctdP8NYTg8p8x5KhNK/+bpPG0ECCv3khCPGD8mxKwkvsvDY/GZsSKHeJspTGfLdzTMJyxW/exv9t5poMZXAqux+akRtjHkszmZzw1VdTRCIfuNwGoxXc78MA/LijiTAw=
Received: from BY1PR0501CA0032.namprd05.prod.outlook.com (10.162.139.42) by
	SN2PR0501MB912.namprd05.prod.outlook.com (10.160.17.142) with Microsoft
	SMTP Server (TLS) id 15.1.453.26; Mon, 18 Apr 2016 10:16:53 +0000
Received: from BY2FFO11OLC011.protection.gbl (2a01:111:f400:7c0c::157) by
	BY1PR0501CA0032.outlook.office365.com (2a01:111:e400:4821::42) with
	Microsoft SMTP Server (TLS) id 15.1.466.19 via Frontend Transport;
	Mon, 18 Apr 2016 10:16:53 +0000
Authentication-Results: spf=pass (sender IP is 192.65.42.18)
	smtp.mailfrom=irisys.co.uk; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=irisys.co.uk;
Received-SPF: Pass (protection.outlook.com: domain of irisys.co.uk designates
	192.65.42.18 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=192.65.42.18; helo=mx.danahertm.com;
Received: from mx.danahertm.com (192.65.42.18) by
	BY2FFO11OLC011.mail.protection.outlook.com (10.1.15.22) with Microsoft
	SMTP Server (TLS) id 15.1.472.8 via Frontend Transport;
	Mon, 18 Apr 2016 10:16:52 +0000
Received: from US-BV-EXH01-P.global.tektronix.net (128.181.11.14) by
	US-BV-EXE01-P.global.tektronix.net (128.181.15.45) with Microsoft SMTP
	Server (TLS) id 14.3.248.2; Mon, 18 Apr 2016 03:16:48 -0700
Received: from EU-EHV-EXC03-P.global.tektronix.net (193.221.129.150) by
	US-BV-EXH01-P.global.tektronix.net (128.181.11.14) with Microsoft SMTP
	Server (TLS) id 14.3.248.2; Mon, 18 Apr 2016 03:16:48 -0700
Received: from EU-EHV-EXM01-P.global.tektronix.net ([169.254.1.178]) by
	EU-EHV-EXC03-P.global.tektronix.net ([fe80::4483:aaf4:d19e:72dd%13])
	with mapi id 14.03.0248.002; Mon, 18 Apr 2016 12:16:46 +0200
From: "Vajzovic, Tom" <Tom.Vajzovic@irisys.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] module do_configure depends on kernel .config and headers
Thread-Index: AdGXMAINBY5Zm3+XQGCGNDz/JJQ5Ef//8yKA//ucd9A=
Date: Mon, 18 Apr 2016 10:16:46 +0000
Message-ID: <14E4216AB3B3624BB1E80BC692D0F413D8D43038@EU-EHV-EXM01-P.global.tektronix.net>
References: <14E4216AB3B3624BB1E80BC692D0F413D8D3A4F7@EU-EHV-EXM01-P.global.tektronix.net>
	<CADkTA4P1zrxf2Ob7NnLKRhm1XjA9AVFj=aD_bL9nhZZP-2a1QA@mail.gmail.com>
In-Reply-To: <CADkTA4P1zrxf2Ob7NnLKRhm1XjA9AVFj=aD_bL9nhZZP-2a1QA@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.221.132.30]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.65.42.18; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(6009001)(2980300002)(438002)(189002)(377454003)(24454002)(199003)(164054004)(189998001)(5001970100001)(50466002)(5640700001)(110136002)(5008740100001)(107886002)(22756006)(6806005)(92566002)(86362001)(450100001)(2501003)(5003600100002)(76176999)(23676002)(85806002)(50986999)(11100500001)(33656002)(54356999)(5004730100002)(1730700002)(9686002)(74482002)(2351001)(106466001)(2906002)(1220700001)(1096002)(102836003)(87936001)(3846002)(586003)(2920100001)(6116002)(2950100001)(66066001)(55846006)(47776003)(142923001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN2PR0501MB912;
	H:mx.danahertm.com; FPR:; SPF:Pass; MLV:sfv; MX:1; A:1; LANG:en;
X-Microsoft-Exchange-Diagnostics: 1; BY2FFO11OLC011;
	1:Maujb5+4w7my9BBfWPkZfT7UXlpTsvGDjKjAhXhKLeKZN2S93d6NgZLwi5RxTLbdWBrcpyPHAMJ6+1eIrCpPHItkg74/MwFLtiALWsH34ZwCzTggP34bHCxyi8pwEjb4ojcqgowEra24O38bAOUQoCHGBPwuw8puRfBGqhn5nEAiL9+n2sEDdSZ3PdiwpTRHe4gBv1yj9987LLW88k0bKBGlLfKSJrjebCcL2boT7CAJrmqRr/E2zn1TyuMxmWvjeOHx79c0RLYVx/pVGPI34d8eR75FayW70e87ag3PZGx9ouxHloecVhBHo85Ry0ZQuAOmuyre0vY5V+7dlX24RExUAJxSxvI0ASb/oqHU4gv5s3JiCiXEZDSlT/Lo1gq5JLYHaUUOLiX0Eq5sskr1TnpFfOICn+4H6rLVQq6KChQo4c8C6VPo1MJ1X7bCpAC1NszdDJMCulVUE/kbnkSKt95W90Tx2ODTJVQSbO2n/iSOiKMQ+PvtJSQH968f2v05
X-MS-Office365-Filtering-Correlation-Id: 49cc7b85-220f-4dcb-b841-08d367729014
X-Microsoft-Exchange-Diagnostics: 1; SN2PR0501MB912;
	2:uI/daaJVmD2BEqkV8enGd+oE+UUHf0w4BSt8EAyYasLZ5Twx1YffMuYqT7BOF31OeiEWPesBfNR0DXQKVbn0Rz61A8JMST+MOfFqxyu9AEEKKVigBNTLBW2YptvFNDim9zVnmiQvvhBSRqYIlSTmp6Lnu2AhA76w0uYeTzYuV5f2aIVBcy8OXALPw65/lMQ3;
	3:KDLpeg4lQhgjY8y2ZaRMYZuP3ZJjICz4iw8GjDC6LDnWWbseQDeI9b/z5QEboT9U12w/EPei6dKIVd9vEPhZLPfpJ2IFi5r00Gs6wr9B3YlEAMvtQyMvd+U55BCaYNLuyemjEpzXRFoh4gIHtBFdc9pooH60PZmFP46jDvHwFy+smBiHc+hhUb4HyGBXbNl9BS6nBBL3UYpZn5x0LYsAzi7MqS2DeHGGWZFWq6HCrxO4GfWR8FgZwc9lecTB8YZK
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:SN2PR0501MB912; 
X-Microsoft-Exchange-Diagnostics: 1; SN2PR0501MB912;
	25:VAlxx20f9sJk23lGCGvX0pm/IXl9IAev3VCZCpbLPwoDUNL3kj5N+Wi8a8YOZgVGlhswJqLEy0Q+wTm1XQIHdkwDD38epnKLt6jbHJll+YLdVztMWr5IeUXiU1FuUu06uO0dcDn3Xxl0nw9abFyf8Gqx+jt8euSEXMl3ZWZLdEitUJg3zJr1g0wkRu38eHKc/VhsurLuEIsZ6AlaOO6eTvOfaqFm95ZghLatmyrAbG/NY4RW+6z00Ydye2Zxru0U1kDJ1yZt0YYMnD8lNb3+hm3DMIPVV0cO5fD8UTUXsjhVhlvcunPN9B7hnSt5J5vMEoErr5hBKIvIv45xu+3EBhHzA/CPz/jm+5I15AU8TZpBTsYg5OtVnz+60Zgsm/Gu1XLgBgWgBYzOFaVtDLwAFkyqPgl34RkOx1E6toi8HnkIrv3/75TsKRJYlcTI89/hkh80zXnpUJt77ZN40B5ddcXW2/PpNwDcB0kTWpoRPfNFqTY5hnFNv7mwPxepkHdE9C1+IR4o5cxwitPCZAKps8R5Nij8iw6VAWWOJmBbCfb7J6yyBrxaFp08ZNJcK5ViujMEpJ7Aui+EDhQuhb+8jkvXJnN3SkUa0durygwB67yGA41Z44h1VUNuiwuPvaG7mNs16SvGv3IiSvRrgDxmt1OWkVVmNoH+zdGjHo+buXe65nyzCPl7YNs3CbHzEPRhYp1Y0guHiGrju3GekhKTH/juYtnAUJOeyVabCGhiYhE=
X-Microsoft-Exchange-Diagnostics: 1; SN2PR0501MB912;
	20:dgUnJSRrk4IvmSmjwSREtYBZVB8NynmMfOMUADWKeAp9cKRHZmn5TZfZtB/en7KJ6KII2f8luhzab9GRz1un7Eg9KeOAoCjLU7wwrcxiHJLw31dvghdVjqZ1WfCcE2Q9IqqyaXLhyk2r3wSE/YxneV0Q4v+mxrH4SIycAIKrrabR5zhGF2Y+77fkIwXzx8N876h+YzUATU6VoXbuOPXr1JVuA2uYaSDMwEUIFYYYwkBuwaHZbqZ/anazVztPb7lrWhA1Vb/0hyNNmxO0oCHC9f16ZK/n6Q7230hPzunlIJzg9oKWQMVXnOEdGo9lkOZm/I9iiSz4xY+s5pQTpNzzaf6jOdpDjQl0teHUkLbp9rWKM358aG4gthi7gdnohf0FdtUKE2jgoXWYwYOwqpGbzA4uw6hXkmis4zRTcj8P1W8Kx1fFqZvOTFuqPar3tN5X8udTjIOYXfFjOvOrSJtzfAH9inxvgTUnVNNIkyxtpcOO1BnYB6fcq5FOJeLplk/B
X-Microsoft-Antispam-PRVS: <SN2PR0501MB912AB7D7DB294C60D3872D3AF6B0@SN2PR0501MB912.namprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(9101521026)(601004)(2401047)(13023025)(13018025)(13017025)(13024025)(13015025)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:SN2PR0501MB912; BCL:0; PCL:0; RULEID:; SRVR:SN2PR0501MB912;
X-Microsoft-Exchange-Diagnostics: 1; SN2PR0501MB912;
	4:bJ3IqhYSu8ZXDBm2vk51O1izD+TRoFgERW+XGRpHvY0a7wzKW2XyDdwkpHfokbYr6ZoA3ZNc73YzYbEuUsbg2oLAX93KTq3B1YOINecaKEDzHn4/6aUk7ZKTb7128gn6NSxk8eFWHdHmfosNO7OMlmXcveaw8sp6VqMMeU03p+Z5p2HxqTRgR1xTSgJaiVZZFhAoFWEuzSrlDBWTCiKAQQMa9MIMhEBoeShqhWaznNTvVlE53mCcwCfGc53/qMSbYmQbyTw0HUo+QUDeCHbQQeMSsJ+sTxzml71o/3xxBTPmG7r4a6qkVS8w9SsrbQ4yZ/BWD9rTHHt3zVodfNE8rntH7X9p9sF0thHrwgekxCOko+qAhntYtxtXpF9QKNgB1wtzOmm7KJtcZcyk7EaGF5Vn3EjM/84JxIbIq/xH7poFLLApUJ1TQJhSmwxYVuGInTa8M6FEfNHxD9hopaPIR8ZV9xGzYTrU22Mwxf+QbQY=
X-Forefront-PRVS: 0916FC3A18
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtTTjJQUjA1MDFNQjkxMjsyMzorR2s2TWRCZTIrSjZJcEdzekdRQ2tDUHlR?=
	=?utf-8?B?SGt6VWxFQjJkUlcrL3hxT0YvWnhtamhySkJmaFE2bS9XTVdFYW9ZR3FnYUVG?=
	=?utf-8?B?bTYxY0F3eXpDUGNjWWhzbVVxMDlPN2xzUVBEUHU2L1JJK3dQdnl6Y3lwdzlP?=
	=?utf-8?B?azJaVjg5SCs4bkdid3JUd1BZc2VsYWJDSTh1T1dWT0FSdkJNUE1Bd0NaTUVF?=
	=?utf-8?B?K2NYWURqaklCVElobWp6MVFaVC84ZndHVDh4b3Q5RHhZYUZPdWFVUGk0Mjdq?=
	=?utf-8?B?c3A5MHFtRTlDc25YL0dBeThFRjJZSm1pdHY1b1h1dUlzYmRpYk95OCtzOWxS?=
	=?utf-8?B?dUVmWkNoZ2hnUmREbUlxY09kRG5QSnlNRHl0ZlJRVU1rU3M3ZWltUkJVU0M4?=
	=?utf-8?B?Y3piVkdXU3I0S2c2Q0pteURFaDVrUTE0MjFVVjBmakppd0JKMnRCMldXYllW?=
	=?utf-8?B?eS90OU9XMUcxS1Zva29aMFA4ZjVmMGtPUGY3Z3B2RWx5V0tUaVFMOTg4MW5u?=
	=?utf-8?B?MTdiOVNRWnB5cEZ3Z2F4OGJRN2ZEKzl3SUs5b3ovNUNFL1dBekhuMGRCMkZ2?=
	=?utf-8?B?UkFnT0VXL0kycUl2T2dJRVVDSWU1N3NCWHBKSWUrb2ZTZ2tWamlMUmJRR1lk?=
	=?utf-8?B?T3BtK1NSS0VyR0Z5T2hxQU1rbGFVRS95UnFpN1pxYVdaaTliOWhCczBZSTlH?=
	=?utf-8?B?U1dxZG1VdnY3enAvT045aFBPSGJZek5wcWZ1bVVIWTBod1haeklaTlJoQmdv?=
	=?utf-8?B?RTVSWFp5L0lSYkw4NEhidktkWGFPcjhjQ3RSaUd3Z3ErcEdaeVpGQTQxcmoz?=
	=?utf-8?B?UzdzUzB1MTcvRTlIQWppR21XT0Z5M2lPY0xpakt0NHdBeFZkRWRXZ2w5OGhJ?=
	=?utf-8?B?ZjlPb2tIMW5CUlZRcmpscy9GWjFscjJQdVg5eFdKQnI4UWFVWmdrekROalJw?=
	=?utf-8?B?UnpjZ3Uza0ZDN2txd0p2MnhHOWU2T3lMc2N3cTRmQnJHZUY0UWN5ZGhJV2wz?=
	=?utf-8?B?eFU4V2xiSkJkVnRKekRGeHY1T0xZNzh3Q1BqcjVVcUhhYVlCVkpScjJPZHNp?=
	=?utf-8?B?c1NKYXhTNGZubms1eCsyT1I5MEthdk9JeHJIMU05MWJiS3RXZVdIT2RxZFZM?=
	=?utf-8?B?dHM2SEFjeVdSZ3J6OExQbjlyL3FwVG1ZTW1KdUZPalEyMXFoTDhEcytFSFpq?=
	=?utf-8?B?bW1sK3E0Ymtnb0FHclU5Z3MvZUZHYStvbGh3SDZPUGNyZVN3K3pJNUpmZ3Ni?=
	=?utf-8?B?dGx3Q0VEOUI1NHBjM2g3eDljTzAvTU1mQlYvL0NqZW1qNWdINFNVZ2VkYms4?=
	=?utf-8?B?VWJ1QkdFUzl5d282TkduWCthUldrTHlhelpiVzRpL1dRZllwZnFwN1lYVGtt?=
	=?utf-8?B?L1lWMVFxdnBKVGVOem9jaDlmOGhnTEdPRUlud0xMR01RZURQOXF3Z0hUWXJM?=
	=?utf-8?B?amM3ajAwcDB4YlhLM0NYQ0ROaWd5ZUN2VU1wZUVZVW9NN1Q1MlByN3QwRUtJ?=
	=?utf-8?B?ZXYxTkhyK3ZCMFZNVjZycDM2aytCVWtPWEVwc25lVTExVWlsZllndGcyZndz?=
	=?utf-8?B?bHFGekEvYjA5NmZoRzZKemJZOS8xRWVsV1hEU0Z5RFd6cmZObU4xSitSZ0lZ?=
	=?utf-8?B?N0JlMlIxanN1TVcwczJIQVFUTHNHQ3BjRFpqRlVMcHZERXVNSFJGTVR5QmhT?=
	=?utf-8?Q?c+j+yDvrVDfqnHuiQm8=3D?=
X-Microsoft-Exchange-Diagnostics: 1; SN2PR0501MB912;
	5:GcVxpQyd7/ayyU0iCtrw+WHnL8/cE26amaoNrewtAHYLaYTaQMaAzZyK5f+RW8jyfbGK9dijD9BCWVFANGj8TVqWfcTMwtbO+akW508QUMQkHFa3pTuUBAsdnyYiIIb5XWazvXxOjMDXjgFZBvkBBQ==;
	24:hRYrYD9PtSTxrp8D4faaqNzVgTK+KcXjQgV6imkrX6ObMDTQf14BVz3dJ+07JWrUb9G06NWojDlOyiqxbqFH1R475kAoJ+Tg3wbdesSKNj0=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: irisys.co.uk
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2016 10:16:52.8241 (UTC)
X-MS-Exchange-CrossTenant-Id: 937985d5-3f80-4fc9-be29-0bccc11e8b77
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=937985d5-3f80-4fc9-be29-0bccc11e8b77; Ip=[192.65.42.18];
	Helo=[mx.danahertm.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN2PR0501MB912
Subject: Re: module do_configure depends on kernel .config and headers
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
X-List-Received-Date: Mon, 18 Apr 2016 10:17:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQnJ1Y2UsDQoNCkZyb206IEJydWNlIEFzaGZpZWxkDQpTZW50OiAxNSBBcHJpbCAyMDE2IDE4
OjE1DQo+IE9uIEZyaSwgQXByIDE1LCAyMDE2IGF0IDEyOjAyIFBNLCBWYWp6b3ZpYywgVG9tIHdy
b3RlOg0KPj4NCj4+IEkgYW0gdXNpbmcgYSBtZXRhIGxheWVyIHByb3ZpZGVkIGJ5IGEgU09NIG1h
bnVmYWN0dXJlci4NCj4+IFRoZXkgaGF2ZSBhIHJlY2lwZSB3aGljaCBzZXRzOg0KPg0KPiBXaGF0
IGJyYW5jaCBhcmUgeW91IHVzaW5nID8NCg0KRmlkby4NCiANCj4+IGluaGVyaXQgbW9kdWxlDQo+
Pg0KPj4gZXhwb3J0IEtMSUJfQlVJTEQ9IiR7U1RBR0lOR19LRVJORUxfRElSfSINCj4+IGV4cG9y
dCBLTElCPSIke0R9Ig0KPj4gDQo+PiBhbmQgdGhlbiBpdHMgZG9fY29uZmlndXJlIHNjcmlwdCBj
YWxscyBtYWtlLCBhbmQgdGhlIE1ha2VmaWxlDQo+PiBleHBlY3RzICQoS0xJQl9CVUlMRCkvLmNv
bmZpZyB0byBleGlzdCwgYW5kIHRoZSBrZXJuZWwgaGVhZGVycyB0byBiZQ0KPj4gaW4gdGhlIHNh
bWUgcGxhY2UuDQo+Pg0KPj4gVGhpcyBzb21ldGltZXMgc3VjY2VlZHMgYW5kIHNvbWV0aW1lcyBm
YWlscywgd2hpY2ggSSBwcmVzdW1lIGlzIHRvDQo+PiBkbyB3aXRoIHRoZSBvcmRlciB0aGF0IHRo
ZSBvdGhlciBlbnRyaWVzIGluIHRoZSBydW4tcXVldWUgYXJlDQo+PiBleGVjdXRlZC4NCj4+IA0K
Pj4gSSB0aG91Z2h0IHRoYXQgdGhpcyBtaWdodCBiZSBiZWNhdXNlIHRoZSBkZXBlbmRlbmN5IG9u
IHRoZSBrZXJuZWwNCj4+IC5jb25maWcgYW5kIGhlYWRlcnMgaXMgbm90IGNvcnJlY3RseSByZWNv
cmRlZCBpbiB0aGUgcmVjaXBlLg0KPj4gDQo+PiBJIGFkZGVkIGEgLmJiYXBwZW5kIGZpbGUgdG8g
dGhlIHJlY2lwZSBpbiBteSBvd24gbGF5ZXIgd2hpY2gNCj4+IGNvbnRhaW5zOg0KPj4NCj4+IGRv
X2NvbmZpZ3VyZVtkZXBlbmRzXSArPSAidmlydHVhbC9rZXJuZWw6ZG9fc2hhcmVkX3dvcmtkaXIi
DQo+Pg0KPj4gQnV0IHRoaXMgaGFzIG5vdCByZXNvbHZlZCB0aGUgcHJvYmxlbS4gIEkgaGF2ZSB1
c2VkDQo+PiBiaXRiYWtlLWxheWVycyB0byB2ZXJpZnkgdGhhdCBteSBiYmFwcGVuZCBpcyBiZWlu
ZyBhcHBsaWVkLg0KPj4NCj4+IFNvIG15IHF1ZXN0aW9ucyBhcmU6DQo+Pg0KPj4gSXMgJChLTElC
X0JVSUxEKSB0aGUgY29ycmVjdCBwbGFjZSB0byBsb29rIGZvciB0aGUga2VybmVsDQo+PiAuY29u
ZmlnIGFuZCBoZWFkZXJzPw0KPg0KPiBUaGUgLmNvbmZpZyBpcyBpbjogU1RBR0lOR19LRVJORUxf
QlVJTERESVIsIHRoYXQgYWxzbyBoYXMgYW55DQo+IGdlbmVyYXRlZCBmaWxlcyBhcyBwYXJ0IG9m
IHRoZSBidWlsZC4NCj4NCj4gVGhlIGhlYWRlcnMgYXJlIGluIHRoZSBzaGFyZWRfd29ya2Rpciwg
YXMgeW91IGhhZCBmb3VuZDoNCj4gU1RBR0lOR19LRVJORUxfRElSDQoNCkkgaGF2ZSBhIGNvcHkg
b2YgLmNvbmZpZyBpbiBib3RoIFNUQUdJTkdfS0VSTkVMX0RJUiBhbmQgDQpTVEFHSU5HX0tFUk5F
TF9CVUlMRERJUi4gIFRoZXkgZGlmZmVyIG9ubHkgb24gdGhhdCB0aGUgbGF0dGVyIGhhcw0KQ09O
RklHX0xPQ0FMVkVSU0lPTiBhZGRlZC4gIElzIHRoaXMgbm9ybWFsPyAgQ2FuIEkgZGVwZW5kIG9u
IHRoZQ0KY29weSBpbiBTVEFHSU5HX0tFUk5FTF9ESVI/IEkgdGhpbmsgdGhhdCBpcyB3aGF0IHRo
ZSBjb25maWd1cmUNCnNjcmlwdCBpcyBjdXJyZW50bHkgdXNpbmcuICBIb3cgZWxzZSBtaWdodCBp
dCBkaWZmZXI/DQoNCj4+IFdoYXQgaXMgdGhlIGNvcnJlY3Qgd2F5IHRvIHJlY29yZCB0aGUgZGVw
ZW5kZW5jeSBpbiB0aGUgcmVjaXBlPw0KPj4NCj4+IFdoeSBpc24ndCB0aGlzIGRvbmUgaW4gbW9k
dWxlLmJiY2xhc3M/ICBXb3VsZG4ndCBhbGwgbW9kdWxlcyBkZXBlbmQNCj4+IG9uIHRoZSBrZXJu
ZWwgaGVhZGVycz8NCj4NCj4gSXQgcHJldHR5IG11Y2ggZG9lcywgd2l0aCB0aGlzIGluIG1vZHVs
ZS1iYXNlLmJiY2xhc3M6DQo+IGRvX2NvbmZpZ3VyZVtkZXBlbmRzXSArPSAidmlydHVhbC9rZXJu
ZWw6ZG9fY29tcGlsZV9rZXJuZWxtb2R1bGVzIg0KDQpJbiBteSBGaWRvIG1vZHVsZXMtYmFzZS5i
YmNsYXNzIEkgaGF2ZSBleGFjdGx5Og0KDQpkb19jb25maWd1cmVbZGVwZW5kc10gKz0gInZpcnR1
YWwva2VybmVsOmRvX3NoYXJlZF93b3JrZGlyIg0KDQpTbyB0aGlzIG1lYW5zIHRoYXQgbXkgYmJh
cHBlbmQgaXMgYSBuby1vcCAoSSBvbmx5IGxvb2tlZCBhcyBmYXIgYXMNCm1vZHVsZXMuYmJjbGFz
czsgSSBtaXNzZWQgbW9kdWxlcy1iYXNlKS4NCg0KVGhhbmtzLA0KVG9tDQo=

