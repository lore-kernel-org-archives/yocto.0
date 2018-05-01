Return-Path: <vincent.daanen@orthotaxy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06A16E007F2; Tue,  1 May 2018 13:27:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.113 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0113.outbound.protection.outlook.com [104.47.2.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24927E006B4
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 13:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=orthotaxy.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=5QEsKum9mjVVSYDC91Hu5I42v95Q6vDEsPKzaXKF0uM=;
	b=NVmXvSzlCKFG4eNfz+I5Qsd1yWwPiaQFScyt9gZBwCIq616O3hhoG0lU8Z21SrzcerEvXYHevH/6Ppz92FmjqiniPdM07MRn5Y0wmIiOEegQdYFrm+hLFwdIyjS2FnTEuEIoe7fSoRDU7V5GpsbrKWf1flL7ecWeSFrv4rbosLQ=
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM (10.175.180.135) by
	VI1P192MB0512.EURP192.PROD.OUTLOOK.COM (52.134.27.29) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.715.23; Tue, 1 May 2018 16:53:34 +0000
Received: from VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::a060:8fd0:4c92:6910]) by VI1P192MB0143.EURP192.PROD.OUTLOOK.COM
	([fe80::a060:8fd0:4c92:6910%17]) with mapi id 15.20.0715.023;
	Tue, 1 May 2018 16:53:34 +0000
From: Vincent Daanen <vincent.daanen@orthotaxy.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Need Help for meta-qt5
Thread-Index: AdPXMSoo9SxZEbMeR1ywwmCXBMK9hQAcoyeAAnIpNnA=
Date: Tue, 1 May 2018 16:53:34 +0000
Message-ID: <VI1P192MB01435F0E4A77CF0A7DD2837A8D810@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <AM5P192MB0132AEBDAFE4E6411791DF658DB60@AM5P192MB0132.EURP192.PROD.OUTLOOK.COM>
	<CAGAf8Lx77SfXCsRT=2i3XygqvQKH8zOQishdpRXUCqYz+4m5XA@mail.gmail.com>
In-Reply-To: <CAGAf8Lx77SfXCsRT=2i3XygqvQKH8zOQishdpRXUCqYz+4m5XA@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=vincent.daanen@orthotaxy.com; 
x-originating-ip: [152.77.102.34]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1P192MB0512;
	7:lse5wRBOKahDpV97NRQWibOAMpSkrh0zwxVX2GuiNTCzBx2Jk4rP/5jWBwodny1dsWv1OQosodZAkjPjiRkqrtV3qiCd4zZNYPiz4TZKay26NkCuOZB69i98ylIlfo4NuhFEu4g1wKf4sK6eBDUhLAoWxZgS9rkmXuf8sA+YRWMWQ2ZEXe4l+Pf+p4Xzif1HfO/MrUTo2HliRMum8g7UqjsottC+/1NvK5HMap5ntq1nzXRO1PGOfttyBNfX7ab1
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:VI1P192MB0512; 
x-ms-traffictypediagnostic: VI1P192MB0512:
x-microsoft-antispam-prvs: <VI1P192MB05127A1CB3170771ED77CE928D810@VI1P192MB0512.EURP192.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3231254)(944501410)(52105095)(3002001)(6041310)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(2016111802025)(6072148)(6043046)(201708071742011);
	SRVR:VI1P192MB0512; BCL:0; PCL:0; RULEID:; SRVR:VI1P192MB0512; 
x-forefront-prvs: 06592CCE58
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(366004)(39830400003)(39380400002)(346002)(55784002)(129404003)(189003)(199004)(6916009)(186003)(478600001)(66066001)(102836004)(76176011)(26005)(68736007)(6306002)(86362001)(55016002)(2906002)(2351001)(14454004)(97736004)(9686003)(966005)(229853002)(7696005)(6436002)(99286004)(33656002)(6506007)(53546011)(476003)(44832011)(8936002)(11346002)(6246003)(486006)(2501003)(446003)(2900100001)(74316002)(6116002)(25786009)(305945005)(5640700003)(3660700001)(3846002)(8676002)(3280700002)(105586002)(81156014)(53936002)(316002)(7736002)(81166006)(1730700003)(106356001)(5660300001)(5250100002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P192MB0512;
	H:VI1P192MB0143.EURP192.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: orthotaxy.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: +zbJUr/0mnUwQrmd5xz8Uvhb6FSyn2xQ263qqBk351GWvd049CmA7rEHv10Gougw/YhOINhcjT7+m/VyHDxR/VLt1Hv56sY0rDTI5pCFO9m3HN+h4PozT5zV/NZQuuIUeQg8p9lwdGp9vH2Ie9xxEGGJAvf9tdYE+6HFCHo5uvI2Sf73ZIuWyG4dTzjTFe3PmHSZlWjjAUz1VRnpopXXwQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: b7d061a6-24f4-40d7-ae8b-08d5af8413fe
X-OriginatorOrg: orthotaxy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7d061a6-24f4-40d7-ae8b-08d5af8413fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2018 16:53:34.7232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0c838133-9c42-4d53-8cbc-7a36ef5279a7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0512
Subject: Re: Need Help for meta-qt5
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
X-List-Received-Date: Tue, 01 May 2018 20:27:57 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQpTb3JyeSBmb3IgdGhlIGxhdGUgcmVwbHksIEkgaGF2ZSB0byB3b3JrIG9uIG90aGVyIHRv
cGljcy4uDQoNCkkgZm91bmQgdGhhdCBidWlsZGluZyBxdGJhc2UtbmF0aXZlIHdvdWxkIG1lZXQg
bXkgbmVlZHMgYnV0IEkgY2Fubm90IGZpZ3VyZSBvdXQgaG93IHRvIGJ1aWxkIGl0ICdhbG9uZScg
Li4uIGlmIGl0IGlzIHBvc3NpYmxlDQoNCkkgYWRkZWQgdGhlIGZpbGUgbXlNZXRhL3JlY2lwZXMt
cXQvcXQ1LyBxdGJhc2UtbmF0aXZlXyUuYmJhcHBlbmQgYnV0IGJpdGJha2Ugc3RpbGwgYnVpbGQg
cXRiYXNlLi4uDQpBbnkgaWRlYSA/DQoNClRoYW5rcyANClZpbmNlDQoNCi0tLS0tTWVzc2FnZSBk
J29yaWdpbmUtLS0tLQ0KRGXCoDogWm9yYW4gU3RvanNhdmxqZXZpYyA8em9yYW4uc3RvanNhdmxq
ZXZpY0BnbWFpbC5jb20+IA0KRW52b3nDqcKgOiBqZXVkaSAxOSBhdnJpbCAyMDE4IDA4OjAwDQrD
gMKgOiBWaW5jZW50IERhYW5lbiA8dmluY2VudC5kYWFuZW5Ab3J0aG90YXh5LmNvbT4NCkNjwqA6
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCk9iamV0wqA6IFJlOiBbeW9jdG9dIE5lZWQgSGVscCBm
b3IgbWV0YS1xdDUNCg0KaHR0cDovL2RldmVsb3Blci50b3JhZGV4LmNvbS9rbm93bGVkZ2UtYmFz
ZS9ob3ctdG8tc2V0LXVwLXF0LWNyZWF0b3ItdG8tY3Jvc3MtY29tcGlsZS1mb3ItZW1iZWRkZWQt
bGludXgjY29udGVudHMNCmh0dHA6Ly9kZXZlbG9wZXIudG9yYWRleC5jb20va25vd2xlZGdlLWJh
c2UvYm9hcmQtc3VwcG9ydC1wYWNrYWdlL29wZW5lbWJlZGRlZC0oY29yZSkjQWRkaW5nX3RoZV9R
dDVfTGF5ZXINCg0KSG9wZSB0aGlzIGhlbHBzLA0KWm9yYW4NCl9fX19fX18NCg0KT24gV2VkLCBB
cHIgMTgsIDIwMTggYXQgNjoyNCBQTSwgVmluY2VudCBEYWFuZW4gPHZpbmNlbnQuZGFhbmVuQG9y
dGhvdGF4eS5jb20+IHdyb3RlOg0KPiBIaSwNCj4NCj4NCj4NCj4gSSBoYXZlIHRvIGFkZCBRdDUg
UXRDb3JlIGxpYnMgdG8gbXkgaW1hZ2UuIEkga25vdyBJIG11c3QgdXNlIG1ldGEtcXQ1IA0KPiBi
dXQgYXMgSeKAmW0gbm90IGZhbWlsaWFyIHdpdGggcXQgY29uZmlndXJhdGlvbiwgSSBzaW1wbHkg
ZG8gbm90IGtub3cgaG93IHRvIHN0YXJ0ICENCj4NCj4gU28gY2FuIHNvbWVvbmUgaGVscCBtZSB0
byBjb25maWd1cmUgbWV0YS1xdDUgdG8gc2ltcGx5IGJ1aWxkIGFuZCBhZGQgDQo+IFF0Q29yZSB0
byBteSBpbWFnZSA/DQo+DQo+IFRoYW5rIHlvdQ0KPg0KPg0KPg0KPiBWaW5jZW50DQo+DQo+DQo+
DQo+DQo+DQo+DQo+IC0tDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPg0K

