Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A822E00BAF; Mon,  1 Jul 2019 06:22:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.5.53 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr50053.outbound.protection.outlook.com [40.107.5.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 917C2E0090C
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2019 06:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-topicbv-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=cgnhSg0gKLDJYXMhyBFmD5Mu9blrVa7FXOr1YULNNBk=;
	b=BxRlz8w7w48QvLU+uCxA2aMrat+pkfZ2K5tkx0yufbe4ZBgL8YiLLK3qsq898foS5YSu5SKNgAQzKbvTbPop5wXYqjOxKh7MPVsOmRnjOOo9YXUJCUAb9Px2FGQ1nYdpgUlfUc7TCP5rDbCkPHZ/LDqCr+mQTXk3SRcTE78Q3lU=
Received: from HE1PR0402CA0013.eurprd04.prod.outlook.com (2603:10a6:3:d0::23)
	by DB6PR0401MB2584.eurprd04.prod.outlook.com (2603:10a6:4:38::23)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2008.13;
	Mon, 1 Jul 2019 13:22:36 +0000
Received: from DB5EUR01FT011.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e02::202) by HE1PR0402CA0013.outlook.office365.com
	(2603:10a6:3:d0::23) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.18 via
	Frontend Transport; Mon, 1 Jul 2019 13:22:36 +0000
Authentication-Results: spf=pass (sender IP is 52.166.56.231)
	smtp.mailfrom=topicproducts.com; yoctoproject.org;
	dkim=pass (signature was
	verified) header.d=topicbv.onmicrosoft.com; yoctoproject.org; dmarc=none
	action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 52.166.56.231 as permitted sender)
	receiver=protection.outlook.com; client-ip=52.166.56.231;
	helo=westeu11-emailsignatures-cloud.codetwo.com;
Received: from westeu11-emailsignatures-cloud.codetwo.com (52.166.56.231) by
	DB5EUR01FT011.mail.protection.outlook.com (10.152.5.3) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.2032.15 via Frontend Transport; Mon, 1 Jul 2019 13:22:35 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com (104.47.9.56) by
	westeu11-emailsignatures-cloud.codetwo.com with CodeTwo SMTP
	Server (TLS12) via SMTP; Mon, 01 Jul 2019 13:22:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
	b=I0jDcqb+GBGRIMHT6Uvc8TpE2RxSLT51SmIjw1Wfoyi2yxXJ1O9U3w/tYM1OKr1BbrG1zDohdR+ylGfe0vrPSnP3cPme0X76SL6unA8YmkpniVV8a8nqfKUFMaAZ9y5o4ZWRbmu15egvhXsL3wId5NSr1m4/sTkVqkBNzgzTIPY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=testarcselector01;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=cgnhSg0gKLDJYXMhyBFmD5Mu9blrVa7FXOr1YULNNBk=;
	b=qPulZ2PnJC9dnr1KxBDtYNaoHQac4nFp1Rdul+cQrgv+l4EUYS4H/l+dFo2Zt2OBJzqYpe946SHEEGUnQ/2pH6CncD3AqqqCp8u3SYUk+A4Y+6b/bJVn6lpQmS3vJKSxDpVVYLHihg78qC3mjHUb8FIC46Yzm/RTfiCRFZRJfVE=
ARC-Authentication-Results: i=1; test.office365.com
	1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-topicbv-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=cgnhSg0gKLDJYXMhyBFmD5Mu9blrVa7FXOr1YULNNBk=;
	b=BxRlz8w7w48QvLU+uCxA2aMrat+pkfZ2K5tkx0yufbe4ZBgL8YiLLK3qsq898foS5YSu5SKNgAQzKbvTbPop5wXYqjOxKh7MPVsOmRnjOOo9YXUJCUAb9Px2FGQ1nYdpgUlfUc7TCP5rDbCkPHZ/LDqCr+mQTXk3SRcTE78Q3lU=
Received: from AM6PR04MB6341.eurprd04.prod.outlook.com (10.255.168.18) by
	AM6PR04MB4981.eurprd04.prod.outlook.com (20.177.35.223) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2008.16; Mon, 1 Jul 2019 13:22:33 +0000
Received: from AM6PR04MB6341.eurprd04.prod.outlook.com
	([fe80::d131:60b8:d270:2d31]) by
	AM6PR04MB6341.eurprd04.prod.outlook.com
	([fe80::d131:60b8:d270:2d31%3]) with mapi id 15.20.2032.019;
	Mon, 1 Jul 2019 13:22:33 +0000
From: Mike Looijmans <mike.looijmans@topic.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Getting a package PV from another
Thread-Index: AQHVLZN4Km5VDyFMaECra+n+uPZGe6a1g5uAgABBUQA=
Date: Mon, 1 Jul 2019 13:22:33 +0000
Message-ID: <d2d4cc62-efb4-1b2b-0cae-65fa52b4a36d@topic.nl>
References: <CAAx3WaCCs+z5ctCrmM25YHh84S2L9y+E85KnuDvKNNFqe304Uw@mail.gmail.com>
	<CAAx3WaCPyfPKHDsrHa5EP_WxSAg0xsr+HW2DwiRem7N6pQmOWw@mail.gmail.com>
In-Reply-To: <CAAx3WaCPyfPKHDsrHa5EP_WxSAg0xsr+HW2DwiRem7N6pQmOWw@mail.gmail.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
x-clientproxiedby: AM4PR0202CA0011.eurprd02.prod.outlook.com
	(2603:10a6:200:89::21) To AM6PR04MB6341.eurprd04.prod.outlook.com
	(2603:10a6:20b:d9::18)
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.173.50.109]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: e200ead9-5c82-46b3-2cbd-08d6fe272eae
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:AM6PR04MB4981; 
X-MS-TrafficTypeDiagnostic: AM6PR04MB4981:|DB6PR0401MB2584:
X-Microsoft-Antispam-PRVS: <DB6PR0401MB2584183036629687696C646996F90@DB6PR0401MB2584.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;OLM:8273;
x-forefront-prvs: 00851CA28B
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(136003)(376002)(346002)(366004)(396003)(39840400004)(53754006)(199004)(189003)(256004)(65956001)(66066001)(76176011)(26005)(476003)(186003)(11346002)(2616005)(65806001)(81166006)(1730700003)(81156014)(8676002)(53546011)(36756003)(386003)(6506007)(102836004)(14454004)(486006)(508600001)(66946007)(66556008)(73956011)(2501003)(44832011)(64756008)(6916009)(66446008)(66476007)(4744005)(68736007)(6436002)(8936002)(5640700003)(53936002)(25786009)(316002)(229853002)(5660300002)(2351001)(71190400001)(71200400001)(99286004)(65826007)(52116002)(64126003)(3846002)(6512007)(74482002)(58126008)(2906002)(446003)(31686004)(7736002)(6116002)(305945005)(42882007)(31696002)(6486002)(6246003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4981;
	H:AM6PR04MB6341.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: bmRYwLHEdBzoOVMdSU7W9BxWi7Twt0hvDzLL7S0hvm2inLAZdl4bhfw9XfhePfxJzH93UwJkmYGYKItDBea9L57VMpvW41q4Qp38pgb9fjQfgqo38R8j1BZF2GlcgeHaD+Pwu9dZIbp0fiGz8J+IoHQ+gYtwcC+i9mF8wMjyIO0YgKUboW7jpGtN+nJX67oEtmpabc5TCmDb7YpSTDpCv7JF+TCM2ExhWZ/tze+ZfxZYwevgkF2NmpSjHIS4uvFW9MwTu4wUgaJ3i6IvVu5bIRr8QZ8dph5/VH5iZ6yw6wTuWfWNxucO/t8fdz+AlaiGwGGGjfc0yyD2PjfYXle9jSyn8xLfOumj8inJrYWhQvBQv8RpbaHmInIv3p8iz/SuORxD2WQ7Qmvf0O9GP5AEGHVlQ4V/9vHK9Bl94vBjC20=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4981
X-CodeTwo-MessageID: c757414a-2ee2-444d-bce3-e18b2a105f68.20190701132234@westeu11-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR01FT011.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:52.166.56.231; IPV:NLI; CTRY:NL; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(396003)(136003)(376002)(39840400004)(346002)(2980300002)(53754006)(189003)(199004)(25786009)(5640700003)(2906002)(6512007)(65956001)(65806001)(47776003)(229853002)(44832011)(436003)(26005)(7736002)(6486002)(356004)(3846002)(6116002)(508600001)(31696002)(336012)(2616005)(446003)(486006)(14454004)(126002)(476003)(11346002)(305945005)(7596002)(246002)(6916009)(66066001)(65826007)(6246003)(7636002)(8676002)(1730700003)(8936002)(99286004)(76176011)(23676004)(2486003)(4744005)(2351001)(31686004)(6506007)(102836004)(186003)(50466002)(74482002)(53546011)(70206006)(386003)(70586007)(316002)(106002)(36756003)(58126008)(5660300002)(42882007)(64126003)(2501003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0401MB2584;
	H:westeu11-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass;
	LANG:en; PTR:westeu11-emailsignatures-cloud.codetwo.com; MX:1;
	A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 4be1770d-fc83-462d-233c-08d6fe272ce5
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
	SRVR:DB6PR0401MB2584; 
X-Forefront-PRVS: 00851CA28B
X-Microsoft-Antispam-Message-Info: 7xMm5YPgOco0L7FjGt8rrwYYTUG9YQT6anAtI3zOYX4twYFSRwMA2mBEbGc212KIg9u+c6b0Dxt85R8zOEeUNtCd35H1TedV95fIRMTBhv0qloEnkk5m25y2EYqwPnKcGEmCW6uYJ7M7AWNMTLwZHur/aqjxyxeZx+hvBdXIrsD4ewnf5LsxUzJ+iRIDarNIPFywyjuW7E+/NpEtyweVKraeT0pi5HGKq/Ze9JZAYo8vUo4BasEV67s+WEsZXrXt+bzTz3rRf3MC+oGKk2YLN1IGNbqWCkWrLtSwKoG3s/UFPzJJoBR6Tc7AXPhYjckPvkgnoPgQz31xIzNNn915HbpzkHzHPcV8PSUlvC/DP3TEctpxj8R5fA94whsrVgi6wcVfmIz9l4fQfldNvteFcKy7gNuPhQ3ulHxlzedZ2mE=
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2019 13:22:35.9237 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e200ead9-5c82-46b3-2cbd-08d6fe272eae
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;
	Ip=[52.166.56.231];
	Helo=[westeu11-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2584
Subject: Re: Getting a package PV from another
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
X-List-Received-Date: Mon, 01 Jul 2019 13:22:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FBDBD85A2EEB7840812EDD1E597FDD57@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

VGhlIHZlcnNpb24gb2YgeW91ciBPRSBsYXllciBpcyBhbGwgdGhlIHZlcnNpb24gdGhhdCB5b3Un
bGwgZXZlciAodGVjaG5pY2FsbHkpIA0KbmVlZC4gVGhhdCB2ZXJzaW9uICh1c3VhbGx5IGEgZ2l0
IGhhc2gpIGRpY3RhdGVzIGFsbCBvdGhlciB2ZXJzaW9ucy4NCg0KV2hlbiBhc2tlZCBmb3IgdmVy
c2lvbiBudW1iZXJzIG9mIGluY2x1ZGVkIHBhY2thZ2VzLCBJIGFsd2F5cyBqdXN0IGR1bXAgdGhl
IA0KbWFuaWZlc3QgZmlsZSBpbnRvIHRoZWlyIGxhcC4NCg0KWW91IGNhbiBhbHNvIGFzayBhbmQg
cmVwb3J0IHRoZSB2ZXJzaW9uIG51bWJlcnMgYXQgcnVudGltZSAoZS5nLiB1c2luZyBvcGtnIG9y
IA0KZHBrZykuIFRoYXQgYWxzbyBwcmV2ZW50cyBseWluZyB0byB5b3VyIHVzZXJzIDopDQoNCk9u
IDAxLTA3LTE5IDExOjI4LCBHYWJyaWVsZSBaYW1waWVyaSB3cm90ZToNCj4gVXAsIHdpdGggbW9y
ZSBkZXRhaWxzOg0KPiANCj4gSSBoYXZlIGEgdG9wIHJlY2lwZSB0aGF0IGRlcGVuZHMgb24gKm15
LWltYWdlOmRvX2J1aWxkKi4gSSdkIGxpa2UgdG8gcmV0cmlldmUgDQo+IHRoZSBQViBvZiBhIGNv
dXBsZSBvZiBwYWNrYWdlcyAoZnJvbSB0aGF0IHRvcCByZWNpcGUpIHRoYXQgYXJlIHVzZWQgdG8g
bWFyayANCj4gb3VyIGN1c3RvbSBzb2Z0d2FyZS4gQW55IHN1Z2dlc3Rpb25zPw0KPiANCj4gR2Fi
cmllbGUNCj4gDQo+IElsIGdpb3JubyB2ZW4gMjggZ2l1IDIwMTkgYWxsZSBvcmUgMTE6MjUgR2Fi
cmllbGUgWmFtcGllcmkgDQo+IDxnYWJibGEubWFsaXN0QGdtYWlsLmNvbSA8bWFpbHRvOmdhYmJs
YS5tYWxpc3RAZ21haWwuY29tPj4gaGEgc2NyaXR0bzoNCj4gDQo+ICAgICBIaSBhbGwsDQo+IA0K
PiAgICAgaXMgdGhlcmUgYSB3YXkgdG8gZ2V0IGEgc3BlY2lmaWMgcGFja2FnZSB2ZXJzaW9uIGZy
b20gYW5vdGhlcj8NCj4gDQo+ICAgICBCZXN0IHJlZ2FyZHMsDQo+ICAgICBHYWJyaWVsZQ0KPiAN
Cj4gDQoNCg==

