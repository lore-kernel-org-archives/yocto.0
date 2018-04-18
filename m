Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88678E00BA1; Wed, 18 Apr 2018 15:14:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3595 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 Apr 2018 15:14:37 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0118.outbound.protection.outlook.com [104.47.2.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A15FE005A9
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 15:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Enea.onmicrosoft.com; 
	s=selector1-enea-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=pH6VCZkZpZGIylMdEgb3nJCkbVP+CEnpjxHaknI1D/E=;
	b=acUdXEO7/eiRWn7yCYh/qNNqmKlJathTSLmXw02iqonKOPoe8m1V8HZu+mIc3UTii+Kld1uGB9/90SaFPVuM9tnFQSR0vnxEPyoHF/a3IH+kMFF3zdE4cta+EvlWkYUEKJuZ2Rp8z79+eP02ZkDkN400SmiD8cY9WSUihsyn5hQ=
Received: from AM5PR0701MB1780.eurprd07.prod.outlook.com (10.167.215.151) by
	AM5PR0701MB2419.eurprd07.prod.outlook.com (10.169.153.12) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.696.7; Wed, 18 Apr 2018 12:42:26 +0000
Received: from AM5PR0701MB1780.eurprd07.prod.outlook.com
	([fe80::893d:d0fc:ccc3:37d7]) by
	AM5PR0701MB1780.eurprd07.prod.outlook.com
	([fe80::893d:d0fc:ccc3:37d7%5]) with mapi id 15.20.0696.011;
	Wed, 18 Apr 2018 12:42:26 +0000
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "akuster808@gmail.com" <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH 0/5][RFC] CGL cleanup
Thread-Index: AQHT1ZQ++mMtLnltr0WJa/a8KbDZDaQGekAA
Date: Wed, 18 Apr 2018 12:42:26 +0000
Message-ID: <1524055346.6692.26.camel@enea.com>
References: <1523891014-31583-1-git-send-email-akuster@mvista.com>
In-Reply-To: <1523891014-31583-1-git-send-email-akuster@mvista.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=none action=none header.from=enea.com;
x-originating-ip: [192.36.1.252]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5PR0701MB2419;
	7:Auio80dSbRQdWY/sPZ8W2Dx2BVcELzDmlPLSgqpwqpK92pQBNetezkczt7I5oVGB+JW0zxH303katPPxLbc5v2Ax605nmT1nFkFBEqXgEkG8fdNBkO8+3KectcrrjCFzVONl8qd6bPECcuIj5xyucArZ+8Shie04CXaetR4cgwcdHp8mfzDXHGw/howa9q8IveywmVzQRQO7bEA0ZGsVa6WXoFZ10v9xUspchARyT/NTSUPGTWypi/N4xP462FCd;
	20:ZZUcmYAgQzpVhyhZuE2/KowZatSAUAaxQBcmr5Honw7HaWop51SY5OYRtsWjZwZQUNlrCZHFQLFlBBZKbJIGjBV0lw1axZf3Y1W/fYSFhlNQop0tMHgXK7IDfY8lGqfxi69DTbIV41TjZGByGsNGd7vh1Ac6zyhZvHVEtC3D93I=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:AM5PR0701MB2419; 
x-ms-traffictypediagnostic: AM5PR0701MB2419:
x-microsoft-antispam-prvs: <AM5PR0701MB2419B9095FA2C046BFFCD09AE4B60@AM5PR0701MB2419.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3231232)(944501327)(52105095)(3002001)(6041310)(20161123562045)(20161123560045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(6072148)(201708071742011);
	SRVR:AM5PR0701MB2419; BCL:0; PCL:0; RULEID:;
	SRVR:AM5PR0701MB2419; 
x-forefront-prvs: 06469BCC91
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39380400002)(39840400004)(376002)(346002)(396003)(377424004)(2501003)(5660300001)(5250100002)(5890100001)(7736002)(305945005)(86362001)(14454004)(6436002)(25786009)(36756003)(478600001)(99286004)(229853002)(72206003)(2906002)(2900100001)(103116003)(6486002)(6116002)(6512007)(11346002)(3846002)(81166006)(3660700001)(6506007)(66066001)(6246003)(316002)(76176011)(2616005)(476003)(8676002)(3280700002)(59450400001)(8936002)(446003)(26005)(110136005)(102836004)(39060400002)(97736004)(53936002)(186003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0701MB2419;
	H:AM5PR0701MB1780.eurprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; MLV:ovrnspm; PTR:InfoNoRecords; 
x-microsoft-antispam-message-info: Diieh4/B06x61hdzrc2uF6Bv7O3aVE06rT78pMcV+hORaPKFGMzoZfLFWVa+Um6iA7RTPLBjUlDz8AO3KCeyXjgIo9PDZrnj6dyOOzUfnz6Ik1Svo8x2njMqr1Fg/tB3wu39MVnFHwKE1P6y2IgCbSgNtlLpBdYWPRbvqNZmt1epY4ffaZb2CxDlg0zuWo0E
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 1649c9ea-89c0-4384-d888-08d5a529d755
X-OriginatorOrg: enea.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1649c9ea-89c0-4384-d888-08d5a529d755
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2018 12:42:26.4460 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8cdaed89-c47e-40b8-90b5-f28ad2c3fdca
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0701MB2419
Subject: Re: [meta-cgl][PATCH 0/5][RFC] CGL cleanup
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
X-List-Received-Date: Wed, 18 Apr 2018 22:14:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <18AEFCA8B337CC40928878791CF16A9F@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64

T24gbcOlbiwgMjAxOC0wNC0xNiBhdCAwODowMyAtMDcwMCwgQXJtaW4gS3VzdGVyIHdyb3RlOg0K
PiBJIHVuZGVyc3RhbmQgc29tZSBvZiB0aGVzZSBjaGFuZ2VzIGEgaGFyc2guIFRoaXMgc2V0IG9m
IGNoYW5nZXMgYWxsb3cNCj4gdGhpcyBsYXllciB0byBwYXNzIHRoZQ0KPiB5b2N0by1jaGVjay1s
YXllci4gVGhpcyBpcyBvbmUgb2YgbWFueSBvcHRpb25zIHRvIGFkZHJlc3MgcGFzc2luZy4NCj4N
Cg0KSGkgQXJtaW4sDQoNClRoYW5rcyBmb3IgZG9pbmcgdGhpcy4gVGhlIHNlcmllcyBpcyBnb29k
LCBhbmQgSSBtZXJnZWQgaXQgd2l0aCBzb21lDQptaW5vciBjaGFuZ2VzLCBzZWUgYmVsb3cuDQoN
CkkgYWxzbyBmaXhlZCB0aGUgTEFZRVJTRVJJRVNfQ09NUEFUIGlzc3VlIGluIG1ldGEtY2dsLWNv
bW1vbiBzbyB5b3UNCndvbid0IGhhdmUgdG8gcmVzZW5kIHRoYXQgc2VyaWVzLg0KDQpSZWdhcmRz
LA0KLS1BZHJpYW4NCg0KDQoNCj4gQXJtaW4gS3VzdGVyICg1KToNCj4gICBtZXRhLWNnbC1mc2wt
cHBjOiBkcm9wIGxheWVyIHN1cHBvcnRpbmcgb2xkIGtlcm5lbA0KDQpUaGlzIHBhdGNoIGRpZG4n
dCBhcHBseSB3aXRob3V0IHlvdXIgcGF0Y2hlcyBmcm9tIHRoZQ0KTEFZRVJTRVJJRVNfQ09NUEFU
IHNlcmllcyB3aGljaCB3YXNuJ3QgY29ycmVjdC4gSSB3YXMgZ29pbmcgdG8gZHJvcCB0aGUNCmxh
eWVyIGFueXdheXMsIHNvIEkgZGlkIGl0IGluIGEgc2VwYXJhdGUgY29tbWl0IHRvIHNpbXBsaWZ5
IHRoaW5ncy4NCg0KPiAgIENvcm9zeW5jOiByZW1vdmUgcmVjaXBlIGl0cyBpbiBtZXRhLW5ldHdv
cmtpbmcuDQo+ICAgbWFrZWR1bXBmaWxlOiByZW1vdmUgYXMgaXRzIGluIG1ldGEtb2UNCj4gICBp
c2NzaS1pbml0aWF0b3ItdXRpbHM6IGRyb3AgYmJhcHBlbmRzDQo+ICAgbWV0YS1jZ2UtY29tbW9u
OiBBZGQgUkVBRE1FDQoNCkZpeGVkIHR5cG8gaW4gc3ViamVjdC4NCg0KPg0KPiAgbWV0YS1jZ2wt
Y29tbW9uL1JFQURNRSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxMzgNCj4gKysrKysr
KysrKysrKysrKysrDQo+ICAuLi4vY29yb3N5bmMvYnVpbGQtY2xlYW51cC1jb25maWd1cmUtYWMu
cGF0Y2ggICAgICB8ICA1NyAtLS0tLS0tLQ0KPiAgLi4uL2Nvcm9zeW5jL2Nvcm9zeW5jL2Nvcm9z
eW5jLWRvY3MucGF0Y2ggICAgICAgICAgfCAgMzcgLS0tLS0NCj4gIC4uLi9jb3Jvc3luYy9jb3Jv
c3luYy9jb3Jvc3luYy1ub3RpZnlkLnNlcnZpY2UgICAgIHwgIDEzIC0tDQo+ICAuLi4vcmVjaXBl
cy1jZ2wvY29yb3N5bmMvY29yb3N5bmMvY29yb3N5bmMuaW5pdCAgICB8IDE2MCAtLS0tLS0tLS0N
Cj4gLS0tLS0tLS0tLS0tDQo+ICAuLi4vcmVjaXBlcy1jZ2wvY29yb3N5bmMvY29yb3N5bmMvY29y
b3N5bmMuc2VydmljZSB8ICAyNiAtLS0tDQo+ICAuLi4vY29yb3N5bmMvY29yb3N5bmMvZml4LWRl
ZmluZS1zZW11bi11bmlvbi5wYXRjaCB8ICAyMCAtLS0NCj4gIC4uLi9jb3Jvc3luYy9jb3Jvc3lu
Yy9ncm9mZi1kZXNjLXBhdGgucGF0Y2ggICAgICAgIHwgIDEyIC0tDQo+ICAuLi4vcmVjaXBlcy1j
Z2wvY29yb3N5bmMvY29yb3N5bmMvbm90aWZ5ZC5pbml0ICAgICB8IDEyMCAtLS0tLS0tLS0NCj4g
LS0tLS0tLQ0KPiAgLi4uL3JlY2lwZXMtY2dsL2Nvcm9zeW5jL2Nvcm9zeW5jL3ZvbGF0aWxlcyAg
ICAgICAgfCAgIDEgLQ0KPiAgLi4uL3JlY2lwZXMtY2dsL2Nvcm9zeW5jL2Nvcm9zeW5jXzEuNC44
LmJiICAgICAgICAgfCAgODggLS0tLS0tLS0tDQo+IC0tLQ0KPiAgLi4uL2ZpbGVzL2FsaWFzLXBv
d2VycGMtcG93ZXJwYzMyLnBhdGNoICAgICAgICAgICAgfCAgMTggLS0tDQo+ICAuLi4vcmVjaXBl
cy1jZ2wvbWFrZWR1bXBmaWxlL21ha2VkdW1wZmlsZV8xLjUuOC5iYiB8ICAyMCAtLS0NCj4gIC4u
Li9pc2NzaS1pbml0aWF0b3ItdXRpbHNfJS5iYmFwcGVuZCAgICAgICAgICAgICAgIHwgICAxIC0N
Cj4gIG1ldGEtY2dsLWZzbC1wcGMvY29uZi9sYXllci5jb25mICAgICAgICAgICAgICAgICAgIHwg
IDE0IC0tDQo+ICAuLi5wLWluaGVyaXQtYXV0aC1jYXBhYmxlLW9uLUlOSVQtY29sbGlzaW9ucy5w
YXRjaCB8ICA0MSAtLS0tLS0NCj4gIC4uLmVycGMtRml4LTY0LWJpdC1idWlsZHMtd2l0aC1iaW51
dGlscy0yLjI0LnBhdGNoIHwgIDgwIC0tLS0tLS0tLS0tDQo+ICAuLi4vbGludXgvbGludXgtcW9y
aXEtY2dsLXBydF8zLjEyLmJiICAgICAgICAgICAgICB8ICAzNiAtLS0tLQ0KPiAgMTggZmlsZXMg
Y2hhbmdlZCwgMTM4IGluc2VydGlvbnMoKyksIDc0NCBkZWxldGlvbnMoLSkNCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBtZXRhLWNnbC1jb21tb24vUkVBRE1FDQo+ICBkZWxldGUgbW9kZSAxMDA2NDQg
bWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtDQo+IGNnbC9jb3Jvc3luYy9jb3Jvc3luYy9idWlsZC1j
bGVhbnVwLWNvbmZpZ3VyZS1hYy5wYXRjaA0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2ds
LWNvbW1vbi9yZWNpcGVzLQ0KPiBjZ2wvY29yb3N5bmMvY29yb3N5bmMvY29yb3N5bmMtZG9jcy5w
YXRjaA0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLQ0KPiBj
Z2wvY29yb3N5bmMvY29yb3N5bmMvY29yb3N5bmMtbm90aWZ5ZC5zZXJ2aWNlDQo+ICBkZWxldGUg
bW9kZSAxMDA2NDQgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtDQo+IGNnbC9jb3Jvc3luYy9jb3Jv
c3luYy9jb3Jvc3luYy5pbml0DQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbWV0YS1jZ2wtY29tbW9u
L3JlY2lwZXMtDQo+IGNnbC9jb3Jvc3luYy9jb3Jvc3luYy9jb3Jvc3luYy5zZXJ2aWNlDQo+ICBk
ZWxldGUgbW9kZSAxMDA2NDQgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtDQo+IGNnbC9jb3Jvc3lu
Yy9jb3Jvc3luYy9maXgtZGVmaW5lLXNlbXVuLXVuaW9uLnBhdGNoDQo+ICBkZWxldGUgbW9kZSAx
MDA2NDQgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtDQo+IGNnbC9jb3Jvc3luYy9jb3Jvc3luYy9n
cm9mZi1kZXNjLXBhdGgucGF0Y2gNCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBtZXRhLWNnbC1jb21t
b24vcmVjaXBlcy0NCj4gY2dsL2Nvcm9zeW5jL2Nvcm9zeW5jL25vdGlmeWQuaW5pdA0KPiAgZGVs
ZXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLQ0KPiBjZ2wvY29yb3N5bmMv
Y29yb3N5bmMvdm9sYXRpbGVzDQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbWV0YS1jZ2wtY29tbW9u
L3JlY2lwZXMtDQo+IGNnbC9jb3Jvc3luYy9jb3Jvc3luY18xLjQuOC5iYg0KPiAgZGVsZXRlIG1v
ZGUgMTAwNjQ0IG1ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLQ0KPiBjZ2wvbWFrZWR1bXBmaWxlL2Zp
bGVzL2FsaWFzLXBvd2VycGMtcG93ZXJwYzMyLnBhdGNoDQo+ICBkZWxldGUgbW9kZSAxMDA2NDQg
bWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtDQo+IGNnbC9tYWtlZHVtcGZpbGUvbWFrZWR1bXBmaWxl
XzEuNS44LmJiDQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMt
ZXh0ZW5kZWQvaXNjc2ktaW5pdGlhdG9yLQ0KPiB1dGlscy9pc2NzaS1pbml0aWF0b3ItdXRpbHNf
JS5iYmFwcGVuZA0KPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2dsLWZzbC1wcGMvY29uZi9s
YXllci5jb25mDQo+ICBkZWxldGUgbW9kZSAxMDA2NDQgbWV0YS1jZ2wtZnNsLXBwYy9yZWNpcGVz
LWtlcm5lbC9saW51eC9maWxlcy9GaXgtDQo+IENWRS0yMDE0LTUwNzctc2N0cC1pbmhlcml0LWF1
dGgtY2FwYWJsZS1vbi1JTklULWNvbGxpc2lvbnMucGF0Y2gNCj4gIGRlbGV0ZSBtb2RlIDEwMDY0
NCBtZXRhLWNnbC1mc2wtcHBjL3JlY2lwZXMtDQo+IGtlcm5lbC9saW51eC9maWxlcy9wb3dlcnBj
LUZpeC02NC1iaXQtYnVpbGRzLXdpdGgtYmludXRpbHMtMi4yNC5wYXRjaA0KPiAgZGVsZXRlIG1v
ZGUgMTAwNjQ0IG1ldGEtY2dsLWZzbC1wcGMvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgtDQo+
IHFvcmlxLWNnbC1wcnRfMy4xMi5iYg0KPg0KPiAtLQ0KPiAyLjcuNA0KPg0KDQpUaGlzIG1lc3Nh
Z2UsIGluY2x1ZGluZyBhdHRhY2htZW50cywgaXMgQ09ORklERU5USUFMLiBJdCBtYXkgYWxzbyBi
ZSBwcml2aWxlZ2VkIG9yIG90aGVyd2lzZSBwcm90ZWN0ZWQgYnkgbGF3LiBJZiB5b3UgcmVjZWl2
ZWQgdGhpcyBlbWFpbCBieSBtaXN0YWtlIHBsZWFzZSBsZXQgdXMga25vdyBieSByZXBseSBhbmQg
dGhlbiBkZWxldGUgaXQgZnJvbSB5b3VyIHN5c3RlbTsgeW91IHNob3VsZCBub3QgY29weSBpdCBv
ciBkaXNjbG9zZSBpdHMgY29udGVudHMgdG8gYW55b25lLiBBbGwgbWVzc2FnZXMgc2VudCB0byBh
bmQgZnJvbSBFbmVhIG1heSBiZSBtb25pdG9yZWQgdG8gZW5zdXJlIGNvbXBsaWFuY2Ugd2l0aCBp
bnRlcm5hbCBwb2xpY2llcyBhbmQgdG8gcHJvdGVjdCBvdXIgYnVzaW5lc3MuIEVtYWlscyBhcmUg
bm90IHNlY3VyZSBhbmQgY2Fubm90IGJlIGd1YXJhbnRlZWQgdG8gYmUgZXJyb3IgZnJlZSBhcyB0
aGV5IGNhbiBiZSBpbnRlcmNlcHRlZCwgYSBtZW5kZWQsIGxvc3Qgb3IgZGVzdHJveWVkLCBvciBj
b250YWluIHZpcnVzZXMuIFRoZSBzZW5kZXIgdGhlcmVmb3JlIGRvZXMgbm90IGFjY2VwdCBsaWFi
aWxpdHkgZm9yIGFueSBlcnJvcnMgb3Igb21pc3Npb25zIGluIHRoZSBjb250ZW50cyBvZiB0aGlz
IG1lc3NhZ2UsIHdoaWNoIGFyaXNlIGFzIGEgcmVzdWx0IG9mIGVtYWlsIHRyYW5zbWlzc2lvbi4g
QW55b25lIHdobyBjb21tdW5pY2F0ZXMgd2l0aCB1cyBieSBlbWFpbCBhY2NlcHRzIHRoZXNlIHJp
c2tzLg0K

