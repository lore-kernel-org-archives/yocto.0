Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B983E00C46; Thu, 14 Feb 2019 07:01:45 -0800 (PST)
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
	*      [40.107.8.43 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 3573 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Feb 2019 07:01:42 PST
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
	(mail-eopbgr80043.outbound.protection.outlook.com [40.107.8.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07A74E00BB7
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 07:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Z1aOhgGTvjUmtrCaSg0Bq3X9eg42yaEZ1acSEcqQDIk=;
	b=KQtui6k1UCTXJh5Xu5dtj4FqxunDRY1/xVILJr/Pc6J4tLBsBBMLYdfCUskkERzhqmpNmp5+3mkL9SQ47FiAuR2zwrwcm6afjVwBrGYTmXO8h172gbyZuYZA4Cd3NVWGPfTZi+zwVSfCPuHR9Sn8ANlcoINbGl4wbwq6Q+pX35g=
Received: from DB6PR0402CA0020.eurprd04.prod.outlook.com (2603:10a6:4:91::30)
	by DB6PR04MB2981.eurprd04.prod.outlook.com (2603:10a6:6:4::18) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.21; Thu, 14 Feb 2019 07:18:16 +0000
Received: from HE1EUR01FT007.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::207) by DB6PR0402CA0020.outlook.office365.com
	(2603:10a6:4:91::30) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1622.16 via
	Frontend Transport; Thu, 14 Feb 2019 07:18:16 +0000
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
	HE1EUR01FT007.mail.protection.outlook.com (10.152.1.243) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1580.10 via Frontend Transport; Thu, 14 Feb 2019 07:18:15 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (104.47.14.55) by
	eu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
	(TLS12) via SMTP; Thu, 14 Feb 2019 07:18:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Z1aOhgGTvjUmtrCaSg0Bq3X9eg42yaEZ1acSEcqQDIk=;
	b=KQtui6k1UCTXJh5Xu5dtj4FqxunDRY1/xVILJr/Pc6J4tLBsBBMLYdfCUskkERzhqmpNmp5+3mkL9SQ47FiAuR2zwrwcm6afjVwBrGYTmXO8h172gbyZuYZA4Cd3NVWGPfTZi+zwVSfCPuHR9Sn8ANlcoINbGl4wbwq6Q+pX35g=
Received: from AM6PR0402MB3863.eurprd04.prod.outlook.com (52.133.29.150) by
	AM6PR0402MB3943.eurprd04.prod.outlook.com (52.133.30.18) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.17; Thu, 14 Feb 2019 07:18:09 +0000
Received: from AM6PR0402MB3863.eurprd04.prod.outlook.com
	([fe80::8177:6505:b6c:e430]) by
	AM6PR0402MB3863.eurprd04.prod.outlook.com
	([fe80::8177:6505:b6c:e430%5]) with mapi id 15.20.1622.018;
	Thu, 14 Feb 2019 07:18:09 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: Timothy Froehlich <tfroehlich@archsys.io>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Managing multiple builds
Thread-Index: AQHUw/06euMYws6Q9kGMzXAjr8FbHKXe4uQA
Date: Thu, 14 Feb 2019 07:18:09 +0000
Message-ID: <ea80547d-0845-3bb7-a532-6e3c1607d1f0@topic.nl>
References: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
In-Reply-To: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
x-clientproxiedby: AM5P190CA0032.EURP190.PROD.OUTLOOK.COM
	(2603:10a6:206:14::45) To AM6PR0402MB3863.eurprd04.prod.outlook.com
	(2603:10a6:209:1b::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 3d38a230-d5cd-4f08-b22f-08d6924c968f
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600110)(711020)(4605077)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR0402MB3943; 
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3943:|DB6PR04MB2981:|DB6PR04MB2981:
X-Microsoft-Exchange-Diagnostics-untrusted: =?utf-8?B?MTtBTTZQUjA0MDJNQjM5NDM7MjM6d2ZtbStYcUdvaFRKN1hUMFNCNTdhbCtP?=
	=?utf-8?B?NlhDbm03dTc4NXFIMkF4ZkUrajdLUjlnWXhnZllyVERCenA5ZWRmRmlMSVQ1?=
	=?utf-8?B?dVNZeXRLQjVTaEw1UkVJaytkb3lldHJ2ZnZIaGdGcTdCcmlYL3htaVpTVnc5?=
	=?utf-8?B?ZklhYWNmL24rbm9JZmRCbDVhZ3VwOUtsN2o3Ui9id0plYnFxOVMvbmdaSG5t?=
	=?utf-8?B?M2hCTHJyNGVjRGQzTHU4M0pQTkg3UU5Fb05OMlYrL0RKWWY4TjV1VEF5U0xi?=
	=?utf-8?B?Qk5oNzgxNXV2OFBITjV4azhKajJRMnZ3WldZeDJ5WlZLb0I2TGh3VldJM09k?=
	=?utf-8?B?RFFSUTU1MkdkdkFWd25XZkt2Z0Z0cnpDY09mWXA3QjFBOFlKT0djcUpua0k5?=
	=?utf-8?B?OTNITjZNdGprZjFsU0V6OGJRUnR5RW9zWEFPUTZGU3hmamVJTkV6cVRZNmNk?=
	=?utf-8?B?cUpNRVdWU0twSmYvd0NlUHZEcCsxN3hzRGVnNk9EcDFLTVY5RFlucUpYYnNh?=
	=?utf-8?B?U3I3TjhzaFRLdWRvNnI1WVJRblNQOTNzV28zQ0IyOUVIclFsMEd5a0pEUlJu?=
	=?utf-8?B?M3FBczY5WmIzTnFrWUhmZksvUGlJcWZLbzVIVzBORjFiZGhMRUIyL0xFajlJ?=
	=?utf-8?B?M0hWRHBzcFlQZHR1WW9IdndRTTZkRjhEcmFzSHUwR2kwSEZTRzBmbW5jVEd6?=
	=?utf-8?B?S25BU1dxZU5kLzZTS2xGdy8xaHl6dlhQN0E1U0s0N3dnYzdQK29zZ2ZyZGcw?=
	=?utf-8?B?Tk1DSHpWUGJvSjZ5RmpNRzBWTGp1Z1pwWERyYnpyMHoxVnEwa0xleW4wNHhM?=
	=?utf-8?B?MU1nUGk0SitxVnhsSU9KUGxnU04vbGtqODZnYUtFWEVVZ0hmZzJ0Uk11NnRm?=
	=?utf-8?B?dUl4UDlFZDJSSk9LZ0FHa2xpdHpmeWFWRU83TmJCaUJkL1E5YWdnYzZVaXFN?=
	=?utf-8?B?OW1DcFlwT2hWVCtzR1U3VGZzVXk3Z1hxd3lUSG0yUUM4djhjNW4wV3RmUWQy?=
	=?utf-8?B?UzR5MDl6R2hLcmhHY1FETUdTWVMvUGlJUm1yZ2xtT1hMSmxWN1lSM2lnMnNJ?=
	=?utf-8?B?S0RPb0ptaUFWOFRTZWtqNWlCVzlKR1NhbDh3VXY3a0xSSmZDOGtwY050TTV5?=
	=?utf-8?B?TDRuakcweXlmaGw5N3QxTU9wOGRmQlVJVEZIcS9pblRzTllQeFdnRkM4aDlD?=
	=?utf-8?B?bUp0eU9jRVhzdXNOcFZkcENoS1IvN0Nva2F6NUt5bFQ4MzMrN2JPWS9SVWtD?=
	=?utf-8?B?R1FXK2NiNjVJYWw3OENVandKQ3ZsWkgwWHJ3NzFoQWtvdEYxSGpaWFpHV0l1?=
	=?utf-8?B?NVcvRWxDOHBHVUtIQ21vdWNBNVMwZXhmK01rdEFPZ0Rmb3g2clZDRDhIU0Fp?=
	=?utf-8?B?b0s1UUFsRmdzOUlMdVRXRHZweEswSEx3Z2RLMnhEVGEzZ0ZldUorZWRMS2Vo?=
	=?utf-8?B?U2c3emUwcXd1K1RDNTBNdFoveTNzRlNrMEU2bGpWNWw2QzZsWVIwZVBWNGZs?=
	=?utf-8?B?N0dESVZERUlBTS91MTJ3OGQ1Vmhabmtta3VFVnV4NTJmWHlHQy82amUzbFFq?=
	=?utf-8?B?OEl1QUZudWR5b2NXdDdNQjZQWFQ1bVV3M2V6djFiTFRWSmEvZ3ZaWEVWdS8r?=
	=?utf-8?B?Q2Jha0IwQTZRWklCR2NoMzhaR1RTODUvYnFsK211Ty9ESTlHS0Q1UFpPV0p4?=
	=?utf-8?B?dWVJaExaODRnMTUyWWlQVWROR0R6YjNkRktTRHNzWGFUUjg0SWhQdTltbzZ3?=
	=?utf-8?B?WHFQcG1weDUxVXdFcTFMS2k4ekxvTVY1emFWZ0liajZwdDI3TDk2WkpRSlFZ?=
	=?utf-8?B?UlB3c2RFdXVvYU4rM0ViVFk1QmJFOTNhdU1VQ0J5WDd4YnlXUi9ESERFTmxF?=
	=?utf-8?Q?gPG2elMMiV7jQ5AUZLq8ES1dgFiSgnjzSH?=
X-Microsoft-Antispam-PRVS: <DB6PR04MB2981ECEC66D8A447B260756A96670@DB6PR04MB2981.eurprd04.prod.outlook.com>
x-forefront-prvs: 09480768F8
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(136003)(346002)(376002)(396003)(366004)(39840400004)(199004)(189003)(6436002)(2906002)(446003)(6486002)(65806001)(31686004)(476003)(316002)(58126008)(42882007)(68736007)(6506007)(386003)(53546011)(102836004)(8936002)(66066001)(305945005)(6246003)(65956001)(229853002)(105586002)(7736002)(11346002)(2616005)(110136005)(74482002)(31696002)(106356001)(64126003)(76176011)(14454004)(508600001)(256004)(97736004)(36756003)(6512007)(99286004)(65826007)(6116002)(71200400001)(486006)(71190400001)(44832011)(3846002)(186003)(6346003)(25786009)(53936002)(26005)(2501003)(52116002)(8676002)(81156014)(81166006);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3943;
	H:AM6PR0402MB3863.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: sOw7y4tJEZUkGMycGio6s9Op5npdEYARSdVGRrjy6P2l+vodEvf+amS1aas5RIb4wpmS3TK57dRTHP3Nz8MjmSYJGjwAoqNuJiD2dh1d5aKggOUh3BFH8w8jyTv11EIcVSfnpS5sh8nPNybZYSGZu3ZwBuyEtRkmUvAQbC5HwNb04FvYDmkSqvYKAEGc33uWFD0dRWc4yxd9SFfaIdEJqDvIU0uX/2qMu/XGSPRAqm2HqaaHg+yfdV9W6wYhW35cnFkgpFlwE26NGql2QcSVbCBT0y4h3Cu5ApMxEw//aLkyBPdag9+xqml3m2somDg1+8Aa68hxua8FB8naBp5RUb0sy8EisyzN9pzgAuyK51TEC39zm9RY2n2J4c3+7x05NoItwwf5pEma9C0VAEuVKlRUJcS/g76BAK1JCvGy/NE=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3943
X-CodeTwo-MessageID: 20190214071811.ab0d994b-e922-4e01-a5b6-6a9f51caa770@eu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT007.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.236.92.113; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(396003)(39840400004)(346002)(376002)(136003)(2980300002)(189003)(199004)(65956001)(8676002)(42882007)(2501003)(110136005)(23676004)(508600001)(2906002)(106002)(58126008)(66066001)(99286004)(316002)(76176011)(336012)(7636002)(2486003)(6512007)(8936002)(65806001)(25786009)(436003)(229853002)(246002)(7736002)(50466002)(186003)(6486002)(7596002)(26005)(305945005)(126002)(65826007)(74482002)(476003)(11346002)(2616005)(102836004)(53546011)(14454004)(356004)(31696002)(446003)(6506007)(47776003)(44832011)(386003)(106466001)(486006)(6116002)(3846002)(6246003)(64126003)(36756003)(31686004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR04MB2981;
	H:eu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
	PTR:eu2-emailsignatures-cloud.codetwo.com; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; HE1EUR01FT007;
	1:Gz2FIncprZBybN82YSWLWFSiOHg97qJoGcLueVWuOiMtr5DXn0hPHM5RHH0rJFRiKwO2blHO/JrEkTska0otOeFHwuDgDER5R30MMxSrp2drpCYJYHEXYnRXYaJB02UgxcdmK5YC6k2/Oeog4Wv+ihhmQeRw4a6aLgXrywGyG5s=
X-MS-Office365-Filtering-Correlation-Id-Prvs: c71793fa-0391-4118-8cab-08d6924c9236
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600110)(710020)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:DB6PR04MB2981; 
X-Microsoft-Exchange-Diagnostics: 1; DB6PR04MB2981;
	20:Ao3jZ/UMebTLtSodDaRPHfDX41j5mcURBAgwB+xbOTvmDzxd3GGMpvGqT/wi8A7u1E26zSxnBiIRsYv0x+OgE8BfC79peCIAwskzter73SJrn0w2jb2YIek7ANbhNb4+SIivlpNtdDEgRlWKMtY2GzeMp0SjVU3SY89da68ltUM=
X-Forefront-PRVS: 09480768F8
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtEQjZQUjA0TUIyOTgxOzIzOlFVT2FLdXN3UGNNVFFKUm5jNWI3VU1QVlpR?=
	=?utf-8?B?SnBLNmxXeTJOcTJKdmlGR2lqQVpBc05XcFMzdG9GdGFaWkh0MDlRc3VGMVZG?=
	=?utf-8?B?NzlhVlE2TGY1d05IRHVzL2JJWTVHSWlabUJWU1FGZDFCaHFUb1lSSGxJNG1E?=
	=?utf-8?B?cDNXOFR3WUN2OFN2eGVtdFh3LzlMZHBnaE1aUEQ3OHZCWFNlR2ZZUjQ2TmlJ?=
	=?utf-8?B?S3FSc3llV3cwaDBwaEtGZDBvdGZRTVpCWnFiN1Q1NVdtcUp6ckdsTlBTNHJh?=
	=?utf-8?B?SGxheUt6WjFCRjNURytEa1kvQzNVYmF2SGxUZFN5ZWpFODRwdUdYTmNsYXMz?=
	=?utf-8?B?Q1FXNWx3TW9hTXBmVEFJNThkWHpBRjUyL2dzMTJad2U4eWc0ekJwYzlMT1Bk?=
	=?utf-8?B?TUU3SHQ0S3JjYk1wNUY2Wm1kNW0zNSt5Z2Vtb04xNGJpcnRPSlBBQWNHdDBn?=
	=?utf-8?B?R1NHYzd3c3JRY3dHcnRmUG45aDFuR0pBbTdkN3l1MjBWSktNMW5Ja3QrRFlJ?=
	=?utf-8?B?alM4WjBzS2tTc2cxeTRhOE0ybmRRcGpjMGRoZ3Y0cDJoK2kzeHh2ZzlHV29p?=
	=?utf-8?B?THpYQ3NZckpsMi9iT3VRRHM1MXY1UlIxbEd3SjdsS1JabnF1VjdSbmtUOFhF?=
	=?utf-8?B?UUVvSEtVZS92R2tBKzZSQmJSVzFpMVk1V1U3bFh5RHdGa3htQTE4U05IYUhl?=
	=?utf-8?B?Z3JxUjBZcGtYMHJ4L2pldWdvNVRIdGkwK3c5eUNBUGo0aTFCb3ViKzhXTUV1?=
	=?utf-8?B?ektIQ3ZJZ3VJVk9mbVI5RlpWNlFOYmx0TVBybm5ISVBBTEVOM3pMODBlUFhw?=
	=?utf-8?B?VFJweWdUZnJ0ZmtOenlLT1dLZTFTejUzd3J4YXg1bkhWNVkwdmRlOFNOd1Vt?=
	=?utf-8?B?aHAxWWF5U3J2dHpGVURRQ3A2VWVYYUV1TlpWZVkzR2F3bklwMWJTbHJSeVhz?=
	=?utf-8?B?YXp1ckhUcFFvd1E2Rkt5YkVQOTRZUU9WMkxuOGFBMDRCSVJuVXdyYy85eGdN?=
	=?utf-8?B?RURHMWxSckQ1MGdxa1JGOW1DaS9mNS9mTVVyV1NvblhuN1dsWXFPSFB4bkxY?=
	=?utf-8?B?WXhZUExZNTZ2MGZEdi9JV2Z1NTdKcExlckJZcVA2Wnl0blJobjc2R0s3MXpm?=
	=?utf-8?B?N01NOE1QOEdDSDBxcnowTUJVOHFOVmhpN0paN3l6RXZKbUYzYXd6U3dRbUI4?=
	=?utf-8?B?T3E5WWlJZy91SFhYd2x6RTVDRndYNWVJVTFURi95M29ieXhpelpSWEFpVmV3?=
	=?utf-8?B?S1RNd3NpS1J0RHB6WmN4QjlDeHV5VUZyNmx5YlJraERpOEhFZlFLSk5mWXJo?=
	=?utf-8?B?a1FqN3lzdU4yUXNPNS9ob0h3VjdiQ3BaWThZNHdWbndoSk1pcnBHSHNJSjJC?=
	=?utf-8?B?eXVaMWxWVjBmbjBjU2V3Vzk4bm40NjkzNmdvRXhIZHZ1aTdFakU2ajloeXY4?=
	=?utf-8?B?K001UmZrekE0eHNRbmU0d1B4dnBlWENWTG1FNUFycm5CZjg0eFNwUHd5SXM4?=
	=?utf-8?B?aE1BU253cngxMWVrMW94Ritub2M4WmM0QjJ1U3RXYkJjV2JDR29GcS9EWXp3?=
	=?utf-8?B?YkxodDAzQ2tkazBQNElhRHFtZGdzQzltejFUSnliUEM1MHRzNmtMVmE3VmJX?=
	=?utf-8?B?NEFQcGkvMjA2QjNBcEhqdllOWDJRTzN0dW03Q3lUSUl0NGJxUHJ5YWlsSWxt?=
	=?utf-8?B?c2NWY3ByQ3MxdG5YMmRPWU9MOUpFSG5LVnQrVmUxMVdNSVYyZGE3NUpqRDVw?=
	=?utf-8?B?cHRhb0kya0FhZUlXMWszMlc3S3F0MGh4Q0ZUVXEzSlJkdWJKTkNvTzEzdDd2?=
	=?utf-8?B?U1pjeGJsM2tEMEdmSTh6eEUzOEliSnVNOE5LUVM5UGpaOGc9PQ==?=
X-Microsoft-Antispam-Message-Info: YPd0F9RcP52BvPbbz8dOIW91kW5TB5jtguAaQpMqY9crc+ofEBln2XD7rQQ+zMD6RPa79GVD5744yyqtG2JOEege+NlLg3sC91DDXqV4+yoGssXMCtkgOiwSiUUNtFRkKjo6oQ2egdUtVuQbTVLy6c9K1XWwOp+Ys847fNItlL2eovxykyvhcEnyQKJ3+AtWwDVPw5YY2YbW3ihFcB1tp6rx/uansIi/hKTO2i1FaG/iZJ1yA3OQ7zTdL+I1jPpQur13d4GXuw3hNva+RjbU1+QN93W+VrLIhB0MofVMn4btA/pjI1S1ZJmsr33G9JYFLejbRde5bty1zGKFWQO+taKk+einZnlF48s00WhgNRmFaITgjBhzzvYqvnhHTajicpyImVRwK3N+FF001BdySsCtw4EpWTNW9ra+EFCbs0I=
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2019 07:18:15.8031 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d38a230-d5cd-4f08-b22f-08d6924c968f
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.236.92.113]; Helo=[eu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB2981
X-Microsoft-Exchange-Diagnostics: 1; DB6PR04MB2981;
	23:RUomGk58+vbjRrKdIFow1ziNfmkXKv1wbTqkzk8TeeU1UxdX/GkLwD7djmxdnxtQZz4QApQ/xexMQvsnYkUy5lUaXShZOLVPXIMI7ZQG8CEoEGX6ZxEPm7LMIrTSTDjYKm10SjqUH8K4s73SZKF/uA==
X-OriginatorOrg: topic.nl
Subject: Re: Managing multiple builds
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
X-List-Received-Date: Thu, 14 Feb 2019 15:01:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <9014493E09F3D64D996A77FF6B3C3289@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

VHdvIHByb2R1Y3RzIHNvdW5kcyBsaWtlIHR3byBtYWNoaW5lcy4gSnVzdCBjcmVhdGUgYSBtYWNo
aW5lLmNvbmYgZm9yIGVhY2ggDQpwcm9kdWN0IChldmVuIGlmIHRoZXkgdXNlIHNpbWlsYXIgaGFy
ZHdhcmUpLCB0aGVuIHlvdSBkb24ndCBuZWVkIG92ZXJyaWRlcyANCmVsc2V3aGVyZS4NCg0KT0Uv
WW9jdG8gaXMgc21hcnQgZW5vdWdoIHRvIGZpZ3VyZSBvdXQgd2hhdCBuZWVkcyB0byBiZSAocmUp
YnVpbHQuIFNvbWUgT0UgDQpwcm9qZWN0cyBidWlsZCB0aGUgc2FtZSBpbWFnZShzKSBmb3Igb3Zl
ciA0MCBtYWNoaW5lcyAoYW5kIGNvdW50aW5nKS4uLg0KDQpPbiAxNC0wMi0xOSAwMTozNCwgVGlt
b3RoeSBGcm9laGxpY2ggd3JvdGU6DQo+IA0KPiBIaSwgSSd2ZSBiZWVuIHN0cnVnZ2xpbmcgYSBi
aXQgd2l0aCB0aGlzIHF1ZXN0aW9uLiBJIHdhbnQgdG8gdXNlIFlvY3RvIHRvIA0KPiBidWlsZCB0
d28rIHByb2R1Y3RzIHdpdGggc2VwYXJhdGUgZGV2L3Byb2QgaW1hZ2VzIGZvciBlYWNoIChkZXYg
aW5jbHVkaW5nIA0KPiBkZWJ1Zy10d2Vha3MsIGV0Yy4pLiBJJ3ZlIHJ1bGVkIG91dCBzZXBhcmF0
ZSBpbWFnZSByZWNpcGVzIGJlY2F1c2UgbXkgZGV2IA0KPiBidWlsZHMgbmVlZCBFTkFCTEVfVUFS
VCBvbiBteSBSYXNwYmVycnlQaSBhbmQgdGhhdCBuZWVkcyB0byBiZSBzZXQgYXQgdGhlIGNvbmYg
DQo+IGxldmVsIChJJ3ZlIGdvdCBpdCBzZXQgY29uZGl0aW9uYWxseSBpbiBteSBiYXNlIGRpc3Qg
Y29uZikuIE11bHRpY29uZmlnIGxvb2tlZCANCj4gcHJvbWlzaW5nLCBidXQgSSdtIG5vdCBoYXBw
eSBhYm91dCBob3cgbG9uZyB0aGUgcGFyc2luZyB0YWtlcyB0byBzdGFydCBhIA0KPiBidWlsZC4g
Ii0tcG9zdHJlYWQiIGxvb2tlZCBuaWNlLCBidXQgSSd2ZSBiYXJlbHkgc2VlbiBpdCBtZW50aW9u
ZWQgc28gSSdtIA0KPiB3b3JyaWVkIHRoYXQgaXQncyBub3Qgd2VsbCBzdXBwb3J0ZWQuDQo+IA0K
PiBCYXNpY2FsbHksIHdoYXQgZG8gbW9zdCBwZW9wbGUgZG8gZm9yIGNvbnRyb2xsaW5nIHRoZWly
IGJ1aWxkcz8NCj4gVGltIEZyb2VobGljaA0KPiBFbWJlZGRlZCBMaW51eCBFbmdpbmVlcg0KPiB0
ZnJvZWhsaWNoQGFyY2hzeXMuaW8gPG1haWx0bzp0ZnJvZWhsaWNoQGFyY2hzeXMuaW8+DQo+IDIx
NS0yMTgtODk1NQ0KPiANCg0K

