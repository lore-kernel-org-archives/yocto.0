Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF97DE00DC9; Tue, 28 Jun 2016 04:35:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.99 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0099.outbound.protection.outlook.com [157.55.234.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48CE9E00C2B
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 04:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=GdImv1dwYKlUhnhYJ6AJ0EkE5cQhlsjDf3HEqMIMcY4=;
	b=Gt8hM8qtUb/iWtSFsO5FEr3pGXWdAtphpgXSqbEf6CvowrDV2IMmVoP+tpfQunEqB+9TXmAKDTNCEr90q+0XyzVdh+hK5h6x/7Ha5ljX+xVsERJhLzefNrliOhQyRTrNhKxaDB7klpJN/UPzHhyhd+UfSUYIQ5piPHVzcLTee7c=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com (10.160.49.142) by
	DB3PR04MB0681.eurprd04.prod.outlook.com (10.160.49.139) with Microsoft
	SMTP Server (TLS) id 15.1.517.8; Tue, 28 Jun 2016 11:20:44 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5%18]) with mapi id 15.01.0523.024;
	Tue, 28 Jun 2016 11:20:44 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Failed to cross compile kernel with Yocto toolchain
Thread-Index: AdHQTEHdkEKXnHfPRAm5aHur2N6VqwARb8SAABvUbbAACZRnAAABzbPw
Date: Tue, 28 Jun 2016 11:20:44 +0000
Message-ID: <DB3PR04MB0684C1511F275EE872ED9B54EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
	<DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAJTo0LaLSseY14pcCm_V+mx4rmh=cSRvQkwkWp40LeSgbWuTqg@mail.gmail.com>
In-Reply-To: <CAJTo0LaLSseY14pcCm_V+mx4rmh=cSRvQkwkWp40LeSgbWuTqg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [192.158.241.86]
x-ms-office365-filtering-correlation-id: bc2659ac-ced0-49fa-d794-08d39f463f62
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0681;
	6:4EHllXLhLfu6Im9zMYZ/SKvlCc2DQXde0dmHF00+hevmocmehhmmqZ9Ry1olDNLI84v/VYEQqH7IIfe2IM6LM0BOJQTlDoAz/MQXV3aeFLiv6lSxrskAHMebdAeBq7vBmTgjrKTMA30ma8XizhobL29CPtv4pBXQV59xPx/bJhXTdVxtHua4LP8PfOYKV2RqCxzwVWBurFFgpUKN6d2k1IQFkq0ZDr3s13X9bZKg3A+ZJIAnQyAl3cKc2bs83oAKdgOQN7jEGOJJMeD7wZqL6Ea3M4Z/zVrKp8BYpANpcpXkgLLmqp2FrBHr32+JX+mLYyBHQy17H3rYSA3DxbVICRXmrf5OxfgMN0uN+0br6D4=;
	5:nimtD3DsVqinwSFKwyHwRweQntwnYY8rOZukjBHfxY6COCAnL0g71S3WCRG5yMFGIOshh9kUDduQuIlbMRWvev6jthyUQ/b9zfLt3x3juqZmT1Ux+X0Kc6YwKe2QyA1Zs37rW6dptmxAv6+vwkv2jw==;
	24:jKP47+fG0uI3X2s51cIxZ8g0n4VWCYudpdiejNZRITLUjZasHh9D//Q17hAV7Fzu91OVuGpvzCIPKd5OFAhs4gqWlTT3woacITPngVV9uzY=;
	7:ys1LS8Mvn2PDKpKQAV7vzN73IbNivs94L9IbFJtfETOQS9DKUO5dyj16QzdEgnGqiiWuz9fG7WihQRjsIUpEFWIT5GaXFJsLPcokwqsZe8HWNsW5MQnD0EMblNi9+ADUUOv6enQ0SPo09JbpZq1RhzFBiJzV39u2Oe2AoagVHkH8IISWVgy/Ho4u3pDWTymOk+l6efySf2WxCz0kYb/oIA+ShmigGLIsQuMVtyGfsvr+eETf05/Tymmd97EyZAbk
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0681;
x-microsoft-antispam-prvs: <DB3PR04MB0681F2D5590FF131603C2E7BEE220@DB3PR04MB0681.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(185117386973197)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6055026);
	SRVR:DB3PR04MB0681; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0681; 
x-forefront-prvs: 0987ACA2E2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(377454003)(189002)(24454002)(4326007)(11100500001)(105586002)(87936001)(106356001)(92566002)(2906002)(81156014)(81166006)(93886004)(74316001)(19580405001)(8936002)(3280700002)(33656002)(66066001)(8676002)(19580395003)(86362001)(5250100002)(101416001)(305945005)(2950100001)(3660700001)(2900100001)(97736004)(7696003)(7736002)(6116002)(7846002)(3846002)(102836003)(5003600100003)(68736007)(76176999)(50986999)(54356999)(586003)(9686002)(189998001)(110136002)(76576001)(5002640100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0681;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; CAT:NONE; LANG:en; CAT:NONE; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2016 11:20:44.7131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0681
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to cross compile kernel with Yocto toolchain
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
X-List-Received-Date: Tue, 28 Jun 2016 11:35:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIA0KDQo+IEZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNv
bV0gDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjgsIDIwMTYgNjoyNyBQTQ0KPiBUbzogWmhlbmh1
YSBMdW8gPHpoZW5odWEubHVvQG54cC5jb20+DQo+IENjOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21h
aWwuY29tPjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBG
YWlsZWQgdG8gY3Jvc3MgY29tcGlsZSBrZXJuZWwgd2l0aCBZb2N0byB0b29sY2hhaW4NCj4NCj4g
T24gMjggSnVuZSAyMDE2IGF0IDA2OjU2LCBaaGVuaHVhIEx1byA8emhlbmh1YS5sdW9AbnhwLmNv
bT4gd3JvdGU6DQo+IEx1byBaaGVuaHVhLUIxOTUzN10gZ2NjIGNhbid0IGJlIGZvdW5kIGFmdGVy
IHNvdXJjaW5nIHRoZSBTREsgZW52IHNjcmlwdC4gYnV0IHRoZSAvdXNyL2JpbiBpcyBpbiB0aGUg
UEFUSCBlbnYgdmFyaWFibGUuDQo+IA0KPiBZb3UgKmRvKiBoYXZlIGEgZ2NjIGluIC91c3IvYmlu
LCByaWdodD8NCltaaGVuaHVhIExpdW9dIFJpZ2h0LiANCg0KDQpCZXN0IFJlZ2FyZHMsDQoNClpo
ZW5odWENCg==

