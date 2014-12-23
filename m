Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42AA5E00916; Tue, 23 Dec 2014 05:45:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0104.outbound.protection.outlook.com [157.56.110.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8CC2E002A6
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 05:45:01 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) by
	BN3PR0501MB1092.namprd05.prod.outlook.com (25.160.113.139) with
	Microsoft
	SMTP Server (TLS) id 15.1.49.12; Tue, 23 Dec 2014 13:11:56 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) with
	mapi id 15.01.0036.010; Tue, 23 Dec 2014 13:11:56 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: autobuilder: How to set PREMIRRORS?
Thread-Index: Ac//SnMU4cyS3XABQce6M1Hid22YVgDIzViQAGcGIQAFWMg4gAFROidQ
Date: Tue, 23 Dec 2014 13:11:56 +0000
Message-ID: <BN3PR0501MB1090693B1158F9012F72D4C1BB570@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <7383172b808e4ec3a8e2550c04cc9e91@BLUPR05MB037.namprd05.prod.outlook.com>
	<40cfd0ca83f94c9eb826ab2573d41453@BLUPR05MB037.namprd05.prod.outlook.com>
	<7686657984f84a938af3bdb15ef65992@BY2PR05MB048.namprd05.prod.outlook.com>
	<CAPhnLPDmOXvFJzwPri-p0DY1iwWZPBqb-WdD4qmAH+GRmcB5tg@mail.gmail.com>
In-Reply-To: <CAPhnLPDmOXvFJzwPri-p0DY1iwWZPBqb-WdD4qmAH+GRmcB5tg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00211F05008CAA00212052
x-originating-ip: [98.100.91.242]
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1092;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1092; 
x-forefront-prvs: 04347F8039
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(189002)(51704005)(377424004)(377454003)(199003)(51914003)(13464003)(74316001)(99396003)(120916001)(66066001)(4396001)(107046002)(54206007)(86362001)(19580405001)(46102003)(19580395003)(21056001)(64706001)(76576001)(97736003)(122556002)(77156002)(101416001)(110136001)(105586002)(68736005)(54356999)(15975445007)(106356001)(92566001)(2656002)(102836002)(87936001)(99286002)(50986999)(40100003)(2950100001)(20776003)(33656002)(62966003)(2900100001)(31966008)(54606007)(76176999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1092;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2014 13:11:56.0343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1092
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autobuilder: How to set PREMIRRORS?
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
X-List-Received-Date: Tue, 23 Dec 2014 13:45:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RWxpemFiZXRoLA0KDQpUaGFua3MgZm9yIHRoZSB0aXBzLiAgSSB0aGluayBJIGhhdmUgc29tZXRo
aW5nIGNsb3NlIHRvIHdvcmtpbmcsIGp1c3QgbmVlZCB0byBmaW5pc2ggdGVzdGluZy4gIEkgc2hv
dWxkIGhhdmUgYSBwYXRjaCBmb3IgeW91IHRoZSBmaXJzdCB3ZWVrIG9mIEphbnVhcnkuDQoNClRo
YW5rcywNCkJyeWFuIEUuDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTog
RmxhbmFnYW4sIEVsaXphYmV0aCBbbWFpbHRvOmVsaXphYmV0aC5mbGFuYWdhbkBpbnRlbC5jb21d
DQo+IFNlbnQ6IFR1ZXNkYXksIERlY2VtYmVyIDE2LCAyMDE0IDM6MTQgUE0NCj4gVG86IEJyeWFu
IEV2ZW5zb24NCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IGF1
dG9idWlsZGVyOiBIb3cgdG8gc2V0IFBSRU1JUlJPUlM/DQo+IA0KPiAyMDE0LTExLTE5IDE1OjEy
IEdNVCswMDowMCBCcnlhbiBFdmVuc29uIDxiZXZlbnNvbkBtZWxpbmtjb3JwLmNvbT46DQo+ID4g
QWxsLA0KPiA+DQo+ID4gSSdtIGdldHRpbmcgY2xvc2UgdG8gaW1wbGVtZW50aW5nIHRoaXMgZmVh
dHVyZSwgYnV0IEknbSBoYXZpbmcgc29tZSBpc3N1ZXMNCj4gZ2V0dGluZyBhdXRvLmNvbmYgZm9y
bWF0dGVkIGNvcnJlY3RseS4gIFNlZSBiZWxvdy4NCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBCcnlhbiBFdmVuc29uDQo+ID4+IFNlbnQ6IE1vbmRheSwg
Tm92ZW1iZXIgMTcsIDIwMTQgOTowOCBBTQ0KPiA+PiBUbzogQnJ5YW4gRXZlbnNvbjsgeW9jdG9A
eW9jdG9wcm9qZWN0Lm9yZzsNCj4gZWxpemFiZXRoLmZsYW5hZ2FuQGludGVsLmNvbQ0KPiA+PiBT
dWJqZWN0OiBSRTogYXV0b2J1aWxkZXI6IEhvdyB0byBzZXQgUFJFTUlSUk9SUz8NCj4gPj4NCj4g
Pj4gQWxsLA0KPiA+Pg0KPiA+PiBBZnRlciBsb29raW5nIHRocm91Z2ggdGhlIGF1dG9idWlsZGVy
IGNvZGUsIEkgZG9uJ3Qgc2VlIGFueXdoZXJlIGluIHdoaWNoDQo+ID4+IFBSRU1JUlJPUlMgY2Fu
IGJlIHNldCBhbmQgdXNlZC4gIEkgc2VlIGluIENyZWF0ZUF1dG9Db25mLnB5IHRoYXQNCj4gPj4g
UFJFTUlSUk9SUyBpcyBhbHdheXMgc2V0IHRvICIiLiAgSSBkb24ndCB0aGluayBpdCdkIGJlIHRo
YXQgZGlmZmljdWx0IHRvIGFkZA0KPiA+PiBQUkVNSVJST1JTIGFzIGEgQ3JlYXRlQXV0b0NvbmYg
cGFyYW1ldGVyIGZvciB0aGUgYnVpbGRzZXRzLiAgSSBjYW4NCj4gd29yaw0KPiA+PiBvbiB0aGUg
Y2hhbmdlIGFuZCBzdWJtaXQgdGhlIHBhdGNoLiAgQnV0IGJlZm9yZSBJIHN0YXJ0IEkgaGF2ZSBh
IGZldw0KPiA+PiBxdWVzdGlvbnM6DQo+ID4+DQo+ID4+IDEuIEkgcGxhbiBvbiBpbXBsZW1lbnRp
bmcgdGhlIFBSRU1JUlJPUlMgcGFyYW1ldGVyIGFzIGFuIGFycmF5LCBzaW1pbGFyDQo+IHRvDQo+
ID4+ICdsYXllcmRpcnMnIGZvciBDcmVhdGVCQkxheWVyc0NvbmYuICBGb3IgZXhhbXBsZToNCj4g
Pj4NCj4gPj4geydDcmVhdGVBdXRvQ29uZicgOiB7J1BSRU1JUlJPUlMnIDogWydnaXQ6Ly8uKi8u
Kg0KPiA+PiBodHRwOi8vb3VyL2xvY2FsL21pcnJvci9wYXRoL21pcnJvci9zb3VyY2VzLyAnLA0K
PiA+PiAgICAgICAnZnRwOi8vLiovLiogaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aCAvbWly
cm9yL3NvdXJjZXMvICcsDQo+ID4+ICAgICAgICdodHRwOi8vLiovLiogaHR0cDovL291ci9sb2Nh
bC9taXJyb3IvcGF0aC9taXJyb3Ivc291cmNlcy8gJywNCj4gPj4gICAgICAgJ2h0dHBzOi8vLiov
LiogaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aC9taXJyb3Ivc291cmNlcy8gJ119DQo+ID4+
DQo+ID4+IHdvdWxkIGFkZCB0aGUgZm9sbG93aW5nIHRvIGF1dG8uY29uZjoNCj4gPj4NCj4gPj4g
IFBSRU1JUlJPUlMgPSAnZ2l0Oi8vLiovLiogaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aC9t
aXJyb3Ivc291cmNlcy8NCj4gXA0KPiA+PiAgICAgICBmdHA6Ly8uKi8uKiBodHRwOi8vb3VyL2xv
Y2FsL21pcnJvci9wYXRoIC9taXJyb3Ivc291cmNlcy8gIFwNCj4gPj4gICAgICAgaHR0cDovLy4q
Ly4qIGh0dHA6Ly9vdXIvbG9jYWwvbWlycm9yL3BhdGgvbWlycm9yL3NvdXJjZXMvICBcDQo+ID4+
ICAgICAgIGh0dHBzOi8vLiovLiogaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aC9taXJyb3Iv
c291cmNlcy8gJw0KPiA+Pg0KPiA+PiBEb2VzIHRoaXMgc291bmQgcmVhc29uYWJsZSwgb3Igd291
bGQgYSBkaWZmZXJlbnQgcGFyYW1ldGVyIGZvcm1hdCBiZQ0KPiA+PiBwcmVmZXJyZWQ/DQo+ID4N
Cj4gDQo+IEkgd291bGQgYWN0dWFsbHkgZG8gdGhpcyBzaW1pbGFyIHRvIGhvdyB3ZSBoYXZlIERF
VktFUk5FTF9NVVRfUkVQTy4NCj4gDQo+IFBSRU1JUlJPUlMgPSBbJ2dpdDovLy4qLy4qDQo+IGh0
dHA6Ly9vdXIvbG9jYWwvbWlycm9yL3BhdGgvbWlycm9yL3NvdXJjZXMvJywgJ2Z0cDovLy4qLy4q
DQo+IGh0dHA6Ly9vdXIvbG9jYWwvbWlycm9yL3BhdGggL21pcnJvci9zb3VyY2VzLycsICdodHRw
Oi8vLiovLioNCj4gaHR0cDovL291ci9sb2NhbC9taXJyb3IvcGF0aC9taXJyb3Ivc291cmNlcy8n
LCAnaHR0cHM6Ly8uKi8uKg0KPiBodHRwOi8vb3VyL2xvY2FsL21pcnJvci9wYXRoL21pcnJvci9z
b3VyY2VzLyddDQo+IA0KPiA+IEkgYW0gdHJ5aW5nIHRvIGFkZCBhIHNpbmdsZSBQUkVNSVJST1Ig
dXNpbmcgdGhlIHN5bnRheCBJIHNwZWNpZmllZCBhYm92ZS4NCj4gQXQgdGhpcyB0aW1lIGl0IGlz
IGdldHRpbmcgaW5zZXJ0ZWQgaW4gYXV0by5jb25mLiAgSG93ZXZlciwgdGhlIHN5c3RlbSBpcyBn
b2luZw0KPiBpbnRvIGFuIGluZmluaXRlIGxvb3AgYnVpbGRpbmcgdGhlIFBSRU1JUlJPUiBwYXRo
LiAgVGhlIGFkZGVkIGNvbnRlbnQgdG8NCj4gYXV0by5jb25mIGF0IHRoaXMgdGltZSBsb29rcyBs
aWtlOg0KPiA+DQo+ID4gUFJFTUlSUk9SUyA9ICIgXA0KPiA+IGh0dHA6Ly8uKi4qIGh0dHA6Ly9z
ZXJ2ZXIucmVwby5sb2NhbC9taXJyb3Ivc291cmNlcy8gXG4gXA0KPiA+ICINCj4gPg0KPiA+IEFu
ZCBmcm9tIGxvb2tpbmcgYXQgbG9nLmRvX2ZldGNoIGZvciB0aGUgcGFja2FnZSB0aGF0IGF0dGVt
cHRzIHRvIHVzZSB0aGUNCj4gUFJFTUlSUk9SLCB0aGUgbG9nIGlzIGZpbGxlZCB3aXRoDQo+ICJz
ZXJ2ZXIucmVwby5sb2NhbHNlcnZlci5yZXBvLmxvY2Fsc2VydmVyLnJlcG8ubG9jYWwiIHJlcGVh
dGluZy4gIEFueSB0aXBzIG9uDQo+IGhvdyBQUkVNSVJST1JTIHNob3VsZCBiZSBidWlsdD8NCj4g
Pg0KPiA+IEhlcmUncyB3aGF0IEkgaGF2ZSBzbyBmYXIgaW4gQ3JlYXRlQXV0b0NvbmYucHk6DQo+
ID4NCj4gPiAgICAgICAgICAgICBzZWxmLlBSRU1JUlJPUlM9IiINCj4gPiAgICAgICAgICAgICBm
b3V0ID0gZm91dCArICdQUkVNSVJST1JTID0gIiBcIFxuJw0KPiA+ICAgICAgICAgICAgIGlmIGxp
c3Qoc2VsZi5QUkVNSVJST1JTKToNCj4gPiAgICAgICAgICAgICAgICAgZm9yIHByZW1pcnJvciBp
biBzZWxmLlBSRU1JUlJPUlM6DQo+ID4gICAgICAgICAgICAgICAgICAgICBmb3V0ID0gZm91dCAr
IHByZW1pcnJvciArICcgXFxcXG4gXCBcbicNCj4gPiAgICAgICAgICAgICBmb3V0ID0gZm91dCAr
ICciIFxuJw0KPiA+DQo+ID4gQW55IHRpcHMgb24gaG93IHRvIGNoYW5nZSB0aGluZ3Mgc28gUFJF
TUlSUk9SUyBpcyBjb3JyZWN0bHkgcGFyc2VkPw0KPiA+DQo+IA0KPiAjbWFrZSBzdXJlIHlvdSBh
ZGQNCj4gIw0KPiAjZXhwb3J0IFBSRU1JUlJPUlM9IiINCj4gIyB0byB5b2N0by1hdXRvYnVpbGRl
ci1zZXR1cA0KPiANCj4gaWYgb3MuZW52aXJvbi5nZXQoJ1BSRU1JUlJPUlMnKSBpcyBub3QgTm9u
ZToNCj4gICAgIHByZW1pcnJvcnM9YXN0LmxpdGVybmFsX2V2YWwob3MuZW52aXJvbi5nZXQoJ1BS
RU1JUlJPUlMnKS5lbmNvZGUoJ3V0Zi04JykNCj4gICAgIGZvdXQgPSsgJ1BSRU1JUlJPUlMgPSAi
XCBcbicNCj4gICAgIGZvciBtaXJyb3IgaW4gcHJlbWlycm9yczouLi4uLg0KPiANCj4gSSB0aGlu
ayB0aGlzIHNob3VsZCBkbyB3aGF0IHlvdSdyZSBsb29raW5nIGZvci4NCj4gDQo+ID4gVGhhbmtz
LA0KPiA+IEJyeWFuDQo+ID4NCj4gDQo+IC0tDQo+IEVsaXphYmV0aCBGbGFuYWdhbg0KPiBZb2N0
byBQcm9qZWN0DQo+IEJ1aWxkIGFuZCBSZWxlYXNlDQo=

