Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80681E00CF4; Tue, 28 Jun 2016 23:15:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.234.62 listed in list.dnswl.org]
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0062.outbound.protection.outlook.com [157.55.234.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E7B1E00CE7
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 23:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=dhbb57uoi7WdyEtM5gPob8xzKHOGseNbs5dG+xetkCw=;
	b=qgK0qc2OUOgl1xzzG5v4lfviYkvwjwCNEIsCF2HacuutNNu2jT3bZik47Odq+JuvtAYDirfbeIPtOY9oyVMDxyZjMCNZ3rTVQuZ03hxyuoFNeQb2Hwt1cqtB/rl12R5LeMfGw/bgbgsgpglmqPP4u2ImgehbyuDiKCzhS1qkxoc=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com (10.160.49.142) by
	DB3PR04MB0684.eurprd04.prod.outlook.com (10.160.49.142) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Wed, 29 Jun 2016 06:15:31 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5%18]) with mapi id 15.01.0523.024;
	Wed, 29 Jun 2016 06:15:31 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Daniel. <danielhilst@gmail.com>
Thread-Topic: [yocto] Failed to cross compile kernel with Yocto toolchain
Thread-Index: AdHQTEHdkEKXnHfPRAm5aHur2N6VqwARb8SAABvUbbAACZRnAAABzbPwAAS69YAAIuIvMA==
Date: Wed, 29 Jun 2016 06:15:30 +0000
Message-ID: <DB3PR04MB0684B34E1D13485AF1DA8356EE230@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
	<DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAJTo0LaLSseY14pcCm_V+mx4rmh=cSRvQkwkWp40LeSgbWuTqg@mail.gmail.com>
	<DB3PR04MB0684C1511F275EE872ED9B54EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAF3SDA6GT3ERs3r2t6qdx5Gek919ehqTqsJtsonBZTJUxNoGAg@mail.gmail.com>
In-Reply-To: <CAF3SDA6GT3ERs3r2t6qdx5Gek919ehqTqsJtsonBZTJUxNoGAg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.225.131]
x-ms-office365-filtering-correlation-id: e74325b3-f72d-4e05-d940-08d39fe4c5df
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0684;
	6:V+5h8bY/yuxEO7zaEth3RvgoLZXt8W03LXwN3OQ1EfVkxSp7NAimIuMK1jjGeAG224CW+Wm19esB7jrv0023A0gkrgdmJcEfusvIP148g3/aRByWGOAp4t1kEeZfBR72ZsRDz9edZejpsjzf7rGiDoEWzH5s9Q3+I3h8h/m4vK1XtBV3uKXi257xZ2Zpi3NKxXxiLqj9GcEDmhSkuV/DEZVXQLcInD12qF99y2mjo5qvJuF9rmoBhf0Um8QsOThrNjY2yOOy75NV+EyRf+dvcaDln1lp3IWkYqjmgEMYc7vsDQ6V4w6/pzuaKFgIjNp4EZms6e5ROL8kZAetO3lMbNsvhTC1CnHML0VALQRYHTY=;
	5:B+FARoPM5452FAlmZp0ADDdx2Gm3uPxAXMUqQEK0582ZURpwlMIvh02bdBy6yo2G2kT+KzWMEcKd6VKHgb2tTxV4jqEQix2BKhL5DLh/Kzj7ERJr5aofd08qOP03XSDOmEcEUCUXeK5UufGxDKZhNg==;
	24:Fm/msSMcOYY+5SOLWrLV43bA2ARrHihsXL+tpMUZnprNRYxSV23tUDDyauy8yDjC+aOJNWMT8IA2qbAqqjjoO8cXi0n8CXOf/VU+R9Puya8=;
	7:WYpgzf+gcjbzJhhoMPlNaBW4b8s4C4UBgj4EYaPtRCKRvdykWW+Z3eQ9zySeW1/kLZnfo26+JEy2F80BQT/gLA7ouQcBK3FVOLsyt9ALQ/9RZ9tUYfuiolVBUp7WPERok/b9Xq/HBjmsE/joYAl883a2+3fmveGWFSLa9pXIK51Acw6e3bO8a6fKQq19Vn8CnoXCSbPXjBqHNFUJapHi1KdBhAlB2ZbqsRcqD0elxT+ZqA6OjwBzafCCvEf8XjqGStUeEL/PRfDm8N1BaDx2yA==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0684;
x-microsoft-antispam-prvs: <DB3PR04MB06841D1F5722212E18049BA5EE230@DB3PR04MB0684.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820)(185117386973197)(192278398808882)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:DB3PR04MB0684; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0684; 
x-forefront-prvs: 09888BC01D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(189002)(199003)(13464003)(24454002)(377454003)(377424004)(7846002)(11100500001)(92566002)(8936002)(3280700002)(7696003)(3660700001)(4326007)(7736002)(19580405001)(5003600100003)(76576001)(5002640100001)(81166006)(305945005)(106356001)(19580395003)(586003)(9686002)(105586002)(1411001)(8676002)(2906002)(81156014)(66066001)(101416001)(93886004)(33656002)(2950100001)(54356999)(68736007)(102836003)(76176999)(6116002)(110136002)(189998001)(86362001)(50986999)(87936001)(3846002)(15975445007)(97736004)(2900100001)(5250100002)(74316001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0684;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2016 06:15:30.8341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0684
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
X-List-Received-Date: Wed, 29 Jun 2016 06:15:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gRGFuaWVsLCANCg0KSSB0cmllZCB0byBwYXNzIENST1NTX0NPTVBJTEUgZm9yIG1ha2Us
IGl0IGRvZXNu4oCZdCBoZWxwLiBBY3R1YWxseSB0aGUgRU5WIHZhcmlhYmxlIGlzIGRlZmluZWQg
aW4gL29wdC9wb2t5LzIuMStzbmFwc2hvdC9lbnZpcm9ubWVudC1zZXR1cC1wcGNlNTAwbWMtcG9r
eS1saW51eC4gDQokIHNvdXJjZSAvb3B0L3Bva3kvMi4xK3NuYXBzaG90L2Vudmlyb25tZW50LXNl
dHVwLXBwY2U1MDBtYy1wb2t5LWxpbnV4IA0KJCBlbnYgfCAgZ3JlcCBDUk9TU19DT01QSUxFDQpD
Uk9TU19DT01QSUxFPXBvd2VycGMtcG9reS1saW51eC0NCg0KDQpCZXN0IFJlZ2FyZHMsDQoNClpo
ZW5odWEgDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGFuaWVsLiBb
bWFpbHRvOmRhbmllbGhpbHN0QGdtYWlsLmNvbV0NCj4gU2VudDogVHVlc2RheSwgSnVuZSAyOCwg
MjAxNiA5OjM0IFBNDQo+IFRvOiBaaGVuaHVhIEx1byA8emhlbmh1YS5sdW9AbnhwLmNvbT4NCj4g
Q2M6IEJ1cnRvbiwgUm9zcyA8cm9zcy5idXJ0b25AaW50ZWwuY29tPjsgeW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBGYWlsZWQgdG8gY3Jvc3MgY29tcGlsZSBr
ZXJuZWwgd2l0aCBZb2N0byB0b29sY2hhaW4NCj4gDQo+IEkgdGhpbmsgeW91IHNob3VsZCBzZXQg
Q1JPU1NfQ09NUElMRSB2YXJpYWJsZQ0KPiANCj4gdXN1YWxseSBJIGhhdmUgYSBzY3JpcHQgYXQg
a2VybmVsIHJvb3QgdG8gc2V0dXAgdmFyaWFibGVzIGZvciBtZTogaGVyZSBpcyB3aGF0IEknbQ0K
PiB1c2luZyBmb3IgRGFpc3kNCj4gaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vZ2tvcy8yOGY3Y2Yw
MTliNzE2ZWJhODU3NGIyMWU2ZjYyOGFhNw0KPiANCj4gMjAxNi0wNi0yOCA4OjIwIEdNVC0wMzow
MCBaaGVuaHVhIEx1byA8emhlbmh1YS5sdW9AbnhwLmNvbT46DQo+ID4gSGksDQo+ID4NCj4gPj4g
RnJvbTogQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPiA+PiBT
ZW50OiBUdWVzZGF5LCBKdW5lIDI4LCAyMDE2IDY6MjcgUE0NCj4gPj4gVG86IFpoZW5odWEgTHVv
IDx6aGVuaHVhLmx1b0BueHAuY29tPg0KPiA+PiBDYzogS2hlbSBSYWogPHJhai5raGVtQGdtYWls
LmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPj4gU3ViamVjdDogUmU6IFt5b2N0b10g
RmFpbGVkIHRvIGNyb3NzIGNvbXBpbGUga2VybmVsIHdpdGggWW9jdG8NCj4gPj4gdG9vbGNoYWlu
DQo+ID4+DQo+ID4+IE9uIDI4IEp1bmUgMjAxNiBhdCAwNjo1NiwgWmhlbmh1YSBMdW8gPHpoZW5o
dWEubHVvQG54cC5jb20+IHdyb3RlOg0KPiA+PiBMdW8gWmhlbmh1YS1CMTk1MzddIGdjYyBjYW4n
dCBiZSBmb3VuZCBhZnRlciBzb3VyY2luZyB0aGUgU0RLIGVudiBzY3JpcHQuDQo+IGJ1dCB0aGUg
L3Vzci9iaW4gaXMgaW4gdGhlIFBBVEggZW52IHZhcmlhYmxlLg0KPiA+Pg0KPiA+PiBZb3UgKmRv
KiBoYXZlIGEgZ2NjIGluIC91c3IvYmluLCByaWdodD8NCj4gPiBbWmhlbmh1YSBMaXVvXSBSaWdo
dC4NCj4gPg0KPiA+DQo+ID4gQmVzdCBSZWdhcmRzLA0KPiA+DQo+ID4gWmhlbmh1YQ0KPiA+IC0t
DQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4g
PiB5b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4gaHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo+IA0KPiANCj4gDQo+
IC0tDQo+ICJEbyBvciBkbyBub3QuIFRoZXJlIGlzIG5vIHRyeSINCj4gICBZb2RhIE1hc3Rlcg0K

