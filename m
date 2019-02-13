Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9496E00B92; Wed, 13 Feb 2019 22:22:13 -0800 (PST)
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
	*      [40.107.14.50 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 56395 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Feb 2019 22:22:11 PST
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr140050.outbound.protection.outlook.com [40.107.14.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9A60E00A1A
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2019 22:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=eVhYEVcPvual7Vt6L44MIpuYn+dkkqG6No5Cgh/iN+c=;
	b=b1d5vq/dG/3JqRMp7dVP9L/Yv/cFsATM9pSM4sZbtcE5rIBN/hhDUetv5JY74vFGiT5xTFDLN18z+iU723rb3eCbOrNPCdbNCQVlBOqJZDh95/D4UgKjHO7UhW97oOVN3X7b0nOtCY8CtSctL1bd6AeJTplTndaGk9dXvlKZ29k=
Received: from AM5PR04CA0035.eurprd04.prod.outlook.com (2603:10a6:206:1::48)
	by HE1PR04MB3244.eurprd04.prod.outlook.com (2603:10a6:7:17::28) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1601.19;
	Wed, 13 Feb 2019 10:08:16 +0000
Received: from DB5EUR01FT058.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e02::207) by AM5PR04CA0035.outlook.office365.com
	(2603:10a6:206:1::48) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1622.16 via
	Frontend Transport; Wed, 13 Feb 2019 10:08:16 +0000
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
	DB5EUR01FT058.mail.protection.outlook.com (10.152.5.46) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1580.10 via Frontend Transport; Wed, 13 Feb 2019 10:08:16 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (104.47.4.55) by
	eu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
	(TLS12) via SMTP; Wed, 13 Feb 2019 10:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=eVhYEVcPvual7Vt6L44MIpuYn+dkkqG6No5Cgh/iN+c=;
	b=b1d5vq/dG/3JqRMp7dVP9L/Yv/cFsATM9pSM4sZbtcE5rIBN/hhDUetv5JY74vFGiT5xTFDLN18z+iU723rb3eCbOrNPCdbNCQVlBOqJZDh95/D4UgKjHO7UhW97oOVN3X7b0nOtCY8CtSctL1bd6AeJTplTndaGk9dXvlKZ29k=
Received: from AM6PR0402MB3863.eurprd04.prod.outlook.com (52.133.29.150) by
	AM6PR0402MB3815.eurprd04.prod.outlook.com (52.133.29.138) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.19; Wed, 13 Feb 2019 10:08:11 +0000
Received: from AM6PR0402MB3863.eurprd04.prod.outlook.com
	([fe80::8177:6505:b6c:e430]) by
	AM6PR0402MB3863.eurprd04.prod.outlook.com
	([fe80::8177:6505:b6c:e430%5]) with mapi id 15.20.1601.023;
	Wed, 13 Feb 2019 10:08:11 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>, Bhupendra Singh
	<bhupendra.singh@ppsinternational.in>
Thread-Topic: [yocto] Make one directory writeable
Thread-Index: AdTDbLFz1UyFRsbYQYiFl3cMVxuMaQACVJ4AAAOAdAA=
Date: Wed, 13 Feb 2019 10:08:11 +0000
Message-ID: <2e2c39bc-c829-16dd-6410-1debca898eb0@topic.nl>
References: <000001d4c36c$b99aef10$2cd0cd30$@singh@ppsinternational.in>
	<20190213082754.qag2l75enbisbc4e@jholzmayr.localdomain>
In-Reply-To: <20190213082754.qag2l75enbisbc4e@jholzmayr.localdomain>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
x-clientproxiedby: AM6P193CA0050.EURP193.PROD.OUTLOOK.COM
	(2603:10a6:209:8e::27) To AM6PR0402MB3863.eurprd04.prod.outlook.com
	(2603:10a6:209:1b::22)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 2c8124e7-899a-49d7-565d-08d6919b2c06
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR0402MB3815; 
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3815:|HE1PR04MB3244:|HE1PR04MB3244:|HE1PR04MB3244:
X-Microsoft-Exchange-Diagnostics-untrusted: =?utf-8?B?MTtBTTZQUjA0MDJNQjM4MTU7MjM6SnNHc3FoMVhrZGttSnQvdGphTXc1NGs4?=
	=?utf-8?B?SmxtU0ZKL1QxU3FOUmx4MVdMSGNtWitKbmVIS25FOFgydGJtVXJhUTRZbnJw?=
	=?utf-8?B?SlBBZmRXbzBKdHJLTEx5enYzbHhSS2h3aUJvUmFzUTFKa2tRamR5cyt1Wk1o?=
	=?utf-8?B?c2pQLzVjNUtYZ1JEeHRJNlZIU1RoSmRibk5mZFFTV3BIUGMybXc0S3MyeU9C?=
	=?utf-8?B?UlRWTzZTc1h4a1N6ZkRSOGp4N2h0RXNQSzBobGx6YjhmWnRUbENFcGVXOXVv?=
	=?utf-8?B?eUR1ZTFid1VPSDlnR2VzaWhIclk5dkVvblpGZXJvWDU5MW5FK2pyOGh3K2hu?=
	=?utf-8?B?WDJWdGtTWjVMUUVFaWlOT3c5L21hNWpEUU55NEJxN2xvajcyakhrYVhBN1Z2?=
	=?utf-8?B?MnRVVFpoUWFSTC94RGdZMGFOVXZUYlZCRm9mM2lrUDFVTktObzl4bExIb2hN?=
	=?utf-8?B?MVJ1RmZ3QVZ4UzFZakxYbjF6Qk5TSFVkNitHZ3B3OFJod0VRZkRXUkUvT2hU?=
	=?utf-8?B?QUlQcEJONjgrdG9ERXowY2R4MUIwNUx3U0RFMW1WcUJCQ01NY21QblErakRB?=
	=?utf-8?B?dXlXelZ1S1I0SXlWWDNKdmR5VzhRNXpFeEl3aitkYjk1UjFDWFZ6bmpwelFX?=
	=?utf-8?B?TC94N2hrWlcwNkdWRFFQdmRITWRLY3BoYmE5LzFiV2w5aG44bTc4VldxRUdW?=
	=?utf-8?B?RzRHWXk1dEVJVlpXR0VRbDlmbXBKWjVPUDBIc2tFWTVBR2V5QlVEZWFodkI3?=
	=?utf-8?B?SUYzSHZCZXd0Ry9FakxsUWd3ZmZjODU5aC9SNW1QUE9aRnV2QmdlQk1HWUFq?=
	=?utf-8?B?alZWMWR2bU1xQ3hBT2pxYjVsK01FTXdpbkd3TjliN25DRTFBSkdVQWlETFlx?=
	=?utf-8?B?RXBUQ3hiUzRoRU5ZdHhRY1UrQVd2QnI3UnZCeEtYUGV3L3BVWWc1VXJZc3lV?=
	=?utf-8?B?N2NEWG9xVmgyUzhYR3pPWHNWNUh0aTRabDFYYnFld29PeGMrME9MM2FPL0lJ?=
	=?utf-8?B?K1JxQldNZlNBUmVKaHR1amRWMkh2cFRleDRQNmFUWkk4a2FwSWJocXVSeThv?=
	=?utf-8?B?dk8ydUwwakZxNm5rVG1MbE1CVitqOUttQ00wS1RNbWxKU1ZFRVhmODVRTEY0?=
	=?utf-8?B?OEtjN1VBOVdDYWRYU3lnckZNbnRlcm9ockNlSDJiL3pmOHdoTFhBbzYyWXFY?=
	=?utf-8?B?NGtPdDllM3pSM0hlQWVnZm1LRmYrR1hKdkVFTEU3RlNXcmxucm4vVS9raVRW?=
	=?utf-8?B?ZjJZc1o2aExSU1JWRVc0SlU1SFJiaTdtSEh0dGJGT2c3SWRUSmJCZFRHdUkv?=
	=?utf-8?B?QmtFTjdHSlBVaWhxcCtGUUFxSWxsTk1TR3ZLNnRZWHRKNTBYbjVBRHAramZk?=
	=?utf-8?B?dERRTFRHNDZQR0JNVlRkbFZrWUhFcExRWXc5RnJZM2c0S2ZzYnEvZXUyOWd6?=
	=?utf-8?B?aGIrME9XS1BVdUtqVFJlT3pKWmxLMXdTbUxGdk8vT1pXdk9tUGZsVEZRNHhS?=
	=?utf-8?B?Y2dzVnRxQXo2NmVaN0svVFIwR1FQYnR3ZlZxaEFXWExwbHdhcDRZWERYZkxE?=
	=?utf-8?B?ZFgxRlhDMWN4NitGOWRBVGxpNCtaa2JKYjR6K1JOczZleVlweG5IN0JmcVdm?=
	=?utf-8?B?bU4zMWJMNEdkNG5kYnFacEEvaFQ5SS85aC9SZjIzdlNVRWJuMXVtVUZpTjV4?=
	=?utf-8?B?Yyt2WVRjZGZxcEk3emdQU1M1dUkzaUZCdU1mR2RUQTdqS3ZQR05kT2lNWnkx?=
	=?utf-8?B?OVRic0FxamxQdXpzdzgvb3hUVGQwNEIyM3o0Tzdad3FFOEhsQ2Z1VTRXTjU2?=
	=?utf-8?B?TVY1YlNoNEZpaTd6R05OV1JlaE9jQmNjaVVmNmFjRHFLaHVicG1iMTNzR2JG?=
	=?utf-8?Q?/dtwk5N7JJXo0=3D?=
X-Microsoft-Antispam-PRVS: <HE1PR04MB32444BF2DE60DDD8B5B9EB0096660@HE1PR04MB3244.eurprd04.prod.outlook.com>
x-forefront-prvs: 094700CA91
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(376002)(346002)(396003)(366004)(136003)(39840400004)(199004)(189003)(31696002)(11346002)(6246003)(44832011)(74482002)(316002)(486006)(53936002)(446003)(42882007)(186003)(2616005)(476003)(8676002)(81166006)(81156014)(7736002)(64126003)(8936002)(305945005)(508600001)(65826007)(99286004)(53546011)(66066001)(65956001)(65806001)(52116002)(386003)(6506007)(76176011)(102836004)(26005)(68736007)(105586002)(3846002)(256004)(97736004)(106356001)(6116002)(2906002)(31686004)(71190400001)(71200400001)(110136005)(4326008)(58126008)(6486002)(14454004)(25786009)(6512007)(36756003)(6436002)(229853002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3815;
	H:AM6PR0402MB3863.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: AJMHC5t9wqfHzB6hleAJNE00P9rTyjUMEmvZw2qUzZJ9qIc89u+wjb5kYq5CW10ZSs3sXR0HDOvXB2bX9DBHihmd9pOV+AIw+p3fGtu/VAKVlOcUEmGJ8BxOpspPXvcg01N0td95syWfIZ5c6NRN4qgHvhVTqTAQVTMGe0id91ZXgXjaJKJqTsFWH+gQGT9zcbiz8CmqpWvxGthXiO0qg5HgExRKcIFHzwXea0ag7mDykFLx4C4iHcT4ZAXEn/D7UyxW5CnQthyLKQfjGpOhNJXfL8fNEDzIpKrOmfCdm/SbZklS5LPLFV5O3bRViI4fmYm0XKumNqWHLNgS/t06dvPD13Gvb/wlCRsWhQZ+BC4M7WzQhw6GQviYsxc5J7QX3bERGZU5lNBAfQJj+3qteVosckuTpmLeEvQeXoTPmHM=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3815
X-CodeTwo-MessageID: 20190213100814.2d79a813-d276-4ca8-bc6a-7decd6215fd5@eu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR01FT058.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.236.92.113; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(136003)(396003)(376002)(346002)(39840400004)(2980300002)(189003)(199004)(106466001)(3846002)(229853002)(36756003)(14454004)(6486002)(508600001)(6512007)(7636002)(305945005)(7736002)(7596002)(2906002)(6116002)(186003)(74482002)(26005)(4326008)(31696002)(2486003)(31686004)(99286004)(336012)(102836004)(42882007)(25786009)(23676004)(76176011)(356004)(486006)(11346002)(66066001)(436003)(47776003)(65826007)(44832011)(65956001)(65806001)(446003)(6506007)(2616005)(58126008)(316002)(50466002)(110136005)(6246003)(8936002)(106002)(246002)(8676002)(64126003)(476003)(53546011)(126002)(386003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR04MB3244;
	H:eu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
	PTR:eu2-emailsignatures-cloud.codetwo.com; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; DB5EUR01FT058;
	1:6MCvpk9rN5yAtMUrYa0Irxgyay2XMzEo1V5jRAkvqsZgup2vmgnLzqYS2VWCEnSp2Nma16m9Y4lsCzAKuNFyE7bDCgA1wy0gOGR0NeQKOISyozLa6raPmRXrSMFNX4KoKkounnJqEkgX7EQ8Gjjf7lPnUffH1JbbygyNiaxKVcg=
X-MS-Office365-Filtering-Correlation-Id-Prvs: 7dcbd476-181d-421d-b35f-08d6919b28b7
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600110)(710020)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:HE1PR04MB3244; 
X-Microsoft-Exchange-Diagnostics: 1; HE1PR04MB3244;
	20:W8A/pdbo2GWKRw18p26fNFPxQFYLmJ02m0+yPZVgSgpMBeFzJpOQ+6hBPhhU1xtgz0nMeeR/SSVi3Kg75Oq3BBsvG2HIeVXIoXCgS/3/2cruwqfy00uVRTUuX5aKUMkFeRJNl4pKDTvcaogiWK8oHrEz4uZWUlgrzdkycy6Hnfw=
X-Forefront-PRVS: 094700CA91
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtIRTFQUjA0TUIzMjQ0OzIzOnh1ZFhqRXl4VGlJbEJJa1V1UmZ0S05hTnZu?=
	=?utf-8?B?WTlpbU5Od2RHVmJnOXJiZWZ4UlB3QTlWdG1PaThPSXVTaWhEMy9MSlB3Qitz?=
	=?utf-8?B?S1YwR2trMU5zUlRmbG5FSGVJdGhma01ielBIRkJDRlpFZjArT1hmR0RxY05Q?=
	=?utf-8?B?ME5KYVB2VUErckIrZi9aVy9OTkxhUlJWV2NpR0ZtL0NvaEljejNjZWRWZE1p?=
	=?utf-8?B?RTVpaEtMVlFkd09mU0taeS9WR1hVWEZ2ZWRCTFJubjIzNCtTQS9sSWNxdUIy?=
	=?utf-8?B?NFdobTNrVnQyQng0dktva25rVnExMTlicXdRZXNMNmF6MEZvVDgyaTcrYWl3?=
	=?utf-8?B?N0pPV0RUMjVwUHNKSkFXczZQMFRWR3hqV2hFa1NKekV4U3ZJQ3Vpc2hmQjBz?=
	=?utf-8?B?MW0yT0pPYTBoZ3pwaHFvUjNIOVNHdlNDcTN1NWxHUmF1d1dpYzVIZDRSSDlR?=
	=?utf-8?B?YUZBMzhKalJGMG9OMGdQdTdUalhLVzZCNmJsUE53dnVXNERyUE9zVS9pTnlW?=
	=?utf-8?B?TFNhaWdtZ2VoeHJ5TUNjeWVVOEFUaFBvdFliUTV0NE5pODA5eUlubHR6am1k?=
	=?utf-8?B?YkF3Q1F5b1RZN3Y0ZldMaDV6bFBiMDF3M2c2TXI0VDR2WHRwUTVOeFV1KzJX?=
	=?utf-8?B?cVdHODg4SkR6YTRLaFltYUtneWJ6TktsWUZycVlidWljTHhiZ0Y5cWFCamVo?=
	=?utf-8?B?Y0tPemJpbmQwWHBoVXd4bTduUTYvTm5HbGNvUEpHZi8veUVYSWNJWGhNSjND?=
	=?utf-8?B?YkN5dnFSbXMwbkNOTXN4bVlFTWpqcmFZZlFQZnpDTldvZEJCSFI0ZFplTjd0?=
	=?utf-8?B?MVN4OFAyelBqcXZoam1RZURFN1FNU0ZscEZkUHUyaExFcHlxY3V0MTBoV3pn?=
	=?utf-8?B?ZXQxdDd0SHFMcG45NnFNSUpBcWE2VmFBbEhIQ3EvM0kzRGxWZHNjYXZXVWZT?=
	=?utf-8?B?VzhUdy9iVHpqSnNqZG1wUkd2dFRZS0cyK2dVK3pJblhvMG9jSTdKUG5hRG52?=
	=?utf-8?B?aWZXeExmY21UWGl6WEtLdnhNcndVTlRTckVvcFhILzlUSm5LdkhkMUt4UVBt?=
	=?utf-8?B?dE8rWFd0d3Vldm1LNGhYbHRoeGphcmh4VExOTjdJWnVkMUo2VWZRTlpwakRv?=
	=?utf-8?B?dGVacmpaeURWb3ZpTTNOdFBjVTNDN0lrL29sWkVCb3BEM3pLeVFnRWV2TjNs?=
	=?utf-8?B?VVFTSzZQQWdDd0kxOGZaL2pDTlllV3gwR0xYZi9nckRlOVFEempLYlpMeEFC?=
	=?utf-8?B?MEJyaVd1clhVZHpCV2tHbHBSMlBrcjduSnNUSlhxSk00THp6V2NHVjNIU25z?=
	=?utf-8?B?REV2K0ludUt5bjM0T2xKc2JhdThkSnNnUGJEaTltY3JXSEcxTW9kV04zZnZu?=
	=?utf-8?B?UmhrS3psQWs1NXdSVWdoVFlSRHZxY1F0MUdITHZvTDhTMFJISjd5eWFrckw4?=
	=?utf-8?B?SmllTTNPaXQ1b3BOQ1l0WVduMlphTlhXTHMxT0JmdzBCaHlqakJyaDhtaDFM?=
	=?utf-8?B?MHlJdS9TWkpEVkNEYWtRV2VRY0p0ejMyc3NCdXo2NHROWWFBZURKTkVXSzl4?=
	=?utf-8?B?VnhqRkpuSUtrNGxsdGV1US9IMWpzMzdaUjBPZHdvNHRkR2JxVFFqL25HTk91?=
	=?utf-8?B?NDc0NU1vVldIbWNNOTJtbTNiWHh4U1lmanJXS3NjVG5ycS85NXFIcVNIbUIz?=
	=?utf-8?B?a0g1ZC9MMW5nMEFmTnlGdGdPekROMnlRTmZaNG96eHp0U3QvNU56NVh0d3o1?=
	=?utf-8?B?a2FETncxTG1LWHJhd1FML2dCcng1UllLRStseW0wZDNSVlNMNFY5WnhRMzBh?=
	=?utf-8?B?SXpmbFlmL01KNmtaTzlwcENxWVp5TDRHUXBOTklCalYxQ2c9PQ==?=
X-Microsoft-Antispam-Message-Info: bMBYjLDLa+qGUjHoPm2L3rRv41jFS9V1wQBPWHGeMgoN78mCtRkp9PyTBc/tAjwO+70TDa+gaILWU5TJMfUEsrcmohzv0iCr+HyHvyf3O+VXYcAK7IGuwGD9NkiJ2zDmsuuMZthDNBoYnMYgRcKBtGI/qrFVb4WZRsdQ7OodNgZ8kquupKKPJVs1TN3ifR7eGx9OE72gt97Z27BZ+n5/f8ElKRumJDxBbcnU5WkeAv2vnppBmZ3V9MFL8H/70MLAQzOs9iZ/OqIpZ/oePbnrrptQdL+m4V0uF7A6oBDx8xpfykd6K1Ze5bzNeH/+V8WchtwblXHa+Q3r5wnYpUoZ7MPINz0TywN2Isq8zSauJKeAbpUQwBreMP5EqyKs3BjcO6c1mAVCoCws7whRpsGuNHNdDL2NFoHdO50KCPktjic=
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2019 10:08:16.3904 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c8124e7-899a-49d7-565d-08d6919b2c06
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.236.92.113]; Helo=[eu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR04MB3244
X-Microsoft-Exchange-Diagnostics: 1; HE1PR04MB3244;
	23:4NyJsPY4bmG6O+QKaaKLDIKu01VR6gyyrz7px052b2eO34p5Heecxbj87e/ZVvyGrAGQzr6yTiqY6KoUzT1F+bhPWUgIhoac2gPIDICFk8+R2QVBPTbHd2WPnN86X+c6bBkDd9bUAb5I7ixnab7cQw==;
	23:Ep79HvqNTg9q5xutjiIKvIuXFBZGxhTYQEyO3b0kpkNbtmRoqdRGzHLECNMfpFU7ayRCS0bPTV5d7rej7w+Rk9mcd2CITItWZCAmXwfZNp2lxcK8SMWhGXViHHM2lnOvFMvVy/wPhe7P/TJC9r56YA==
X-OriginatorOrg: topic.nl
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Make one directory writeable
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
X-List-Received-Date: Thu, 14 Feb 2019 06:22:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <AFA610FE5B336D458C19716834A8BB9A@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

QXMgZm9yIHRoZSBwYXJ0aWN1bGFyIGNhc2Ugb2YgL21udCwgb24gbW9zdCBpbWFnZXMsIC9tbnQg
aXMgYSBzeW1saW5rIHRvIA0KL21lZGlhLCBhbmQgL21lZGlhIGlzIChvbikgYSBmaWxlc3lzdGVt
IGluIFJBTSwgc28gaXQncyBhbHJlYWR5IHdyaXRlYWJsZS4NCg0KSWYgdGhlIHdyaXRlIGRvZXMg
bm90IG5lZWQgdG8gcGVyc2lzdCBhY3Jvc3MgcmVib290cywgdXNlIGEgdG1wZnMgbW91bnQuDQoN
CklmIHlvdXIgcmVhbCBwcm9ibGVtIGlzIHRoYXQgeW91IGNhbm5vdCBjcmVhdGUgYW55dGhpbmcg
aW4gL21udCAob3IgL21lZGlhIGZvciANCm1vZGVybiB1c2VycyksIHRoZSBpc3N1ZSBpcyB0aGF0
IHNvbWVvbmUgYnJva2Ugc29tZXRoaW5nIGluIHlvdXIgaW1hZ2UsIA0KYmVjYXVzZSB0aGF0IHNo
b3VsZCB3b3JrIG91dCBvZiB0aGUgYm94Lg0KDQoNCk9uIDEzLTAyLTE5IDA5OjI3LCBKb3NlZiBI
b2x6bWF5ciB3cm90ZToNCj4gSGkgQmh1cGVuZHJhLA0KPiANCj4gT24gV2VkLCBGZWIgMTMsIDIw
MTkgYXQgMTI6NTE6MTdQTSArMDUzMCwgQmh1cGVuZHJhIFNpbmdoIHdyb3RlOg0KPj4gSGVsbG8N
Cj4+DQo+PiBJIGhhdmUgYnVpbHQgY29yZS1pbWFnZS1taW5pbWFsICB3aXRoIHJlYWQgb25seSBy
b290ZnMgIHRoZW4gbm93ICBJIHdhbnQgdG8NCj4+IG1ha2Ugb25lIGRpcmVjdG9yeSAobGlrZSAv
bW50KSB3cml0YWJsZS4NCj4+DQo+PiBJcyBpdCBwb3NzaWJsZSB0byBtYWtlIG9uZSBkaXJlY3Rv
cnkgd3JpdGVhYmxlIGluIHJlYWQgb25seSByb290ZnMgaWYgeWVzDQo+PiAscGxlYXNlIHRlbGwg
bWUgaG93IGNhbiBJIGRvIHNhbWUuDQo+IA0KPiBUaGlzIGlzIG5vdCBleGFjdGx5IHlvY3RvIHNw
ZWNpZmljLCBnZW5lcmFsIGxpbnV4IGNvbmNlcHRzIGFwcGx5LiBZb3UNCj4gY2FuIHVzZSBhIHNl
Y29uZGFyeSwgdGVydGlhcnksIC4uLiBwYXJ0aXRpb24gb3Igc3RhcmFnZSBkZXZpY2UgYW5kIHRo
ZW4NCj4gbW91bnQgdGhhdCBhcyByZWFkLXdyaXRlLiBCdXQgaXQgYWx3YXlzIGhhcyB0byBiZSBh
IHNlcGVyYXRlIGZpbGVzeXN0ZW0uDQo+IFRoZXJlIGlzIG5vIHdheSB0byBtYWtlIG9ubHkgb25l
IHBhdGggb2YgYSBnaXZlbiBmaWxlc3lzdGVtIFJXLCBpdA0KPiBhbHdheXMgbWVhbnMgdGhhdCB0
aGUgd2hvbGUgZmlsZXN5c3RlbSBpcyB3cml0ZWFibGUuDQo+IA0KPiBHcmVldHoNCj4gDQoNCg==

