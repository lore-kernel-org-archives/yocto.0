Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4DBAE01208
	for <yocto@yoctoproject.org>; Sat, 10 Sep 2011 23:24:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Sep 2011 23:24:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="47037592"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 10 Sep 2011 23:24:32 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 10 Sep 2011 23:24:32 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.19]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.159]) with mapi id
	14.01.0323.003; Sat, 10 Sep 2011 23:24:31 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] kernel panic when boot core-image-sato-sdk for qemux86
Thread-Index: AcxvRXVK4jIOtaOXSrCsdTiRDT91HgAsKwcAAAR1IgAAAlsMgAAUpgqAAAY6qUA=
Date: Sun, 11 Sep 2011 06:24:31 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E6F69F@ORSMSX101.amr.corp.intel.com>
References: <C6510F6D410BB64A8C15398EDC6B847C16E6F441@ORSMSX101.amr.corp.intel.com>
	<4E6B6284.2020701@mlbassoc.com>	<4E6B806E.3020202@mlbassoc.com>
	<1315672125.1986.30.camel@ted> <4E6C1ACF.1020501@windriver.com>
In-Reply-To: <4E6C1ACF.1020501@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel panic when boot core-image-sato-sdk for qemux86
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 11 Sep 2011 06:24:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QnJ1Y2UsDQoNCkV2ZW4gdGhvdWdoIEkgaGF2ZW4ndCB0ZXN0IHV0cmFjZSwgSSBqdXN0IHRlc3Rl
ZCBteSBuZXdseSBidWlsdCBzYXRvLXNkayB3aXRoIHRoZSBzYW1lIHRyZWUgZm9yIGFybSBhbmQg
ZGlkbid0IHJ1biBpbnRvIGtlcm5lbCBwYW5pYy4gIFNvIHNlZW1zIG5vdCByZWxhdGVkIHRvIHV0
cmFjZSBhbmQgbW9yZSBzcGVjaWZpYyB0byB4ODYuDQoNClRoYW5rcywNCkplc3NpY2ENCg0KLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0
Lm9yZyBbbWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9m
IEJydWNlIEFzaGZpZWxkDQpTZW50OiBTYXR1cmRheSwgU2VwdGVtYmVyIDEwLCAyMDExIDc6MjAg
UE0NClRvOiBSaWNoYXJkIFB1cmRpZQ0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1Ympl
Y3Q6IFJlOiBbeW9jdG9dIGtlcm5lbCBwYW5pYyB3aGVuIGJvb3QgY29yZS1pbWFnZS1zYXRvLXNk
ayBmb3IgcWVtdXg4Ng0KDQpPbiAxMS0wOS0xMCAxMjoyOCBQTSwgUmljaGFyZCBQdXJkaWUgd3Jv
dGU6DQo+IE9uIFNhdCwgMjAxMS0wOS0xMCBhdCAwOToyMSAtMDYwMCwgR2FyeSBUaG9tYXMgd3Jv
dGU6DQo+PiBPbiAyMDExLTA5LTEwIDA3OjEzLCBHYXJ5IFRob21hcyB3cm90ZToNCj4+PiBPbiAy
MDExLTA5LTA5IDE3OjA5LCBaaGFuZywgSmVzc2ljYSB3cm90ZToNCj4+Pj4gSGksDQo+Pj4+DQo+
Pj4+IEhhcyBhbnlib2R5IHJhbiBpbnRvIGtlcm5lbCBwYW5pYyB3aGVuIGJvb3QgdXAgY29yZS1p
bWFnZS1zYXRvLXNkayBmb3IgcWVtdXg4Ni4gSeKAmXZlIGJlZW4gaGF2aW5nIHRoaXMgaXNzdWUg
d2l0aCBzZXZlcmFsIGNsZWFuIGJ1aWxkIGZvciB0d28gZGF5cy4gQW5kIG15IGxhdGVzdCBidWls
ZCB0cmVlIGlzIGENCj4+Pj4gZnJlc2hseSBjbG9uZWQgdHJlZSBhZ2FpbnN0IHBva3ktbWFzdGVy
IHdpdGggY29tbWl0Og0KPj4+Pg0KPj4+PiBjb21taXQgMjBkYmYwMDI0Mzg1ZWFlZjYxYTA0ZDg3
NzNmZDc2NDBlM2M4Y2M2ZA0KPj4+Pg0KPj4+PiBBdXRob3I6IFJpY2hhcmQgUHVyZGllPHJpY2hh
cmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+Pj4+DQo+Pj4+IERhdGU6IEZyaSBTZXAg
OSAxOTowNzo0MCAyMDExICswMTAwDQo+Pj4+DQo+Pj4+IFRoZSBxZW11IGtlcm5lbCBwYW5pYyBt
ZXNzYWdlcyBhcmU6DQo+Pj4+DQo+Pj4+IElOSVQ6IHZlcnNpb24gMi44OCBib290aW5nDQo+Pj4+
DQo+Pj4+IEluaXRbMV06IHNlZ2ZhdWx0IGF0IDM4IGlwIDQ5NTA3NmM3IHNwIGJmZDliNjBjIGVy
cm9yIDQgaW4gbGliYy0yLjEzLnNvWzQ5NDkyMDAwKzE1ZjAwMF0NCj4+Pj4NCj4+Pj4gSW5pdFsx
XTogc2VnZmF1bHQgYXQgMTYgaXAgMDgwNGIzYzcgc3AgYmZkOWIyODAgZXJyb3IgNCBpbiBpbml0
LnN5c3Zpbml0WzgwNDgwMDArNzAwMF0NCj4+Pj4NCj4+Pj4gS2VybmVsIHBhbmljIOKAkyBub3Qg
c3luY2luZzogQXR0ZW1wdGVkIHRvIGtpbGwgaW5pdCENCj4+Pj4NCj4+Pj4gUGlkOiAxLCBjb21t
OiBpbml0IE5vdCB0YWludGVkIDMuMC40LXlvY3RvLXN0YW5kYXJkKyAjMQ0KPj4+DQo+Pj4gVmVy
aWZpZWQgLSBmYWlscyBmb3IgbWUgaGVyZSBhcyB3ZWxsLiBBIEJydWNlIHNhaWQsIGEgYnVpbGQg
ZnJvbSBqdXN0IGEgZmV3IGRheXMNCj4+PiBhZ28gZGlkIHdvcmsuIE5vdGU6IEkgb25seSB0cmll
ZCBjb3JlLWltYWdlLXNhdG8NCj4+Pg0KPj4+IEFzIGZhciBhcyBJIGNhbiB0ZWxsLCB0aGUgb25s
eSBwYWNrYWdlcyB0aGF0IHdlcmUgcmVidWlsdCBzaW5jZSBteSBsYXN0IGdvIG9uDQo+Pj4gQXVn
IDMxIHdlcmUgdmlydHVhbC9rZXJuZWwmICBwZXJmDQo+Pj4NCj4+PiBMb29rcyBsaWtlIGl0J3Mg
c29tZXRoaW5nIHRvIGRvIHdpdGgga2VybmVsIGNoYW5nZXMuDQo+Pj4NCj4+DQo+PiBBY3R1YWxs
eSwgSSBmb3Jnb3QgdGhhdCBxZW11eDg2IGFsc28gdXNlcyBpNTg2IHBhY2thZ2VzLCBzbyB0aGVy
ZSB3ZXJlIHF1aXRlIGENCj4+IGZldyBvdGhlciBwYWNrYWdlcyBjaGFuZ2VkIHNpbmNlIEF1ZyAz
MS4gIFlvdSBjYW4gc2VlIHRoZSBsaXN0cyBhdA0KPj4gICAgIGh0dHA6Ly93d3cubWxiYXNzb2Mu
Y29tL3Bva3kvcWVtdXg4Ni1ycG1zDQo+Pg0KPg0KPiBJJ3ZlIGp1c3QgdGVzdGVkIHFlbXV4ODYg
YW5kIHFlbXVhcm0gaW1hZ2VzIGFuZCBib3RoIG9mIHRoZXNlIHdlcmUgZmluZQ0KPiAoYXBhcnQg
ZnJvbSBwYW5nbyBpc3N1ZXMgd2hpY2ggSSBsb2NhbGx5IHJldmVydGVkIHRoZSBjaGFuZ2UgaW4g
cXVlc3Rpb24NCj4gZm9yKS4gSSdtIGEgbGl0dGxlIHB1enpsZWQgd2h5IHRoaW5ncyBhcmUgdGhl
cmVmb3JlIGZhaWxpbmcgZm9yIHBlb3BsZQ0KPiBidXQgSSB3b3VsZCBsaWtlIHRvIGdldCB0byB0
aGUgYm90dG9tIG9mIGl0Li4uDQoNCkFzIHdvdWxkIEkhIEkganVzdCBhdWRpdGVkIHRoZSBrZXJu
ZWwgY2hhbmdlcywgYW5kIHRoZXJlJ3Mgbm90aGluZyB0aGF0DQpzaG91bGQgY2F1c2UgYW55dGhp
bmcgc28gc2V2ZXJlLiBNeSBidWlsZCBhbmQgYm9vdCBvZiBjb3Vyc2Ugd29ya2VkIGFzDQp3ZWxs
Lg0KDQpUaGUgZ3JhbmQgdG90YWwgb2YgY2hhbmdlcyBzaW5jZSB0aGUgMy4wLjQgdXBkYXRlIGFy
ZToNCg0KICAgM2M5ZWJlZSBtZXRhOiByZS1lbmFibGUgdXRyYWNlIGZlYXR1cmUgZm9yIGxpbnV4
LXlvY3RvDQogICA4MjE0MGI5IG1ldGE6IHJlLWVuYWJsZSBzeXN0ZW10YXAgZmVhdHVyZSBmb3Ig
bGludXgteW9jdG8NCiAgIDI1OGFmMGIgbWV0YTogdXBkYXRlIGt2ZXIgdG8gdjMuMC40DQoNCkFu
ZCBib3RoIG9mIHRob3NlIHdlcmUgbWVyZ2VkIGFuZCBib290IHRlc3RlZCBhIHdoaWxlIGFnby4N
Cg0KQW5kIHRoZSByZXBvcnRzIG9mIGRpZmZlcmVudCByZXN1bHRzIGZyb20gdGhlIGF1dG9idWls
ZGVyIHRvIGxvY2FsIG1hY2hpbmVzLg0KUmVhbGx5IG1ha2VzIG1lIHdvbmRlciBhYm91dCB3aGF0
J3MgcmVhbGx5IGJlaW5nIGJ1aWx0IGFuZCBpZg0Kc29tZXRoaW5nIHN0cmFuZ2UgaXMgYmVpbmcg
ZmV0Y2hlZC4NCg0KSmVzc2ljYS9HYXJ5OiBpZiB5b3UgZXhwbGljaXRseSBkaXNhYmxlIHV0cmFj
ZSwgSSB3b25kZXIgaWYgdGhhdA0KbWFrZXMgYSBkaWZmZXJlbmNlLCBzaW5jZSBpdCdzIHRoZSBv
bmx5IGNoYW5nZSB0aGF0IHNob3VsZCBldmVuDQpoYXZlIGEgY2hhbmNlIHRvIGNhdXNlIHJ1bnRp
bWUgaXNzdWVzLiAodG8gZGlzYWJsZSBpdCwganVzdCB0b3NzDQphIGNvbmZpZyBmcmFnIHdpdGgg
IiMgQ09ORklHX1VUUkFDRSBpcyBub3Qgc2V0IiBhbmQgYnVpbGQsIG9yIGp1c3QNCmNvbmZpcm0g
dGhhdCBpdCBpcyBvZmYgdmlhIG1lbnVjb25maWcpLg0KDQpDaGVlcnMsDQoNCkJydWNlDQoNCg0K
Pg0KPiBDaGVlcnMsDQo+DQo+IFJpY2hhcmQNCj4NCj4NCj4NCj4NCj4NCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0
DQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qu
b3JnL2xpc3RpbmZvL3lvY3RvDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQp5b2N0byBtYWlsaW5nIGxpc3QNCnlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
Cmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0K

