Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D472E008C8; Fri,  4 Dec 2015 06:18:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.56.111.103 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bbn0103.outbound.protection.outlook.com [157.56.111.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8462DE0086A
	for <yocto@yoctoproject.org>; Fri,  4 Dec 2015 06:18:28 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1091.namprd05.prod.outlook.com (10.160.113.13) with
	Microsoft SMTP
	Server (TLS) id 15.1.337.19; Fri, 4 Dec 2015 14:03:03 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0337.015; Fri, 4 Dec 2015 14:03:03 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Michael Habibi <mikehabibi@gmail.com>
Thread-Topic: [yocto] Best practice for files copied directly into sysroot?
Thread-Index: AQHRLEysoQoJ6J+2nk2wyet0ibQyrJ62bU7wgAAg6ICAA1QhAIAA6nUA
Date: Fri, 4 Dec 2015 14:03:03 +0000
Message-ID: <BN3PR0501MB109081CFF721741E6E0189EDBB0C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
	<BN3PR0501MB1090CB712DB3C7DE23120AA3BB0F0@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<CAOsp8o9N0K0+ZgUcS7vdQE55NDaRW1F7a+cZsN3TTvA4LUW8hw@mail.gmail.com>
	<CAOsp8o9EtJmV97pQRrB1Wt9hr4S1b0vbNKgL6bPTuuO-L25GWQ@mail.gmail.com>
In-Reply-To: <CAOsp8o9EtJmV97pQRrB1Wt9hr4S1b0vbNKgL6bPTuuO-L25GWQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1091;
	5:X3XDTYzrJGunSp/ZB4MSoccvGU8uwLcmSMYV5RobvFqg0zEij5rwjpFQSI8VtecKis1YPTq+Nk3eR4bI1BmIM8ySoUNyNmPhiR6v3OeLcaHUh5+hAQiThH6W1wjSQm2/1VKW7HI456ZmPEWhVEWVZw==;
	24:ePH4FTY5z8IUK6TvUdIDL2JpEXsbbmXzr5lAZYTcNceZ0l+TQyO65ikoO8dEn31ip7TsEMcEj6pf5TCEL7y/NQqyR4LX4sM7qEfb3jZ7Weo=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1091;
x-microsoft-antispam-prvs: <BN3PR0501MB10914BEBD6C7B016A1D908D1BB0C0@BN3PR0501MB1091.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(57590538094435);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(520078)(5005006)(10201501046)(3002001);
	SRVR:BN3PR0501MB1091; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1091; 
x-forefront-prvs: 07807C55DC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(174864002)(164054003)(24454002)(199003)(13464003)(377454003)(189002)(54356999)(66066001)(8558605004)(189998001)(97736004)(5008740100001)(110136002)(92566002)(102836003)(5001960100002)(81156007)(50986999)(40100003)(586003)(122556002)(3846002)(33656002)(86362001)(19580395003)(105586002)(76176999)(74316001)(11100500001)(19580405001)(5002640100001)(15975445007)(87936001)(106356001)(99286002)(106116001)(101416001)(5004730100002)(76576001)(6116002)(2950100001)(2900100001)(1411001)(1220700001)(5003600100002)(1096002)(93886004)(10400500002)(77096005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1091;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2015 14:03:03.3098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1091
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Fri, 04 Dec 2015 14:18:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWljaGFlbCwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNaWNoYWVs
IEhhYmliaSBbbWFpbHRvOm1pa2VoYWJpYmlAZ21haWwuY29tXQ0KPiBTZW50OiBUaHVyc2RheSwg
RGVjZW1iZXIgMDMsIDIwMTUgNTo1NCBQTQ0KPiBUbzogQnJ5YW4gRXZlbnNvbiA8YmV2ZW5zb25A
bWVsaW5rY29ycC5jb20+DQo+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6
IFJlOiBbeW9jdG9dIEJlc3QgcHJhY3RpY2UgZm9yIGZpbGVzIGNvcGllZCBkaXJlY3RseSBpbnRv
IHN5c3Jvb3Q/DQo+IA0KPiBCcnlhbiwNCj4gDQo+IEkgbG9va2VkIHRocm91Z2ggdGhlIGRvY3Vt
ZW50YXRpb24gYW5kIEknbSBhIGJpdCB1bmNsZWFyIG9uIGhvdyB0byB1c2UNCj4gYmluX3BhY2th
Z2UsIGFuZCBoYXZlbid0IGJlZW4gYWJsZSB0byBmaW5kIGEgZ29vZCBleGFtcGxlLiBXaGVyZSBk
byBJDQo+IGFjdHVhbGx5IHBsYWNlIG15IHJvb3RmcyBmaWxlcy9iaW5hcmllcyB0byBnZXQgY29w
aWVkIHRvIG15IGltYWdlIHJvb3Rmcz8NCj4gVW5kZXIgJHtUSElTRElSfS8ke1BOfSBsaWtlIG90
aGVyIHJlY2lwZSBhcnRpZmFjdHM/IEhvdyBkb2VzIGl0IGNvcHkgdGhlbSB0bw0KPiAke1N9PyBP
ciBpcyB0aGlzIHNvbWV0aGluZyBJIG5lZWQgdG8gZG8/DQo+IA0KDQpJIGp1c3QgbW9kaWZpZWQg
b25lIG9mIG15IHJlY2lwZXMgeWVzdGVyZGF5IHRvIHVzZSBiaW5fcGFja2FnZSB5ZXN0ZXJkYXkg
YW5kIGZvdW5kIG91dCBhIGZldyBudWFuY2VzIHRoYXQgbWFrZSBpdCBlYXNpZXIgdG8gdXNlLiAg
UHJvcGVyIHNldHVwIG9mIHRoZSBmaWxlcyB0byBjb3B5IGlzIGtleS4gIFRoZSBtYW51YWwgc3Rh
dGVzICIgVGhlIGJpbl9wYWNrYWdlIGNsYXNzIHdvcmtzIHdlbGwgd2hlbiB0aGUgZmlsZXMgZXh0
cmFjdGVkIGludG8gJHtTfSBhcmUgYWxyZWFkeSBsYWlkIG91dCBpbiB0aGUgd2F5IHRoZXkgc2hv
dWxkIGJlIGxhaWQgb3V0IG9uIHRoZSB0YXJnZXQuIiAgQnkgZGVmYXVsdCwgYW55IGZpbGVzIGxp
c3RlZCBhcyAiZmlsZTovLyIgaW4gU1JDX1VSSSBhcmUgY29waWVkIHRvICR7V09SS0RJUn0sIGFu
ZCBpZiB0aGV5IGFyZSBhIGNvbXByZXNzZWQgYXJjaGl2ZSAoLnRhci5neiwgLnppcCkgdGhleSBh
cmUgdW5jb21wcmVzc2VkIHVuZGVyICR7V09SS0RJUn0uICBJZiB5b3UgY3JlYXRlIGEgdGFyYmFs
bCB3aXRoIHRoZSBmaWxlcyBpbiB0aGUgbG9jYXRpb25zIChhbmQgcGVybWlzc2lvbnMhKSB0aGF0
IHlvdSB3YW50IG9uIHRoZSBmaW5hbCBpbWFnZSwgdGhlbiB0aGUgYmluX3BhY2thZ2UgY2xhc3Mg
d2lsbCBkbyB0aGUgcmVzdCBvZiB0aGUgd29yay4gIEhvd2V2ZXIsIHlvdSBuZWVkIHRoZSBmaWxl
cyBpbiB0aGUgdGFyYmFsbCB0byBiZSBvbmUgZGlyZWN0b3J5IGxldmVsIGRvd24gc28gdGhhdCB0
aGV5IGFyZSBpbnN0YWxsZWQgb24gdGhlIGltYWdlIHByb3Blcmx5LiANCg0KTGV0J3MgYXNzdW1l
IHlvdSBoYXZlIGEgcmVjaXBlIHVuZGVyIG1ldGEtbXlsYXllci9yZWNpcGVzLW1pbmUvbXktYXBw
LyBjYWxsZWQgbXktYXBwXzEuMC4wLmJiLiAgWW91IGhhdmUgYW4gZXhlY3V0YWJsZSBjYWxsZWQg
bXktYXBwIHRoYXQgeW91IHdhbnQgdG8gaW5zdGFsbCBpbiAvdXNyL2Jpbi8sIGEgY29uZmlndXJh
dGlvbiBmaWxlIGNhbGxlZCBteS1hcHAuY29uZiB0aGF0IHlvdSB3YW50IHRvIGluc3RhbGwgYXQg
L3Vzci9zaGFyZS9teS1hcHAvIGFuZCBkb2N1bWVudGF0aW9uIGNhbGxlZCBteS1hcHAucGRmIHlv
dSB3YW50IHRvIGluc3RhbGwgYXQgL3Vzci9zaGFyZS9pbmZvLy4gIFlvdSB3YW50IGFsbCB0aGlz
IHRvIGJlIHVuZGVyIGEgZGlyZWN0b3J5IHNvIHRoYXQgd2hlbiB0aGUgdGFyYmFsbCBnZXRzIHVu
cGFja2VkIHVuZGVyICR7V09SS0RJUn0gdGhlIGZpbGVzIGFuZCBkaXJlY3RvcmllcyB5b3Ugd2Fu
dCBvbiB0aGUgZmluYWwgaW1hZ2UgYXJlIHVuZGVyICR7U30uICAke1N9IGRlZmF1bHRzIHRvICR7
V09SS0RJUn0vJHtCUH0sIHdoaWNoIGluIHRoaXMgY2FzZSB3b3VsZCBiZSAke1dPUktESVJ9L215
LWFwcC0xLjAuMC4gIFNvIGlmIHlvdSBjcmVhdGVkIHRoZSBmb2xsb3dpbmcgZGlyZWN0b3J5IHN0
cnVjdHVyZToNCg0KbXktYXBwLTEuMC4wLw0KICAgIHVzci8NCiAgICAgICAgYmluLw0KICAgICAg
ICAgICAgbXktYXBwDQogICAgICAgIGluZm8vDQogICAgICAgICAgICBteS1hcHAucGRmDQogICAg
ICAgIG15LWFwcC8NCiAgICAgICAgICAgIG15LWFwcC5jb25mDQoNCkFnYWluLCByZW1lbWJlciB0
byBzZXQgdGhlIGRpcmVjdG9yeSBhbmQgZmlsZSBwZXJtaXNzaW9ucyBhcyB5b3Ugd2FudCBvbiB0
aGUgZmluYWwgaW1hZ2UuICBUaGVuIGNyZWF0ZSBhIHRhcmJhbGwgZnJvbSB0aGUgZGlyZWN0b3J5
IHlvdSBsYWlkIG91dCBjYWxsZWQgbXktYXBwLTEuMC4wLnRhci5neiBhbmQgcGxhY2UgaXQgdW5k
ZXIgbWV0YS1teWxheWVyL3JlY2lwZXMtbWluZS9teS1hcHAvZmlsZXMvLiAgVGhlbiBjcmVhdGUg
eW91ciByZWNpcGUgYXM6IA0KDQpTVU1NQVJZID0gInN1bW1hcnkgaGVyZSINClNFQ1RJT04gPSAi
cHJvcGVyIHNlY3Rpb24gbmFtZSBoZXJlIg0KTElDRU5TRSA9ICJsaWNlbnNlIG5hbWUgaGVyZSIN
CkxJQ19GSUxFU19DSEtTVU0gPSAibGljZW5zZSBwYXRoIGFuZCBNRDVzdW0gaGVyZSINCg0KU1JD
X1VSSSA9ICJmaWxlOi8vJHtCUH0udGFyLmd6Ig0KaW5oZXJpdCBiaW5fcGFja2FnZQ0KDQpUaGUg
c3lzdGVtIHdpbGwgdGhlbiBwYWNrYWdlIHlvdXIgZmlsZXMgYW5kIGluc3RhbGwgdGhlbSBvbnRv
IHRoZSBpbWFnZSB3aGVyZSB0aGV5IGJlbG9uZy4gIFRoZXNlIGFyZSB0aGUgb25seSBsaW5lcyB5
b3UgbmVlZCBpbiB5b3VyIHJlY2lwZSBvdGhlciB0aGFuIHRoZSBzdGFuZGFyZCBoZWFkZXIgdmFy
aWFibGVzLiAgSW4gdGhlIGZ1dHVyZSwgaWYgeW91IGhhdmUgYSBuZXcgdmVyc2lvbiB0aGVuIGp1
c3QgcmVjcmVhdGUgdGhlIHRhcmJhbGwgd2l0aCB0aGUgdXBkYXRlZCBmaWxlcyBhbmQgcmVuYW1l
IHRoZSB0YXJiYWxsIHRvIG1hdGNoIHRoZSBuZXcgdmVyc2lvbi4gIEFsdGhvdWdoIEkgYW0gaGF2
aW5nIGlzc3VlcyB3aXRoIHRoZSBsaWNlbnNlOyBJIGhhdmVuJ3QgZmlndXJlZCBvdXQgd2hlcmUg
dG8gcHV0IGl0IGFuZCB3aGF0IHRvIHNldCBMSUNfRklMRVNfQ0hLU1VNIHRvIGluIHRoZSByZWNp
cGUgc28gdGhhdCBiaXRiYWtlIGNhbiBmaW5kIHRoZSBsaWNlbnNlLiAgSWYgYW55b25lIGhhcyBh
IGdvb2QgYW5zd2VyIGZvciB0aGF0LCBsZXQgbWUga25vdy4NCg0KUmVnYXJkcywNCkJyeWFuDQoN
Cj4gVGhhbmtzLA0KPiBNaWNoYWVsDQo+IA0KPiBPbiBUdWUsIERlYyAxLCAyMDE1IGF0IDI6MDMg
UE0sIE1pY2hhZWwgSGFiaWJpIDxtaWtlaGFiaWJpQGdtYWlsLmNvbQ0KPiA8bWFpbHRvOm1pa2Vo
YWJpYmlAZ21haWwuY29tPiA+IHdyb3RlOg0KPiANCj4gDQo+IAlUaGFua3MgQnJ5YW4hDQo+IA0K
PiAJT24gVHVlLCBEZWMgMSwgMjAxNSBhdCAxOjUwIFBNLCBCcnlhbiBFdmVuc29uDQo+IDxiZXZl
bnNvbkBtZWxpbmtjb3JwLmNvbSA8bWFpbHRvOmJldmVuc29uQG1lbGlua2NvcnAuY29tPiA+IHdy
b3RlOg0KPiANCj4gDQo+IAkJTWljaGFlbCwNCj4gDQo+IA0KPiAJCT4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCj4gCQk+IEZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyA8
bWFpbHRvOnlvY3RvLQ0KPiBib3VuY2VzQHlvY3RvcHJvamVjdC5vcmc+ICBbbWFpbHRvOnlvY3Rv
LSA8bWFpbHRvOnlvY3RvLT4NCj4gCQk+IGJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZw0KPiA8bWFp
bHRvOmJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZz4gXSBPbiBCZWhhbGYgT2YgTWljaGFlbCBIYWJp
YmkNCj4gCQk+IFNlbnQ6IFR1ZXNkYXksIERlY2VtYmVyIDAxLCAyMDE1IDEwOjI2IEFNDQo+IAkJ
PiBUbzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiA8bWFpbHRvOnlvY3RvQHlvY3RvcHJvamVj
dC5vcmc+DQo+IAkJPiBTdWJqZWN0OiBbeW9jdG9dIEJlc3QgcHJhY3RpY2UgZm9yIGZpbGVzIGNv
cGllZCBkaXJlY3RseSBpbnRvDQo+IHN5c3Jvb3Q/DQo+IAkJPg0KPiAJCT4gSSBhbSB3b3JraW5n
IG9uIHBvdGVudGlhbGx5IG1pZ3JhdGluZyBvdXIgZGlzdHJpYnV0aW9uIHRvDQo+IFlvY3RvICh3
aWxsIGJlIGEgbG9uZywNCj4gCQk+IGxvbmcgcHJvY2VzcykuIFdlIGhhdmUgYW4gYXJlYSBvZiBv
dXIgZmlsZXN5c3RlbSB3aGVyZQ0KPiBhbnkgZmlsZSBwbGFjZWQgd2lsbCBnbw0KPiAJCT4gZGly
ZWN0bHkgaW50byB0aGUgcm9vdGZzIG9mIHRoZSB0YXJnZXQuIFRoaXMgd29ya3Mgd2VsbCB3aXRo
DQo+IG91ciBwcm9kdWN0LCBhcyB3ZQ0KPiAJCT4gaGF2ZSBjZXJ0YWluIGJpbmFyaWVzIGFuZCBz
Y3JpcHRzIHRoYXQgbmVlZCB0byBiZSBjb3BpZWQNCj4gZGlyZWN0bHksIGFuZCB0aGVyZSdzDQo+
IAkJPiBubyBvdGhlciByZWFsIHN0ZXAgaW52b2x2ZWQgKG5vIGNvbXBpbGF0aW9uLCBldGMpLiBJ
cyB0aGVyZSBhDQo+IGJlc3QgcHJhY3RpY2Ugb3INCj4gCQk+IGV4aXN0aW5nIGNsYXNzIHRoYXQg
aGFuZGxlcyB0aGlzPyBJIHNhdyBtZW50aW9uIG9mIGEgYmluYXJ5Lw0KPiBkaXJlY3RvcnkgYnV0
IEkNCj4gCQk+IHdhc24ndCBzdXJlIGlmIHRoYXQgd2FzIGZvciB0aGlzIG9yIHNvbWV0aGluZyBl
bHNlLg0KPiAJCT4NCj4gCQk+IFRoYW5rcywNCj4gCQk+IE1pY2hhZWwNCj4gDQo+IA0KPiAJCUkn
bSBnbGFkIEkgZGVjaWRlZCB0byBhbnN3ZXIgeW91ciBxdWVzdGlvbiBiZWNhdXNlIEkgdGhpbmsg
SQ0KPiBmb3VuZCBhbiBlYXNpZXIgd2F5IHRvIGRvIGl0IHRoYW4gSSBoYXZlIGJlZW4gZG9pbmcg
dGhpcyBpbiB0aGUgcGFzdC4gIElmIHlvdQ0KPiB3YW50IHRvIGJlIGFibGUgdG8gdXBkYXRlIHRo
ZSBmaWxlcyBvbiB5b3VyIHN5c3RlbSBhdCBhIGxhdGVyIGRhdGUsIHlvdSB3aWxsDQo+IHdhbnQg
dG8gbWFrZSB5b3VyIG93biByZWNpcGUgd2hpY2ggaW5zdGFsbHMgdGhlIGJpbmFyaWVzIGFuZCBz
Y3JpcHRzIG9udG8gdGhlDQo+IHJvb3Rmcy4gIEluIGdlbmVyYWwgeW91IGNyZWF0ZSBhIHJlY2lw
ZSB3aGljaCBkb2VzIG5vdCBoYXZlIGRvX2NvbmZpZ3VyZSBvcg0KPiBkb19jb21waWxlIHRhc2tz
LiAgVGhlcmUgaXMgYSBjbGFzcyB0aGF0IGRvZXMgdGhpcyBhbHJlYWR5IGNhbGxlZCAiYmluX3Bh
Y2thZ2UiDQo+IHRoYXQgZG9lcyB0aGlzIGZvciB5b3UuICBTZWUgdGhlICJQYWNrYWdpbmcgRXh0
ZXJuYWxseSBQcm9kdWNlZCBCaW5hcmllcyINCj4gc2VjdGlvbiBvZiB0aGUgbWFudWFsIGhlcmU6
IGh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzIuMC9tZWdhLQ0KPiBtYW51YWwvbWVn
YS1tYW51YWwuaHRtbCNuZXctcmVjaXBlLXRlc3RpbmctZXhhbXBsZXMuICAgU28gaWYgeW91IGlu
Y2x1ZGUNCj4gdGhlIGxpbmUgImluaGVyaXQgYmluX3BhY2thZ2UiIGFuZCBmb2xsb3cgdGhlIGlu
c3RydWN0aW9ucyBpbiB0aGF0IHNlY3Rpb24gb2YNCj4gdGhlIG1hbnVhbCwgaXQgc2hvdWxkIGlu
c3RhbGwgYWxsIHRoZSBmaWxlcyB0byB0aGUgcm9vdGZzIHRoYXQgYXJlIGluY2x1ZGVkIGluIHRo
ZQ0KPiByZWNpcGUuDQo+IA0KPiAJCVJlZ2FyZHMsDQo+IAkJQnJ5YW4NCj4gDQo+IA0KPiANCj4g
DQoNCg==

