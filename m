Return-Path: <jonathon.a.reach@delphi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C249FE00BB7; Tue, 12 Sep 2017 11:34:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [69.195.251.241 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 615 seconds by postgrey-1.32 at yocto-www;
	Tue, 12 Sep 2017 11:34:41 PDT
Received: from usflmia-meg1.delphi.com (usflmia-meg1.delphi.com
	[69.195.251.241])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9700DE00A39
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 11:34:41 -0700 (PDT)
Received: from 10492-US-DLP003.delphiauto.net (unknown [10.201.250.15]) by
	usflmia-meg1.delphi.com with smtp
	id 496b_bea6_df00c960_60f4_41f5_8cf6_a381e3caae3d;
	Tue, 12 Sep 2017 13:23:02 -0400
Received: from usflmia-gw2.delphi.com ([10.192.117.25])
	by 10492-US-DLP003.delphiauto.net (8.13.8/8.13.8) with ESMTP id
	v8CI29xb012581; Tue, 12 Sep 2017 14:02:10 -0400
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02lp0080.outbound.protection.outlook.com
	[207.46.163.80]) by usflmia-gw2.delphi.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-SHA384)
	id 1277_9fff_ab1f40ca_abc6_4d95_a42b_e3cf6be1d17b;
	Tue, 12 Sep 2017 13:23:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=delphi.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=+LwNjz2lNKZc+ne50cfTzpq9dowILMDU3UOkIPRrApA=;
	b=pB6F6mA2aSxMxcBUZKLKnz/UM7SKyI/H3935Wzkm17KSJs24XpTxQFDhg8L+nPy03kEO0i0/7ZrmqbehI6tBot1WVXXz/5Noj1PWewF0XjWkda6JXWXdwiOIL6U4Bx6EThi5D7ISP3ZuNULFnMbWvfX/BzavXU84fd4uh9SiDFk=
Received: from SN1P160CA0002.NAMP160.PROD.OUTLOOK.COM (129.75.111.208) by
	BL6P160MB0001.NAMP160.PROD.OUTLOOK.COM (129.75.113.84) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.35.12; Tue, 12 Sep 2017 18:02:08 +0000
Received: from DM3NAM03FT021.eop-NAM03.prod.protection.outlook.com
	(2a01:111:f400:7e49::207) by SN1P160CA0002.outlook.office365.com
	(2603:10b6:821:8::16) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.35.12 via
	Frontend Transport; Tue, 12 Sep 2017 18:02:08 +0000
Authentication-Results: spf=fail (sender IP is 206.191.247.212)
	smtp.mailfrom=delphi.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=delphi.com;
Received-SPF: Fail (protection.outlook.com: domain of delphi.com does not
	designate 206.191.247.212 as permitted sender)
	receiver=protection.outlook.com; client-ip=206.191.247.212;
	helo=017-smtp-out.delphi.com;
Received: from 017-smtp-out.delphi.com (206.191.247.212) by
	DM3NAM03FT021.mail.protection.outlook.com (10.152.82.187) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.35.14 via Frontend Transport; Tue, 12 Sep 2017 18:02:07 +0000
Received: from BLUPR6801MB0049.017d.mgd.msft.net (141.251.18.21) by
	BLUPR6801MB0051.017d.mgd.msft.net (141.251.18.23) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.35.12; Tue, 12 Sep 2017 18:02:06 +0000
Received: from BLUPR6801MB0049.017d.mgd.msft.net ([141.251.18.21]) by
	BLUPR6801MB0049.017d.mgd.msft.net ([141.251.18.21]) with mapi id
	15.20.0035.021; Tue, 12 Sep 2017 18:02:05 +0000
From: "Reach, Jonathon A" <jonathon.a.reach@delphi.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-selinux] krogoth support
Thread-Index: AdMr8C5jo5uW0H90TpGV9PAeKdgurw==
Date: Tue, 12 Sep 2017 18:02:05 +0000
Message-ID: <1f6bdd0904f146ee9c3d1aae070e00b6@BLUPR6801MB0049.017d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.18.4]
x-ms-publictraffictype: Email
X-MS-TrafficTypeDiagnostic: BLUPR6801MB0051:|BL6P160MB0001:
MIME-Version: 1.0
X-OrganizationHeadersPreserved: BLUPR6801MB0051.017d.mgd.msft.net
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:206.191.247.212; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(39860400002)(2980300002)(1109001)(1110001)(339900001)(189002)(199003)(86362001)(66066001)(66926002)(4326008)(733005)(5640700003)(512954002)(8676002)(99936001)(97736004)(478600001)(356003)(50986999)(54356999)(86146001)(1730700003)(81156014)(7736002)(69596002)(81166006)(861006)(84326002)(8936002)(85426001)(2900100001)(53936002)(2501003)(790700001)(2906002)(22756006)(3846002)(6116002)(24736003)(105606002)(102836003)(108616004)(260700001)(106466001)(68736007)(5660300001)(9326002)(9686003)(54896002)(54906002)(2351001)(6306002)(7696004)(55016002)(6916009)(189998001)(54556002)(33646002)(67866002)(236005)(606006)(316002)(110136004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BL6P160MB0001;
	H:017-smtp-out.delphi.com; FPR:; SPF:Fail;
	PTR:InfoDomainNonexistent; MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; DM3NAM03FT021;
	1:9+a7Q+Nt5ME/k5eDnSxpMl1fKg5/bSViZNt1OFjMGdicFHAdiDovjlGTw5M+OtJR6YWl6ZRab5xwqcRJV8DZeOwrmtFmj8lekwQrhIsRGnCeNtVpeqEJ9o1edEIGRHTu
X-CrossPremisesHeadersPromoted: DM3NAM03FT021.eop-NAM03.prod.protection.outlook.com
X-CrossPremisesHeadersFiltered: DM3NAM03FT021.eop-NAM03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id: b0fcbde2-4db1-41ef-7022-08d4fa086246
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(300000502095)(300135100095)(22001)(2017030254152)(300000503095)(300135400095)(2017052603199)(49563074)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:BL6P160MB0001; 
X-Microsoft-Exchange-Diagnostics: 1; BL6P160MB0001;
	3:vnh8FBh/iVGfWeizzk+ZAQR8Y8nko5mt1jct2DiDO6zSRhfws3KNzbKUVMvnC6MVIymlNb+38OnshW8H1U69lB/HlexhruzoRNfz3aZBSWIny3b7Ts61nYhla7FKQbpQ1dBkK92PlhPJw3wdb+83hVF2W+jdJF2htnBfjtFwzKVZvzKoLWNgWpLTxrAeN7s3Sb/L1j4doUQvLHWTseMnNi0dbn6GVnzE0pG+mZpNRLa6jyUexYW7qCgQZCl8NCtWbuuidDhEqfdUxLQus2rDd7vzP9s5hB0rYg2/wlNtX8ZjDrNSKjzAXOm9tIOhF3jNYGm3BjrndlWZ3vunsWxBeWDL9AhMLmzFp3vOIOHX4Eg=;
	25:Ii6NI0m9jQ3GpFSb5G1DzAwqWtHAaTFHPqYjoC8h6TSByMlf6wj7RJnWUIudZ4B6089Eg+dbDSy0ZzvWHi6h7/Ae/GUpVEAayNRAuUhOufQhA+AH19+/D5a+JzT+18dKT0DgRGK/x5V33pxMkmYasV2P5lcVdytdcLGrhvIoGnI/qKhHv3+QubdXwi+omjvwaGLCy/JJ9OSV9zpUTw1THBZhZLMlpaR/o7k+iP8a4Uw2j5Z++WWpru9xyqnUJElo3Wr4QQLn2hHXmQwtxyS/Ks3KhViEOeCuxpmZ3CDU1a8eztjLDswXp62YHTFKU1M/AIcu5TUtxdmuMP6B9jbSmA==
X-Microsoft-Exchange-Diagnostics: 1; BL6P160MB0001;
	31:5w0BuIPEd5z+UcUknt5PpV1/UC5gvEBryfnEQxaseuJeieY+wR5iOEES/5PvBLjFvAk+Dc7eiBfIAksDsr801Ql6SZQA6rNU6Nxy1TmsFeFMhzBWenTE1gqSXowLdDCfOYT+u+XSNML3FKbNR8x6BUAVtTWGOjBUNoPv239oIIWHSFyEAUGitL31+8a17jmJIHuggGnw+jnr+oNx3R+9Aez2wNVV96EefG9hrtYOYic=;
	20:TwEPWqW5ISBwsgp6Mb4mpSiAt/DbiUOy8/+hr+GL5v/6l3iZ0/QhbKClviGKswrKqoL0wv10Xj1YiBpAvxYnOvdJ+bfJmJYajtaepj74+qOPhIUcjC7O1V5aVpIGl+1TYw7ZCNwzvDS7CV/bQeLpr3z2zZnBV4TCTuxukYSGHxqtPaOU1SnpDXHDYMO1M57TjNUu21kM8Yc86mfiVaKszvkFM2y++ncByGTFdN70iK8ypmKRsBmiHByE9rrnlxkqYhkmFHlPj1GthIiPyZBeswHJbISicUu1FkovTQy0RVhEnR02rxvGmxYBvoZHXS/biEUrD2HmiIS65KBd6lR+v+FmHjRefKqGtBXkdAt7F5DpdIO6i56GtVr5MEwELgtp7dIAE1dZxLlLUy9aMXikG98L7yi51E72vO+JFitOttbwAlpgUhIHRqWSxVRVz96NFRrSBmopFY61z9RuCf9Xgk7iJx/gqVqPYFhuxH/z5aCYvHzZfI9s99CNED8xPRhR
X-Exchange-Antispam-Report-Test: UriScan:(182358108922573)(192374486261705)(21748063052155); 
X-Microsoft-Antispam-PRVS: <BL6P160MB00013CC3BED187A71ABA726AA2690@BL6P160MB0001.NAMP160.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(102415395)(6040450)(2401047)(8121501046)(5005006)(3002001)(93006095)(93003095)(10201501046)(100000703101)(100105400095)(6055026)(6041248)(20161123564025)(20161123555025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123558100)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BL6P160MB0001; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BL6P160MB0001; 
X-Microsoft-Exchange-Diagnostics: 1; BL6P160MB0001;
	4:/VIuHOyTRfy34AI4RtURBJF5VVAp7Xx8EvOxCMWZ5qFV0noWnWsfM1+ulzcGLo02kcShurWLQLlbhZSZyl4l1wKjLM0O71iYxlqe/LJCy4sFb2VYHCYTPywxohibLT0q3GAWWvNiF2Tt2GeHytADndC2Xjix0VmW7eil4wczIcbgbhT87g5WkeeIn2ydX1qicm+wvL33kdopdcKO2Y6j49s+1FgPNXTqpEK3uo9ZVKAQ2ZONpq0uw0VapgLWV7FhAAhBqatvx8TiUpuuZ0Sgw5pTQI7Ubk4u2I9ncsR4f+mQfRBFPCFPdv7s16Z8e5e9qSdidF0Ojt+wMGIs6W+wMZT7bWIEYkSSxIM9yZGW6xy5gOdd39NLcCQscqAAvqPr
X-Forefront-PRVS: 042857DBB5
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BL6P160MB0001;
	23:djech3UvtItn4nbqj/l7ZVtDYV5hSIoEAz/5e12VZ?=
	=?us-ascii?Q?MTKQxCyIS1fb5T8hWhkoWZtmH6kiW4DdBc4Fw0IV0tUPyjwjsLPkWN84vfO+?=
	=?us-ascii?Q?T6cf7DiU2c+XpZv/vrZ6cOPQQvRV1Z809wIl9lAnl34yheWpyLGbfkPhUB5v?=
	=?us-ascii?Q?jhl8NzAq43Ruap1BANhGZYA01GOVgkCeuXfh7BaEjaeg83SE0a1ghOpdLqRG?=
	=?us-ascii?Q?8DFoAUkqNzePoN4mF/GB8WiULW2qJCfcwyZ6cJKDuw0Dvg7YOeljY0blo/SB?=
	=?us-ascii?Q?5Mutc6exJNaNXkJrfysRFTQxpwBs4419j78TFSbLCoYYIOYZz844GohIq285?=
	=?us-ascii?Q?RoELh03U8X48XcWYnYgvwJGF6M4C5L8eM05hsD4ej91f3UINTjT6jTeqGCBF?=
	=?us-ascii?Q?hwMLgGtyLP6MqCy2+91OCRVlJva28X1ReevvrAG3sKg12SKbvdJOOwXOiazs?=
	=?us-ascii?Q?/a6VNQqjliFvkCbA6cTphqVZlCEPLqrvyx2ndKBaXtB4IT6Z03lxIx+hVO+V?=
	=?us-ascii?Q?SlWfUaWX59/I0x0cRvk/sLDSWg+vEVem/JVkHyyI0asI7F3Q6t6wZhTS8WUm?=
	=?us-ascii?Q?l9TX9M4lZgePdvIMnDg5/4CE6fgNYxHS96gv0Mahve/w7md3lUhYxR7JTFJK?=
	=?us-ascii?Q?va/WN+wrY8Di6sPxs0ogCj8jJf87/jEFT8NeH5z8gYcJWotbGAgcdzFCKVrj?=
	=?us-ascii?Q?hraozQVxscsgWlCBA9FfCiXYHsoals2amGsP/smTphpgyqos78YBUWlH9Y2n?=
	=?us-ascii?Q?0KD1t4O/ZJMd80bdWUuA/vVgiCJ22LUGEL7lrv4eWFrwV2iZATOKusHhJyfh?=
	=?us-ascii?Q?ZUFc7t9IRbLYQR+dNB3IbhAbFWO35XHHAPoC20HoYwZTt8W5KsButIPUS2NZ?=
	=?us-ascii?Q?Asmg7VuL3RRJhEjWudDp3+YDzJLYTupeP0ufGey3eNw8S6uGhQwj9h91hdfD?=
	=?us-ascii?Q?DsbxrG68teyEP4kTBxTvZ6iEXmtxqPOzFw9WSO9z9ib1V6hwN0ckUEJ27XuQ?=
	=?us-ascii?Q?XB32Xp45pmMzQaW9Sa/BgGpuqIXF/mhwRfn94KtL5mGCK8Q8FcW3waNgbBY0?=
	=?us-ascii?Q?9JQs2mT/A8u9hRWgy0v/1oA0hbuIycl/TMMtvYMq4TCtEiO5eJStnhBQNAP7?=
	=?us-ascii?Q?ESE1/hnBjtUcMavf4FfZtHeqMzBIriaKlZpbDrKHxfoKKSkQ2XY72GTZWpcE?=
	=?us-ascii?Q?H0CeNBrCJknXZMbaz8oYxdIPWlHWpuYLKP+blpU6RuQSlvbgWT2/TZLS1OTS?=
	=?us-ascii?Q?RqYdG3UVRGGXvA4O/9FYCkwB1mepHVOwD3bnnPIojOWEXkNYyoJ78cRhy6Ty?=
	=?us-ascii?Q?54RrLSRr1V5UBACu3ES/HOz4xPYL3G3bd0rh9n2XrxjROrX9W87n9oozu6KH?=
	=?us-ascii?Q?oSv3jRbqYS0hJQ+hH2GerqiKDhsAC1oBeb7TVW3RJLYsZmOJtvhFjgulpcoe?=
	=?us-ascii?Q?n3at8d00UIR5xP5m7TzmobjeKenJrs/SqCKXaduFTE1sQKxG7RP?=
X-Microsoft-Exchange-Diagnostics: 1; BL6P160MB0001;
	6:dXHKte5Yw6LeeRyCiJ7OLGofXGYst95GEE7dTFel34FxSPc5dR+7iCoENmxgsf5rsJ5DOF1GcOrLiSkGRUhIWnnCk3nMtOoHERgvkhpvj1JdwmD0fMUFJcHAwcrxHjriMbxMkPU2J0RZqhosVPjYNFrUMu7WVOLHZTiHW3wrBIgKmgzj6f1Kn1PeuxEpXCHSai7YPekbQcY3LwzYh2MghXQhaiUHcrm+E5Q2heRcRuy/KdD1tvfNJRW8eonqhKh54RHtaAc7+zLH40IVUs86OPl+DhVFAVy6MoFTS4P/Ywfb94/WAh/4Sedi4ydanTE1Z3HSC2FXlhcg50bE/Q8GVw==;
	5:FbyKiauCVIXrqQmcxwGDP4rN1ktMPYLDDTNyeFulIh1i4rgZKde8FzF8ztqz8KRkBVVnwjH6NIw2J7QgbYnHgMJ6+3YNV5iXq/zafbomYjn7wlz1XP1SWeft+CTZqeJco37zi8cDmOftbCb5DbJgNA==;
	24:YKOM0kdNaUjXGOVkx0LKzH0yldf9iofCwkC1uy5y2VSeRk3hqX1X9fdpgiIhhl0BvRqJ4h1hzh+lX4wcFxufiHO5G83SfH2USj7f6h969MQ=;
	7:Idc73ScHc4pnZ95/bLS5vYlcK9iBlI9WxE3vmNAJ+XEUWpPVT178FN4SoyfU2kZjIYK7kbPFdtg95VVVXBnCaL491tI65+yrcaCBMvSvAidcGHuXEd5cpmrx8Xymg105wFp3nSTlagNkA6bRzFSx5QkPMTKpgZCDIt2UCnxNr+KstLXq4BeEGnOpqMc3KQ7XJbAX0l8H/UjK14gmg17iJagxoCGwB0VJ9hIJf4nhjlY=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: delphi.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2017 18:02:07.4829 (UTC)
X-MS-Exchange-CrossTenant-Id: 1d57d21b-62d9-4e6a-b97f-39c9a7dcea11
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1d57d21b-62d9-4e6a-b97f-39c9a7dcea11;
	Ip=[206.191.247.212]; Helo=[017-smtp-out.delphi.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL6P160MB0001
X-RCIS-Action: ALLOW
X-MEG-POLICY: ALLOW
X-Mailman-Approved-At: Thu, 14 Sep 2017 13:41:14 -0700
Cc: "Krzeszewski, John T" <john.t.krzeszewski@delphi.com>, "Bailey,
	Kirk A" <Kirk.A.Bailey@delphi.com>
Subject: [meta-selinux] krogoth support
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
X-List-Received-Date: Tue, 12 Sep 2017 18:34:42 -0000
X-Groupsio-MsgNum: 37886
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_1f6bdd0904f146ee9c3d1aae070e00b6BLUPR6801MB0049017dmgdm_";
	type="multipart/alternative"

--_004_1f6bdd0904f146ee9c3d1aae070e00b6BLUPR6801MB0049017dmgdm_
Content-Type: multipart/alternative;
	boundary="_000_1f6bdd0904f146ee9c3d1aae070e00b6BLUPR6801MB0049017dmgdm_"

--_000_1f6bdd0904f146ee9c3d1aae070e00b6BLUPR6801MB0049017dmgdm_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I currently have a krogoth based project that I need to add the meta-selinu=
x layer to.

Does anyone know what it would take to accomplish this? Most poky patches f=
ail as well as compilation issues with kernel features that postdate krogot=
h.

Appreciatively,

Jonathon Reach
Cyber Security Product Engineer
Electronics & Safety

[DELPHI_RGB_Mar2013 copy.png]<http://www.delphi.com/>

5825 Delphi Drive
Troy, MI 48098, USA

jonathon.a.reach@delphi.com
+1 586.291.0692

***************************************************************************=
************* Note: If the reader of this message is not the intended recip=
ient, or an employee or agent responsible for delivering this message to th=
e intended recipient, you are hereby notified that any dissemination, distr=
ibution or copying of this communication is strictly prohibited. If you hav=
e received this communication in error, please notify us immediately by rep=
lying to the message and deleting it from your computer. Thank you. *******=
***************************************************************************=
******

--_000_1f6bdd0904f146ee9c3d1aae070e00b6BLUPR6801MB0049017dmgdm_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I currently have a krogoth based project that I need=
 to add the meta-selinux layer to.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does anyone know what it would take to accomplish th=
is? Most poky patches fail as well as compilation issues with kernel featur=
es that postdate krogoth.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Appreciatively,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif">Jonathon Reach<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Cyber Security Product Engineer<br>
Electronics &amp; Safety<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"http://www.delphi.com/"><span style=3D"fo=
nt-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;color:blue;text-dec=
oration:none"><img border=3D"0" width=3D"172" height=3D"19" style=3D"width:=
1.7916in;height:.1979in" id=3D"Picture_x0020_16" src=3D"cid:image002.png@01=
D32BCF.B61E9AC0" alt=3D"DELPHI_RGB_Mar2013 copy.png"></span></a><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">5825 Delphi Drive<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Troy, MI 48098, USA<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><u><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,sans-serif;color:blue">jonathon.a.reach@delphi.com<o:p></o:p><=
/span></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">&#43;1 586.291.0692<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
***************************************************************************=
************* Note: If the reader of this message is not the intended recip=
ient, or an employee or agent responsible for delivering this message to th=
e intended recipient, you are hereby
 notified that any dissemination, distribution or copying of this communica=
tion is strictly prohibited. If you have received this communication in err=
or, please notify us immediately by replying to the message and deleting it=
 from your computer. Thank you.
 **************************************************************************=
**************
</body>
</html>

--_000_1f6bdd0904f146ee9c3d1aae070e00b6BLUPR6801MB0049017dmgdm_--

--_004_1f6bdd0904f146ee9c3d1aae070e00b6BLUPR6801MB0049017dmgdm_
Content-Type: image/png; name="image002.png"
Content-Description: image002.png
Content-Disposition: inline; filename="image002.png"; size=3287;
	creation-date="Tue, 12 Sep 2017 18:02:05 GMT";
	modification-date="Tue, 12 Sep 2017 18:02:05 GMT"
Content-ID: <image002.png@01D32BCF.B61E9AC0>
Content-Transfer-Encoding: base64

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

--_004_1f6bdd0904f146ee9c3d1aae070e00b6BLUPR6801MB0049017dmgdm_--
