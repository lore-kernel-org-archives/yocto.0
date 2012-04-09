Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C36B7E0137D
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 11:35:10 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Apr 2012 11:35:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130388087"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2012 11:35:10 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 Apr 2012 11:35:10 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.141]) with mapi id
	14.01.0355.002; Mon, 9 Apr 2012 11:35:10 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "Saxena, Rahul"
	<rahul.saxena@intel.com>
Thread-Topic: [PATCH 7/7] Cedartrail: Update the README.
Thread-Index: AQHNEfN7q1Mom+ve+EiosDCvKqUmTJaTSHwA//+RoLA=
Date: Mon, 9 Apr 2012 18:35:09 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20360925B@ORSMSX105.amr.corp.intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<1377383bc9ade93f6bb303ca95fb76ceb396a0f4.1333496206.git.kishore.k.bodke@intel.com>
	<1333994804.2335.75.camel@elmorro>
In-Reply-To: <1333994804.2335.75.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 7/7] Cedartrail: Update the README.
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
X-List-Received-Date: Mon, 09 Apr 2012 18:35:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFphbnVzc2ksIFRvbQ0KPlNl
bnQ6IE1vbmRheSwgQXByaWwgMDksIDIwMTIgMTE6MDcgQU0NCj5UbzogQm9ka2UsIEtpc2hvcmUg
Sw0KPkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+U3ViamVjdDogUmU6IFtQQVRDSCA3Lzdd
IENlZGFydHJhaWw6IFVwZGF0ZSB0aGUgUkVBRE1FLg0KPg0KPk9uIFR1ZSwgMjAxMi0wNC0wMyBh
dCAxNjo0MyAtMDcwMCwga2lzaG9yZS5rLmJvZGtlQGludGVsLmNvbSB3cm90ZToNCj4+IEZyb206
IEtpc2hvcmUgQm9ka2UgPGtpc2hvcmUuay5ib2RrZUBpbnRlbC5jb20+DQo+Pg0KPj4gVXBkYXRl
IHRoZSBSRUFETUUgZmlsZSB3aXRoIGluc3RydWN0aW9ucyB0byBidWlsZA0KPj4gd2l0aCBwdnIg
Z3JhcGhpY3MgZHJpdmVyLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEtpc2hvcmUgQm9ka2UgPGtp
c2hvcmUuay5ib2RrZUBpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICBtZXRhLWNlZGFydHJhaWwvUkVB
RE1FIHwgICA0MQ0KPisrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tDQo+
PiAgMSBmaWxlcyBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPj4N
Cj4+IGRpZmYgLS1naXQgYS9tZXRhLWNlZGFydHJhaWwvUkVBRE1FIGIvbWV0YS1jZWRhcnRyYWls
L1JFQURNRQ0KPj4gaW5kZXggMjk1ZTlmZi4uZjQ4MmNjYSAxMDA3NTUNCj4+IC0tLSBhL21ldGEt
Y2VkYXJ0cmFpbC9SRUFETUUNCj4+ICsrKyBiL21ldGEtY2VkYXJ0cmFpbC9SRUFETUUNCj4+IEBA
IC01MiwxMCArNTIsMjMgQEAgY29tbW9uIG1ldGFkYXRhIHNoYXJlZCBiZXR3ZWVuIEJTUHMpIGUu
Zy46DQo+PiAgICAgICAgICB5b2N0by9tZXRhLWludGVsIFwNCj4+ICAJeW9jdG8vbWV0YS1pbnRl
bC9tZXRhLWNlZGFydHJhaWwgXA0KPj4NCj4+IC1UbyBlbmFibGUgdGhlIGNlZGFydHJhaWwgbGF5
ZXIsIGFkZCB0aGUgY2VkYXJ0cmFpbCBNQUNISU5FIHRvDQo+bG9jYWwuY29uZjoNCj4+ICtUbyBl
bmFibGUgdGhlIGNlZGFydHJhaWwgbGF5ZXIgdGhhdCBzdXBwb3J0cyBQb3dlciBWUiBncmFwaGlj
cywNCj4+ICthZGQgdGhlIGNlZGFydHJhaWwgTUFDSElORSB0byBsb2NhbC5jb25mOg0KPj4NCj4+
ICAgIE1BQ0hJTkUgPz0gImNlZGFydHJhaWwiDQo+Pg0KPj4gKw0KPj4gK1Bvd2VyIFZSIEdyYXBo
aWNzIHVzZXItc3BhY2UgZHJpdmVyIGJpbmFyaWVzIGFyZSBjb3ZlcmVkIGJ5IGENCj4+ICsiSW50
ZWwgRnJlZSBEaXN0cmlidXRpb24gQmluYXJ5IExpY2Vuc2UiLiBUaGUgYnVpbGQgb2YgdGhpcyBk
cml2ZXINCj4+ICtjYW4gYmUgZW5hYmxlZCBieSBhZGRpbmcgdGhlIGZvbGxvd2luZyBsaW5lIHRv
IHRoZSBsb2NhbC5jb25mIGZpbGU6DQo+PiArDQo+PiArTElDRU5TRV9GTEFHU19XSElURUxJU1Qg
Kz0gImxpY2Vuc2VfY2R2LXB2ci1kcml2ZXJfMS4wIg0KPj4gKw0KPj4gK1RvIGVuYWJsZSB0aGUg
bGF5ZXIgdGhhdCBkb2VzIG5vdCBzdXBwb3J0IFBvd2VyIFZSIGdyYXBoaWNzDQo+PiArYWRkIHRo
ZSBmb2xsb3dpbmcgdG8gdGhlIGxvY2FsLmNvbmYgZmlsZToNCj4+ICsNCj4+ICsgTUFDSElORSA/
PSAiY2VkYXJ0cmFpbC1ub3B2ciINCj4+ICsNCj4+ICBZb3Ugc2hvdWxkIHRoZW4gYmUgYWJsZSB0
byBidWlsZCBhIGNlZGFydHJhaWwgaW1hZ2UgYXMgc3VjaDoNCj4+DQo+PiAgICAkIHNvdXJjZSBv
ZS1pbml0LWJ1aWxkLWVudg0KPj4gQEAgLTg1LDcgKzk4LDcgQEAgVW5kZXIgTGludXgsIGluc2Vy
dCBhIFVTQiBmbGFzaCBkcml2ZS4gIEFzc3VtaW5nIHRoZQ0KPlVTQiBmbGFzaCBkcml2ZQ0KPj4g
IHRha2VzIGRldmljZSAvZGV2L3NkZiwgdXNlIGRkIHRvIGNvcHkgdGhlIGxpdmUgaW1hZ2UgdG8g
aXQuICBGb3INCj4+ICBleGFtcGxlOg0KPj4NCj4+IC0jIGRkIGlmPWNvcmUtaW1hZ2Utc2F0by1j
ZWRhcnRyYWlsLTIwMTIwMTA1MjMyMDM1LmhkZGltZyBvZj0vZGV2L3NkZg0KPj4gKyMgZGQgaWY9
Y29yZS1pbWFnZS1zYXRvLWNlZGFydHJhaWwtMjAxMjA0MDMyMTA1MjUuaGRkaW1nIG9mPS9kZXYv
c2RmDQo+PiAgIyBzeW5jDQo+PiAgIyBlamVjdCAvZGV2L3NkZg0KPj4NCj4+IEBAIC0xMDksMyAr
MTIyLDI3IEBAIHRoZSBzeXNsaW51eCBib290OiBwcm9tcHQsIG9yIHRoZSBib290OiBwcm9tcHQN
Cj5jb250YWlucyBzdHJhbmdlDQo+PiAgY2hhcmFjdGVycyksIHRyeSBkb2luZyB0aGlzIGZpcnN0
Og0KPj4NCj4+ICAjIGRkIGlmPS9kZXYvemVybyBvZj0vZGV2L3NkZiBicz0xTSBjb3VudD01MTIN
Cj4+ICsNCj4+ICtNaXNjZWxsYW5lb3VzIE5vdGVzDQo+PiArPT09PT09PT09PT09PT09PT09PT0N
Cj4+ICsNCj4+ICtWaWRlbyBhbmQgTXVzaWMgU2FtcGxlcw0KPj4gKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tDQo+PiArVGhpcyBCU1AgaW5jbHVkZXMgcmVjaXBlcyB0byBkb3dubG9hZCBPZ2cgZm9y
bWF0IHZpZGVvIGFuZA0KPj4gK211c2ljIGZpbGVzIHRoYXQgY2FuIGJlIHBsYXllZC1iYWNrIHdp
dGggdGhlIFZpZGVvIGFuZCBtdXNpYyBwbGF5ZXJzDQo+PiAraW5jbHVkZWQgaW4gdGhlIHNhdG8g
aW1hZ2VzLiAgVGhlIHNhbXBsZSBmaWxlcyBhcmUgaW5zdGFsbGVkIGluDQo+PiArL2hvbWUvTXVz
aWMgYW5kIC9ob21lL1ZpZGVvcyBkaXJlY3Rvcmllcy4NCj4+ICsNCj4+ICsNCj4+ICtBZGRpbmcg
R2x4Z2VhcnMgdG8gaW1hZ2UNCj4+ICstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiArR2x4
Z2VhcnMgY2FuIGJlIGFkZGVkIHRvIHRoZSBnZW5lcmF0ZWQgaW1hZ2UgYnkgYWRkaW5nICJkZWJ1
Zy10d2Vha3MiDQo+PiArb3B0aW9uIHRvIHRoZSBleHRyYSBpbWFnZSBmZWF0dXJlcyB2YXJpYWJs
ZSBpbiB0aGUgZGVmYXVsdCBsb2NhbC5jb25mDQo+PiArYmVmb3JlIGJ1aWxkaW5nIHRoZSBCU1Au
DQo+DQo+SSB0aGluayB0aGUgdGhpbmcgdGhhdCBhZGRzIGdseGdlYXJzIGlzIHRvb2xzLXRlc3Rh
cHBzIGFuZCBub3QNCj5kZWJ1Zy10d2Vha3MuICBZb3UgaGF2ZSB0b29scy10ZXN0YXBwcyBiZWxv
dyB3aGljaCBpcyBwcm9iYWJseSB3aHkgaXQNCj53b3JrcywgYnV0IHlvdSBtaWdodCB3YW50IHRv
IHZlcmlmeSB0aGF0IGFuZCBjaGFuZ2UgdGhlIFJFQURNRSB0ZXh0IGlmDQo+c28uDQoNClllYWgs
IHlvdSBhcmUgcmlnaHQuICBJIGNvcGllZCBmcm9tIEVkaXNvbiBicmFuY2guDQoNClJhaHVsLCBj
b3VsZCB5b3UgYWxzbyBjaGFuZ2UgdGhpcyBSRUFETUUgaW4gdGhlIEVkaXNvbiBicmFuY2guDQoN
ClRoYW5rcw0KS2lzaG9yZS4NCg0KPg0KPlRvbQ0KPg0KPj4gKw0KPj4gK2UuZy4gdG8gYWRkIEds
eGdlYXJzLCBsb2NhdGUgdGhlIGZvbGxvd2luZyBsaW5lIGluIGxvY2FsLmNvbmYNCj4+ICtFWFRS
QV9JTUFHRV9GRUFUVVJFUyA9ICJkZWJ1Zy10d2Vha3MiDQo+PiArDQo+PiArYW5kIGNoYW5nZSBh
Ym92ZSBsaW5lIHRvLi4NCj4+ICsNCj4+ICtFWFRSQV9JTUFHRV9GRUFUVVJFUyA9ICJkZWJ1Zy10
d2Vha3MgdG9vbHMtdGVzdGFwcHMiDQo+DQoNCg==

