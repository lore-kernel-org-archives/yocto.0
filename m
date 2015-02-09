Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0EF4E008CD; Mon,  9 Feb 2015 06:16:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0114.outbound.protection.outlook.com [207.46.100.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE5E7E00960
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 06:15:49 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) by
	BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) with
	Microsoft SMTP
	Server (TLS) id 15.1.81.19; Mon, 9 Feb 2015 14:01:28 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) with
	mapi id 15.01.0081.018; Mon, 9 Feb 2015 14:01:28 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Aurele Traynard <aurele.traynard@gmail.com>
Thread-Topic: [yocto] replace etc/network/interfaces with symbolic link
Thread-Index: AQHQQiVqxGi9Q2+6j0GOBMJfmqHiF5zkAE1wgAQZaQCAADnxAA==
Date: Mon, 9 Feb 2015 14:01:28 +0000
Message-ID: <BN3PR0501MB10906E7628BC59896E0CE778BB270@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CAKdxkf8Hz0p__1UpZ9+v9nedE7uNb7ajQ+ykUpaZ-_1mc6BhyA@mail.gmail.com>
	<BN3PR0501MB109039E595DA8504659AE114BB380@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<CAKdxkf-jp73wpRi19a7C8PKGqcnKL8aKarPM6Jerdy4MSD544Q@mail.gmail.com>
In-Reply-To: <CAKdxkf-jp73wpRi19a7C8PKGqcnKL8aKarPM6Jerdy4MSD544Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0042B4520092100042B59F
x-originating-ip: [98.100.91.242]
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1090;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1090; 
x-forefront-prvs: 04825EA361
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(377454003)(377424004)(13464003)(46102003)(110136001)(86362001)(76576001)(87936001)(2656002)(92566002)(77156002)(106116001)(62966003)(74316001)(99286002)(19580405001)(19580395003)(2950100001)(76176999)(50986999)(54356999)(33656002)(15975445007)(66066001)(40100003)(102836002)(122556002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1090;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2015 14:01:28.3785 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1090
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 09 Feb 2015 14:16:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXVyw6hsZSwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBdXJlbGUg
VHJheW5hcmQgW21haWx0bzphdXJlbGUudHJheW5hcmRAZ21haWwuY29tXQ0KPiBTZW50OiBNb25k
YXksIEZlYnJ1YXJ5IDA5LCAyMDE1IDQ6NTkgQU0NCj4gVG86IEJyeWFuIEV2ZW5zb24NCj4gQ2M6
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gcmVwbGFjZSBl
dGMvbmV0d29yay9pbnRlcmZhY2VzIHdpdGggc3ltYm9saWMgbGluaw0KPiANCj4gVGhhbmsgeW91
IGZvciBhbGwgYW5zd2VycywgSSBsb29rZWQNCj4gDQo+IA0KPiBJbiBmYWN0IEkgZm91bmQgYW5v
dGhlciBwcm9ibGVtLCBldmVuIGlmIEkgbW9kaWZ5IHRoZSBvcmlnaW5hbCByZWNpcGUgSSBjYW4n
dCBnZXQNCj4gYSBtb2RpZmllZCBycG0sIG9yIHJvb3Rmcy4uLg0KPiBJIGNvbW1lbnRlZCBsaW5l
cyBjb25jZXJuaW5nIGludGVyZmFjZXMgZmlsZXMgYnV0IGl0IHNlZW1zIHRoYXQgbm90aGluZyBp
cw0KPiBtb2RpZmllZCBpbiB0aGUgcm9vdGZzIGFuZCBpbiB0aGUgcnBtLi4uDQo+IGlmIHNvbWVv
bmUgdW5kZXJzdGFuZHMgd2hhdCBJIG1pc3NlZC4uLg0KPiANCj4gdGhlIGJpdGJha2UgZmlsZSA6
DQo+IGh0dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0LmNnaS9wb2t5L3BsYWluL21ldGEv
cmVjaXBlcy1jb3JlL2luaXQtDQo+IGlmdXBkb3duL2luaXQtaWZ1cGRvd25fMS4wLmJiDQo+IGFu
ZCBJIGNvbW1lbnRlZCBvdXQgOg0KPiAjaW5zdGFsbCAtbSAwNjQ0ICR7V09SS0RJUn0vaW50ZXJm
YWNlcw0KPiAke0R9JHtzeXNjb25mZGlyfS9uZXR3b3JrL2ludGVyZmFjZXMNCj4gI0NPTkZGSUxF
U18ke1BOfSA9ICIke3N5c2NvbmZkaXJ9L25ldHdvcmsvaW50ZXJmYWNlcyINCj4gDQo+IA0KDQpJ
ZiB5b3UgY29tbWVudCB0aG9zZSBsaW5lcyBvdXQsIHRoZW4gJHtzeXNjb25mZGlyfS9uZXR3b3Jr
L2ludGVyZmFjZXMgc2hvdWxkIG5vdCBiZSBpbiB0aGUgYnVpbHQgUlBNLiAgU28gZWl0aGVyIHRo
ZXJlIGlzIGEgLmJiYXBwZW5kIHRoYXQgaXMgYWRkaW5nIHRoZSBmaWxlIGJhY2sgaW4sIG9yIHRo
ZSBwYWNrYWdlIGlzbid0IGJlaW5nIHJlYnVpbHQuICBUcnkgY2hlY2tpbmcgdGhlIGZvbGxvd2lu
ZyB0byBzZWUgd2hhdCBtYXkgYmUgaGFwcGVuaW5nOg0KDQoxLiAgQ2hlY2sgdGhlIGNyZWF0aW9u
IGRhdGUgb24gdGhlIGluaXQtaWZ1cGRvd24gUlBNLiAgSWYgdGhlIFJQTSBoYXMgbm90IGJlZW4g
cmUtY3JlYXRlZCBzaW5jZSB0aGUgbGFzdCB0aW1lIHlvdSBtb2RpZmllZCB0aGUgcmVjaXBlLCB0
aGVuIHRoZSBSUE0gaXMgbm90IGJlaW5nIHJlYnVpbHQgd2l0aCB5b3VyIGNoYW5nZXMuICBJZiB5
b3UgYXJlIG5vdCBydW5uaW5nIGEgUFIgc2VydmVyLCB0aGVuIHlvdSBuZWVkIHRvIGluY3JlbWVu
dCB0aGUgUFIgdmVyc2lvbiBpbiB5b3VyIC5iYmFwcGVuZC4gIFNlZSBodHRwOi8vd3d3LnlvY3Rv
cHJvamVjdC5vcmcvZG9jcy8xLjcuMS9kZXYtbWFudWFsL2Rldi1tYW51YWwuaHRtbCN3b3JraW5n
LXdpdGgtYS1wci1zZXJ2aWNlIGZvciBkZXRhaWxzIG9uIHRoZSBQUiBzZXJ2aWNlIGFuZCBob3cg
dG8gaGFuZGxlIFBScyB3aXRob3V0IHRoZSBQUiBzZXJ2aWNlLiAgTm90ZSB0aGF0IGlmIHlvdSBh
cmUgb24gYW4gb2xkZXIgcG9reSBicmFuY2ggdGhhdCB0aGUgc3RlcHMgZm9yIGhhbmRsaW5nIHRo
ZSBQUiBzZXJ2aWNlIG1heSBiZSBzbGlnaHRseSBkaWZmZXJlbnQuICBSZWFkIHRoZSB2ZXJzaW9u
IG9mIGRvY3VtZW50YXRpb24gdGhhdCBtYXRjaGVzIHlvdXIgY3VycmVudCBicmFuY2guDQoyLiBJ
ZiB0aGUgUlBNIGlzIGJlaW5nIHJlYnVpbHQsIGV4dHJhY3QgdGhlIFJQTSBvbiB5b3VyIGJ1aWxk
IG1hY2hpbmUgdG8gbG9vayBhdCBpdHMgY29udGVudHMuICBJZiB0aGUgaW50ZXJmYWNlcyBmaWxl
IGlzIHN0aWxsIHRoZXJlLCB0aGVuIHRoZXJlIGlzIHN0aWxsIHNvbWV0aGluZyBub3Qgd29ya2lu
ZyByaWdodCB3aXRoIHRoZSBkb19pbnN0YWxsIHN0ZXAuICBVbmRlciB0bXAvd29yay88TUFDSElO
RT4vaW5pdC1pZnVwZG93bi88UFYtUFI+L3RlbXAvLCBvcGVuIHRoZSBmaWxlIHJ1bi5kb19pbnN0
YWxsICh0aGUgZmlsZW5hbWUgd2lsbCBoYXZlIGEgUElEIGFwcGVuZGVkIHRvIHRoZSBlbmQsIHNv
IGl0J2xsIGJlIG5hbWVkIHNvbWV0aGluZyBsaWtlIHJ1bi5kb19pbnN0YWxsLjE1NjEyLiAgSWYg
dGhlcmUgYXJlIG11bHRpcGxlIGluIHRoZSB0ZW1wIGRpcmVjdG9yeSwgbWFrZSBzdXJlIHlvdSBs
b29rIGF0IHRoZSBsYXRlc3Qgb25lKS4gIEluIHRoaXMgZmlsZSBpcyB0aGUgZmluYWwgZG9faW5z
dGFsbCBzY3JpcHQgdGhhdCBpcyBydW4gd2hlbiBwZXJmb3JtaW5nIHRoZSBpbnN0YWxsIHN0ZXAg
Zm9yIHRoZSByZWNpcGUuICBJZiB0aGlzIGRvZXMgbm90IGxvb2sgbGlrZSB3aGF0IHlvdSB3YW50
LCB0aGVuIHNvbWV0aGluZyBiZXR3ZWVuIHRoZSBtYWluIHJlY2lwZSBhbmQgdGhlIC5iYmFwcGVu
ZHMgYXJlIGJ1aWxkaW5nIHRoZSBkb19pbnN0YWxsIHN0ZXAgaW5jb3JyZWN0bHkuDQoNClNpbmNl
IHlvdSBhcmUgcmVtb3ZpbmcgZmlsZXMgdGhhdCB0aGUgb3JpZ2luYWwgcmVjaXBlIGFkZHMsIHRo
ZSBjbGVhbmVzdCBhcHByb2FjaCBtYXkgYmUgdG8gbGVhdmUgdGhlIG9yaWdpbmFsIHJlY2lwZSB1
bnRvdWNoZWQgYW5kIHRvIHJlcGxhY2UgdGhlIGRvX2luc3RhbGwgc3RlcCBpbiB5b3VyIC5iYmFw
cGVuZC4gIElmIHlvdSBtb2RpZnkgdGhlIG1haW4gcmVjaXBlLCBsYXRlciBvbiBpZiB5b3Ugc3dp
dGNoIHRvIGEgZGlmZmVyZW50IHBva3kgYnJhbmNoIHlvdSdsbCBsb3NlIHlvdXIgY2hhbmdlcy4N
Cg0KUmVnYXJkcywNCkJyeWFuDQoNCj4gQXVyw6hsZQ0KPiANCj4gDQo+IDIwMTUtMDItMDYgMjA6
MzggR01UKzAxOjAwIEJyeWFuIEV2ZW5zb24gPGJldmVuc29uQG1lbGlua2NvcnAuY29tDQo+IDxt
YWlsdG86YmV2ZW5zb25AbWVsaW5rY29ycC5jb20+ID46DQo+IA0KPiANCj4gCUF1cmVsZSwNCj4g
DQo+IAlPbmUgcG9zc2libGUgaXNzdWUgaXMgJHtzeXNjb25mZGlyfS9uZXR3b3JrL2ludGVyZmFj
ZXMgaXMgbGlzdGVkIGluIHRoZQ0KPiBDT05GRklMRVMgaW4gdGhlIG9yaWdpbmFsIHJlY2lwZS4g
IEl0IG1heSBzdGlsbCBiZSBpbnN0YWxsaW5nIHRoaXMgZmlsZSBiZWNhdXNlIGl0IGlzDQo+IGxp
c3RlZCB1bmRlciBDT05GRklMRVMuICBUcnkgYWRkaW5nOg0KPiANCj4gCUNPTkZGSUxFU18ke1BO
fSA9ICIiDQo+IA0KPiAJVG8geW91ciBiYmFwcGVuZC4NCj4gDQo+IAlSZWdhcmRzLA0KPiAJQnJ5
YW4NCj4gDQo+IA0KPiAJPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiAJPiBGcm9tOiB5
b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgPG1haWx0bzp5b2N0by0NCj4gYm91bmNlc0B5
b2N0b3Byb2plY3Qub3JnPiAgW21haWx0bzp5b2N0by0gPG1haWx0bzp5b2N0by0+DQo+IAk+IGJv
dW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyA8bWFpbHRvOmJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZz4g
XQ0KPiBPbiBCZWhhbGYgT2YgQXVyZWxlIFRyYXluYXJkDQo+IAk+IFNlbnQ6IEZyaWRheSwgRmVi
cnVhcnkgMDYsIDIwMTUgMTA6NTUgQU0NCj4gCT4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcg
PG1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnPg0KPiAJPiBTdWJqZWN0OiBbeW9jdG9dIHJl
cGxhY2UgZXRjL25ldHdvcmsvaW50ZXJmYWNlcyB3aXRoIHN5bWJvbGljIGxpbmsNCj4gCT4NCj4g
CT4gSGksDQo+IAk+DQo+IAk+DQo+IAk+IEknbSB0cnlpbmcgdG8gZmluZCBhIGNsZWFuIHdheSB0
byByZXBsYWNlIC9ldGMvbmV0d29yay9pbnRlcmZhY2VzDQo+IHdpdGggYQ0KPiAJPiBzeW1ib2xp
YyBsaW5rLiAoaXQgY29tZXMgd2l0aCBpbml0LWlmdXBkb3duIHJlY2lwZSkgSSB0cmllZCB3aXRo
ICBhDQo+IGJiYXBwZW5kDQo+IAk+IGJ1dCBub3RoaW5nIGFwcGVhciBpbiBmaW5hbCBmaWxlc3lz
dGVtIGFuZCAvZXRjL25ldHdvcmsvaW50ZXJmYWNlcw0KPiBzdGlsbA0KPiAJPiBleGlzdHMuLi4N
Cj4gCT4NCj4gCT4NCj4gCT4gSSdtIHN1cmUgdGhlIGZvbGxvd2luZyBjb2RlIGlzIGNvbXBsZXRl
bHkgd3JvbmcsIGJ1dCBJIGRvbid0IGtub3cNCj4gaG93IHRvIGRvDQo+IAk+IHRoaXMgd2l0aCB0
aGUgcmlnaHQgd2F5Li4uDQo+IAk+IGRvX2luc3RhbGxfYXBwZW5kICgpIHsNCj4gCT4gICAgIG1r
ZGlyIC1wIGRhdGFzL25ldHdvcmsNCj4gCT4NCj4gCT4gICAgIGluc3RhbGwgLWQgMDc1NSAke0R9
L2RhdGFzDQo+IAk+ICAgICBpbnN0YWxsIC1kIDA3NTUgJHtEfS9kYXRhcy9uZXR3b3JrDQo+IAk+
ICAgICBpbnN0YWxsIC1tIDA3NTUgJHtEfSR7c3lzY29uZmRpcn0vbmV0d29yay9pbnRlcmZhY2Vz
DQo+ICR7RH0vZGF0YXMvbmV0d29yaw0KPiAJPiAgICAgI212ICR7RH0ke3N5c2NvbmZkaXJ9L25l
dHdvcmsvaW50ZXJmYWNlcyAke0R9L2RhdGFzL25ldHdvcmsNCj4gCT4gICAgIHJtICR7RH0ke3N5
c2NvbmZkaXJ9L25ldHdvcmsvaW50ZXJmYWNlcw0KPiAJPiAgICAgbG4gLXNmIC9kYXRhcy9uZXR3
b3JrL2ludGVyZmFjZXMNCj4gJHtEfSR7c3lzY29uZmRpcn0vbmV0d29yay9pbnRlcmZhY2VzDQo+
IAk+DQo+IAk+IH0NCj4gCT4gRklMRVNfJHtQTn0gKz0gIi9kYXRhcy8gL2RhdGFzL25ldHdvcmsv
aW50ZXJmYWNlcyINCj4gCT4NCj4gCT4NCj4gCT4gdGhhbmtzIGZvciBhbnkgaGVscA0KPiAJPg0K
PiANCj4gDQo+IA0KDQo=

