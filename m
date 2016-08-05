Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A179E00EEE; Fri,  5 Aug 2016 03:28:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.75 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0075.outbound.protection.outlook.com [104.47.2.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5220FE00D00
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2016 03:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=TQbbLGmg6IWXMi3AlyPn1cIIhFvb2sBPoycAYvMJSWo=;
	b=Hx5gSCn1QMTb5AeGoSWT1k3x2LiZ09Yi6k4cZOt5z8R4qQ5DR4vAuWOZl6nlcnRkkAC7AXfQr3QPGMzU4UAEskehrC8NMnSJ4KCdHY4zsp3vd9+ye8fwugdZQEWSJ/M0ucnm9+Pcys4iB3BvCv7GpxWT6jsZTZwjf6EB2ZLVH1s=
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com (10.169.225.139) by
	DB6PR0401MB2629.eurprd04.prod.outlook.com (10.169.225.138) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384)
	id 15.1.557.8; Fri, 5 Aug 2016 07:53:16 +0000
Received: from DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) by
	DB6PR0401MB2630.eurprd04.prod.outlook.com ([10.169.225.139]) with
	mapi id 15.01.0557.009; Fri, 5 Aug 2016 07:53:16 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Daniel. <danielhilst@gmail.com>
Thread-Topic: [yocto] Yocto rootfs to support auto-login or remove the login
	prompt
Thread-Index: AdHsmlR90SB/DGLqTvmAYv/rPpZORgAiVtUAAHKq1oA=
Date: Fri, 5 Aug 2016 07:53:16 +0000
Message-ID: <DB6PR0401MB2630F07261D403443769027EEE180@DB6PR0401MB2630.eurprd04.prod.outlook.com>
References: <VI1PR0401MB2638304EB5805908380CE4ABEE050@VI1PR0401MB2638.eurprd04.prod.outlook.com>
	<CAF3SDA57Np82+0pS=-5CuHTptJ4XPz_LgYS-y1y4nn+7P_aGwg@mail.gmail.com>
In-Reply-To: <CAF3SDA57Np82+0pS=-5CuHTptJ4XPz_LgYS-y1y4nn+7P_aGwg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [199.59.230.102]
x-ms-office365-filtering-correlation-id: 6ec4e757-7713-4e0b-8eb1-08d3bd058f64
x-microsoft-exchange-diagnostics: 1; DB6PR0401MB2629;
	6:Tqn3ha+7vgPexZP+0+aOArII4ESW7pVuAmJ5HwUCu7sU+L2V8CznAlhzrGbVMLuJo83O3rWsadANakEoz5nCYK/hwBi/8T7r+aDAY84w1FbMGwoPv49l9ATbQ8eyeMy0Udw0ChYHnr2O60OFrp886BgjwcyEMUVNpC57qB12fOfCfEJYSYyfWDssuWSXSDmavt6HihYndXVeRbLRd7943WXWCSHv3+/DeaWyWo4wUOfnkMIeFEpd9841csii7/LmlyAMG610fxG8SVL9bRhv302AOHJEX+eDrTHG6qHFjd7s5VDHOlX6y1XP0cATPsXpj3CNCNDq41kRbXgtALYBlg==;
	5:QJYF6L7MGJQbLDDOP3BF4FbnZe5WN45i4GlkSy6UiimAMwk9Hdl+S6Z9ZQRsfiP8sgvrYHddDz161DH3FLDcKmSlGzORrEHUZFI25Hez8X42XBXC4JzW4Gt2DnQYTwX8xvj4UGH4lfJz2rbwsHlI4A==;
	24:NjbzzEGp2Lwxb+eFBTcAfDbpHPBVbGHHRe9Uq8LwA+sPfSdJ+X8sEPmOO6zRlx07hsb0hjJrEzGC3WdrTUij4sropWWNH2nQrdPt0WlsWJo=;
	7:POunrpUu6FxI1h+ydrScROKi3/dBupRQXHjcUip9s0eiPe2a1rjaW8DMN0gHzyyFm7n0+64j+y6eOO6eSCD8Ua+ZlqWFxQWmRbloQ7teqxlpEoi3hTxdhZG7IU0CNyGIwl/2ymz6Gz6eqnlkabGne0RIkULTkC7LYsMO5Nw1JRFEQW2O7LORVeRJ+gbm9h/pNisEZhznCSRVVwLyTxFUKM8f6fJ/qh5kfhzFN+Oj+EYOiNY4PLxU6qmL8YEE+IlR
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB6PR0401MB2629;
x-microsoft-antispam-prvs: <DB6PR0401MB2629B1F51688EE7D5597A3A8EE180@DB6PR0401MB2629.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(185117386973197);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:DB6PR0401MB2629; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0401MB2629; 
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(13464003)(377424004)(199003)(189002)(377454003)(54356999)(76176999)(86362001)(9686002)(50986999)(87936001)(101416001)(10400500002)(8676002)(11100500001)(122556002)(3280700002)(81156014)(77096005)(81166006)(15975445007)(3660700001)(4326007)(8936002)(2906002)(33656002)(92566002)(2950100001)(66066001)(2900100001)(1411001)(189998001)(106356001)(19580395003)(19580405001)(7736002)(7846002)(7696003)(74316002)(5002640100001)(305945005)(76576001)(110136002)(105586002)(68736007)(102836003)(586003)(6116002)(3846002)(97736004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0401MB2629;
	H:DB6PR0401MB2630.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2016 07:53:16.6808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2629
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto rootfs to support auto-login or remove the login prompt
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
X-List-Received-Date: Fri, 05 Aug 2016 10:28:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGEgbG90LCBEYW5pZWwsIA0KDQpJIHdpbGwgZ2l2ZSBhIHRyeS4gDQoNCg0KQmVzdCBS
ZWdhcmRzLA0KDQpaaGVuaHVhDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJv
bTogRGFuaWVsLiBbbWFpbHRvOmRhbmllbGhpbHN0QGdtYWlsLmNvbV0NCj4gU2VudDogV2VkbmVz
ZGF5LCBBdWd1c3QgMDMsIDIwMTYgOToxMCBBTQ0KPiBUbzogWmhlbmh1YSBMdW8gPHpoZW5odWEu
bHVvQG54cC5jb20+DQo+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJl
OiBbeW9jdG9dIFlvY3RvIHJvb3RmcyB0byBzdXBwb3J0IGF1dG8tbG9naW4gb3IgcmVtb3ZlIHRo
ZSBsb2dpbg0KPiBwcm9tcHQNCj4gDQo+IEkgZG9uJ3Qga25vdyBpZiBZb2N0byBoYXMgc29tZXRo
aW5nIG1vcmUgc3RhbmRhcmQgYnV0LCB5b3UgbWF5IGVkaXQNCj4gL2V0Yy9pbml0dGFiIHRvIHNw
YXduIHNvbWV0aGluZyBvdGhlciB0aGFuIGdldHR5LiBZb3UgY2FuIGFjaGlldmUgdGhpcyBieQ0K
PiBST09URlNfUE9TVFBST0NFU1NfQ09NTUFORC4NCj4gDQo+IFRha2UgYXQgbG9vayBhdCB0aGlz
IGFuY2llbnQgbGluazoNCj4gaHR0cDovL3d3dy50bGRwLm9yZy9MRFAvc2FnL2h0bWwvY29uZmln
LWluaXQuaHRtbA0KPiANCj4gMjAxNi0wOC0wMiA1OjQ2IEdNVC0wMzowMCBaaGVuaHVhIEx1byA8
emhlbmh1YS5sdW9AbnhwLmNvbT46DQo+ID4gSGksDQo+ID4NCj4gPg0KPiA+DQo+ID4gSSB3YW50
IHRvIGdlbmVyYXRlIGEgcm9vdGZzIGltYWdlIHdoaWNoIGNhbiBza2lwIHRoZSBMaW51eCBsb2dp
bg0KPiA+IHByb21wdCBvciBhdXRvLWxvZ2luIExpbnV4PyBJcyBpdCBwb3NzaWJsZSBpbiBZb2N0
bz8gSWYgeWVzLCBtYXkgSQ0KPiA+IGtub3cgaG93IHRvIGltcGxlbWVudCBpdD8NCj4gPg0KPiA+
DQo+ID4NCj4gPg0KPiA+DQo+ID4gQmVzdCBSZWdhcmRzLA0KPiA+DQo+ID4NCj4gPg0KPiA+IFpo
ZW5odWENCj4gPg0KPiA+DQo+ID4gLS0NCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiA+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiA+IHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmcNCj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGlu
Zm8veW9jdG8NCj4gPg0KPiANCj4gDQo+IA0KPiAtLQ0KPiAiRG8gb3IgZG8gbm90LiBUaGVyZSBp
cyBubyB0cnkiDQo+ICAgWW9kYSBNYXN0ZXINCg==

