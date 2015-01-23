Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E277E0089B; Thu, 22 Jan 2015 20:04:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D87FE00845
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 20:04:41 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56508413"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 23 Jan 2015 12:01:11 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0N441tG007996;
	Fri, 23 Jan 2015 12:04:01 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Fri, 23 Jan 2015 12:04:40 +0800
From: "Bian, Naimeng" <biannm@cn.fujitsu.com>
To: "Lei, Maohui" <leimaohui@cn.fujitsu.com>, Alexandru Vaduva
	<Alexandru.Vaduva@enea.com>, "Qian, Lei" <qianl.fnst@cn.fujitsu.com>
Thread-Topic: [yocto] [meta-cgl][PATCH 0/2] cluster: Fix some error and format
Thread-Index: AQHQM8/vgupJ+cRNxUeloriaJUMtHZzGyYGAgAAX2wCAAXQzgIAEJy6AgACanYA=
Date: Fri, 23 Jan 2015 04:04:39 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CC73DEA350@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <1421662056-1389-1-git-send-email-qianl.fnst@cn.fujitsu.com>
	<DDB0C57E45663A458C5CACB7B5688BC21D77B0BA@SESTOEX04.enea.se>
	<20150119205758.1ff97d78@Fedora>
	<DDB0C57E45663A458C5CACB7B5688BC21D782E91@SESTOEX04.enea.se>
	<1B56A49860EB2D45ADE3731B15C959FDAE6AC4@G08CNEXMBPEKD01.g08.fujitsu.local>
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAE6AC4@G08CNEXMBPEKD01.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.31]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH 0/2] cluster: Fix some error and format
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
X-List-Received-Date: Fri, 23 Jan 2015 04:04:53 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgQWxleA0KDQpNYXliZSB5b3Ugc2hvdWxkIGNoZWNrIHRoYXQgd2hlcmUgJHtsaWJleGVjZGly
fSB3YXMgc2V0IHRvIHBvaW50IHRvIGluICR7Qn0vc2VydmVycy9zbGFwZC9NYWtlZmlsZQ0KDQoj
IGNhdCAke0J9L3NlcnZlcnMvc2xhcGQvTWFrZWZpbGUgfCBncmVwICJsaWJleGVjZGlyID0iDQoN
CkkgZ3Vlc3MgaXQncyAvdXNyL2xpYmV4ZWMuDQoNCkRpZCB5b3UgYnVpbGQgdGhlIG9wZW5sZGFw
IHdpdGggdGhlIG1ldGEtY2xvdWQtc2VydmljZXMvbWV0YS1vcGVuc3RhY2svcmVjaXBlcy1zdXBw
b3J0L29wZW5sZGFwL29wZW5sZGFwXzIuNC4zOS5iYmFwcGVuZCB0b2dldGhlci4NCkl0J3Mgd3Jv
bmcgdG8gc3BlY2lmeSBsaWJleGVjZGlyIHRvIC91c3IvbGliZXhlYyBpbiB0aGlzIGJiYXBwZW5k
Lg0KDQpUaGFua3MNCiBCaWFuDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJv
bTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNlc0B5
b2N0b3Byb2plY3Qub3JnXQ0KPiBPbiBCZWhhbGYgT2YgTGVpLCBNYW9odWkNCj4gU2VudDogRnJp
ZGF5LCBKYW51YXJ5IDIzLCAyMDE1IDEwOjM1IEFNDQo+IFRvOiBBbGV4YW5kcnUgVmFkdXZhOyBR
aWFuLCBMZWkvx64gwNoNCj4gQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDog
UmU6IFt5b2N0b10gW21ldGEtY2dsXVtQQVRDSCAwLzJdIGNsdXN0ZXI6IEZpeCBzb21lIGVycm9y
IGFuZCBmb3JtYXQNCj4gDQo+IEhpIEFsZXgNCj4gDQo+ICAgPiBMZWkgTWFvaHVpIGRpZCB5b3Ug
ZXhwZXJpZW5jZSB0aGlzIGVycm9yIHdoZW4geW91IHRlc3RlZCB0aGUgcmVjaXBlPw0KPiANCj4g
V2hlbiBJIGJpdGJha2UgdGhlIGNsdXN0ZXIsSSBkaWRuJ3QgbWV0IHRoZSBlcnJvci4NCj4gUWlh
bidzIHRhcmdldCBpcyB4ODZfNjQsIG15IHRhcmdldCBpcyB4ODYsIG1heWJlIGl0IHdhcyB0aGUg
cmVhc29uIHdoeSBJIGRpZG4ndA0KPiBtZWV0IHRoZSBlcnJvci4NCj4gDQo+IENoZWVycw0KPiAN
Cj4gTGVpIE1hb2h1aQ0KPiANCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KPiA+IEZyb206IEFsZXhhbmRydSBWYWR1dmEgW21haWx0bzpBbGV4YW5kcnUuVmFkdXZh
QGVuZWEuY29tXQ0KPiA+IFNlbnQ6IFR1ZXNkYXksIEphbnVhcnkgMjAsIDIwMTUgNzoxMCBQTQ0K
PiA+IFRvOiBRaWFuLCBMZWkNCj4gPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgTGVpLCBN
YW9odWkNCj4gPiBTdWJqZWN0OiBSRTogW3lvY3RvXSBbbWV0YS1jZ2xdW1BBVENIIDAvMl0gY2x1
c3RlcjogRml4IHNvbWUgZXJyb3IgYW5kDQo+ID4gZm9ybWF0DQo+ID4NCj4gPiBZZXMgYnV0IG9w
ZW5sZGFwIGlzIGEgZGVwZW5kZW5jeSBicm91Z2h0IHVwIGJ5IHRoZSBjbHVzdGVyIHJlY2lwZS4N
Cj4gPiBQcm9vZjoNCj4gPiBERVBFTkRTID0gImNvcm9zeW5jIGRidXMgb3BlbmxkYXAgb3BlbmFp
cyBsaWJ4bWwyIG5jdXJzZXMgcGVybCB6bGliIg0KPiA+DQo+ID4gTGVpIE1hb2h1aSBkaWQgeW91
IGV4cGVyaWVuY2UgdGhpcyBlcnJvciB3aGVuIHlvdSB0ZXN0ZWQgdGhlIHJlY2lwZT8NCj4gPg0K
PiA+DQo+ID4gQWxleCBWYWR1dmENCj4gPg0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4gRnJvbTogUWlhbiBMZWkgW21haWx0bzpxaWFubC5mbnN0QGNuLmZ1aml0c3UuY29tXQ0K
PiA+IFNlbnQ6IE1vbmRheSwgSmFudWFyeSAxOSwgMjAxNSAyOjU4IFBNDQo+ID4gVG86IEFsZXhh
bmRydSBWYWR1dmENCj4gPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiA+IFN1YmplY3Q6
IFJlOiBbeW9jdG9dIFttZXRhLWNnbF1bUEFUQ0ggMC8yXSBjbHVzdGVyOiBGaXggc29tZSBlcnJv
ciBhbmQNCj4gPiBmb3JtYXQNCj4gPg0KPiA+IE9uIE1vbiwgMTkgSmFuIDIwMTUgMTE6MzI6MzUg
KzAwMDANCj4gPiBBbGV4YW5kcnUgVmFkdXZhIDxBbGV4YW5kcnUuVmFkdXZhQGVuZWEuY29tPiB3
cm90ZToNCj4gPg0KPiA+ID4gRG9lcyB0aGlzIGZpeCB0aGUgZXJyb3IgSSBlbmNvdW50ZXIgd2hl
biBidWlsZGluZyB0aGUgcGFja2FnZS4NCj4gPiA+IFRoZSBsb2cgaXMgYXR0YWNoZWQgdG8gdGhp
cyBlbWFpbCBhbmQgaXMgYWxzbyBhdmFpbGFibGUgaW4gdGhlDQo+ID4gPiBidWd6aWxsYQ0KPiA+
ID4gaXNzdWU6IGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9NzE3Ng0KPiA+DQo+ID4gQWN0dWFsbHkgbm8uIFRoaXMgcGF0Y2ggdXNlIHRoZSBrZXJuZWwg
c291cmNlIGluIGJpdGJha2Ugd29ybGQgaW5zdGVhZA0KPiA+IG9mIHRoYXQgb24gdGhlIGhvc3Qu
IFRoaXMgZXJyb3Igb25seSBhcHBlYXJlZCBvbiBteSBidWlsZCBlbnZpcm9tZW50Lg0KPiA+DQo+
ID4gQnV0IHlvdXIgZXJyb3IgaXMgdG8gYnVpbGQgb3BlbmxkYXAsIG5vdCBjbHVzdGVyLg0KPiA+
DQo+ID4NCj4gPg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206
IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZw0KPiA+ID4gW21haWx0bzp5b2N0by1ib3Vu
Y2VzQHlvY3RvcHJvamVjdC5vcmddDQo+ID4gPiBPbiBCZWhhbGYgT2YgUWlhbiBMZWkgU2VudDog
TW9uZGF5LCBKYW51YXJ5IDE5LCAyMDE1IDEyOjA4IFBNDQo+ID4gPiBUbzogeW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZw0KPiA+ID4gU3ViamVjdDogW3lvY3RvXSBbbWV0YS1jZ2xdW1BBVENIIDAvMl0g
Y2x1c3RlcjogRml4IHNvbWUgZXJyb3IgYW5kDQo+ID4gPiBmb3JtYXQNCj4gPiA+DQo+ID4gPiBV
c2UgS0VSTkVMX1NSQyBpbnN0ZWFkIG9mIGhhcmRjb2RlIHBhdGggaW4gY29uZmlndXJlLiBBbHNv
IGZpeCBsaWNlbnNlDQo+IGZvcm1hdC4NCj4gPiA+DQo+ID4gPiAqKiogQkxVUkIgSEVSRSAqKioN
Cj4gPiA+DQo+ID4gPiBRaWFuIExlaSAoMik6DQo+ID4gPiAgIGNsdXN0ZXI6IEZpeCBsaWNlbnNl
IGZvcm1hdA0KPiA+ID4gICBjbHVzdGVyOiBBZGQgYSBwYXRjaCB0byBmaXggdGhlIHBhdGggb2Yg
a2VybmVsIHNvdXJjZQ0KPiA+ID4NCj4gPiA+ICAuLi4vY2x1c3Rlci8wMDAxLUZpeC10aGUta2Vy
bmVsLXNvdXJjZS1wYXRjaC5wYXRjaCB8IDM4DQo+ID4gPiArKysrKysrKysrKysrKysrKysrKysr
IC4uLi9yZWNpcGVzLWNnbC9jbHVzdGVyL2NsdXN0ZXJfMy4yLjAuYmINCj4gPiB8DQo+ID4gPiA1
ICstLSAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pICBj
cmVhdGUgbW9kZQ0KPiA+ID4gMTAwNjQ0DQo+ID4gPiBtZXRhLWNnbC1jb21tb24vcmVjaXBlcy1j
Z2wvY2x1c3Rlci9jbHVzdGVyLzAwMDEtRml4LXRoZS1rZXJuZWwtc291cg0KPiA+ID4gY2UNCj4g
PiA+IC1wYXRjaC5wYXRjaA0KPiA+ID4NCj4gPiA+IC0tDQo+ID4gPiAxLjguMy4xDQo+ID4gPg0K
PiA+ID4gLS0NCj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQo+ID4gPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4gPiA+IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcNCj4gPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0
bw0KPiA+DQo+ID4NCj4gPg0KPiA+IC0tDQo+ID4gUWlhbiBMZWkNCj4gLS0NCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBs
aXN0DQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2pl
Y3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo=

