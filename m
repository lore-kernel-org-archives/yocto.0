Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36DA7E00C18; Mon, 27 Jun 2016 22:57:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.79 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0079.outbound.protection.outlook.com [157.55.234.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74592E00BE7
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 22:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Ho1kOzq4zyxPtMmyF1Ry8F0hHiTCuwjiosMFOhhYd/k=;
	b=WnDEzOTJll5V8LhCNNwUIN15DypmhzomPlhkmrBxtWHriKazTqqMPL24g0jTDsc03Kiz/qSiYUFNVE4KEp6c2cCN3TP3lu0L3JvqlnRo4BSp7fJ3ofeH+/L/iv/CAzG9xYU9BxSUhXNs8z748X3UR9+It9u0l7RJPjvTlVae3NU=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com (10.160.49.142) by
	DB3PR04MB0682.eurprd04.prod.outlook.com (10.160.49.140) with Microsoft
	SMTP Server (TLS) id 15.1.528.16; Tue, 28 Jun 2016 05:56:55 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5%18]) with mapi id 15.01.0523.024;
	Tue, 28 Jun 2016 05:56:55 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Failed to cross compile kernel with Yocto toolchain
Thread-Index: AdHQTEHdkEKXnHfPRAm5aHur2N6VqwARb8SAABvUbbA=
Date: Tue, 28 Jun 2016 05:56:55 +0000
Message-ID: <DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
In-Reply-To: <CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [192.158.241.86]
x-ms-office365-filtering-correlation-id: 96bc45db-4532-40f7-18a3-08d39f1902c6
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0682;
	6:XMyLBWxSUaptkidEcaW1+mp28AO9kl3oyX0wXSu4pCPYH2jxIGdgSSrcCXFrSy1mUQ7JIj3BGHmAbe8P6nH7AuQ9geY+I61N1UH8veD3cESAJOhe+/OP5ioF232Zu9N83XMdS2kudQSLcCQIkIEh8R1++/LfBP7Rng6zF9tGVYVi1PzebH4MUpFFxBP9jR6zbUTOxdKs5XNNDhaS2rsSHhcijB6579H7NV8LkeEMHhL4wAjUupK3Co3vnfPofwoPdgxAO7Fc1QuFzRVq2OqZ5M+sPYlaCwm7YUbH8KYtOmxgpTaSKTYCceIcpgKCk5zszSy0PVXMA01bTTalP0zxrw==;
	5:XZvjDFBKRS+5n1zCt0Vw8sHeXIXgYo79lwhX3zylJSS7nPqamrFQd7N1cQAo0vccJKg5EU+uIMRjfkXRUjUZtPkPgJI2TcKGmGF4KTxW2EL3le/UNMXk6Vvve9hy/UYmYgJBBG1GCiqeSU/jiagZvQ==;
	24:O/QsjcYjPUeJrSzPuZ5/KXEx26c3TduSi3kwV6X/EoUtVZgys2lSg198ZaBRDC3iF7ygMAqdpOEC0WCDgP0HuUX6DKdIul5UQD2l/h0IwVY=;
	7:26four+8lXM/V0xZw1cg/ftVjf7P2Fc41dBqs84SVZbmmfI6N0qojpaJL0QZZy50JcrhDmfJ27UadPQWz9bPSIdgF207Zrov0FKeuyq4rW1b12lf+AatK/W09RyuJYB83//v9n/cQyn9hwPrGv0qS69IEsm7YWhFAa7EJu5agPRy2n6xjYHZ1iXBq5KouRkMUoRw5B33RzZmF660t7o/5kOTagbgjzJ4bm5jwwDhvq+AbuY6zLJlA5Oh0gmXbdWW
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0682;
x-microsoft-antispam-prvs: <DB3PR04MB0682A6D3FCABA2FA0F1B04ADEE220@DB3PR04MB0682.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(185117386973197);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6055026);
	SRVR:DB3PR04MB0682; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0682; 
x-forefront-prvs: 0987ACA2E2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(24454002)(189002)(13464003)(377454003)(53754006)(189998001)(19580395003)(7696003)(19580405001)(305945005)(7736002)(5003600100003)(3660700001)(7846002)(68736007)(3280700002)(74316001)(81166006)(92566002)(5250100002)(110136002)(8676002)(81156014)(8936002)(97736004)(11100500001)(5002640100001)(66066001)(33656002)(15975445007)(3846002)(6116002)(50986999)(102836003)(9686002)(86362001)(101416001)(2950100001)(2900100001)(2906002)(4326007)(586003)(106356001)(105586002)(76576001)(87936001)(76176999)(54356999);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0682;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2016 05:56:55.7606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0682
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
X-List-Received-Date: Tue, 28 Jun 2016 05:57:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gS2hlbSwgDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2hl
bSBSYWogW21haWx0bzpyYWoua2hlbUBnbWFpbC5jb21dDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUg
MjgsIDIwMTYgMTI6MzYgQU0NCj4gVG86IFpoZW5odWEgTHVvIDx6aGVuaHVhLmx1b0BueHAuY29t
Pg0KPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBG
YWlsZWQgdG8gY3Jvc3MgY29tcGlsZSBrZXJuZWwgd2l0aCBZb2N0byB0b29sY2hhaW4NCj4gDQo+
IE9uIE1vbiwgSnVuIDI3LCAyMDE2IGF0IDE6MTYgQU0sIFpoZW5odWEgTHVvIDx6aGVuaHVhLmx1
b0BueHAuY29tPg0KPiB3cm90ZToNCj4gPiBIZWxsbyBhbGwsDQo+ID4NCj4gPg0KPiA+DQo+ID4g
SSBnZW5lcmF0ZSB0aGUgWW9jdG8gdG9vbGNoYWluIGJ5IOKAnGJpdGJha2UgbWV0YS10b29sY2hh
aW7igJ0sIGFuZCB1c2UNCj4gPiB0aGlzIHRvb2xjaGFpbiB0byBjcm9zcy1jb21waWxlIGtlcm5l
bCwgSSBtZXQgdGhlIGZvbGxvd2luZyBlcnJvci4gSXMNCj4gPiB0aGlzIGEgYnVnIG9yIEkgbWlz
c2VkIHNvbWV0aGluZz8gTXkgaG9zdCBMaW51eCBpcyBGZWRvcmEgMjIuDQo+IA0KPiBpdHMgYmV0
dGVyIHRvIHN0YXJ0IHVzaW5nIGJpdGJha2UgLWNwb3B1bGF0ZV9zZGsgPGltYWdlIG5hbWU+IHRv
IGdlbmVyYXRlDQo+IFNES3MuDQo+IA0KPiANCj4gPg0KPiA+DQo+ID4NCj4gPiAkIHNvdXJjZSAv
b3B0L3Bva3kvMi4xK3NuYXBzaG90L2Vudmlyb25tZW50LXNldHVwLXBwY2U1MDBtYy1wb2t5LQ0K
PiBsaW51eA0KPiA+DQo+ID4gJCBjZCBsaW51eC8NCj4gPg0KPiA+ICQgbWFrZSBjb3JlbmV0MzJf
c21wX2RlZmNvbmZpZw0KPiA+DQo+ID4gICBIT1NUQ0MgIHNjcmlwdHMva2NvbmZpZy9jb25mLm8N
Cj4gPg0KPiA+IGNjYWNoZTogZXJyb3I6IENvdWxkIG5vdCBmaW5kIGNvbXBpbGVyICJnY2MiIGlu
IFBBVEgNCj4gDQo+IGRpZCB5b3Ugc2VlIGlmIGdjYyBpcyBpbiB5b3VyIHBhdGggYWZ0ZXIgc291
cmNpbmcgU0RLIGVudiBzY3JpcHQ/IA0KW0x1byBaaGVuaHVhLUIxOTUzN10gZ2NjIGNhbid0IGJl
IGZvdW5kIGFmdGVyIHNvdXJjaW5nIHRoZSBTREsgZW52IHNjcmlwdC4gYnV0IHRoZSAvdXNyL2Jp
biBpcyBpbiB0aGUgUEFUSCBlbnYgdmFyaWFibGUuIA0KJCBzb3VyY2UgL29wdC9wb2t5LzIuMStz
bmFwc2hvdC9lbnZpcm9ubWVudC1zZXR1cC1wcGNlNTAwbWMtcG9reS1saW51eA0KJCBlY2hvICRQ
QVRIDQovb3B0L3Bva3kvMi4xK3NuYXBzaG90L3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4
L3Vzci9iaW46L29wdC9wb2t5LzIuMStzbmFwc2hvdC9zeXNyb290cy94ODZfNjQtcG9reXNkay1s
aW51eC91c3Ivc2Jpbjovb3B0L3Bva3kvMi4xK3NuYXBzaG90L3N5c3Jvb3RzL3g4Nl82NC1wb2t5
c2RrLWxpbnV4L2Jpbjovb3B0L3Bva3kvMi4xK3NuYXBzaG90L3N5c3Jvb3RzL3g4Nl82NC1wb2t5
c2RrLWxpbnV4L3NiaW46L29wdC9wb2t5LzIuMStzbmFwc2hvdC9zeXNyb290cy94ODZfNjQtcG9r
eXNkay1saW51eC91c3IvYmluLy4uL3g4Nl82NC1wb2t5c2RrLWxpbnV4L2Jpbjovb3B0L3Bva3kv
Mi4xK3NuYXBzaG90L3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9iaW4vcG93ZXJw
Yy1wb2t5LWxpbnV4Oi9vcHQvcG9reS8yLjErc25hcHNob3Qvc3lzcm9vdHMveDg2XzY0LXBva3lz
ZGstbGludXgvdXNyL2Jpbi9wb3dlcnBjLXBva3ktbGludXgtdWNsaWJjOi9vcHQvcG9reS8yLjEr
c25hcHNob3Qvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGludXgvdXNyL2Jpbi9wb3dlcnBjLXBv
a3ktbGludXgtbXVzbDovdXNyL2xpYjY0L3F0LTMuMy9iaW46L3Vzci9saWI2NC9jY2FjaGU6L3Vz
ci9sb2NhbC9iaW46L3Vzci9iaW46L3Vzci9sb2NhbC9zYmluOi91c3Ivc2JpbjovaG9tZS9ianNp
bWljcy8ubG9jYWwvYmluOi9ob21lL2Jqc2ltaWNzL2Jpbg0KJCBlY2hvICRDQ0FDSEVfUEFUSA0K
L29wdC9wb2t5LzIuMStzbmFwc2hvdC9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91c3Iv
YmluOi9vcHQvcG9reS8yLjErc25hcHNob3Qvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGludXgv
dXNyL2Jpbi8uLi94ODZfNjQtcG9reXNkay1saW51eC9iaW46L29wdC9wb2t5LzIuMStzbmFwc2hv
dC9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91c3IvYmluL3Bvd2VycGMtcG9reS1saW51
eDovb3B0L3Bva3kvMi4xK3NuYXBzaG90L3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vz
ci9iaW4vcG93ZXJwYy1wb2t5LWxpbnV4LXVjbGliYzovb3B0L3Bva3kvMi4xK3NuYXBzaG90L3N5
c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9iaW4vcG93ZXJwYy1wb2t5LWxpbnV4LW11
c2w6DQokIHdoaWNoIGdjYw0KL3Vzci9saWI2NC9jY2FjaGUvZ2NjDQokIGdjYyAtdg0KY2NhY2hl
OiBlcnJvcjogQ291bGQgbm90IGZpbmQgY29tcGlsZXIgImdjYyIgaW4gUEFUSA0KDQoNCkJlc3Qg
UmVnYXJkcywgDQoNClpoZW5odWENCiAgDQo+ID4gc2NyaXB0cy9NYWtlZmlsZS5ob3N0OjEwODog
cmVjaXBlIGZvciB0YXJnZXQgJ3NjcmlwdHMva2NvbmZpZy9jb25mLm8nDQo+ID4gZmFpbGVkDQo+
ID4NCj4gPiBtYWtlWzFdOiAqKiogW3NjcmlwdHMva2NvbmZpZy9jb25mLm9dIEVycm9yIDENCj4g
Pg0KPiA+IE1ha2VmaWxlOjU0MTogcmVjaXBlIGZvciB0YXJnZXQgJ2NvcmVuZXQzMl9zbXBfZGVm
Y29uZmlnJyBmYWlsZWQNCj4gPg0KPiA+IG1ha2U6ICoqKiBbY29yZW5ldDMyX3NtcF9kZWZjb25m
aWddIEVycm9yIDINCj4gPg0KPiA+DQo+ID4NCj4gPg0KPiA+DQo+ID4gQmVzdCBSZWdhcmRzLA0K
PiA+DQo+ID4NCj4gPg0KPiA+IFpoZW5odWENCj4gPg0KPiA+DQo+ID4gLS0NCj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IHlvY3RvIG1haWxp
bmcgbGlzdA0KPiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPiBodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4gPg0K

