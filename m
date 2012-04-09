Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2B3AE0044D
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 11:57:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Apr 2012 11:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151579571"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga002.fm.intel.com with ESMTP; 09 Apr 2012 11:57:13 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 Apr 2012 11:57:12 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.214]) with mapi id
	14.01.0355.002; Mon, 9 Apr 2012 11:57:11 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 4/7] Cedartrail: Add bbappend files to install Audio
	and Video files.
Thread-Index: AQHNEfN3lBEXVx8bNEOX5fxhVqIcrJaTRtsA//+R3pCAAHmAgP//jnnQ
Date: Mon, 9 Apr 2012 18:57:11 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2036092A4@ORSMSX105.amr.corp.intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<48b65c9c2c2be50340ee316f9b740935e3a0e5d1.1333496206.git.kishore.k.bodke@intel.com>
	<1333994454.2335.70.camel@elmorro>
	<D956029D25CF204F948EA0FB515E1EE203609231@ORSMSX105.amr.corp.intel.com>
	<1333996895.2335.99.camel@elmorro>
In-Reply-To: <1333996895.2335.99.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 4/7] Cedartrail: Add bbappend files to install Audio and Video files.
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
X-List-Received-Date: Mon, 09 Apr 2012 18:57:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFphbnVzc2ksIFRvbQ0KPlNl
bnQ6IE1vbmRheSwgQXByaWwgMDksIDIwMTIgMTE6NDIgQU0NCj5UbzogQm9ka2UsIEtpc2hvcmUg
Sw0KPkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+U3ViamVjdDogUkU6IFtQQVRDSCA0Lzdd
IENlZGFydHJhaWw6IEFkZCBiYmFwcGVuZCBmaWxlcyB0byBpbnN0YWxsIEF1ZGlvDQo+YW5kIFZp
ZGVvIGZpbGVzLg0KPg0KPk9uIE1vbiwgMjAxMi0wNC0wOSBhdCAxMToyOSAtMDcwMCwgQm9ka2Us
IEtpc2hvcmUgSyB3cm90ZToNCj4+DQo+PiA+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4+
ID5Gcm9tOiBaYW51c3NpLCBUb20NCj4+ID5TZW50OiBNb25kYXksIEFwcmlsIDA5LCAyMDEyIDEx
OjAxIEFNDQo+PiA+VG86IEJvZGtlLCBLaXNob3JlIEsNCj4+ID5DYzogeW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZw0KPj4gPlN1YmplY3Q6IFJlOiBbUEFUQ0ggNC83XSBDZWRhcnRyYWlsOiBBZGQgYmJh
cHBlbmQgZmlsZXMgdG8gaW5zdGFsbA0KPkF1ZGlvDQo+PiA+YW5kIFZpZGVvIGZpbGVzLg0KPj4g
Pg0KPj4gPk9uIFR1ZSwgMjAxMi0wNC0wMyBhdCAxNjo0MyAtMDcwMCwga2lzaG9yZS5rLmJvZGtl
QGludGVsLmNvbSB3cm90ZToNCj4+ID4+IEZyb206IEtpc2hvcmUgQm9ka2UgPGtpc2hvcmUuay5i
b2RrZUBpbnRlbC5jb20+DQo+PiA+Pg0KPj4gPj4gVGhlc2UgYmJhcHBlbmQgZmlsZXMgcHVsbHMg
aW4gdGhlIEF1ZGlvLCBWaWRlbyBhbmQgV2ViIEtpdA0KPj4gPj4gaW50byB0aGUgSW1hZ2Ugd2l0
aCBJTUFHRV9JTlNUQUxMLg0KPj4gPj4NCj4+ID4+IFNpZ25lZC1vZmYtYnk6IEtpc2hvcmUgQm9k
a2UgPGtpc2hvcmUuay5ib2RrZUBpbnRlbC5jb20+DQo+PiA+PiAtLS0NCj4+ID4+ICAuLi4vaW1h
Z2VzL2NvcmUtaW1hZ2Utc2F0by1kZXYuYmJhcHBlbmQgICAgICAgICAgICB8ICAgIDIgKysNCj4+
ID4+ICAuLi4vaW1hZ2VzL2NvcmUtaW1hZ2Utc2F0by1zZGsuYmJhcHBlbmQgICAgICAgICAgICB8
ICAgIDIgKysNCj4+ID4+ICAuLi4vcmVjaXBlcy1zYXRvL2ltYWdlcy9jb3JlLWltYWdlLXNhdG8u
YmJhcHBlbmQgICB8ICAgIDEgKw0KPj4gPj4gIDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCAwIGRlbGV0aW9ucygtKQ0KPj4gPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBtZXRhLWNlZGFy
dHJhaWwvcmVjaXBlcy1zYXRvL2ltYWdlcy9jb3JlLWltYWdlLQ0KPj4gPnNhdG8tZGV2LmJiYXBw
ZW5kDQo+PiA+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2VkYXJ0cmFpbC9yZWNpcGVzLXNh
dG8vaW1hZ2VzL2NvcmUtaW1hZ2UtDQo+PiA+c2F0by1zZGsuYmJhcHBlbmQNCj4+ID4+ICBjcmVh
dGUgbW9kZSAxMDA2NDQgbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtc2F0by9pbWFnZXMvY29yZS1p
bWFnZS0NCj4+ID5zYXRvLmJiYXBwZW5kDQo+PiA+Pg0KPj4gPj4gZGlmZiAtLWdpdCBhL21ldGEt
Y2VkYXJ0cmFpbC9yZWNpcGVzLXNhdG8vaW1hZ2VzL2NvcmUtaW1hZ2Utc2F0by0NCj4+ID5kZXYu
YmJhcHBlbmQgYi9tZXRhLWNlZGFydHJhaWwvcmVjaXBlcy1zYXRvL2ltYWdlcy9jb3JlLWltYWdl
LXNhdG8tDQo+PiA+ZGV2LmJiYXBwZW5kDQo+PiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4g
Pj4gaW5kZXggMDAwMDAwMC4uMzMyODNmNA0KPj4gPj4gLS0tIC9kZXYvbnVsbA0KPj4gPj4gKysr
IGIvbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtc2F0by9pbWFnZXMvY29yZS1pbWFnZS1zYXRvLQ0K
PmRldi5iYmFwcGVuZA0KPj4gPj4gQEAgLTAsMCArMSwyIEBADQo+PiA+PiArSU1BR0VfSU5TVEFM
TCArPSAid2ViLXdlYmtpdCBiaWdidWNrYnVubnktb2dnIG9nZy1DQy1CWS0zLjAtbXVzaWMtDQo+
PiA+c2FtcGxlcyINCj4+ID4+ICsNCj4+ID4+IGRpZmYgLS1naXQgYS9tZXRhLWNlZGFydHJhaWwv
cmVjaXBlcy1zYXRvL2ltYWdlcy9jb3JlLWltYWdlLXNhdG8tDQo+PiA+c2RrLmJiYXBwZW5kIGIv
bWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtc2F0by9pbWFnZXMvY29yZS1pbWFnZS1zYXRvLQ0KPj4g
PnNkay5iYmFwcGVuZA0KPj4gPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+ID4+IGluZGV4IDAw
MDAwMDAuLjMzMjgzZjQNCj4+ID4+IC0tLSAvZGV2L251bGwNCj4+ID4+ICsrKyBiL21ldGEtY2Vk
YXJ0cmFpbC9yZWNpcGVzLXNhdG8vaW1hZ2VzL2NvcmUtaW1hZ2Utc2F0by0NCj5zZGsuYmJhcHBl
bmQNCj4+ID4+IEBAIC0wLDAgKzEsMiBAQA0KPj4gPj4gK0lNQUdFX0lOU1RBTEwgKz0gIndlYi13
ZWJraXQgYmlnYnVja2J1bm55LW9nZyBvZ2ctQ0MtQlktMy4wLW11c2ljLQ0KPj4gPnNhbXBsZXMi
DQo+PiA+PiArDQo+PiA+PiBkaWZmIC0tZ2l0IGEvbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtc2F0
by9pbWFnZXMvY29yZS1pbWFnZS0NCj4+ID5zYXRvLmJiYXBwZW5kIGIvbWV0YS1jZWRhcnRyYWls
L3JlY2lwZXMtc2F0by9pbWFnZXMvY29yZS1pbWFnZS0NCj4+ID5zYXRvLmJiYXBwZW5kDQo+PiA+
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4gPj4gaW5kZXggMDAwMDAwMC4uNGMxY2NhYw0KPj4g
Pj4gLS0tIC9kZXYvbnVsbA0KPj4gPj4gKysrIGIvbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtc2F0
by9pbWFnZXMvY29yZS1pbWFnZS1zYXRvLmJiYXBwZW5kDQo+PiA+PiBAQCAtMCwwICsxIEBADQo+
PiA+PiArSU1BR0VfSU5TVEFMTCArPSAid2ViLXdlYmtpdCBiaWdidWNrYnVubnktb2dnICBvZ2ct
Q0MtQlktMy4wLQ0KPm11c2ljLQ0KPj4gPnNhbXBsZXMiDQo+PiA+DQo+PiA+VGhlc2Ugd2lsbCBh
bHdheXMgYWRkIHRoZSBtZWRpYSBmaWxlcyBldGMgd2hlbmV2ZXIgYW55b25lIGJ1aWxkcyBhbnkN
Cj5vZg0KPj4gPnRoZXNlLiAgSXMgdGhhdCByZWFsbHkgd2hhdCB5b3Ugd2FudD8NCj4+DQo+PiBZ
ZXMuIEJ5IGRlZmF1bHQgd2Ugd2FudGVkIHRvIGhhdmUgYWxsIHRoZXNlIGluY2x1ZGVkIHdoZW4g
Y3VzdG9tZXINCj5idWlsZHMNCj4+IGEgcmVndWxhciBzYXRvIGltYWdlLg0KPj4gU28sIEkgdGhp
bmsgaXQgd291bGQgYmUgZ29vZCBpZiBpdCByZW1haW5zIHVuY2hhbmdlZC4NCj4+DQo+DQo+QnV0
IHdoYXQgaWYgSSB3YW50ZWQgdG8gYnVpbGQgYSBzYXRvIGltYWdlIHRoYXQgZGlkbid0IGluY2x1
ZGUgdGhvc2UNCj5tZWRpYSBmaWxlcz8gIEkgY2FuIG5vIGxvbmdlciB0eXBlICdiaXRiYWtlIGNv
cmUtaW1hZ2Utc2F0bycgYW5kIGdldA0KPnRoYXQuDQoNCk9rLiBJIHdpbGwgY2hhbmdlIHRoaXMg
dG8gYSBuZXcgdGVzdCBpbWFnZSByZWNpcGUuDQpUaGFua3MNCktpc2hvcmUuDQoNCj4NCj5Ub20N
Cj4NCj4+IFRoYW5rcw0KPj4gS2lzaG9yZS4NCj4+DQo+PiA+DQo+PiA+TWF5YmUgY3JlYXRpbmcg
c2VwYXJhdGUgdGVzdCBpbWFnZSByZWNpcGVzIHRoYXQgZG8gdGhpcyB3b3VsZCBiZSBtb3JlDQo+
PiA+YWxvbmcgdGhlIGxpbmVzIG9mIHdoYXQgeW91IHdhbnRlZC4uLg0KPj4gPg0KPj4gPlRvbQ0K
Pj4NCj4NCg0K

