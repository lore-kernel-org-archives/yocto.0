Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDB7EE00B77; Mon, 12 Nov 2018 18:08:08 -0800 (PST)
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
	*      [40.107.15.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 18005 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Nov 2018 18:08:05 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr150044.outbound.protection.outlook.com [40.107.15.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8BBFE00B45
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 18:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=JPr3cFBnvOCLNU5X3/b8ln5FZpswfa+0Vqqiqj9tt7w=;
	b=eK/tRfJuLlrBCHWiTkX9g19Ta1ep1crisI9Y4b02g4uXq2JpHid0N9/KwCE3wivWtkBy1binR1AE5hX/ijP8MNkhlqeRWv4zQenfoUeIq2gzclmUWo7f763I3Mx2vNVfE6QKURTzCPhfz2UAtj4OzQ9t2QF2R67ajMeGg86U8HE=
Received: from HE1PR02CA0103.eurprd02.prod.outlook.com (2603:10a6:7:29::32) by
	AM6PR02MB3976.eurprd02.prod.outlook.com (2603:10a6:20b:41::33) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.31; Mon, 12 Nov 2018 13:47:14 +0000
Received: from HE1EUR01FT005.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::204) by HE1PR02CA0103.outlook.office365.com
	(2603:10a6:7:29::32) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1294.24 via
	Frontend Transport; Mon, 12 Nov 2018 13:47:14 +0000
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.236.92.113 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.236.92.113;
	helo=eu2-emailsignatures-cloud.codetwo.com;
Received: from eu2-emailsignatures-cloud.codetwo.com (52.236.92.113) by
	HE1EUR01FT005.mail.protection.outlook.com (10.152.1.229) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1339.10 via Frontend Transport; Mon, 12 Nov 2018 13:47:12 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (23.103.133.184)
	by eu2-emailsignatures-cloud.codetwo.com with CodeTwo SMTP
	Server (TLS12) via SMTP; Mon, 12 Nov 2018 13:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=JPr3cFBnvOCLNU5X3/b8ln5FZpswfa+0Vqqiqj9tt7w=;
	b=eK/tRfJuLlrBCHWiTkX9g19Ta1ep1crisI9Y4b02g4uXq2JpHid0N9/KwCE3wivWtkBy1binR1AE5hX/ijP8MNkhlqeRWv4zQenfoUeIq2gzclmUWo7f763I3Mx2vNVfE6QKURTzCPhfz2UAtj4OzQ9t2QF2R67ajMeGg86U8HE=
Received: from AM0PR02MB4083.eurprd02.prod.outlook.com (20.177.108.209) by
	AM0PR02MB5138.eurprd02.prod.outlook.com (20.178.23.25) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1294.28; Mon, 12 Nov 2018 13:47:06 +0000
Received: from AM0PR02MB4083.eurprd02.prod.outlook.com
	([fe80::a1e1:91ea:196b:72ce]) by
	AM0PR02MB4083.eurprd02.prod.outlook.com
	([fe80::a1e1:91ea:196b:72ce%4]) with mapi id 15.20.1294.044;
	Mon, 12 Nov 2018 13:47:06 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Set linux capabilities on binary on a recipe in meta-oe
	layer
Thread-Index: AQHUeo4zafPn1fzvIEeq794EqpWicQ==
Date: Mon, 12 Nov 2018 13:47:06 +0000
Message-ID: <0cbd0504-0890-64d8-c074-3857bb7cbd10@topic.nl>
References: <CAFd=ochAjUo7FfHQJFcQHYE7Y2jRD8UHUhRBpGvvTRLLgfwK=Q@mail.gmail.com>
	<CAFd=ocj4eHG89wt7yM0_w3YqrM9788+CZp=gDXgQfQsE6+9v2Q@mail.gmail.com>
	<3658853.D14kAIKcfP@stinger>
	<CAFd=ocgV2baea-PsHJ9N9OiTS-rTQ-mux=7qwxmCU=Y8JBJ+Aw@mail.gmail.com>
	<87zhuiz5cx.fsf@snkmail.com>
	<CAFd=ociPq2njZqnx_ruRK_Pe5ECDMMo+kP5SE82iVBauqaEF-w@mail.gmail.com>
In-Reply-To: <CAFd=ociPq2njZqnx_ruRK_Pe5ECDMMo+kP5SE82iVBauqaEF-w@mail.gmail.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
x-clientproxiedby: AM6PR0202CA0053.eurprd02.prod.outlook.com
	(2603:10a6:20b:3a::30) To AM0PR02MB4083.eurprd02.prod.outlook.com
	(2603:10a6:208:da::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM0PR02MB5138;
	6:T4ffLRYWGSR0pYdwfcnq2+5SMXkMeNN/VxFk9ivYnbHkzezQhrSKDLMw/Ozo/ydWa0WPWfMuWsAnDafl3XZwm1XVyYMmyosfW4PebDZBEzekgeEtYn4fvfFQSfetbMhwCjXypw5WwKJFXy+BtGv66vf793Honb6RBR3D+rUymJo64gtKvOX8/uEaMuDmlXzzJz9HDjqh18gfJgtjBhYBNgGWDiQJGIbdIvhzd1mgC/ij/f+TATSw3hXE9RaG+qsz38Tw0yN53Gr1q+ehSm37MonXAXWX5JIdPm5M4Xk8N9U69PuGQFp3iYpjmc6apo9nZi3Wp8e0IFaGfcdIYB0pv4QwXKuG76p1S6zhtxV4VWU69kYYwjmu65seEAZ4czbyU7p4dxBU26oULRBrNW4iOZkGrUnozpRUiiG63FEV2DOaHUBvKYs8n3S7y7xSEBEWK9M+vbI35aW483B4qIu3sw==;
	5:85ZjvfDIbVR3C3MemlCqnfc7Txs1nPQnfpermOhIzjYQ8wMzVsRjeVQry4SuUFRjIlPzGXHWnrmyP6Bzau02pC2JI44XnxojzYmnLCeJS4kSi1mNVXl6/M8djqQXScrcHWqlCBjme3lckF4EIFzFmIs2cpGDUkfk4tsWoJmQAtM=;
	7:zqdreJ6dTi/fcLjiScvK3c3mEybbq4LVOSwH3b6b3esz62+px+3v5cqAM8gUw7Wr8BZU8dPl62rUECa6caE5L76g4TRRqyuNHCQ0+fX3gFkzfGiL3JGGsf5LHEDa6WqRde2+0sOgvWvh8zP4ZgdP3Q==
X-MS-Office365-Filtering-Correlation-Id: 39b12d8d-6c87-4a31-bf52-08d648a55968
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390040)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM0PR02MB5138; 
X-MS-TrafficTypeDiagnostic: AM0PR02MB5138:|AM6PR02MB3976:|AM6PR02MB3976:
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
X-Microsoft-Antispam-PRVS: <AM6PR02MB39760315986D4F6CC2D6F87D96C10@AM6PR02MB3976.eurprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158);
	UriScan:(85827821059158); 
X-MS-Exchange-SenderADCheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3231402)(944501410)(52105112)(3002001)(93006095)(148016)(149066)(150057)(6041310)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123560045)(201708071742011)(7699051)(76991095);
	SRVR:AM0PR02MB5138; BCL:0; PCL:0; RULEID:; SRVR:AM0PR02MB5138;
	BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93004095)(3231402)(944501410)(4982022)(52105112)(3002001)(148016)(149066)(150057)(6041310)(20161123558120)(20161123560045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(201708071742011)(7699051)(76991095);
	SRVR:AM6PR02MB3976; BCL:0; PCL:0; RULEID:; SRVR:AM6PR02MB3976; 
x-forefront-prvs: 0854128AF0
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(346002)(396003)(39840400004)(366004)(136003)(376002)(189003)(199004)(8676002)(65956001)(66066001)(486006)(65806001)(1730700003)(446003)(11346002)(2616005)(2351001)(97736004)(102836004)(14454004)(14444005)(256004)(6512007)(2501003)(5640700003)(6306002)(6436002)(476003)(68736007)(53546011)(386003)(6506007)(3846002)(106356001)(81156014)(6116002)(81166006)(25786009)(42882007)(8936002)(44832011)(2906002)(6486002)(966005)(93886005)(2900100001)(65826007)(36756003)(186003)(64126003)(53936002)(74482002)(31686004)(6916009)(76176011)(58126008)(7736002)(5660300001)(316002)(229853002)(478600001)(26005)(31696002)(6246003)(99286004)(71200400001)(305945005)(71190400001)(52116002)(105586002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR02MB5138;
	H:AM0PR02MB4083.eurprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-Microsoft-Antispam-Message-Info-Original: rQee27UrhVO1CeTrzr9i4vc8vGhS7m5Uv88gtqBLRcGkFJm5A1ceQnILasRori8/Nl4x1ZxRQYASBuJhmPWdMO30qw98ZfgNecj369YOrJTcrXB5LBdQDKBa7GA6tBLnp6bw8hybdeYNXqIERb0fOXbDpHTAnWtFMcKnBaxyjkCoz4jKIX5xvt5br13eWDlQjj8i7PK9mK2o1A2OnO3bWUoakht+EINI4Jt1GSJBP188Eog+tS5i7zy2paktJV49+/rWV5KrhrGziLKnEzx6V7Ra5NiTx8/vsSTsGLcWOdefIhjTOZUxvISL1GeL2J3kQOZPxPVoA3ai50blr+kTTMhYX+2Lk8NM1Wpj2C9y24w=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR02MB5138
X-CodeTwo-MessageID: 20181112134708.9dc0b773-215d-4c1d-8e27-09303a73a555@eu2-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT005.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.236.92.113; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(396003)(39840400004)(346002)(136003)(376002)(2980300002)(438002)(199004)(189003)(93886005)(5640700003)(478600001)(6306002)(6486002)(229853002)(6246003)(6512007)(7736002)(7596002)(305945005)(7636002)(47776003)(2906002)(65806001)(6116002)(3846002)(66066001)(25786009)(2351001)(106466001)(36756003)(65956001)(246002)(64126003)(31686004)(53546011)(386003)(6506007)(26005)(99286004)(6346003)(8936002)(14444005)(8676002)(1730700003)(2900100001)(102836004)(126002)(76176011)(966005)(14454004)(2486003)(23676004)(74482002)(44832011)(186003)(50466002)(316002)(58126008)(106002)(2616005)(476003)(446003)(5660300001)(356004)(6916009)(31696002)(486006)(436003)(65826007)(2501003)(11346002)(336012)(42882007);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR02MB3976;
	H:eu2-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass; LANG:en;
	PTR:eu2-emailsignatures-cloud.codetwo.com; A:1; MX:1; 
X-Microsoft-Exchange-Diagnostics: 1; HE1EUR01FT005;
	1:S1ACfvMRLCUtEynTzrvlBrxcHuZoRyZo0dzeQ8a5OJBstB+3hpdjGOgHWPLDvVqIHvsUgFH4qoid63QhESBCHaXnj/XbxDymaIXEIEJi8uqlYJtItGwHExp0eYb00upX
X-MS-Office365-Filtering-Correlation-Id-Prvs: 98be0acc-7f01-4f1e-696d-08d648a5558e
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390040)(7020095)(4652040)(8989299)(5600074)(710020)(711020)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR02MB3976; 
X-Microsoft-Exchange-Diagnostics: 1; AM6PR02MB3976;
	3:Iwros5xHKGLWcTYpZFdbL8yQax1Qz7XZYqReZeufHYe7qaAn9o23w2Oxq3Bjiu+e80uT9wzoeQj1aPrHipQ6w6EniwsAROxC/zpJImnkyVD9fqg6tG7tMohqdIHnDNTtPM/Z0kMnI8UGprK77EdoutPVf4LGkLOHwCOpP0Y6TDFF4iKP7sQYAhwu3zgpzcmk1+WV1MzF6bH+6CW2XLnSG7DaKYmYexyho1T2gkbRrHzVqz5DG4YGKJoW09U+RCKGpBZhrSE2vPOAFUKll33TCRwPh6RWLDoMorCm5u98WljPvZ49zznqI4yDEB6ZFQXOJAG4QyCQrJQx//KlDqbLd29G2ZRY6Wb3uonezBw7dQA=;
	25:baZBYvPKcCo8zqvgTbAiETXnyMpQcSoa6rrZ1QOCTcQgnszdSKGIi3i0O9FtN104mvcadog7+a54z+Bb2mcV+YeWz3+R4x2wLzCw2pj/OnckOiYnyz353ntWL9MOKiXNego2iamQGdSilT26sAilrvhrR1LG7xmjSIM+M2kiN+X25sgK4A8kUKuUIkaCnwZl0nQj0PXjhtngEAsyeUORInuuqGnGPA5Gmvzp3BHz+4RRK8YeGHvPjhnkx9uE94bdzJkHFlmI19CXOViZqKGJDoz90k5TzmWFIZc3p0xyJi1SE0yA4KlM4aqHP8tOqlhbvj8XsytfYDp6Bc9AeSPokA==
X-Microsoft-Exchange-Diagnostics: 1; AM6PR02MB3976;
	31:QFWMvLqzDWf4MvDBYBH1CnvBxFb3joFXj8u+sDbM4F3cneKOFFIyy4xmSlnsssHFgGDajgUXdGBWK2rWrFFdOLLWBg1daWlJIdJGnxH3/snxpN8lO8f3XAkxmASIwn6xmqHVe5i9To9QV1dJL7cydyWxcnIGpzbhXb7oZ4jqjUkhooDI/7qrvU8SdAVPwD208WjE0U3LsBDUFHGJctKK3/jYs4YFS1YdPufyfoOBWKA=;
	20:Qh31zsPDn31I4dsm898KUcxbn4MoryjEricOZg9nzqDAdNTNQE06MYdzHmJFSLWJ8qJXYKFNNuUhf2Aq7A2mvwBBBTsKO2TGN7x48qSnQcu7gro4FZ2rNeHeHR5yk9PHowz2ifjwGFkAMQei9VXLnzLXZDsq+mFBObIYxgRLS3w=;
	4:C4NAAoQr51XbdoP5PdQDBznA45UPSU6Yjh8E0YptaAwW6k0odiVMwinu1kKDuITD97ohkEiO8Myvb3Wgp5fn7rJghuNfGhyCPFm+s4DmslE/1SC6tJsOr24SdNV1X0vrfkmvYn4eTGwAMR3f50ZR5QZ731cTy/ADvI2j+0LN5JQav/E1mWSRlIGRqrZgd2IXHUEUgxKnsmWjDn7C8B+IOsjWBgON7ClZQKK4wnPzP+MrVcvgY8Jta4MENrE2HAwDdUgAM+V1KNHvLC/dEqAElO8JePENAoyNZp4JYJ93laISy9ANRwHdWud80SBvtZ1A
X-Forefront-PRVS: 0854128AF0
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtBTTZQUjAyTUIzOTc2OzIzOlJHZFcreFh3SEF5WldocWtRRFNIbWZBRnAr?=
	=?utf-8?B?OHY2alhzNlIxcm5VcWh1UXVyQmZUZ0pRK3VoaXVGRjIyNGJrRWNXYUU0ODI5?=
	=?utf-8?B?MC96UDJuRHd3aXU4RS9yRzQ5aHZsaEVmSEhZeFdDWEg4eFdJWkV2OXlIWEF4?=
	=?utf-8?B?MEZrZnNXbmw5Z0pxYWRLK3AzdmJtMHdpUm14THkzZnhhcGhOOTgraVIwekp1?=
	=?utf-8?B?eXlmSEhsZ3pDQ3craFVpdEFrS3JwQzhwNms4cU1GUW9HS3ovanlmMjMrWHFZ?=
	=?utf-8?B?VUFBMDg3OGlGdTBLMUtxak5WTkdWS09HSk9lMysvWlpYK0tzMHlpSmpjRUx6?=
	=?utf-8?B?bWxPZitLaFNwSS9FODAreUJpN1dpdVQ4OEpEU3RUK0dSamUxY1VKODRmRGJw?=
	=?utf-8?B?QTdFbDNRVEpkald4Z2h6L2FMVUZUZGhFeW5rZ2h6OS9tTnZVbllzZ1BYUXVC?=
	=?utf-8?B?eEJiR3o3OE5sNHAySy9tSE81bmwveUVOV2tuRFNwK0Q3c1hiSEFmaDdNZlp2?=
	=?utf-8?B?UWFRZkNMOGdNbUVBMUhFTEFsU3FpT0RWVlhmUGhFc0dqbW50cVFGQXBCdmlk?=
	=?utf-8?B?aWlSbnVtZC93UGVscXJuUVpYZWV2b1RlYlFXTFZkOHRxTG5oY3UyWE9zZ2lt?=
	=?utf-8?B?bjFyNEZFS0FmUWpVeEJyYllBU2tWbTZGWk5BRUx3eGs2TGZIVjI5NkZCRzNL?=
	=?utf-8?B?Nkl5Mk00aThxa3FpMmRpYStXRFRCWTdGODh1OGJrOXRnbnN4OWlScGNrWndP?=
	=?utf-8?B?SUZPc1MwN2thNk5IRkQ3eGhaWUZwYXZHcTJreWlWaDBKZ0lmS3ZTaEJ5QWQz?=
	=?utf-8?B?eWRXV01QSTV1b2c4RkJyUllJQkxDTVF3YTVJMEd0azZ1Y0pxQXRKbXBwSmht?=
	=?utf-8?B?Z0hJTWFTdmx0dWZUSWhndnpXMTgxUEVKTUxSbktCOGZnRmxnWjBQOE03TmtO?=
	=?utf-8?B?azhjZU1sZ2xLTmVmZm9lTWhQbDdtblpWcGJEY1JsOFRIWmRyY2ZuS0M2MzVh?=
	=?utf-8?B?dmg2ZmRaeXdMYjA2d3F0eWhoRjZFTTlGL1hSMVQxTlVYekt3S1ZZalk2eUdv?=
	=?utf-8?B?ZFJid1dJQ3JqU0lIUHBaeThkTkM2MU5YN0R5MGRTM0RPTUVzM2pQVTdNQzF4?=
	=?utf-8?B?MUhGUlU2M0tIRXI5eElYV1hBZ2NTL1VsaDFmRUdOb09EcHorVU8yR2RVMVMr?=
	=?utf-8?B?Yks0TitTc3JubXBPOFExOWJ5RlFyWkV2R2d0dm5rZWRjbmxwc2xyUGh5ZU9y?=
	=?utf-8?B?RFhjbEZvcStJc3lDRHVKY1FGa2lIemR0ZnVYVGhYYXhhS3lCa2dlUGhMNnN2?=
	=?utf-8?B?dW1oODRVQmRCcktaNnhtT0g3R2hEL3NvSkRMM2dacklma3FBa0VVVnh0UmxT?=
	=?utf-8?B?bXlPYkZaT3N0NDV0RHdKaDk2blFEZk5UWis2SDVhNXVjY2hJSGhQSndwSENS?=
	=?utf-8?B?NkRtK0MxOE1oejVDMGdJVUU3S0VOdVRXTVI3Rm1vMk0vRXYxN1dsMnNBajYx?=
	=?utf-8?B?NjZJUDNxUTlYSzlTTG5uMnZuemxUY3krYk9kUnc5dCtZOXlTQVl4SVQ0aVZ1?=
	=?utf-8?B?ZXphaWJldkpmKzhEcE12SHc0Y0tUNWlQMFBFR0xrQ0xhTnNaOUt4V0YrM2Fv?=
	=?utf-8?B?bFJqREVSeW1RMzFYd2ExTkpXVFFzSmZpUG1meHpyV2p4TWNYcUFzRjhScFBT?=
	=?utf-8?B?Zm4zRUgzdU9lK2xwQ2VCQkp2dkVoakovc1AyQmZ2eExmQ2ROVERXdFpuSUlG?=
	=?utf-8?B?cGo1TzlNRjU4R0VWVFRjR2k3UEU5MFZGQ0dIMGc2bDRSVDVmMGJWYzRiQzV6?=
	=?utf-8?B?NXBxSUlsWlZjYXRmSnRrTVJXY1MwTjFnTExsRS8wQ0xQN3ZpY3Yra3hRdkw3?=
	=?utf-8?B?dElSTENscGo3eFR6aU1wNFQ2Tmo2SXhoUVF2dCt0OThkd0VJOHI1RDBPTGJ0?=
	=?utf-8?B?RVZMZGViRzVqNGlGN0dUUTJ0V2ljcDNQcmdSVGNINmgrN2xKb1FySDdmUTRW?=
	=?utf-8?B?VENHMGsxYkozc1ZHUVRMZVBCeGRHdGY3c2libXdXTUtXZG9hTU5rWUVmaTU5?=
	=?utf-8?B?L1pIeFU5Wng1ZVhxQ0YzYlF5bDRCT0tlRXhXRW1iNEcwSEhmTlpIL1BxdCtl?=
	=?utf-8?Q?Pf7/VjUT4pcmH2mydsEUgDjqu/MUarQ0AyHMxEyxwGPJ?=
X-Microsoft-Antispam-Message-Info: lAcSEOVrcDVTDIOMGMjILCzxON3s2bMnqlBj8szYJkJhq8Zqx4Zqvtrgzu7fByAsgR0FPc20wGoVoLV70X9ifI4+O/4Mka6P3bV/SrW1cbrzahXtqZ/VFxTbBYNXE/8hN3ewLJkK8xEZ/amovod5J/2qMg012GMjwRN91t0kWTGTTo/I9vQnooAtbI2CP0FJUojTVIfSHcUmpaMKkVPhPGb/MFObTo1TqrKAcQHX4wI3Pp546aCydlQW+azqiVdGjfNKYv3hFmvsRTtNL9JCaW4iGmPmhztGaNCs4IMTx/cqTwKk6km7Yq34PZBkben+C6ueJuvJ77dBl8CVT6OvHLzh18/rquqo+mIHRaQDpro=
X-Microsoft-Exchange-Diagnostics: 1; AM6PR02MB3976;
	6:XhmHTReTyaVjdikrh7vO0Ihqi/FNa+tDtC/cfYHMq+jA6h/2UqIu+yGrtliwNhjRBhs+B2ivLRt+ea3l+1MThm6aCq3EZBXNCyPsevCAYSZi1FbGuxe0iwvJ/HCFIm3F2xHFtQdE/bJwQqIo4S5xanh1G+lkRklRrX97YBK0WZN7QYxeLzchP+GXV7dvacM2I9Q3dbUUveRHP+5YP8LTbPRdP7rU8Ce/S9U149/tvVXHj9znf/O0gbc33BzXgEH+oTukkJXNIwYuNmRDV7kJKl0ncMQthoqRwwdLlrv+9E0ZyntUMCtpyKsXAI3dULh6Rm66caJEa5NcH3MB56jj99pp9HaNPa4Fyc2e9rq0DU5AA8fCtO9OoOMBnvDs3wK+ytdqIDdNfQ1rxqxUNvv67osb9ROv261udxjK2D5t5YoaIJOJGAiIe6k7zFAM0iEIAUYJfPjyM9tYxylVQjDFKQ==;
	5:o2GkticnfhSf/6TIy8Zau/9QRg0eTMAx/1JFT/QgYgclG4CUf98wdRq+C+ejAowmPnW95B38QmMPPAIw1Jrd3Pen7/bNF52df+QQw0gCzmR8C92HLocuVSIhAbk9h/jtotEpa4y3Pfr5kKp0NmJbN76FWRD0/9pCPg3R3nfk/C8=;
	7:eYv3l98UyV+KaCh+e/ngZQpQhauYedNMtfjINse+j1NCX4Mk+/APGf2lQG4a5MB3PyMshRvomSwkrkWqTHlBzgek5RFoIGCRgF+9xVlvMo4o4GoaoBiG/4CxyxqY8VQTfxNrZT8CAAWOqhLahdpzkA==
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2018 13:47:12.4938 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 39b12d8d-6c87-4a31-bf52-08d648a55968
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.236.92.113]; Helo=[eu2-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR02MB3976
X-Microsoft-Exchange-Diagnostics: 1; AM6PR02MB3976;
	23:gpGVM8fxhWrUFrWHPwrpShUXPvUf+mT/PMgEk2SdeSCJlSiZiIn2C/mNLomM0djhF6e7VpZ20KGRhODmqg+UwJFn0Z93kYEty+WdvxSLOD2U/0EZ3JSzkULkqUeeLgAjNOvKAAq4tHclhJddmnGtgw==
X-OriginatorOrg: topic.nl
Subject: Re: Set linux capabilities on binary on a recipe in meta-oe layer
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
X-List-Received-Date: Tue, 13 Nov 2018 02:08:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <5E214E627B50774B8917CD332F1D9DF8@eurprd02.prod.outlook.com>
Content-Transfer-Encoding: base64

U29tZXRpbWVzIHRoZSBwcm9ibGVtIGlzIHRoYXQgcGFydHMgb2YgdGhlIHVuZGVyc2NvcmVkIGZ1
bmN0aW9uIG5hbWUgYXJlIHNlZW4gDQphcyBvdmVycmlkZXMsIHNvIHlvdSBzaG91bGQgdHJ5IHVz
aW5nICJteXNldGNhcGZ1bmN0aW9uIiBpbnN0ZWFkIGFzIGEgbmFtZS4NCg0KQWxzbywgdGhlcmUn
cyBhIHNlbWljb2xvbiBtaXNzaW5nOg0KUk9PVEZTX1BPU1RQUk9DRVNTX0NPTU1BTkQgKz0gIm15
X3NldGNhcF9mdW5jdGlvbjsiDQoNCg0KT24gMTItMTEtMTggMTQ6MDksIE1hcmt1cyBXIHdyb3Rl
Og0KPiBUaGFua3MgVXdlIQ0KPiANCj4gSSB0cmllZCB0aGUgZ2xvYmFsIGFwcHJvYWNoIGJ5IGFk
ZGluZyB0aGUgZm9sbG93aW5nIHRvIG15IGxvY2FsLmNvbmYgZmlsZToNCj4gDQo+IFJPT1RGU19Q
T1NUUFJPQ0VTU19DT01NQU5EICs9ICJteV9zZXRjYXBfZnVuY3Rpb24iDQo+IA0KPiBteV9zZXRj
YXBfZnVuY3Rpb24oKSB7DQo+ICDCoCDCoCBzZXRjYXAgY2FwX25ldF9yYXcrZWlwICR7SU1BR0Vf
Uk9PVEZTfS91c3IvYmluL25vZGUNCj4gfQ0KPiANCj4gQnV0IGdvdCB0aGUgZm9sbG93aW5nIHdh
cm5pbmc6DQo+IFdBUk5JTkc6IGNvcmUtaW1hZ2UtZnVsbC1jbWRsaW5lLTEuMC1yMCBkb19yb290
ZnM6IEZ1bmN0aW9uIG15X3NldGNhcF9mdW5jdGlvbiANCj4gZG9lc24ndCBleGlzdA0KPiANCj4g
SSBoYXZlIHRyaWVkIHRvIGFkZCB0aGUgZnVuY3Rpb24gaW50byBhIHJlY2lwZSBidXQgdGhpcyBk
b2Vzbid0IHdvcmsgZWl0aGVyLiANCj4gV2hlcmUgc2hvdWxkIHRoZSBmdW5jdGlvbiBiZSBkZWZp
bmVkPw0KPiANCj4gUmVnYXJkcywNCj4gTWFya3VzDQo+IA0KPiANCj4gT24gRnJpLCA5IE5vdiAy
MDE4IGF0IDE1OjM1LCBVd2UgR2V1ZGVyIDxqcnN3ZG5hbjIyQHNua21haWwuY29tIA0KPiA8bWFp
bHRvOmpyc3dkbmFuMjJAc25rbWFpbC5jb20+PiB3cm90ZToNCj4gDQo+ICAgICBIaSENCj4gDQo+
IA0KPiAgICAgT24gRnJpLCBOb3YgOSwgMjAxOCBhdCAxMjoxNiBQTSBNYXJrdXMgVyBtYXJrdXM0
ZGV2LWF0LWdtYWlsLmNvbQ0KPiAgICAgPGh0dHA6Ly9tYXJrdXM0ZGV2LWF0LWdtYWlsLmNvbT4g
d3JvdGU6DQo+IA0KPiAgICAgID4gT24gVGh1LCA4IE5vdiAyMDE4IGF0IDIyOjUzLCBQaW90ciBU
d29yZWsgPHR3b3JhejY2NkBnbWFpbC5jb20NCj4gICAgIDxtYWlsdG86dHdvcmF6NjY2QGdtYWls
LmNvbT4+IHdyb3RlOg0KPiAgICAgLi4uDQo+ICAgICAgPj4gcGtnX3Bvc3RpbnN0X29udGFyZ2V0
XyR7UE59ICgpIHsNCj4gICAgICA+PsKgIMKgIHNldGNhcCBjYXBfbmV0X3JhdytlaXAgJEQke2Jp
bmRpcn0vbm9kZQ0KPiAgICAgID4+IH0NCj4gICAgIC4uLg0KPiAgICAgID4gSG93IGNhbiB0aGlz
IGJlIGFjaGlldmVkIHdoZW4gdGhlIHJvb3RmcyBpcyBjcmVhdGVkIGFuZCBub3Qgb24gZmlyc3QN
Cj4gICAgICA+IGJvb3Q/IEkgd291bGQgbGlrZSBub3QgdG8gc2hpcCBsaWJjYXAgYmluYXJpZXMg
d2l0aCB0aGUgdGFyZ2V0IGluDQo+ICAgICAgPiBwcm9kdWN0aW9uLg0KPiANCj4gICAgIElkZWFs
bHkgSSB3b3VsZCBkbyBpdCAibG9jYWxseSIgaW4gZG9faW5zdGFsbCBvZiB0aGUgbm9kZSByZWNp
cGUgKHlvdSBjYW4NCj4gICAgIGFwcGVuZCBleHRyYSBzdGF0ZW1lbnRzIHRvIHRoZSB0YXNrIGlu
IHlvdXIgb3duIC5iYmFwcGVuZCBpbiB5b3VyIG93bg0KPiAgICAgbGF5ZXIsIGRvbid0IGVkaXQg
ZXhpc3RpbmcgcmVjaXBlcykNCj4gDQo+ICAgICBUaGF0IG9mIGNvdXJzZSByZXF1aXJlcyB0aGF0
IHRoZSBwYWNrYWdlIG1hbmFnZXIgcHJlc2VydmVzIHRoZQ0KPiAgICAgY2FwYWJpbGl0ZXMuIEkg
aGF2ZSBubyBleHBlcmllbmNlIHdoaWNoIHBhY2thZ2UgbWFuYWdlciB3b3VsZCBkbw0KPiAgICAg
b3Igbm90IGRvIHRoYXQuDQo+IA0KPiAgICAgIkdsb2JhbGx5IiB5b3UgY2FuIGRvIGl0IGJ5IGFw
cGVuZGluZyBhIG5ldyBmdW5jdGlvbiB0bw0KPiAgICAgUk9PVEZTX1BPU1RQUk9DRVNTX0NPTU1B
TkQNCj4gDQo+ICAgICBodHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvMi41LjEvbWVn
YS1tYW51YWwvbWVnYS1tYW51YWwuaHRtbCN2YXItDQo+ICAgICBST09URlNfUE9TVFBST0NFU1Nf
Q09NTUFORA0KPiANCj4gICAgIFRoaXMgaXMgZG9uZSBpbiB5b3VyIGltYWdlIHJlY2lwZS4NCj4g
DQo+ICAgICBSZWdhcmRzLA0KPiANCj4gICAgIFV3ZSBHZXVkZXINCj4gICAgIE5ldXJvIEV2ZW50
IExhYnMgT3kNCj4gICAgIFRhbXBlcmUsIEZpbmxhbmQNCj4gICAgIHV3ZS5nZXhkZXJAbmV1cm9l
dmVudGxhYnMuY29tIDxtYWlsdG86dXdlLmdleGRlckBuZXVyb2V2ZW50bGFicy5jb20+IChCb3QN
Cj4gICAgIGNoZWNrOiBmaXggb25lIG9idmlvdXMgdHlwbykNCj4gICAgIC0tIA0KPiAgICAgX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gICAgIHlvY3Rv
IG1haWxpbmcgbGlzdA0KPiAgICAgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyA8bWFpbHRvOnlvY3Rv
QHlvY3RvcHJvamVjdC5vcmc+DQo+ICAgICBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcv
bGlzdGluZm8veW9jdG8NCj4gDQo+IA0KDQo=

