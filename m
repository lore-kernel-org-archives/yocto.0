Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17C9BE00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 11:29:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Apr 2012 11:29:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="139566254"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 09 Apr 2012 11:29:18 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 Apr 2012 11:29:15 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.141]) with mapi id
	14.01.0355.002; Mon, 9 Apr 2012 11:29:14 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 4/7] Cedartrail: Add bbappend files to install Audio
	and Video files.
Thread-Index: AQHNEfN3lBEXVx8bNEOX5fxhVqIcrJaTRtsA//+R3pA=
Date: Mon, 9 Apr 2012 18:29:12 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE203609231@ORSMSX105.amr.corp.intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<48b65c9c2c2be50340ee316f9b740935e3a0e5d1.1333496206.git.kishore.k.bodke@intel.com>
	<1333994454.2335.70.camel@elmorro>
In-Reply-To: <1333994454.2335.70.camel@elmorro>
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
X-List-Received-Date: Mon, 09 Apr 2012 18:29:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFphbnVzc2ksIFRvbQ0KPlNl
bnQ6IE1vbmRheSwgQXByaWwgMDksIDIwMTIgMTE6MDEgQU0NCj5UbzogQm9ka2UsIEtpc2hvcmUg
Sw0KPkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+U3ViamVjdDogUmU6IFtQQVRDSCA0Lzdd
IENlZGFydHJhaWw6IEFkZCBiYmFwcGVuZCBmaWxlcyB0byBpbnN0YWxsIEF1ZGlvDQo+YW5kIFZp
ZGVvIGZpbGVzLg0KPg0KPk9uIFR1ZSwgMjAxMi0wNC0wMyBhdCAxNjo0MyAtMDcwMCwga2lzaG9y
ZS5rLmJvZGtlQGludGVsLmNvbSB3cm90ZToNCj4+IEZyb206IEtpc2hvcmUgQm9ka2UgPGtpc2hv
cmUuay5ib2RrZUBpbnRlbC5jb20+DQo+Pg0KPj4gVGhlc2UgYmJhcHBlbmQgZmlsZXMgcHVsbHMg
aW4gdGhlIEF1ZGlvLCBWaWRlbyBhbmQgV2ViIEtpdA0KPj4gaW50byB0aGUgSW1hZ2Ugd2l0aCBJ
TUFHRV9JTlNUQUxMLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEtpc2hvcmUgQm9ka2UgPGtpc2hv
cmUuay5ib2RrZUBpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICAuLi4vaW1hZ2VzL2NvcmUtaW1hZ2Ut
c2F0by1kZXYuYmJhcHBlbmQgICAgICAgICAgICB8ICAgIDIgKysNCj4+ICAuLi4vaW1hZ2VzL2Nv
cmUtaW1hZ2Utc2F0by1zZGsuYmJhcHBlbmQgICAgICAgICAgICB8ICAgIDIgKysNCj4+ICAuLi4v
cmVjaXBlcy1zYXRvL2ltYWdlcy9jb3JlLWltYWdlLXNhdG8uYmJhcHBlbmQgICB8ICAgIDEgKw0K
Pj4gIDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQ0KPj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBtZXRhLWNlZGFydHJhaWwvcmVjaXBlcy1zYXRvL2ltYWdlcy9j
b3JlLWltYWdlLQ0KPnNhdG8tZGV2LmJiYXBwZW5kDQo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1l
dGEtY2VkYXJ0cmFpbC9yZWNpcGVzLXNhdG8vaW1hZ2VzL2NvcmUtaW1hZ2UtDQo+c2F0by1zZGsu
YmJhcHBlbmQNCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMt
c2F0by9pbWFnZXMvY29yZS1pbWFnZS0NCj5zYXRvLmJiYXBwZW5kDQo+Pg0KPj4gZGlmZiAtLWdp
dCBhL21ldGEtY2VkYXJ0cmFpbC9yZWNpcGVzLXNhdG8vaW1hZ2VzL2NvcmUtaW1hZ2Utc2F0by0N
Cj5kZXYuYmJhcHBlbmQgYi9tZXRhLWNlZGFydHJhaWwvcmVjaXBlcy1zYXRvL2ltYWdlcy9jb3Jl
LWltYWdlLXNhdG8tDQo+ZGV2LmJiYXBwZW5kDQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4g
aW5kZXggMDAwMDAwMC4uMzMyODNmNA0KPj4gLS0tIC9kZXYvbnVsbA0KPj4gKysrIGIvbWV0YS1j
ZWRhcnRyYWlsL3JlY2lwZXMtc2F0by9pbWFnZXMvY29yZS1pbWFnZS1zYXRvLWRldi5iYmFwcGVu
ZA0KPj4gQEAgLTAsMCArMSwyIEBADQo+PiArSU1BR0VfSU5TVEFMTCArPSAid2ViLXdlYmtpdCBi
aWdidWNrYnVubnktb2dnIG9nZy1DQy1CWS0zLjAtbXVzaWMtDQo+c2FtcGxlcyINCj4+ICsNCj4+
IGRpZmYgLS1naXQgYS9tZXRhLWNlZGFydHJhaWwvcmVjaXBlcy1zYXRvL2ltYWdlcy9jb3JlLWlt
YWdlLXNhdG8tDQo+c2RrLmJiYXBwZW5kIGIvbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtc2F0by9p
bWFnZXMvY29yZS1pbWFnZS1zYXRvLQ0KPnNkay5iYmFwcGVuZA0KPj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQNCj4+IGluZGV4IDAwMDAwMDAuLjMzMjgzZjQNCj4+IC0tLSAvZGV2L251bGwNCj4+ICsr
KyBiL21ldGEtY2VkYXJ0cmFpbC9yZWNpcGVzLXNhdG8vaW1hZ2VzL2NvcmUtaW1hZ2Utc2F0by1z
ZGsuYmJhcHBlbmQNCj4+IEBAIC0wLDAgKzEsMiBAQA0KPj4gK0lNQUdFX0lOU1RBTEwgKz0gIndl
Yi13ZWJraXQgYmlnYnVja2J1bm55LW9nZyBvZ2ctQ0MtQlktMy4wLW11c2ljLQ0KPnNhbXBsZXMi
DQo+PiArDQo+PiBkaWZmIC0tZ2l0IGEvbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtc2F0by9pbWFn
ZXMvY29yZS1pbWFnZS0NCj5zYXRvLmJiYXBwZW5kIGIvbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMt
c2F0by9pbWFnZXMvY29yZS1pbWFnZS0NCj5zYXRvLmJiYXBwZW5kDQo+PiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NA0KPj4gaW5kZXggMDAwMDAwMC4uNGMxY2NhYw0KPj4gLS0tIC9kZXYvbnVsbA0KPj4g
KysrIGIvbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtc2F0by9pbWFnZXMvY29yZS1pbWFnZS1zYXRv
LmJiYXBwZW5kDQo+PiBAQCAtMCwwICsxIEBADQo+PiArSU1BR0VfSU5TVEFMTCArPSAid2ViLXdl
YmtpdCBiaWdidWNrYnVubnktb2dnICBvZ2ctQ0MtQlktMy4wLW11c2ljLQ0KPnNhbXBsZXMiDQo+
DQo+VGhlc2Ugd2lsbCBhbHdheXMgYWRkIHRoZSBtZWRpYSBmaWxlcyBldGMgd2hlbmV2ZXIgYW55
b25lIGJ1aWxkcyBhbnkgb2YNCj50aGVzZS4gIElzIHRoYXQgcmVhbGx5IHdoYXQgeW91IHdhbnQ/
DQoNClllcy4gQnkgZGVmYXVsdCB3ZSB3YW50ZWQgdG8gaGF2ZSBhbGwgdGhlc2UgaW5jbHVkZWQg
d2hlbiBjdXN0b21lciBidWlsZHMNCmEgcmVndWxhciBzYXRvIGltYWdlLg0KU28sIEkgdGhpbmsg
aXQgd291bGQgYmUgZ29vZCBpZiBpdCByZW1haW5zIHVuY2hhbmdlZC4NCg0KVGhhbmtzDQpLaXNo
b3JlLg0KDQo+DQo+TWF5YmUgY3JlYXRpbmcgc2VwYXJhdGUgdGVzdCBpbWFnZSByZWNpcGVzIHRo
YXQgZG8gdGhpcyB3b3VsZCBiZSBtb3JlDQo+YWxvbmcgdGhlIGxpbmVzIG9mIHdoYXQgeW91IHdh
bnRlZC4uLg0KPg0KPlRvbQ0KDQo=

