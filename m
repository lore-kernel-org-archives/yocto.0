Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D62BE00C9F; Fri, 15 Feb 2019 10:49:55 -0800 (PST)
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
	*      [40.107.3.76 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 121465 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Feb 2019 10:49:51 PST
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr30076.outbound.protection.outlook.com [40.107.3.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F29EDE00C71
	for <yocto@yoctoproject.org>; Fri, 15 Feb 2019 10:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Z0MeNIZyLViDMBEv3bhCeVn0PSlRat7ks43bM+TklMM=;
	b=JCFdcRkT/Xh0YISd3NIZjl5hghCFtG2r69/zW0bv6JqQcoGXOAj61ilcsJv/0DbLLcD6pc1bk8qVpOXk2oTG3v91FqNUKc+RY6Q9QuEo3jCJtqQnHP9LLQyZ1kOShFB0gS56ss+pid2YZSjg+46JAdVPu6kXesqL+r4zSZm0MG0=
Received: from HE1PR0401CA0052.eurprd04.prod.outlook.com (2603:10a6:3:19::20)
	by VI1PR04MB4271.eurprd04.prod.outlook.com (2603:10a6:803:3f::22)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1601.19;
	Fri, 15 Feb 2019 10:15:25 +0000
Received: from HE1EUR01FT031.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::208) by HE1PR0401CA0052.outlook.office365.com
	(2603:10a6:3:19::20) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1622.16 via
	Frontend Transport; Fri, 15 Feb 2019 10:15:25 +0000
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.236.92.113 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.236.92.113;
	helo=eu2-emailsignatures-cloud.codetwo.com;
Received: from eu2-emailsignatures-cloud.codetwo.com (52.236.92.113) by
	HE1EUR01FT031.mail.protection.outlook.com (10.152.0.177) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1580.10 via Frontend Transport; Fri, 15 Feb 2019 10:15:23 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (104.47.0.51) by
	eu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server
	(TLS12) via SMTP; Fri, 15 Feb 2019 10:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Z0MeNIZyLViDMBEv3bhCeVn0PSlRat7ks43bM+TklMM=;
	b=JCFdcRkT/Xh0YISd3NIZjl5hghCFtG2r69/zW0bv6JqQcoGXOAj61ilcsJv/0DbLLcD6pc1bk8qVpOXk2oTG3v91FqNUKc+RY6Q9QuEo3jCJtqQnHP9LLQyZ1kOShFB0gS56ss+pid2YZSjg+46JAdVPu6kXesqL+r4zSZm0MG0=
Received: from AM6PR0402MB3863.eurprd04.prod.outlook.com (52.133.29.150) by
	AM6PR0402MB3544.eurprd04.prod.outlook.com (52.133.19.157) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.19; Fri, 15 Feb 2019 10:15:18 +0000
Received: from AM6PR0402MB3863.eurprd04.prod.outlook.com
	([fe80::8177:6505:b6c:e430]) by
	AM6PR0402MB3863.eurprd04.prod.outlook.com
	([fe80::8177:6505:b6c:e430%5]) with mapi id 15.20.1622.018;
	Fri, 15 Feb 2019 10:15:17 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: Timothy Froehlich <tfroehlich@archsys.io>
Thread-Topic: [yocto] Managing multiple builds
Thread-Index: AQHUw/06euMYws6Q9kGMzXAjr8FbHKXe4uQAgAC0kwCAAQ8/AA==
Date: Fri, 15 Feb 2019 10:15:17 +0000
Message-ID: <a68850a9-e295-0ce9-c2ab-73fad290718b@topic.nl>
References: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
	<ea80547d-0845-3bb7-a532-6e3c1607d1f0@topic.nl>
	<CAHSUxjQt4CxE_2LmQa3-bDe06-Hnt59ti8AG8FNz=LhoAPvtXA@mail.gmail.com>
In-Reply-To: <CAHSUxjQt4CxE_2LmQa3-bDe06-Hnt59ti8AG8FNz=LhoAPvtXA@mail.gmail.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
x-clientproxiedby: AM6PR0502CA0072.eurprd05.prod.outlook.com
	(2603:10a6:20b:56::49) To AM6PR0402MB3863.eurprd04.prod.outlook.com
	(2603:10a6:209:1b::22)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 0c9dd3a4-b593-46d9-17ba-08d6932e8035
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600110)(711020)(4605077)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR0402MB3544; 
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3544:|VI1PR04MB4271:
X-Microsoft-Exchange-Diagnostics-untrusted: =?utf-8?B?MTtBTTZQUjA0MDJNQjM1NDQ7MjM6TnhoMmdEZEt2MkR0bStUdEVmRzROc0I0?=
	=?utf-8?B?dEpJQ2ZndUVtU2FIYkNKajdQMXJENjF4ZEhNbUkvZmNqSFJFRHl4eTRMY3B5?=
	=?utf-8?B?QjRFbjdsUVFpREtsMTlsbUxMZFJrcU9tQ3pNOW5XU2tZckRUK0FPeE1SUXJT?=
	=?utf-8?B?T2dNUXJBNUFTWWl3bE1JNkNzNU9pTnBvV0RBcUpkTnFVZzlJeDQwa1h4TXZO?=
	=?utf-8?B?QmRxL3VFK3BRVHFTY08vaStDaS9XSWNuNy9FdmRWMVZaQVg5bzhwMnlwL3Qy?=
	=?utf-8?B?emRrN0FocUowTXBSalBFTzZFYzJqMG9qcFExRTJXR3F5R2phUkw0Z1JFeWRH?=
	=?utf-8?B?dHplMm4wbDhyL2VqQ01BS0VHcTEzc2FOOXVOMnNBcUZhanRkVUpaMkFpM3hj?=
	=?utf-8?B?dm9lY0hZTDNOYTVCUW1XR1RlRGtNM0xjaG9GWlhzeU1oMVdtOFZTd3lhSjdD?=
	=?utf-8?B?MGoxL1FaM3VEejFFWXFNK0hGQXkyVWFocjROQmFjTDBQZHhoa010OFpJNi9q?=
	=?utf-8?B?ckNEbi81MDYxWXpuQmlKS3g2d2pyM3k2NHJMZ2VhaTdMOHZ2TzYwdWF5WFc5?=
	=?utf-8?B?T0kwYTRrb3dKTVpXWmwwb3M0aG9QS1dSdzd1NVVsZ1QwS3RTUm1pYVBjaE5N?=
	=?utf-8?B?cWxkS3hCcFJjN0VwaWdTajZrYk1YNnNiamlBY1pFOVNtdWpQRDJ0UDZGd1k3?=
	=?utf-8?B?bmcxbkZKdVI4SkQ0MjR0VXE5cENjUm5yaUtJaE5kUnovODM5WGxtRWl6UWhW?=
	=?utf-8?B?dExKemNpSFU0Rk9kZllzT1ZJYXBOclJReGdOdGY3cGlja3puZ3lRWjhQUmdl?=
	=?utf-8?B?MnZLWWUzSEdCNU5Cbk0vb3B2dUI4R0RkUmFjRi9RU1lEM2xWQWs1ZCtocXlX?=
	=?utf-8?B?V2ZoKzBKZnptTW84akxFZkEzZmlVUC8reGQvUHEzOWdubVUrbzd1WGg1aitB?=
	=?utf-8?B?QjRTZGp1M25yK0R5MFhlNS8wZHQ3cll3eWJTbTNiMldFakJaVDJlcFBMTGdF?=
	=?utf-8?B?dEZLekZIQXU2Zkp6RDd5bnZqR2dScitmZmVHSkVxZnRxbHNkMUNKSFlNRWdZ?=
	=?utf-8?B?UGJtUkJ3akU4MThMSkxsdGwrYSsyQzZtTHJ5dEUyMThBclBweTBNbkpaY3Nx?=
	=?utf-8?B?bHR1dUNmeWM5dmtsNktRc1IxQy9JbTh0c2JHS2NKeDdndXl2Nll6QjhLMEQw?=
	=?utf-8?B?dUhDZnh4Mk9iMnA2S2xoZDdiVllrSTZTU0FsNEc4QW4rZXF1VWxadW8zb0FT?=
	=?utf-8?B?R0hwUXlJRGRYMlg3eWY1eWFVaG1BalRMdU5xNDZTMy84WEUvK3JseElPcXJC?=
	=?utf-8?B?TkdMeGFnL0tyM1dYSnRZQjZHcEl0UTMwbjlRaE1nZjlqbWhQQWp3RjRicDBL?=
	=?utf-8?B?Z3BNMmJWWlo1N1k2ZW1JVG81S2FQMGFpTmJ1VjZVRkhnYllkRHQvZ3FHSzhR?=
	=?utf-8?B?dFllWEt0VlFCRi9PRjNWU29XM1NPeUtjaExUU0lWL21qbElUWVhVNDJLZWtj?=
	=?utf-8?B?NDZrVDBma0xzdmxTZVo3VWdTRGFtU0hxSk9INHdIaGk4Z0xISUpIbFMzOFNo?=
	=?utf-8?B?emlFcU1JcEp3RHc2UDdsV25uM2JxNXpiMmxyNUl6NFltL0pYYmROT3F1RnJH?=
	=?utf-8?B?WXBhbnN2TG8xN1BSVzJKVXQ5ditOUU9leE4rMVltZ3NTRVZiUFU5RnJDWFFs?=
	=?utf-8?B?RWFiRjRvbmx4aGF3akZTRU1CWUZMdXpTZ1U3SEd1dVRkOG5mUzVPV0NsUFVu?=
	=?utf-8?B?aU14MWN1Q3VSYmQ1VkhMS1p5UGFLaHBuL1ZEUUdGVGpzOGNnUGoxczVNWk91?=
	=?utf-8?B?Z2xvSENjekNMVXV1ZFNOb3BiMW5VMFZoU0JydElqNXMrVlRrR3k3c3FOUG9Y?=
	=?utf-8?Q?cHWTwhc86QtXo=3D?=
X-Microsoft-Antispam-PRVS: <VI1PR04MB42719187E7F5BDE0D59D2B4196600@VI1PR04MB4271.eurprd04.prod.outlook.com>
x-forefront-prvs: 09497C15EB
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(39840400004)(346002)(366004)(376002)(136003)(396003)(199004)(189003)(305945005)(99286004)(7736002)(36756003)(52116002)(76176011)(31696002)(3846002)(316002)(68736007)(2906002)(58126008)(256004)(6116002)(6246003)(66066001)(64126003)(2616005)(53936002)(65956001)(25786009)(508600001)(71190400001)(4326008)(186003)(65806001)(14454004)(6486002)(446003)(6512007)(229853002)(31686004)(11346002)(6506007)(53546011)(476003)(106356001)(486006)(386003)(44832011)(65826007)(42882007)(26005)(8936002)(81166006)(6916009)(81156014)(102836004)(6436002)(8676002)(97736004)(71200400001)(105586002)(74482002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0402MB3544;
	H:AM6PR0402MB3863.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: QNSge8FPJ/211Ie2ZZ53fxSTTVUfldtV95dhULYq3DeSTr3HgrxtdO/8nePghatas7+rQv+fgyfyNBLBI0LRQAkV2wf6AbaFAtGOzU1whs0OZwLUcMsSnib16e+c6nUWNz1b5rIJvKdnuzY162ChlZh7XHa44EW3uGE4duyMKjjwLVhnSCLfyF6hLjXP4u6WH942sy+XYp/6Gh63jgxUw47oSQtyxiNpRYSKgo8pSwZm1ErGKZLSNydlr+BW8NMmgZFCyoCf/Tg7HK3cS8LxdWhfJkS10msdIkOpHqvAv4mYaAA2NibiMJwbV9Kow0vWm2lNdtfEsuedP8w278OwJ+IGAcWOtOV5Oiej0Tvpa2s4U/77oZtjjlPZMajP/e7VhOA4Ivspv3D50uHgiIXBOq9nXrCEataYgBCAC+txHmg=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3544
X-CodeTwo-MessageID: 20190215101520.e88c51c9-0e33-4899-be96-2c5265c075c5@eu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT031.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.236.92.113; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(376002)(346002)(396003)(39840400004)(136003)(2980300002)(189003)(199004)(31686004)(36756003)(386003)(229853002)(74482002)(6506007)(6486002)(64126003)(23676004)(6512007)(7636002)(6246003)(99286004)(2906002)(50466002)(53546011)(31696002)(76176011)(7596002)(305945005)(7736002)(2486003)(6116002)(246002)(8676002)(3846002)(106466001)(4326008)(44832011)(486006)(356004)(436003)(446003)(106002)(26005)(336012)(11346002)(14454004)(6916009)(6346003)(8936002)(65806001)(476003)(25786009)(2616005)(508600001)(316002)(66066001)(186003)(42882007)(65826007)(47776003)(102836004)(65956001)(126002)(58126008);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4271;
	H:eu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
	PTR:eu2-emailsignatures-cloud.codetwo.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: ef489038-cc4f-45a2-8a0b-08d6932e7beb
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600110)(710020)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR04MB4271; 
X-Microsoft-Exchange-Diagnostics: 1; VI1PR04MB4271;
	20:ESZXu7livhyo+qgQ5ag9Zru4htG6hvIs3xfg7Of3my/2hgag7Yt4N35O18wzf3GWJ8UHFzUWIB++aWSsh8IXih6ZogVuB1KeiB3eeeBZEcj3drvrxJHlLUWYDNzkM0Mp3eREu9JyWtJ+sDZiMJ62Owq4RKAq3oevGEyyu1y84KA=
X-Forefront-PRVS: 09497C15EB
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtWSTFQUjA0TUI0MjcxOzIzOkYzOFI2U1Y5NGtoMXR4NjMzeWdxb05tL1Mv?=
	=?utf-8?B?ZVcyVDZMTWRhMTl1OGd5Q3hzYWlBNGIrNy9RNFN0c1pQcEs4RjRJWWN3cWNF?=
	=?utf-8?B?VWJQOGlra2FJdzlCQnk1ZWZvS3dtaDdueUJUMUNDNjBTTUZLZHFkT3JPS2xN?=
	=?utf-8?B?VnNTSUk0VzVGV3NnR3hCc1lGdTdqbGpUQTExRWtYM2lweVlOenRwcjR0OUNq?=
	=?utf-8?B?RHZydVJWSGhqdWN4MWxlaVZWVUE2RUFFOGdwc0dxQXRXblM0bFVUQUI3dkFI?=
	=?utf-8?B?QlZ1eUlIRTAxNGVZTVhWNkIvNE1xcld0cWprenFaYkZYVDBoM1dWaHpaTzJn?=
	=?utf-8?B?SGY0dnpFODhoVzZXeEwvTzVSL3ZsQklzUlp5WDBHQ2tvR3poQnpmT1hHWWlK?=
	=?utf-8?B?SDdhemhWNnhFSVNYcTVMaHdLbTlwV0VoMEZIRnA1cDlCeVZFakFRRWlwSWhy?=
	=?utf-8?B?bm5QY2xBaG8vV2F0YWVJTWFvNU1QSVE0VW9CMWZodDB6MytlY0c0Rk4rVlQ4?=
	=?utf-8?B?Q2daQ1hlR2RJeUFScEIxSmhIWlI0M0IxR0JjNHdlaE1zYnprb2svRXVGR1Fu?=
	=?utf-8?B?ZkRtRlBRVUNsY2ZnZ2U4QnJOZXhobFlOZlo1aGM1T0E2ZURqZko5VUp5WFVH?=
	=?utf-8?B?SmpBZDRUQzRvZ1Rtb2dJS2dHS21TelhuS3h3NU5FNnZ3NWx5SjVnU3AxUWkw?=
	=?utf-8?B?ajRSc3BvV3F3MVFhRzdLMmxzcjBvbm5yVDBPSVpvbWFEY2liZHNGTTkzRGpt?=
	=?utf-8?B?RHlwemRvcjF4YnFrVjI3QzYrWjgreklMdnJiVjhUcWIraTdIaCtHTkJ5a3Zo?=
	=?utf-8?B?Nktqc2JWdjdta282V3JSUDFscW9ubmgyajRTYUlYOG41d3lodkVEclA5QnhE?=
	=?utf-8?B?dUJWbjNJd2tvOWVaR09iZ3V2NmJFQVZEMFAvOGltNmc2RjQwTmR5V25vWDNO?=
	=?utf-8?B?OFBQVlc4NFR5RDM1TDRCckN3WkZneW51U0ZKMTE1eGNGVzQyZFB6WTkwWGVw?=
	=?utf-8?B?QjJ4NW05Y0QxRjg4cG9wZk5Ob0xDZzBxeXRMeTVpSEROaUs2S3Fzc3lhaXF3?=
	=?utf-8?B?V1lXd0ZPRE1aWG1xT0RUWkg2SXEwZDUxbFdjNzZtVEh4VUJXVnBaQUdXR3Ri?=
	=?utf-8?B?K29CbTlCZm50MEZNVlc3OVA3VEYrSEQ5amZ5WU5OQWdUYjM5VlM5OEVsTE9O?=
	=?utf-8?B?Zng0RkIzbUlGaU1KSy9nWlhVVjdMUHU1TDdTSG9TQ3JDMHpySFpoUTlCSVA1?=
	=?utf-8?B?dGoyWWViMzdvM0QrR1BLRFJ6QUY5bHFVdnNGZ2RvdHlsbVBxeFAvcFpZR2d0?=
	=?utf-8?B?OStKaVFYdFJLOUt0R2dOaDNHTHY5OE1CYi8rMmljY29Hb3NZTzFBNlg1emY3?=
	=?utf-8?B?bU5OMy8vc1BiYVRRai9kOGVwWm85OEtVTlJURHdYMkMxMTY2OHJOYVBIZXNO?=
	=?utf-8?B?MU1YdkhzVnk3MEtTU3pSSlVsVlhhdVBkZlJObVUzWnllWVVQU3ZNSWdVVzhR?=
	=?utf-8?B?d0VJbkE4RWhhdTlXUUVUQ1VaRnJXOXNrMkFZRGZkYUVtWDZsaHFGaHJYR3pl?=
	=?utf-8?B?cmY2bDJVRTRscENYNjJYMkZXeVBROEw2OEh6Q1hYcFBkL1VSMEZyNjdDS3F6?=
	=?utf-8?B?NEVic0Y2SVdnbi9Xd0h1aTh5ZHBpQ0dLVGV6cGNFRkRZNmdQNzROVHVZdllT?=
	=?utf-8?B?WE5qT1hpWG94U0J1Z3JNR0Rxc3c5SkJwUzlMUWh2U2VFdG53UUtwR1RtbUdk?=
	=?utf-8?B?czRJdE1pVHBQQjFNVlRpdGVlU1lmZmZSck1DamRwTUtzcnJIVFFXWjYybksr?=
	=?utf-8?B?TmdBNjlwZFpCU1g5enpiU1R1K2NSU29UbzBUNW1kcFNiZkhDekdOZ3BXd2dQ?=
	=?utf-8?Q?X5ZDgvDQawQ=3D?=
X-Microsoft-Antispam-Message-Info: bROgOJ03qELn2oapoTJhZJBKybAXOWt42dk+tYpD47D0WXpNwSzNBvyIsJz5Xch5tvWCKReIz8SsFhOa8o2bGHhucBiL7SjjxT7hxMj5ACZIck68ozsQaxgqs/Wz5m5+rjDYKotx+tpiAlzCwuQJlaJFQG6/GkSdapmk8m3Z7tkRf6o1R+S4w6OR1B94mUatI/MQsWO1NuT4E9pANP6S/n9AHRDit85ug2K9DEjVQpMfHDUlTpOOvPUwFREqMzAPWdgjryN21m4Uy6qX0weeWky7Yzx96KywdZC/9sN0FjqW87/a6c6lgq5aWuq1gL6g/O81HsPJCXr9GmC4YAEz3ihrxeQCoGVFAIyErWkGbOKdDRwo25xYsMPRDxl1M6Qp3R7mILGpI1C1vFPVbVYeaNDpXBb9NV7FEhrGJL8+qSw=
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2019 10:15:23.9118 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c9dd3a4-b593-46d9-17ba-08d6932e8035
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.236.92.113]; Helo=[eu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4271
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 15 Feb 2019 18:49:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <7DDD039C608F604EB6417D990D4E77C9@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

VGhlIGZpcnN0IHRoaW5nIHlvdSBzaG91bGQgcmVhbGl6ZSBpcyB0aGF0IHByb3ZpZGluZyB5b3Vy
IHJlY2lwZSBmaWxlcyB3aWxsIA0KcHJvZHVjZSBhIGxvdCBtb3JlIGluc2lnaHQgaW50byB5b3Vy
IGlzc3VlIHRoYW4gbGVuZ3RoeSBlLW1haWxzIGV2ZXIgd2lsbC4NCg0KV2hhdCBJIHdhcyBhdHRl
bXB0aW5nIHRvIGNvbnZleSB0byB5b3UgaXMgdGhhdCB5b3Ugc2hvdWxkIG1vdmUgeW91ciAiZGlz
dHJvIiANCnBhcmFtZXRlcnMgaW50byB0aGUgIm1hY2hpbmUiIGNvbmZpZy4gVGhlbiBqdXN0IGJ1
aWxkIGZvciBtdWx0aXBsZSBtYWNoaW5lcy4gDQpJZiB5b3Ugd2FudCB0byBoYXZlIG11bHRpcGxl
IGltYWdlIHR5cGVzLCBqdXN0IGNyZWF0ZSBtdWx0aXBsZSBpbWFnZSByZWNpcGVzLCANCmFuZCBi
dWlsZCB0aGVtLg0KDQpZb3UgY2FuIHVzZSB0aGUgd2hvbGUgYnVpbGQgdHJlZSBmb3IgbXVsdGlw
bGUgbWFjaGluZXMuIENoYW5naW5nIERJU1RSTyBoYXMgDQpsb3RzIG9mIGV4dHJhIGVmZmVjdHMg
b24gcGFja2FnZXMsIGluIHRoZSBwYXN0IGl0IHdhc24ndCBwb3NzaWJsZSBhdCBhbGwgDQp3aXRo
b3V0IHdpcGluZyB0bXAsIGFuZCBpdCBzdGlsbCBpcyBub3QgYSBuaWNlIHRoaW5nIHRvIGRvLCBh
cyB5b3UgaGF2ZSANCmRpc2NvdmVyZWQgZm9yIHlvdXJzZWxmIG5vdy4NCg0KWW91J2QgaW52b2tl
IHlvdXIgYnVpbGQgbGlrZSB0aGlzOg0KDQpmb3IgbWFjaGluZSBpbiBhcHBsZS1waWUgb3Jhbmdl
LXBpZSBiYW5hbmEtcGllDQpkbw0KICAgTUFDSElORT0kbWFjaGluZSBiaXRiYWtlIHJlZC1pbWFn
ZSBibHVlLWltYWdlIGdyZWVuLWltYWdlDQpkb25lDQoNCllvdSBjYW4gYnVpbGQgbXVsdGlwbGUg
aW1hZ2VzIGZvciB0aGUgc2FtZSBtYWNoaW5lIGluIHBhcmFsbGVsLCBhbmQgeW91IGNhbiANCmJ1
aWxkIG11bHRpcGxlIG1hY2hpbmUgaW4gdGhlIHNhbWUgZW52aXJvbm1lbnQgKG5vdCBpbiBwYXJh
bGxlbCB5ZXQsIA0KdW5mb3J0dW5hdGVseSwgYnV0IHlvdSBwcm9iYWJseSBkb24ndCBoYXZlIHRo
YXQgbWFueSBtYWNoaW5lcyB0aGF0IHRoaXMgbWlnaHQgDQpyZWFsbHkgaGVscCkuDQoNCg0KT24g
MTQtMDItMTkgMTk6MDQsIFRpbW90aHkgRnJvZWhsaWNoIHdyb3RlOg0KPiBJdCdsbCBiZSBtdWx0
aXBsZSBzb2Z0d2FyZSBsb2FkcyAod2l0aCBkaWZmZXJlbnQgcmVxdWlyZWQga2VybmVsIG1vZHVs
ZXMgYW5kIA0KPiB0aGluZ3MgbGlrZSkgb3ZlciBhdCBsZWFzdCB0d28gbWFjaGluZXMuIFRoZXNl
IHByb2R1Y3RzIHdpbGwgZG8gdmVyeSBkaWZmZXJlbnQgDQo+IHRoaW5ncyBidXQgSSB3YW50IHRv
IHVzZSB0aGUgc2FtZSBiYXNlIGFuZCB0YWtlIGFkdmFudGFnZSBvZiBPRSdzIHNzdGF0ZSwgZXRj
Lg0KPiANCj4gU28gSSB3YW50IHRvIGJlIGNsZWFyLCBJIGNhbiBmaWd1cmUgb3V0IGhvdyB0byBw
aWVjZSB0aGluZ3MgdG9nZXRoZXIgd2l0aCBiYXNoIA0KPiBzY3JpcHRzIHRvIGFjY29tcGxpc2gg
d2hhdCBJIHdhbnQsIGJ1dCBJIGZlZWwgbGlrZSB0aGVyZSdzIGEgImNvcnJlY3QiIHdheSB0byAN
Cj4gbWFuYWdlIG11bHRpcGxlIGJ1aWxkcyAodGhhdCB1c2UgZGlmZmVyZW50IGRpc3Ryb3MsIG1h
Y2hpbmVzLCBlbnZpcm9ubWVudCANCj4gdmFyaWFibGVzKSB0aGF0IEknbSBtaXNzaW5nLiAoQW5k
IHBlcmhhcHMgSSd2ZSBhbHJlYWR5IHN0dW1ibGVkIG9uIHRoZSANCj4gImNvcnJlY3Qgd2F5IiBi
dXQgaXQncyBub3QgYXMgZWxlZ2FudCBhcyBJJ2QgbGlrZSBzbyBJJ20gbm90IGhhcHB5IHdpdGgg
aXQgDQo+IHlldC4pIFByb2JsZW0gbnVtYmVyIG9uZSBpcyB0aGF0IHRoZSBidWlsZCBkaXJlY3Rv
cnkgZG9lc24ndCBzZWVtIHRvIGJlIA0KPiBzb21ldGhpbmcgdGhhdCBpcyBpbnRlbmRlZCB0byBi
ZSBzb3VyY2UgY29udHJvbGxlZC4gSSBmb3VuZCB0aGUgVEVNUExBVEVDT05GIA0KPiBmbGFnIGxh
c3QgbmlnaHQgc28gdGhhdCBhbnN3ZXJzIG15IHF1ZXN0aW9uIG9mIGhvdyB0byBzb3VyY2UgY29u
dHJvbCBteSBzc3RhdGUgDQo+IG1pcnJvciBsb2NhdGlvbnMgYW5kIGV0Yy4gSSBjYW4gd3JpdGUg
aW5zdHJ1Y3Rpb25zIHRoYXQgYXJlIGJhc2ljYWxseSAiZ2l0IA0KPiBwdWxsIHBva3ksIGdpdCBw
dWxsIHRoZSBsYXllcnMsICdURU1QTEFURUNPTkY9Li4uIHNvdXJjZSBvZV9pbml0X2J1aWxkX2Vu
dicsIA0KPiBiaXRiYWtlIGFkZF9sYXllcnMiIEJ1dCB0aGVuIHdoYXQgaWYgeW91IHdhbnQgdG8g
YnVpbGQgcHJvZHVjdCBhIG9yIHByb2R1Y3QgYj8NCj4gDQo+IEkgdGhpbmsgd2hhdCBJIG1heSBo
YXZlIGp1c3Qgc2V0dGxlZCBvbiBpcyB0byBtYWtlIHN1cmUgSSd2ZSBnb3QgbXkgZGlzdHJvcyAN
Cj4gc2V0IHVwIGNvcnJlY3RseSAob25lIGRpc3RybyBwZXIgcHJvZHVjdCkgYW5kIGFkZCBpbiBt
eSBvd24gREVWQlVJTEQgZmxhZyB0byANCj4gbXkgdGVtcGxhdGUgbG9jYWwuY29uZi5zYW1wbGUg
d2hpY2ggd2lsbCBkbyB0aGluZ3MgbGlrZSB0dXJuaW5nIG9uIA0KPiBkZWJ1Z190d2Vha3MsIEVO
QUJMRV9VQVJUIGFuZCBhZGRpbmcgZHJvcGJlYXIvZXRjLiBBbmQgdGhhdCdsbCBsZXQgbWUganVz
dCANCj4gY29uZmlndXJlIHRoaW5ncyBieSBzZXR0aW5nIERJU1RSTywgTUFDSElORSBhbmQgREVW
QlVJTEQ9MS8wLiBJJ20gcnVsaW5nIG91dCANCj4gbXVsdGljb25mLiBJIGRvbid0IHdhbnQgbXkg
YnVpbGRzIHRvIHRha2UgZml2ZSBtaW51dGVzIGJlZm9yZSBJIGZpbmQgb3V0IHRoYXQgDQo+IEkg
aGF2ZSBhIHR5cG8gaW4gYSByZWNpcGUgYW5kIEkgY2FuIGdldCB0aGUgc2FtZSBiZWhhdmlvciBi
eSBqdXN0IGNvbnRyb2xsaW5nIA0KPiB0aGUgYWJvdmUuIEknbGwgcHJvYmFibHkgc2V0IHRoZSB0
bXBkaXIgdG8gc29tZXRoaW5nIGxpa2UgInRtcF9ESVNUUk9fTUFDSElORSIgDQo+IHRvIGF2b2lk
IGRpZmZlcmVudCBjb25maWdzIHN0ZXBwaW5nIG9uIGVhY2ggb3RoZXIuDQo+IA0KPiBEb2VzIHRo
aXMgc2VlbSBsaWtlIHRoZSBwcm9wZXIgd2F5IHRvIGRvIHRoaW5ncz8NCj4gDQo+IA0KPiANCj4g
T24gV2VkLCBGZWIgMTMsIDIwMTkgYXQgMTE6MTggUE0gTWlrZSBMb29pam1hbnMgPG1pa2UubG9v
aWptYW5zQHRvcGljLm5sIA0KPiA8bWFpbHRvOm1pa2UubG9vaWptYW5zQHRvcGljLm5sPj4gd3Jv
dGU6DQo+IA0KPiAgICAgVHdvIHByb2R1Y3RzIHNvdW5kcyBsaWtlIHR3byBtYWNoaW5lcy4gSnVz
dCBjcmVhdGUgYSBtYWNoaW5lLmNvbmYgZm9yIGVhY2gNCj4gICAgIHByb2R1Y3QgKGV2ZW4gaWYg
dGhleSB1c2Ugc2ltaWxhciBoYXJkd2FyZSksIHRoZW4geW91IGRvbid0IG5lZWQgb3ZlcnJpZGVz
DQo+ICAgICBlbHNld2hlcmUuDQo+IA0KPiAgICAgT0UvWW9jdG8gaXMgc21hcnQgZW5vdWdoIHRv
IGZpZ3VyZSBvdXQgd2hhdCBuZWVkcyB0byBiZSAocmUpYnVpbHQuIFNvbWUgT0UNCj4gICAgIHBy
b2plY3RzIGJ1aWxkIHRoZSBzYW1lIGltYWdlKHMpIGZvciBvdmVyIDQwIG1hY2hpbmVzIChhbmQg
Y291bnRpbmcpLi4uDQo+IA0KPiAgICAgT24gMTQtMDItMTkgMDE6MzQsIFRpbW90aHkgRnJvZWhs
aWNoIHdyb3RlOg0KPiAgICAgID4NCj4gICAgICA+IEhpLCBJJ3ZlIGJlZW4gc3RydWdnbGluZyBh
IGJpdCB3aXRoIHRoaXMgcXVlc3Rpb24uIEkgd2FudCB0byB1c2UgWW9jdG8gdG8NCj4gICAgICA+
IGJ1aWxkIHR3bysgcHJvZHVjdHMgd2l0aCBzZXBhcmF0ZSBkZXYvcHJvZCBpbWFnZXMgZm9yIGVh
Y2ggKGRldiBpbmNsdWRpbmcNCj4gICAgICA+IGRlYnVnLXR3ZWFrcywgZXRjLikuIEkndmUgcnVs
ZWQgb3V0IHNlcGFyYXRlIGltYWdlIHJlY2lwZXMgYmVjYXVzZSBteSBkZXYNCj4gICAgICA+IGJ1
aWxkcyBuZWVkIEVOQUJMRV9VQVJUIG9uIG15IFJhc3BiZXJyeVBpIGFuZCB0aGF0IG5lZWRzIHRv
IGJlIHNldCBhdA0KPiAgICAgdGhlIGNvbmYNCj4gICAgICA+IGxldmVsIChJJ3ZlIGdvdCBpdCBz
ZXQgY29uZGl0aW9uYWxseSBpbiBteSBiYXNlIGRpc3QgY29uZikuIE11bHRpY29uZmlnDQo+ICAg
ICBsb29rZWQNCj4gICAgICA+IHByb21pc2luZywgYnV0IEknbSBub3QgaGFwcHkgYWJvdXQgaG93
IGxvbmcgdGhlIHBhcnNpbmcgdGFrZXMgdG8gc3RhcnQgYQ0KPiAgICAgID4gYnVpbGQuICItLXBv
c3RyZWFkIiBsb29rZWQgbmljZSwgYnV0IEkndmUgYmFyZWx5IHNlZW4gaXQgbWVudGlvbmVkIHNv
IEknbQ0KPiAgICAgID4gd29ycmllZCB0aGF0IGl0J3Mgbm90IHdlbGwgc3VwcG9ydGVkLg0KPiAg
ICAgID4NCj4gICAgICA+IEJhc2ljYWxseSwgd2hhdCBkbyBtb3N0IHBlb3BsZSBkbyBmb3IgY29u
dHJvbGxpbmcgdGhlaXIgYnVpbGRzPw0KPiAgICAgID4gVGltIEZyb2VobGljaA0KPiAgICAgID4g
RW1iZWRkZWQgTGludXggRW5naW5lZXINCj4gICAgICA+IHRmcm9laGxpY2hAYXJjaHN5cy5pbyA8
bWFpbHRvOnRmcm9laGxpY2hAYXJjaHN5cy5pbz4NCj4gICAgIDxtYWlsdG86dGZyb2VobGljaEBh
cmNoc3lzLmlvIDxtYWlsdG86dGZyb2VobGljaEBhcmNoc3lzLmlvPj4NCj4gICAgICA+IDIxNS0y
MTgtODk1NQ0KPiAgICAgID4NCj4gDQo+IA0KPiANCj4gLS0gDQo+IFRpbSBGcm9laGxpY2gNCj4g
RW1iZWRkZWQgTGludXggRW5naW5lZXINCj4gdGZyb2VobGljaEBhcmNoc3lzLmlvIDxtYWlsdG86
dGZyb2VobGljaEBhcmNoc3lzLmlvPg0KPiAyMTUtMjE4LTg5NTUNCg0K

