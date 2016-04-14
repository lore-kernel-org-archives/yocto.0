Return-Path: <Tom.Vajzovic@irisys.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30386E00E11; Thu, 14 Apr 2016 05:52:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.144 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5610 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Apr 2016 05:52:27 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0144.outbound.protection.outlook.com [65.55.169.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7103AE00931
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 05:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=danahertm.onmicrosoft.com; s=selector1-irisys-co-uk;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=7BdDTb3R2Qg1R8PNMsnxWzPHry/Zsv4RSfdH6r76O1I=;
	b=YxTz5uDZsu7aWYWMalTOmnvWnVRr15MDDZfS8tdgN/Eibfofqw9p0/RgC0wlK7fX15edhLR+gCk8O66K5sf06IYrS7ydedGmpMXrAQDR2Q47UQNEsQOZCgZYsGx76Z5U38fHuYLw/psuoMGK3acC2hJNBQPnE0DmiEYV0fnIjJg=
Received: from BY2PR05CA025.namprd05.prod.outlook.com (10.141.250.15) by
	CY1PR05MB2713.namprd05.prod.outlook.com (10.167.18.7) with Microsoft
	SMTP Server (TLS) id 15.1.453.26; Thu, 14 Apr 2016 11:18:55 +0000
Received: from BN1AFFO11FD040.protection.gbl (2a01:111:f400:7c10::194) by
	BY2PR05CA025.outlook.office365.com (2a01:111:e400:2c5f::15) with
	Microsoft SMTP Server (TLS) id 15.1.453.26 via Frontend Transport;
	Thu, 14 Apr 2016 11:18:55 +0000
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
	BN1AFFO11FD040.mail.protection.outlook.com (10.58.52.251) with
	Microsoft SMTP Server (TLS) id 15.1.453.6 via Frontend Transport;
	Thu, 14 Apr 2016 11:18:54 +0000
Received: from US-BV-EXC02-P.global.tektronix.net (128.181.11.8) by
	US-BV-EXE01-P.global.tektronix.net (128.181.15.45) with Microsoft SMTP
	Server (TLS) id 14.3.248.2; Thu, 14 Apr 2016 04:18:24 -0700
Received: from EU-EHV-EXC03-P.global.tektronix.net (193.221.129.150) by
	US-BV-EXC02-P.global.tektronix.net (128.181.11.8) with Microsoft SMTP
	Server (TLS) id 14.3.248.2; Thu, 14 Apr 2016 04:18:45 -0700
Received: from EU-EHV-EXM01-P.global.tektronix.net ([169.254.1.160]) by
	EU-EHV-EXC03-P.global.tektronix.net ([fe80::4483:aaf4:d19e:72dd%13])
	with mapi id 14.03.0248.002; Thu, 14 Apr 2016 13:18:43 +0200
From: "Vajzovic, Tom" <Tom.Vajzovic@irisys.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: bitbake -c clean for all recipes
Thread-Index: AdGWP2P4yV44qoUhQX+XxXJEoVenZg==
Date: Thu, 14 Apr 2016 11:18:43 +0000
Message-ID: <14E4216AB3B3624BB1E80BC692D0F413D8D3A301@EU-EHV-EXM01-P.global.tektronix.net>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.221.132.30]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.65.42.18; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(6009001)(2980300002)(438002)(199003)(189002)(2351001)(11100500001)(5001970100001)(46406003)(66066001)(55846006)(110136002)(558084003)(107886002)(33656002)(229853001)(92566002)(22756006)(85806002)(5008740100001)(106466001)(5003600100002)(6806005)(5640700001)(2920100001)(189998001)(2906002)(2900100001)(2930100002)(1096002)(9686002)(2501003)(86362001)(1730700002)(1220700001)(6116002)(102836003)(97756001)(50466002)(164054004)(5004730100002)(23726003)(74482002)(47776003)(586003)(450100001)(3846002)(50986999)(87936001)(54356999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR05MB2713; H:mx.danahertm.com;
	FPR:; SPF:Pass; MLV:sfv; A:1; MX:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD040;
	1:TlPgzOCdv00iTfan4wATz796XWwi4JXG+n/L7HgZAiPzGoFoBlLxVS35vK5bxt6/LWxdenosLcJsSOUgCK+u/qxLqx5Tbxcyb6BS8p9gJ1RTB1FNzkAiJacZGStD/yhMtRsYy1a+H6g4C41uy0hqr/khaBxljQPmDMIBw5YTSWDQvZrtQ+X25ryTwes6ycpZ5QLDdQygFsvFsjXIqy51YlmCtOjaWo9dRyCticjlblul2WONKmIg7RFef/pRfdjLBSd+9agXwVUmfzB5QnsFTBjrIO2gn13Js7oZadHZhhmVxrDBOVNPkHo+7fh/Tp3S9IdmkWmbvup4qIq+OdZMQV1iMUwgFuhOmduq+S7KGicxEtiZAspQO2NybG2fECcqfEJjZHlPgLmbZZzc/74twB1fdJQkDiH8rxQRkhDBXkErRPN6u+QypJmBChPLiVNCylAIOljKqa417HDfpwjSj5MEBsu4W9sKARLAsgsQJWPRtGuXBq/3FdgsOpsw+l6/
X-MS-Office365-Filtering-Correlation-Id: 91f7c2b4-60a1-4a29-7caa-08d36456909d
X-Microsoft-Exchange-Diagnostics: 1; CY1PR05MB2713;
	2:2lUNcMj/iAHHNj6nnC8N4ydTwWdbZS+Q1y4AphE4K73qheELBYgRZB+8ul4pnPRwBRcPBK73T11R440ddxQE7Ip1l71q8iJh6jb4JstbvOo9HkJ7LhmzKetWz9lXcJxXctrHrRe9bt26liqBWgdJDmbEVbg+/wRG+XeLkoxgaeeDS9/gV8dCcTYL7K6HmcGv;
	3:/Z4lrUr+v7iVXZndJB2U1JMhrcKOVuORnC+iGky0QWO8ZVPDNh6S9AfwOJfOIPl7Trh5131lCgGukYcvxxDdMuBFrl4XyQwIo7P6Z/n/dQgYT3+6n013ZWCEwf+fcvxJtakHHb1puCvdv9uS5c6Rv9rdfm8fVOH6jowJDuwiglOQOGhPs3NoXpdu7C48BGhNn8PId24Z+fR6ozIkH7hW1sq6azcXIu1+fwdn0z4hjYEQnnp4suRIK0ChCZldc4Sl;
	25:RCGpR+VO9r94DpzTjiHb1ho9CfK3kShM7G+BwxOug4g8JaEHHZd6RlB+YrRfbwx/xPQJ/PNqoC52FVtDH1/UQh/knh1yLp6+XRJxsXlBtW2If+dzAzQ4vBgdLjUQ7bH4+gCdRByDcrhl9epBjP5W1DYPLNzfotQ1Jr+hD1jyF01Pr1Q1CNb4+AkphmSZVmX3a7ORSKEKbr1d4aZPPDhz5OlOBKcfLGO6t89rFfITybVP7QKA2SqJFKZwjAbQSxNbud9YIB/rHuB4ZLLZEwEtw+lSVREcXPyDwwJRvfbsN4Q6Qe3tZ9NGTwLzJy20tNQqWpnLqHnHWj88bxiZhNMsyg==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:CY1PR05MB2713; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR05MB2713;
	20:T9qA4EH/fIpRDRionUb8YyOuM/gPs1WHuZbl22uQeIs+z5NFEa9LbNd13v6yOmhZWSVkzj48YgN2sLhgWo2Ec7gR6YOtLhJCCQIzO4hq2fYg14oKONRdJbSAVfkN7w6X3He2PJHl5QWgxgKHPlcA6xMKZPjH0WFjJY4j/dB3Ix7yHGLGoshP3kobw8J27wgoUQJiy8GI62pR5Dp/iieet++WaVes0rLVHJE3cYCLMqCqsDgDyQpaXFQVP5RSDZe3lXP5gnpZY0WXk5B8OxyRcWbMOsWFSXShjt0A9kfagec1R1qJzmO8MXLtKMlILa9b8jhySCmBy4zywT1hTDNlZ2RNDae5P3qGIvYox0aaKTSrUd+sSc6xcWX/sG4B7rWdwm8cnKSmjR8f2bdMI1EzZgFjt+VQJ65PA0/J7jQmJJcyL/3B6m4E63ebl0okYP5iBKUAAksjCPmOwg0Jnoeed8AyYzk/lg4h6drpfzITCfYpxkqEuRr+CPpPbnfRppZt
X-Microsoft-Antispam-PRVS: <CY1PR05MB27138DF0109C8EFAC797065BAF970@CY1PR05MB2713.namprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13015025)(5005006)(13024025)(13023025)(13017025)(13018025)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:CY1PR05MB2713; BCL:0; PCL:0; RULEID:; SRVR:CY1PR05MB2713; 
X-Microsoft-Exchange-Diagnostics: 1; CY1PR05MB2713;
	4:WuoHlQ3zoqe/cn5ehTiq8+MoymYHrVQtgPLwk1LQr7xRXc1MafFCc2wgDqALiDfdzX8wnOQ36VDJUtvMWuppQE4E8HPS2jJmXmFn6tTgmWpyhYCmAcBqwMOP6zD4zCWhypcgfevmqAa0ugh+fMoJPj72Q7hAYQTSpm4Ax3ssiFZZQRyVn9AlkrULdCbChbZKozVjTL9A6MAA3Ueb77ZaRMvx/A7BlHowN+gH1XpIXJ94zpdaNwjhvchHqvJzhq5Kxgi1Phoi/3KGG7ypY9s5gpogcvsr1hfm4JJBd6g6gLXJNYOz6djbdG+NskmI13eW+55iDVfWNNqeVQb325ds1SzwoBbOoUiCwMyhzSpf0z6bscTqQ5VFMrc9IQuC44P5Pn1epJcccfQknOVafR38OzTIUOD42ALKNIc4jSskz0+841NKAfaSiVcrxvemodSGwddCDwGC5LR7mhd3qwGXAjqEHL5wM3TdAWPsImchyMw=
X-Forefront-PRVS: 0912297777
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY1PR05MB2713;
	23:QmUDotjVhtw/xvK5ztkXf67GGlFchPsaCoIeBuVFX?=
	=?us-ascii?Q?4ClisyTXXnlslVWHTFsxN9Qup6Qen/m7SLm4Ghu85tri68SfatKDhXKjYVNt?=
	=?us-ascii?Q?DbmMiCrWNfsRfAx84961lleT0481dc6rh7FtGiaAuEGp0LZTtQff2hPC7PBW?=
	=?us-ascii?Q?5JIa/5meotX5jpue/TmIAReikI0iDrVjaQ629z4AIiosyfokT9uL6iCSlt/l?=
	=?us-ascii?Q?4j7/DocPWr5yvkjMfd1LODECF/dLfXM5WvcqJVjUrkwLao4/PinK9mrilblM?=
	=?us-ascii?Q?V0sQEpqQGfthjhr3OXY/tWJMBcwJn/0CssAERVIiaZksx65jZk24uLhmp+1x?=
	=?us-ascii?Q?m3rfTGE2J+l0eQpf4mWaXmcq2hNX7/w0vRNL+sqdphWAczvrBn1NzHL9Yi+/?=
	=?us-ascii?Q?8rv5reyAcidETN8fNvFGBEsBE/Px+NOw8eFnR2vfv9lw0x7hXadMCzP/9ySL?=
	=?us-ascii?Q?+Uh8jihHSRAKRe1kKpq8OrO2TyW6ey0YzEolLqRKt4yHXDgiOJUW0Wbm20Qg?=
	=?us-ascii?Q?zE261FHtuxIrSDIWHP+4+gO8hDqPUzDhDTccN746ROa7P4jN0FocIbV+/WWs?=
	=?us-ascii?Q?hahTauANr0aNjm/tqgKrtNf8ficSL2pIheAMWAExOS9sZM/3FDUVkMTSxHm2?=
	=?us-ascii?Q?wytnbVPZXh0urLnPu2sm704m1NVVGtsCGSYp+lyvz0PR8dUo9RL+z19n2+uV?=
	=?us-ascii?Q?5LaqqfuNghgIR7kKsQNtZM5lu9h24EFygp4Tp+oDYafVExqgf30lCrZ+XY3Z?=
	=?us-ascii?Q?5Qo2LlMdITH54BRhHjkjtc6wOdOYLIMN7sfjd1Q+WhAaVjgrosfAR/MS90Bb?=
	=?us-ascii?Q?ApRFtrncb4yI9QWnpvNK5qL2wbuW1D3IrTz9a8GExm3B9jyd6XrU1xb0oTfy?=
	=?us-ascii?Q?TfAi4VlN/gRTNKSKhD36SfmLCF5OQhOySMh66CanJ0g7c7t92teHWr/hXme6?=
	=?us-ascii?Q?/2QOuM+v7kPkdtITyva5e7VwPPGdRCH4PIs90Z4jx+gNj64asUZgvmPogHz2?=
	=?us-ascii?Q?92ScDdwQueDTPgTrvzegjiXjAqOgl1/gWLQUuUGQBigP+dsFXgupcgWBCoFX?=
	=?us-ascii?Q?xBrsiyHpCrfnktkBDaLnRbJ9KDHLheHkfvuJfyJ5t/6koJ2SV+KQGmRFgRCf?=
	=?us-ascii?Q?bR8SyGNo/zzUKZP0ld5Kb3j6RIkjElazPEhdDm6ydkwW0tJUZHpkJl681Nm5?=
	=?us-ascii?Q?kzQLEItBlB3Goy4zP7pTxDOpx7kKF+BOioY3jpV2zTw6V9whrGJCyPt1LNVX?=
	=?us-ascii?Q?bZeVAdCovOzAuOhixUGvPvBzLppNULBSvrwCZVb?=
X-Microsoft-Exchange-Diagnostics: 1; CY1PR05MB2713;
	5:LmHGVsNn80h6qchMgXXegeda7dQCFSVGcuv8mzR6QwP5CKMNbfG3YDpmM9lymwD3tZaQskt8Nz3GOq/4DKVgxXn4dG0f9qobFRY47eiCdMp+pKSwcBnwk4FjayRA4ucxSLdxvRpYYvO3kXhmXtOBqg==;
	24:KtUFg0fPN5zZtUD/w/FCtzUby6QO4V2vi+yPjsnvxGHqGLON36QfUnQZsXr3SMvZ3bOIU2C44iHA8L6QDUX3SALdhCk0QP+5y8Z1zQ4oaac=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: irisys.co.uk
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2016 11:18:54.1989 (UTC)
X-MS-Exchange-CrossTenant-Id: 937985d5-3f80-4fc9-be29-0bccc11e8b77
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=937985d5-3f80-4fc9-be29-0bccc11e8b77; Ip=[192.65.42.18];
	Helo=[mx.danahertm.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR05MB2713
X-Mailman-Approved-At: Thu, 14 Apr 2016 09:20:23 -0700
Subject: bitbake -c clean for all recipes
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
X-List-Received-Date: Thu, 14 Apr 2016 12:52:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

What command can I use to do the equivalent of running "bitbake -c clean" (=
or cleanstate etc) for all recipes that have previously been run?

Thanks,
Tom

