Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34DC6E00CB9; Mon, 11 Feb 2019 15:09:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.0.47 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00047.outbound.protection.outlook.com [40.107.0.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D162E006B3
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 15:08:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Kc3GDMk1TVuv52/LF47zSZxmQCxShvhnsK1jWsvaRA0=;
	b=fI/4f/vJRXDuQxZaF3QICBtTac5NmwnwjWj7ffNiWKPl6y1FCMsbGMmvXhtUhI0lLdYySLHz467wstLKNmD502QHiBjCL2o8PvCoXui+R1NuUQ94FZEPu2p3TtXfu+lBNkrsxuD9QXUDNGcRs7HuXW0MaBTAvbwrkcbHLLec4CM=
Received: from DB6PR0402CA0013.eurprd04.prod.outlook.com (2603:10a6:4:91::23)
	by AM5PR04MB3235.eurprd04.prod.outlook.com (2603:10a6:206:8::28) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1601.22;
	Mon, 11 Feb 2019 10:33:21 +0000
Received: from DB5EUR01FT060.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e02::207) by DB6PR0402CA0013.outlook.office365.com
	(2603:10a6:4:91::23) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1601.17 via
	Frontend Transport; Mon, 11 Feb 2019 10:33:21 +0000
Authentication-Results: spf=pass (sender IP is 52.236.92.113)
	smtp.mailfrom=topicproducts.com; yoctoproject.org;
	dkim=pass (signature was
	verified) header.d=topicbv.onmicrosoft.com; yoctoproject.org; dmarc=none
	action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.236.92.113 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.236.92.113;
	helo=eu2-emailsignatures-cloud.codetwo.com;
Received: from eu2-emailsignatures-cloud.codetwo.com (52.236.92.113) by
	DB5EUR01FT060.mail.protection.outlook.com (10.152.5.232) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1580.10 via Frontend Transport; Mon, 11 Feb 2019 10:33:21 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (104.47.13.53) by
	eu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
	(TLS12) via SMTP; Mon, 11 Feb 2019 10:33:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Kc3GDMk1TVuv52/LF47zSZxmQCxShvhnsK1jWsvaRA0=;
	b=fI/4f/vJRXDuQxZaF3QICBtTac5NmwnwjWj7ffNiWKPl6y1FCMsbGMmvXhtUhI0lLdYySLHz467wstLKNmD502QHiBjCL2o8PvCoXui+R1NuUQ94FZEPu2p3TtXfu+lBNkrsxuD9QXUDNGcRs7HuXW0MaBTAvbwrkcbHLLec4CM=
Received: from AM6PR0402MB3863.eurprd04.prod.outlook.com (52.133.29.150) by
	AM6PR0402MB3320.eurprd04.prod.outlook.com (52.133.18.149) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.21; Mon, 11 Feb 2019 10:32:58 +0000
Received: from AM6PR0402MB3863.eurprd04.prod.outlook.com
	([fe80::8177:6505:b6c:e430]) by
	AM6PR0402MB3863.eurprd04.prod.outlook.com
	([fe80::8177:6505:b6c:e430%5]) with mapi id 15.20.1601.023;
	Mon, 11 Feb 2019 10:32:58 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Update kernel by package-management
Thread-Index: AQHUv8fEiqXGlJpQgU+FKyLlk7DB1KXaar0A
Date: Mon, 11 Feb 2019 10:32:57 +0000
Message-ID: <b24beb7f-6e71-be6b-4288-1fc0be782d61@topic.nl>
References: <da4152cf-2935-6862-55a3-9b4e37546c6b@faresoftware.it>
In-Reply-To: <da4152cf-2935-6862-55a3-9b4e37546c6b@faresoftware.it>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
x-clientproxiedby: AM5PR06CA0026.eurprd06.prod.outlook.com
	(2603:10a6:206:2::39) To AM6PR0402MB3863.eurprd04.prod.outlook.com
	(2603:10a6:209:1b::22)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM6PR0402MB3320;
	6:cyW6Dq0lGxG5H4wgrOS8ZXpI6RJZKlR+8rKWqNfjo6x23sziY66I29bq6XrfZR+mt/HFntTbVlNmb09vjZThVe9nwN34MozKwTZzd4F3H7GYqqMjb+zfL7YYWZpO3vo0ren20Qz3RlCmY6KuAN6OHSWQK/AIV2u4BoJcHgCQkOenpkE3dvmXpR74xIfokh9iY0OIilWKn2hkED2LQ8FGmeysqZHtQAuHmTOgvW9N7Wv0nBFg2ONZ8hxm4Onq1/v+CE2FuaoVRxWOpmMMcrAk7qfeC1/v3wgx6wn5D39BpW/X/dFS2DSDGR/Ug04kR4JgZppcl4/5irWPwVBpvnEx2gxTiTy1opITBFMzki4u51yO7UY//AOHzccGQA1qR3+M1U8X1jgbzwYDh9n3jAEHX9BkZqx46fsOpamH81kwd+6rGQP/eRP488YSwU8QFjYUPRCzKiILg98bwa5gM2hsIA==;
	5:uVdPsZ2hjJ5z7kcaNa/aELKnmHMg5d8s02aqq7L+69qLWnZRpX4VAIxeQQLf9qbUg7MAXlk3EZCFJ2vmhjJkS4DMUeCuorF7iWTvb209qbTEC5Tm4s0gjrjX+y9xXiTGaSC5VH4C+nbfUZa2/g2ebygTDu8QcIaIQCmc3SKBmAgctbApYI9+oCRZ4dnqnevWDx89W1INsvIbQcw7yakQXQ==;
	7:gqafjnHXPasfS1wtaN9/301evMW+mXSt3YesdyL3uINsXIRtTx4/wSQkFAHYxd3gxM+/ZNCL8Zx9chJaW8qkQpSjLPtDvvzCojtDz/pM9dFhZpLBR/Y90PaxhrSeFnrtqkf6+WVi+Brye/XHTbSJ+w==
X-MS-Office365-Filtering-Correlation-Id: 8b2f4f2c-a2d1-48e6-9933-08d6900c5834
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR0402MB3320; 
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3320:|AM5PR04MB3235:
X-Microsoft-Antispam-PRVS: <AM5PR04MB3235C50E105B34080806D6EE96640@AM5PR04MB3235.eurprd04.prod.outlook.com>
x-forefront-prvs: 0945B0CC72
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(136003)(346002)(366004)(396003)(376002)(39840400004)(189003)(53754006)(199004)(81166006)(65826007)(65956001)(26005)(186003)(305945005)(2906002)(58126008)(229853002)(97736004)(25786009)(65806001)(4744005)(66066001)(6916009)(2351001)(486006)(8936002)(31686004)(6486002)(76176011)(64126003)(316002)(71190400001)(71200400001)(81156014)(31696002)(7736002)(2501003)(2616005)(6246003)(68736007)(256004)(1730700003)(36756003)(6512007)(476003)(74482002)(99286004)(446003)(14444005)(11346002)(3846002)(14454004)(6116002)(102836004)(53546011)(6506007)(508600001)(105586002)(386003)(106356001)(52116002)(5640700003)(44832011)(42882007)(8676002)(53936002)(6436002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3320;
	H:AM6PR0402MB3863.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: fA2GBEI8IKaDPn+k+BxNC4IlKm6OzASmynaiKyXtpdM5+zMG2iHZ8FMPsEM4cLO4rJH5Gy80mvRQa8STDToOJfoPYtTUltbrJ47qglCwiKt+haqZsRuRS6rTRioN+ba/TkMLnUI+InVSKoEbPBIn2qg5w2W7yZimHFaSeekP5yyt87shNTSUxtX4+gaaAEMvokP60qndc1YnCbEZpjl6wKfO0A+kfFzLQfM+GxRp3zyRv02hSBq0zQ52E8FcXZxYs5TB6rA2E6gozFBhoaXgs84RsqENLErfbtq37DfDs16UIBZ4YPFhjx2i79xEH6c1RVcYb7ovTW78NviENqFzzdKlyWTOKdBvHb9r1ySPUALJceSLc+bAx5SFdbrB45IHwvk4boIpo7PGt4YZNwKZZ5BLTjk9XjnXWTWpu4D37n4=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3320
X-CodeTwo-MessageID: 20190211103318.fce3a4fe-d75d-4819-bd3e-81c2cd7bfb65@eu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR01FT060.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.236.92.113; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(376002)(346002)(39840400004)(136003)(396003)(2980300002)(189003)(199004)(53754006)(336012)(36756003)(446003)(11346002)(2616005)(102836004)(186003)(508600001)(386003)(6506007)(53546011)(4744005)(26005)(65956001)(47776003)(66066001)(14454004)(476003)(42882007)(6486002)(229853002)(126002)(76176011)(44832011)(486006)(5640700003)(74482002)(65806001)(356004)(6512007)(31696002)(8676002)(1730700003)(6916009)(7636002)(7736002)(7596002)(246002)(305945005)(8936002)(8746002)(64126003)(23756003)(31686004)(65826007)(14444005)(2351001)(3846002)(6116002)(106466001)(25786009)(2501003)(6246003)(2906002)(106002)(50466002)(99286004)(58126008)(316002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR04MB3235;
	H:eu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
	PTR:eu2-emailsignatures-cloud.codetwo.com; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; DB5EUR01FT060;
	1:2y2tUtfuz9RR8r71g4l3ZIKxWQY3Tra+ietTGSYP3VTrjI/haHLAUlrNfKWvDDwZJfd/LmxLa00RUsiQ+EacskrGQeTB1qNRCuunOERW6lDyVVr0xkyInq4/+0lX77qfsvpyBKdSl6Om2rVsHl8OfZMRkn7vSrtbiTDlqSYk0uE=
X-MS-Office365-Filtering-Correlation-Id-Prvs: 7ef3d3fa-d598-4a32-128d-08d6900c4a17
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600110)(710020)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:AM5PR04MB3235; 
X-Microsoft-Exchange-Diagnostics: 1; AM5PR04MB3235;
	3:PHDYDXidSokoIy8oMWvNKz5WeP/90ofm29S/2B+Ba1b8wQiaS4CLS1J11W7VAeWOGtQJ/iruZTgp/QKI9GcZV4NGWMA6qdfdcxOj9SQK5e1xpaCw+RqaXQo3iMk7Buis1mKmn0zvCgJOHf1JWx06OGoEAA//EpzM9cv+3AS3/qODtH5R3ZZ3E9p/coQlokFwRilSOuWdKPzxYvazwXtvrVeP0ehqp1cZ0E9kaKvTpY6bbniIfq2c7hxRKltdCHjd3O0azEMYn3xoStir+0nUZZmXi4nt8+kxJZ3u9leZGEwCjQyLnntbZgxfJ8t+/HlpmMhgupWbusvPR0RvYZeqGMDMX6lgtYhYs+p9PelWLeh3PRBaK0AFvZyQ5rVIlMMI;
	25:5JaRdp9N6r6uHfLUMZpfOnwXRx4WMDJKvcvnUQXFphTtbTsBNVAQUBwllaH9f1NOwufjI5r7JiZHv06ZXPan55zNaXtRHOPFyJrxvA34wmZbbRkG9x5tlMXuXRF0qYbrJN8xiWlmnZjYvMESUCLWfbdkUIsroWDnY8Rierwjvhm4Q0n2hGet1ESs2rovEgx772ImgFyS4q+6Xa3sJl8PhW7hDdU5N9VqSJhb4LgKgzyb1HY0vuTbp4aCIrAuEvB+TzSeZ6LJ/qA8KkAlR6/YaaM25oQP4WZLQvUzuq27leMtpXuZEySLg+qjvZRvPatylBA+xiYqtKjoOwBEf55xZQ==
X-Microsoft-Exchange-Diagnostics: 1; AM5PR04MB3235;
	31:gPLWSOdqjmtrd+s4qpNEMykPcvkx3xWaHGi3LLlCBl93EwW0AQV5DoMR+SiC66PmXjH9GIf9d4vYupZaFmD6oXYMchRMjOc1xHS5PvVyf5eWjGbLJF+RBeHvzhYgRsNbdhTEK+Dt0K8YLs93KORkaupPCXnRs8QpnWBQSfbdp63UTaA+HhSaIW54UDkDY/KuBPqf7riPijD3egQ/eQxxTkoECK9ymuX152PW0tsSaYU=;
	20:/agas6oWeN714Y0yD8RXacAdfcp/gPT05etGgqYG86dx1rnJKVJMn3d356fj5G7b1Bhs5P0vxiWx0SEtb08HVjPPcBgNWbhcREqAZcWh6NgxnUI+Dh/i7yjB01LEZcGP5DkaTAIQztSwvqXPOe1w1sTjFKZSS88SdFbyx+W/ujU=;
	4:MJVmGf+ttDmxhz60MXgsyNDrVf4/jsX48c3ZJCzfsTZnbh7+zPYb0LUn9Wl4P0jhImJlz4AgL/gmZBxKKRnV0oXocikk5+3SZd9hQ6mZ/VTK6Lb1sX1XGkxTeWgpQOw7tbmk8XR4PPG/CNzCNLlwX1ufBRuDmrYv4Rwn2Rac5fXxeMOwg796mzl43P7z1KUE8kzHE0MsxD2B6mIOcZwRXdLF2psxUlZeoTIvDTiTgFPEILP9mopqjq1PCk+553gbdFPxnp5Kh3K5eIRjgItRmJpLaDGO5fiAV8wGUjd1+hBOyySoRTuvunvGpA0JRcpT
X-Forefront-PRVS: 0945B0CC72
X-Microsoft-Exchange-Diagnostics: =?iso-8859-15?Q?1; AM5PR04MB3235;
	23:l8IwVPeHiFmhlLAWNMgVEiE61NnPsQVSpkqSXo?=
	=?iso-8859-15?Q?nvA5tsUC9jSN4k3wPgjJ37FavciL1iHrqIk/BUigwjk1pI5F3lx1K6duA?=
	=?iso-8859-15?Q?2SV2Vnnjrzpa1lJgvV/1W1icudsc4fMkXS3YFkrOSVXi6ThxMpw907JYI?=
	=?iso-8859-15?Q?4sZqDwYw0zyoALEG/Zt0si/TulgPKnouXlCkiSxUFbgXA48Dp2b16WDLT?=
	=?iso-8859-15?Q?MpTlbLrZqmLnYQ9rQlJusSr1HcBmLau+Hsw5mg/dsaq527prxSK8dm1th?=
	=?iso-8859-15?Q?/UTp8R+m4A1ey0EzGkKpoEoEAjsMJvIA+hWr++L13KfF4HM0gAyAfFFr7?=
	=?iso-8859-15?Q?W+TQ2wcIQorvDjIpPzKE2NaSdPpK6Px0zBtJohy6eRokK4D1Qf9ARSv8V?=
	=?iso-8859-15?Q?iVkdtubpd/91rZUfJ1kdPeDIc3yAA2MPFjmrgQpFCEEfJkFneBljm89xg?=
	=?iso-8859-15?Q?jHcygtoxMy43GrXzkeIZXH0eM0kyl4lVjBZHlM0TIhj4c1pNe1pyqhwb4?=
	=?iso-8859-15?Q?W5eQHbEmPot5KUgUhnaw/AwKr67WMLWkdxQMs86yvPJ9KXspKd0BQL4B9?=
	=?iso-8859-15?Q?QcLFG54AB7tnUQKtxlwpjR+XENpZzvvGlnleZZaZjvUtgWZ41aq11Ugud?=
	=?iso-8859-15?Q?VtOWwmTu65xsBizyVZ9pch+18kqAfFbfrU0fyoU1imVkZYLV8LUPgbsvs?=
	=?iso-8859-15?Q?51duuz5gMW+PcjQtON+wEX9CeZ/g7qjcKddSk/DfgkGjX9jKPe5hufxCC?=
	=?iso-8859-15?Q?Z5itjOsDqh1eioMjIHTSJugEUXwlLBLq3Sw8MlRqrlI5L20Nh4iU02hg+?=
	=?iso-8859-15?Q?q9R15CpcKeycE+CKLgOwkralkOTj5ubjZqUctHboF8uA7L34lvNzuTnGu?=
	=?iso-8859-15?Q?XnQpJhSZrHHRovDrrtKDw02g97XjLXftn2FROJJZ2h9052eH2VA76ICrO?=
	=?iso-8859-15?Q?mIDYWaR8Q5uluJ5AU5kvrJulX01m5PZwxgLkCC3d3pa11tZT+kNwCtlOv?=
	=?iso-8859-15?Q?wDsMFUk/9wMR4KlJv0jC7BBucICK4PcaWjpHHU66W0SRqWG8plIkxqyHf?=
	=?iso-8859-15?Q?/NAlifw8ODuzfxeTnwb0s19ixAQO+QYGrNwyBHKE77WOpbMr80WoflTGP?=
	=?iso-8859-15?Q?DMzwktxfYimeFihHzi5cjznJEaHC8Kbf/ABMXAY86j1DqIpfURlqCveX+?=
	=?iso-8859-15?Q?oB8Lbh0e0FoC3BiBJssteaReN96+BBL4YBZ4pWgO7vvDj2+NUEkf+FP0o?=
	=?iso-8859-15?Q?0pKZVODrjNK+nr1ywesMjQ5HiROpqLXp+13GCfUc+QdsL1rkvgCNRQ354?=
	=?iso-8859-15?Q?mi9MX4FpA9ZoOyoP8GhViHTcHYNe6mWOBfek3Z9cEJtsyaKDJhc9qxYIW?=
	=?iso-8859-15?Q?Dy+78BOaokeUJZmn8Pn9NGVgut8BXVaNWEVAtbBFbPz4LG6ROTeTIhyy0?=
	=?iso-8859-15?Q?434FKHqKoLEJzakAbjwbxuwLDjEm/IoJqAt+5uKc05QU5qsa9Ymf7c7Yd?=
	=?iso-8859-15?Q?IqecglnUqQLUynJFmrRvPbrIYLpY9ZaaaIvXnBkobeaRiucjdrOrWIZ+q?=
	=?iso-8859-15?Q?TmLY5VbUI?=
X-Microsoft-Antispam-Message-Info: yix2xTWs1s3GU/FztPJruJXDKCI6bsjnNmiZZL1bc4csy0B15Dz2NKsHLEJ3Q+Z7GHns5x5vB95c5YwcSVOFhiErUJI/qbwn5kj5UuOFD8Bpf53lx7Wd5gt9U8KP3rdhsPMpbCX3rGpaLk7QPN29hva6cUwrihLDafJ+PwglBvjvZr1u3lY7kEejbMRfBtRUyJ3S7oC4ZbUydaJGevNYYBrX4Whe+ajmRkQJ1I5AI85AydfgaENcGR3wOHmzdUI7KPFxEvbz1HDn8Dd6r3HZKpq/ynwNvEUk5qHSLRdXDTGG1H4vsdQ91LYsSqgxodYtWhgozahcbIBXglv1zZ7JpbrvqDGbhWUWo+uhA/v20GRGqIiww5efqpVxcdixrsxRSBSLdDZbtw0cWG667ZWZcInIM8nCh+WC1mEWg3F5IiQ=
X-Microsoft-Exchange-Diagnostics: 1; AM5PR04MB3235;
	6:70D4lYiJtKaJ1t9YNL2vvVmO6nZ84dXcyPvhcun7hqPxdlUl8Zwge36OJB3il68NnQxfHmVmoxKwh1j8zFQg7uCb7AmVh7EoGtmIYSyzoTBF6MA9ilXlU4RpnyyW7djLvxYDmxctDGFeOqOSro3G3FJe9u0Beb1g7cXsYbOAERruOvktVaiNta1144+cBF5O1Mr4soa2/DyaC4lGB2s8V3B5XUpCkRgaoPzKmiaf9usnOHpv29pw+6b3Kdftjf030zB4QMXAZAVXdMElZCfmANLP9Z7eUEFMqVXlPsEPGm7/xuBpiu/WP/lTaNr/jRpY0XzzT6xZ43UdZm7KCt0asUdVCwNGpRlE5KPArZCyFJzdlrUPZEf3ypIhtnTFzpzbQG5HtrXv7IrFdN+InMIhgi0fhi0lFZuQUStlvvuGjeWXe5oWKwUqKySazUIEhB+VHQPJoi7jdGPzjwPc/dhm6g==;
	5:YAxRQStSAwv6vR/HnjzJ82GeyEtp9qBJP1+ya+CIQDz/r0Wqd6Zcr4ByNc6I7mdSClscrwmDM8Ua6u1d6qMThNn/caI2dVTF18NWxk29uH9SiZn6e2chSrK3G5S9syET3y0lxHRuycqlJY9p5jKiPyJzH/Q+r1ML50bU4IBwKf4S3v92WCIUZvpLQn4s8bYh4M47jmTi1LTlS7yDzicKpg==;
	7:At23lvhzikqcmjMsip5OzUZaAQz/+rEmZ1AYP6ebMyB8qXxEW4T/qq8nbU+GeB4q8jGUBTrQh0NoKatg3nsKt/5+cN0NxO1PALA16I1S2K0nhUC1U628lN07ghqihB1N9GqVxEgfY6I2jvTzw96DRQ==
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2019 10:33:21.3173 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b2f4f2c-a2d1-48e6-9933-08d6900c5834
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.236.92.113]; Helo=[eu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3235
Subject: Re: Update kernel by package-management
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
X-List-Received-Date: Mon, 11 Feb 2019 23:09:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <92D7AB4ED1E42F4BADF5395CCF8699C4@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

On 08-02-19 17:02, Mauro Ziliani wrote:
> Hi all.
>=20
> I know this is a VERY dangerous operation, but I'm curious.

Depends on your definition of "dangerous".

> Is it possible to upgrade the kernel & dtb from debian package in Yocto?

Sure, doing it all the time (from ipk, but that shouldn't matter much).

If the kernel/dts is just a file on the system, there's just a package that=
=20
installs /boot/uImage or whatever.

If the kernel is in some special location in flash or so, I usually set up =
the=20
kernel image to install into /tmp/ and then let a post-install script write=
 it=20
from /tmp/ into the flash location (e.g. using "flashcp").

Same for the devicetree.

As for dangerous, worst thing that could happen is that you'd have to use t=
he=20
bootloader to revive the system.

> That is: there is a recipe=A0 (which produce a deb package) to copy zImag=
e
> and imx6dl-sabresd.dtb directly in the boot partition?
>=20
>=20
> I working on a imx6sabresd board.
>=20
> The root partition is /dev/mmcblk2p1

--
ML

