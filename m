Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79FD6E0090E; Thu,  3 Dec 2015 07:10:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bbn0104.outbound.protection.outlook.com [157.56.111.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF233E00888
	for <yocto@yoctoproject.org>; Thu,  3 Dec 2015 07:10:17 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1091.namprd05.prod.outlook.com (10.160.113.13) with
	Microsoft SMTP
	Server (TLS) id 15.1.337.19; Thu, 3 Dec 2015 15:10:14 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0337.015; Thu, 3 Dec 2015 15:10:14 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] Fixing build when changing kernel PREFERRED_PROVIDER
Thread-Index: AdEtQf98Ui/b3lzDSxSA37QEe6kNjAACmxQAACPyY/A=
Date: Thu, 3 Dec 2015 15:10:14 +0000
Message-ID: <BN3PR0501MB1090B8063E9A357907E6AB7BBB0D0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <BN3PR0501MB1090C01F20FE5C9C83BFAB6CBB0E0@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<CAJ86T=VQK7=zZQnh=CJ6nJ0VV2Ruy=Mm+nZXuVk1C9y6v34LqA@mail.gmail.com>
In-Reply-To: <CAJ86T=VQK7=zZQnh=CJ6nJ0VV2Ruy=Mm+nZXuVk1C9y6v34LqA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1091;
	5:0uYxO+N2hoz7vQmUqBd+Vs7OULzqO1FKigIAZtoWzUqVOfHlyXsXVBVWOAmn34cmdbw15zHHrZko2VFFgXNpZ2KnzlovUe5ZT9ElF6yifbgPp2iUA0vzvMz2nt9cXiWSLg0ZwJ/Yt0pgx10nlbHXEQ==;
	24:1nzDulEQyyyG2iA1q1IFCoNaQ7XRkbCjrz71vier2K+hAZE/S8f61LoqGjLvl835HDLT6iOQRhH1fNnT9BXQ4syal6qlNFpCDJB3PP+sGSE=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1091;
x-microsoft-antispam-prvs: <BN3PR0501MB10913D7742E0EF3649982696BB0D0@BN3PR0501MB1091.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(57590538094435);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(520078)(10201501046)(3002001);
	SRVR:BN3PR0501MB1091; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1091; 
x-forefront-prvs: 077929D941
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(24454002)(13464003)(377454003)(199003)(189002)(5001960100002)(50986999)(81156007)(66066001)(189998001)(92566002)(110136002)(3846002)(40100003)(97736004)(586003)(102836003)(5008740100001)(122556002)(54356999)(11100500001)(19580395003)(33656002)(106356001)(19580405001)(86362001)(105586002)(6116002)(87936001)(5002640100001)(76576001)(76176999)(15975445007)(74316001)(99286002)(101416001)(5003600100002)(2950100001)(1096002)(1220700001)(2900100001)(5004730100002)(77096005)(10400500002)(1411001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1091;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2015 15:10:14.5038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1091
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fixing build when changing kernel PREFERRED_PROVIDER
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
X-List-Received-Date: Thu, 03 Dec 2015 15:10:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW5kcmUsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQW5kcmUgTWND
dXJkeSBbbWFpbHRvOmFybWNjdXJkeUBnbWFpbC5jb21dDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVj
ZW1iZXIgMDIsIDIwMTUgNDo1NyBQTQ0KPiBUbzogQnJ5YW4gRXZlbnNvbiA8YmV2ZW5zb25AbWVs
aW5rY29ycC5jb20+DQo+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJl
OiBbeW9jdG9dIEZpeGluZyBidWlsZCB3aGVuIGNoYW5naW5nIGtlcm5lbA0KPiBQUkVGRVJSRURf
UFJPVklERVINCj4gDQo+IE9uIFdlZCwgRGVjIDIsIDIwMTUgYXQgMTowOCBQTSwgQnJ5YW4gRXZl
bnNvbg0KPiA8YmV2ZW5zb25AbWVsaW5rY29ycC5jb20+IHdyb3RlOg0KPiA+IEknbSBvbiBwb2t5
L2Rpenp5LTEuNy4yIGFuZCBJJ20gaW4gdGhlIHByb2Nlc3Mgb2YgdXBkYXRpbmcgdG8gcG9reS9k
aXp6eS0NCj4gMS43LjMuICBJJ20gdXNpbmcgYW4gQXRtZWwgcHJvY2Vzc29yLCBzbyB3aGlsZSBJ
J20gYXQgaXQgSSdtIHB1bGxpbmcgaW4gY2hhbmdlcw0KPiBmcm9tIG1ldGEtYXRtZWwgKG92ZXIg
YXQgaHR0cHM6Ly9naXRodWIuY29tL2xpbnV4NHNhbS9tZXRhLWF0bWVsLCBkaXp6eQ0KPiBicmFu
Y2gpLiAgT25lIG9mIHRoZSBjb21taXRzIEkgcHVsbGVkIGluIHdhcyB0aGlzIG9uZToNCj4gaHR0
cHM6Ly9naXRodWIuY29tL2xpbnV4NHNhbS9tZXRhLQ0KPiBhdG1lbC9jb21taXQvYWUxMGMyNzRh
NjgxYWRlYmIxYjU5ZWExMTczZTZhOGM2MDNiNjZmMS4gIFRoaXMNCj4gcmVuYW1lZCB0aGUga2Vy
bmVsIHBhY2thZ2UgZnJvbSBsaW51eC15b2N0by1jdXN0b20gdG8gbGludXgtYXQ5MS4gIEFmdGVy
DQo+IHRoaXMgY2hhbmdlIHdoZW4gSSB0cmllZCB0byBidWlsZCB0aGUgaW1hZ2UsIEkgd2FzIGdy
ZWV0ZWQgd2l0aCBhIHZlcnkgbG9uZyBsaXN0DQo+IG9mIGZpbGVzIGFuZCB0aGUgZm9sbG93aW5n
IGVycm9yOg0KPiA+DQo+ID4gVGhlIGJ1aWxkIGhhcyBzdG9wcGVkIGFzIGNvbnRpbnVpbmcgaW4g
dGhpcyBzY2VuYXJpbyBXSUxMIGJyZWFrDQo+ID4gdGhpbmdzLCBpZiBub3Qgbm93LCBwb3NzaWJs
eSBpbiB0aGUgZnV0dXJlICh3ZSd2ZSBzZWVuIGJ1aWxkcyBmYWlsIHNldmVyYWwNCj4gbW9udGhz
IGxhdGVyKS4gSWYgdGhlIHN5c3RlbSBrbmV3IGhvdyB0byByZWNvdmVyIGZyb20gdGhpcyBhdXRv
bWF0aWNhbGx5IGl0DQo+IHdvdWxkIGhvd2V2ZXIgdGhlcmUgYXJlIHNldmVyYWwgZGlmZmVyZW50
IHNjZW5hcmlvcyB3aGljaCBjYW4gcmVzdWx0IGluIHRoaXMNCj4gYW5kIHdlIGRvbid0IGtub3cg
d2hpY2ggb25lIHRoaXMgaXMuIEl0IG1heSBiZSB5b3UgaGF2ZSBzd2l0Y2hlZCBwcm92aWRlcnMN
Cj4gb2Ygc29tZXRoaW5nIGxpa2UgdmlydHVhbC9rZXJuZWwgKGUuZy4gZnJvbSBsaW51eC15b2N0
byB0byBsaW51eC15b2N0by1kZXYpLCBpbg0KPiB0aGF0IGNhc2UgeW91IG5lZWQgdG8gZXhlY3V0
ZSB0aGUgY2xlYW4gdGFzayBmb3IgYm90aCByZWNpcGVzIGFuZCBpdCB3aWxsDQo+IHJlc29sdmUg
dGhpcyBlcnJvci4gSXQgbWF5IGJlIHlvdSBjaGFuZ2VkIERJU1RST19GRUFUVVJFUyBmcm9tIHN5
c3RlbWQNCj4gdG8gdWRldiBvciB2aWNlIHZlcnNhLiBDbGVhbmluZyB0aG9zZSByZWNpcGVzIHNo
b3VsZCBhZ2FpbiByZXNvbHZlIHRoaXMgZXJyb3INCj4gaG93ZXZlciBzd2l0Y2hpbmcgRElTVFJP
X0ZFQVRVUkVTIG9uIGFuIGV4aXN0aW5nIGJ1aWxkIGRpcmVjdG9yeSBpcyBub3QNCj4gc3VwcG9y
dGVkLCB5b3Ugc2hvdWxkIHJlYWxseSBjbGVhbiBvdXQgdG1wIGFuZCByZWJ1aWxkIChyZXVzaW5n
IHNzdGF0ZSBzaG91bGQNCj4gYmUgc2FmZSkuIEl0IGNvdWxkIGJlIHRoZSBvdmVybGFwcGluZyBm
aWxlcyBkZXRlY3RlZCBhcmUgaGFybWxlc3MgaW4gd2hpY2gNCj4gY2FzZSBhZGRpbmcgdGhlbSB0
byBTU1RBVEVfRFVQV0hJVEVMSVNUIG1heSBiZSB0aGUgY29ycmVjdCBzb2x1dGlvbi4gSXQNCj4g
Y291bGQgYWxzbyBiZSB5b3VyIGJ1aWwgIGQgaXMgaW5jbHVkaW5nIHR3byBkaWZmZXJlbnQgY29u
ZmxpY3RpbmcgdmVyc2lvbnMgb2YNCj4gdGhpbmdzIChlLmcuIGJsdWV6IDQgYW5kIGJsdWV6IDUg
YW5kIHRoZSBjb3JyZWN0IHNvbHV0aW9uIGZvciB0aGF0IHdvdWxkIGJlIHRvDQo+IHJlc29sdmUg
dGhlIGNvbmZsaWN0LiBJZiBpbiBkb3VidCwgcGxlYXNlIGFzayBvbiB0aGUgbWFpbGluZyBsaXN0
LCBzaGFyaW5nIHRoZQ0KPiBlcnJvciBhbmQgZmlsZWxpc3QgYWJvdmUuDQo+ID4gRVJST1I6IElm
IHRoZSBhYm92ZSBtZXNzYWdlIGlzIHRvbyBtdWNoLCB0aGUgc2ltcGxlciB2ZXJzaW9uIGlzIHlv
dSdyZQ0KPiBhZHZpc2VkIHRvIHdpcGUgb3V0IHRtcCBhbmQgcmVidWlsZCAocmV1c2luZyBzc3Rh
dGUgaXMgZmluZSkuIFRoYXQgd2lsbCBsaWtlbHkgZml4DQo+IHRoaW5ncyBpbiBtb3N0IChidXQg
bm90IGFsbCkgY2FzZXMuDQo+ID4gRVJST1I6IEZ1bmN0aW9uIGZhaWxlZDogc3N0YXRlX3Rhc2tf
cG9zdGZ1bmMNCj4gPg0KPiA+IEkgaXNzdWVkICdiaXRiYWtlIC1jIGNsZWFuIGxpbnV4LWF0OTEn
IGFuZCB0aGVuICdiaXRiYWtlIC1jIGNsZWFuIGxpbnV4LXlvY3RvLQ0KPiBjdXN0b20nLiAgTGlu
dXgtYXQ5MSBjbGVhbmVkIHdpdGhvdXQgaXNzdWUsIGJ1dCB3aGVuIEkgdHJpZWQgdG8gY2xlYW4g
bGludXgtDQo+IHlvY3RvLWN1c3RvbSBJIGdvdCBhbiBlcnJvciBzYXlpbmcgIk5vdGhpbmcgUFJP
VklERVMgJ2xpbnV4LXlvY3RvLWN1c3RvbSciLg0KPiBUaGF0IGluIGl0c2VsZiBtYWtlcyBzZW5z
ZSBhcyB0aGVyZSBpcyBubyBsb25nZXIgYW55IHJlY2lwZSBmb3IgbGludXgteW9jdG8tDQo+IGN1
c3RvbS4gIEhvd2V2ZXIsIEknZCBsaWtlIHRvIGF2b2lkIGRlbGV0aW5nIHRoZSBlbnRpcmUgdG1w
IGRpcmVjdG9yeS4gIEkgZG9uJ3QNCj4gaGF2ZSB0aGUgc3BlZWRpZXN0IG1hY2hpbmUgYW5kIEkn
ZCBsaWtlIHRvIGF2b2lkIHdhc3RpbmcgYSBkYXkgaWYgdGhlcmUgd2FzIGENCj4gc2ltcGxlciBz
b2x1dGlvbi4NCj4gPg0KPiA+IElzIHRoZXJlIGEgbGVzcyBkZXN0cnVjdGl2ZSBmaXggdG8gdGhp
cyBwcm9ibGVtIHRoYW4gZGVsZXRpbmcgdGhlIHRtcA0KPiBkaXJlY3RvcnksIG9yIGlzIHRoYXQg
dGhlIG9ubHkgc2FmZSB3YXkgdG8gZml4IHRoaXMgcHJvYmxlbT8NCj4gDQo+IElmIHlvdSBjYW4g
cmVzdG9yZSB0aGUgb2xkIGxpbnV4LXlvY3RvLWN1c3RvbSByZWNpcGUgKGUuZy4gdGVtcG9yYXJp
bHkgZ2l0DQo+IHJldmVydCB0aGUgY29tbWl0IHRoYXQgcmVtb3ZlZCBpdCkgdGhlbiB5b3Ugc2hv
dWxkIGJlIGFibGUgdG8gcnVuIGl0J3MgY2xlYW4NCj4gdGFzay4NCj4gDQo+IERlbGV0aW5nIHRt
cCBpcyBwcm9iYWJseSBzYWZlciBhbmQgcXVpY2tlciB0aG91Z2guIEl0IGNlcnRhaW5seSBzaG91
bGQgbm90DQo+IHRha2UgYSBkYXkgdG8gcmVjcmVhdGUgaXQgaWYgeW91IGtlZXAgeW91ciBkb3du
bG9hZHMgYW5kIHNzdGF0ZSBkaXJlY3Rvcmllcw0KPiBpbnRhY3QuDQoNCkkgaGFkIG5vIGlkZWEg
aG93IG11Y2ggaXMgc3RvcmVkIGluIHRoZSBzc3RhdGUuICBJIHRob3VnaHQgaWYgSSBkZWxldGVk
IHRoZSB0bXAgZGlyZWN0b3J5IGl0IHdvdWxkIGhhdmUgdG8gcmVidWlsZCBldmVyeXRoaW5nIGlu
c3RlYWQgb2YganVzdCBwb3B1bGF0ZSB0aGUgc3lzcm9vdCBhbmQgcmVwYWNrYWdlLiAgVGhlIHJl
YnVpbGQgb2YgdG1wIGFuZCBpbWFnZSBidWlsZCBvbmx5IHRvb2sgYWJvdXQgNDUgbWludXRlczsg
bXVjaCBiZXR0ZXIgdGhhbiBJIGV4cGVjdGVkLg0KDQpUaGFua3MsDQpCcnlhbg0KDQo+IA0KPiA+
IFRoYW5rcywNCj4gPiBCcnlhbg0KPiA+IC0tDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCj4gPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0
b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xp
c3RpbmZvL3lvY3RvDQo=

