Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A023E007AB; Fri,  6 Feb 2015 11:54:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.143 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 929 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Feb 2015 11:54:29 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0143.outbound.protection.outlook.com [207.46.100.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BFCEE00753
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 11:54:29 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) by
	BN3PR0501MB1091.namprd05.prod.outlook.com (25.160.113.13) with
	Microsoft SMTP
	Server (TLS) id 15.1.81.19; Fri, 6 Feb 2015 19:38:58 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) with
	mapi id 15.01.0081.018; Fri, 6 Feb 2015 19:38:58 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Aurele Traynard <aurele.traynard@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] replace etc/network/interfaces with symbolic link
Thread-Index: AQHQQiVqxGi9Q2+6j0GOBMJfmqHiF5zkAE1w
Date: Fri, 6 Feb 2015 19:38:58 +0000
Message-ID: <BN3PR0501MB109039E595DA8504659AE114BB380@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CAKdxkf8Hz0p__1UpZ9+v9nedE7uNb7ajQ+ykUpaZ-_1mc6BhyA@mail.gmail.com>
In-Reply-To: <CAKdxkf8Hz0p__1UpZ9+v9nedE7uNb7ajQ+ykUpaZ-_1mc6BhyA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 016E8E410091C6016E8F8E
x-originating-ip: [98.100.91.242]
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1091;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1091; 
x-forefront-prvs: 047999FF16
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(13464003)(377454003)(51704005)(2900100001)(2950100001)(50986999)(66066001)(102836002)(54356999)(76576001)(74316001)(2501002)(46102003)(99286002)(19580395003)(92566002)(87936001)(2656002)(62966003)(122556002)(33656002)(106116001)(77156002)(76176999)(107886001)(19580405001)(40100003)(86362001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1091;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2015 19:38:58.5309 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1091
Subject: Re: replace etc/network/interfaces with symbolic link
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
X-List-Received-Date: Fri, 06 Feb 2015 19:54:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXVyZWxlLA0KDQpPbmUgcG9zc2libGUgaXNzdWUgaXMgJHtzeXNjb25mZGlyfS9uZXR3b3JrL2lu
dGVyZmFjZXMgaXMgbGlzdGVkIGluIHRoZSBDT05GRklMRVMgaW4gdGhlIG9yaWdpbmFsIHJlY2lw
ZS4gIEl0IG1heSBzdGlsbCBiZSBpbnN0YWxsaW5nIHRoaXMgZmlsZSBiZWNhdXNlIGl0IGlzIGxp
c3RlZCB1bmRlciBDT05GRklMRVMuICBUcnkgYWRkaW5nOg0KDQpDT05GRklMRVNfJHtQTn0gPSAi
Ig0KDQpUbyB5b3VyIGJiYXBwZW5kLg0KDQpSZWdhcmRzLA0KQnJ5YW4NCg0KPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcg
W21haWx0bzp5b2N0by0NCj4gYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2Yg
QXVyZWxlIFRyYXluYXJkDQo+IFNlbnQ6IEZyaWRheSwgRmVicnVhcnkgMDYsIDIwMTUgMTA6NTUg
QU0NCj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogW3lvY3RvXSByZXBs
YWNlIGV0Yy9uZXR3b3JrL2ludGVyZmFjZXMgd2l0aCBzeW1ib2xpYyBsaW5rDQo+IA0KPiBIaSwN
Cj4gDQo+IA0KPiBJJ20gdHJ5aW5nIHRvIGZpbmQgYSBjbGVhbiB3YXkgdG8gcmVwbGFjZSAvZXRj
L25ldHdvcmsvaW50ZXJmYWNlcyB3aXRoIGENCj4gc3ltYm9saWMgbGluay4gKGl0IGNvbWVzIHdp
dGggaW5pdC1pZnVwZG93biByZWNpcGUpIEkgdHJpZWQgd2l0aCAgYSBiYmFwcGVuZA0KPiBidXQg
bm90aGluZyBhcHBlYXIgaW4gZmluYWwgZmlsZXN5c3RlbSBhbmQgL2V0Yy9uZXR3b3JrL2ludGVy
ZmFjZXMgc3RpbGwNCj4gZXhpc3RzLi4uDQo+IA0KPiANCj4gSSdtIHN1cmUgdGhlIGZvbGxvd2lu
ZyBjb2RlIGlzIGNvbXBsZXRlbHkgd3JvbmcsIGJ1dCBJIGRvbid0IGtub3cgaG93IHRvIGRvDQo+
IHRoaXMgd2l0aCB0aGUgcmlnaHQgd2F5Li4uDQo+IGRvX2luc3RhbGxfYXBwZW5kICgpIHsNCj4g
ICAgIG1rZGlyIC1wIGRhdGFzL25ldHdvcmsNCj4gDQo+ICAgICBpbnN0YWxsIC1kIDA3NTUgJHtE
fS9kYXRhcw0KPiAgICAgaW5zdGFsbCAtZCAwNzU1ICR7RH0vZGF0YXMvbmV0d29yaw0KPiAgICAg
aW5zdGFsbCAtbSAwNzU1ICR7RH0ke3N5c2NvbmZkaXJ9L25ldHdvcmsvaW50ZXJmYWNlcyAke0R9
L2RhdGFzL25ldHdvcmsNCj4gICAgICNtdiAke0R9JHtzeXNjb25mZGlyfS9uZXR3b3JrL2ludGVy
ZmFjZXMgJHtEfS9kYXRhcy9uZXR3b3JrDQo+ICAgICBybSAke0R9JHtzeXNjb25mZGlyfS9uZXR3
b3JrL2ludGVyZmFjZXMNCj4gICAgIGxuIC1zZiAvZGF0YXMvbmV0d29yay9pbnRlcmZhY2VzICR7
RH0ke3N5c2NvbmZkaXJ9L25ldHdvcmsvaW50ZXJmYWNlcw0KPiANCj4gfQ0KPiBGSUxFU18ke1BO
fSArPSAiL2RhdGFzLyAvZGF0YXMvbmV0d29yay9pbnRlcmZhY2VzIg0KPiANCj4gDQo+IHRoYW5r
cyBmb3IgYW55IGhlbHANCj4gDQoNCg==

