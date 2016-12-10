Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86F1DE00A39; Sat, 10 Dec 2016 15:23:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.25.5.36 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cos-us-iron02k.cos.keysight.com
	(cos-us-iron02k.cos.keysight.com [192.25.5.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43EA2E009CA
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 15:23:24 -0800 (PST)
X-IPAS-Result: =?us-ascii?q?A2D2AgCNjUxYfRUYjJxdGQEBAQEBAQEBAQEBBwEBAQEBgzc?=
	=?us-ascii?q?BAQEBAXmBBgcBpFWHdY0PggEHHguFeAIagg0SAQIBAQEBAQEBEwEBFi8whGgBA?=
	=?us-ascii?q?QEBAgEBASEEDToLBQcEAgEIEQQBAQECAgYdAwICAh8GAQoUAQgIAgQOBQiISQM?=
	=?us-ascii?q?PCA6sUYFsPYclDYNcAQEBAQEBAQEBAQEBAQEBAQEBAQEBHYELiQaBCIJIgWoYg?=
	=?us-ascii?q?wItghIeBY8BizU1hk+FcH+FW1GOAodmgXCENYQPJgmBaoNzgUVyh3UBgQwBAQE?=
X-IronPort-AV: E=Sophos;i="5.33,330,1477980000"; d="scan'208";a="42706638"
Received: from wcosexch02k.cos.is.keysight.com (HELO 2k10hubs.keysight.com)
	([156.140.24.21]) by cos-us-iron02k.cos.keysight.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Dec 2016 16:23:20 -0700
Received: from wcosexch01k.cos.is.keysight.com ([169.254.3.103]) by
	wcosexch02k.cos.is.keysight.com ([156.140.24.21]) with mapi id
	14.03.0279.002; Sat, 10 Dec 2016 16:23:20 -0700
From: <richard_allen@keysight.com>
To: <raj.khem@gmail.com>
Thread-Topic: [yocto] busybox and images, how to change busybox based on
	image component added
Thread-Index: AQHSUyiT2QeAPF9ttk2aXPf3ci3PLaEBzzqg
Date: Sat, 10 Dec 2016 23:23:19 +0000
Message-ID: <BC774F321B0EF24DBF41FE7457B2B7862D16A609@wcosexch01k.cos.is.keysight.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D16A580@wcosexch01k.cos.is.keysight.com>
	<CAMKF1srBf3mqSgRHL_MQFnTcV8vxPCapq5b2ZzSpHMmNugCjUA@mail.gmail.com>
In-Reply-To: <CAMKF1srBf3mqSgRHL_MQFnTcV8vxPCapq5b2ZzSpHMmNugCjUA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [156.140.13.70]
x-tm-as-product-ver: SMEX-12.0.0.1220-8.000.1202-22754.003
x-tm-as-result: No--14.107100-8.000000-31
x-tm-as-matchedid: 150567-701625-704425-700685-700107-702098-187067-700648-7
	09584-702085-703788-863174-700756-711521-702358-702143-139006-711995-106660
	-700826-701236-700075-139010-106420-701398-862088-701040-707997-700748-7026
	09-707788-702829-700470-863828-121338-862883-700057-705098-704980-704421-70
	5388-701837-701249-139705-148004-148133-20043-42000-42003
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: busybox and images, how to change busybox based on image component added
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
X-List-Received-Date: Sat, 10 Dec 2016 23:23:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgcG9pbnRlci4gDQpJIGFtIG5ldyB0byB0aGUgbGludXgvWW9jdG8gYXJl
YSAsIHNvIGlmIHRoZXJlIGlzIGV4YW1wbGUsIHdvdWxkIGdyZWF0bHkgaGVscC4NCg0KV2hlbiB5
b3Ugc2F5IGl0ICdyZXBsYWNlcycsIGlzIHRoaXMgYSB0aGUgJ25hbWUnIGxldmVsPw0KDQpjb25u
bWFuIGlzIG5vdCB0aGUgc2FtZSBuYW1lIGFzIHVkaGRjIA0KTXkgdXNlciBkZXNpcmVzIHRvIG9u
bHkgaGF2ZSBjb25ubWFuIG9uIHRoZSBzeXN0ZW0gKGFuZCBpdCdzIGRhZW1vbikgYW5kIG5vdCBo
YXZlIHVkaGNwIChhbmQgaXQncyBkYWVtb24pLg0KDQpJIGtub3cgYnkgZGlzYWJsaW5nIHRoZSB1
ZGhjcCggY2xpZW50IC8gc2VydmVyKSBpbiBidXN5Ym94IGFuZCBpbnN0YWxsaW5nIGNvbm5tYW4g
b24gdGhlIHN5c3RlbSB3b3Jrcy4NCkkgZG9uJ3QgcmVhbGx5IHNlZSBob3cgdG8gdXNlIHVwZGF0
ZS1hbHRlcm5hdGl2ZXMuYmJjbGFzcyB0byBoYXZlIHRoZSBzYW1lIGVuZCByZXN1bHQuDQoNCg0K
DQoNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogW21haWx0
bzpyYWoua2hlbUBnbWFpbC5jb21dIA0KU2VudDogU2F0dXJkYXksIERlY2VtYmVyIDEwLCAyMDE2
IDE6MDEgUE0NClRvOiBBTExFTixSSUNIQVJEIChLLVNhbnRhQ2xhcmEsZXgxKSA8cmljaGFyZF9h
bGxlbkBrZXlzaWdodC5jb20+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDog
UmU6IFt5b2N0b10gYnVzeWJveCBhbmQgaW1hZ2VzLCBob3cgdG8gY2hhbmdlIGJ1c3lib3ggYmFz
ZWQgb24gaW1hZ2UgY29tcG9uZW50IGFkZGVkDQoNCk9uIFNhdCwgRGVjIDEwLCAyMDE2IGF0IDk6
NDggQU0sICA8cmljaGFyZF9hbGxlbkBrZXlzaWdodC5jb20+IHdyb3RlOg0KPiBJIGFtIHRyeWlu
ZyB0byByZW1vdmUgdGhlIHVkaGNwKCBjbGllbnQgLyBzZXJ2ZXIpIGNvbXBvbmVudHMgaW4gDQo+
IGJ1c3lib3ggd2hlbiBJIGluY2x1ZGUg4oCYY29ubm1hbuKAmSBpbiBteSBpbWFnZS4NCj4NCg0K
dXN1YWxseSBidXN5Ym94IGFwcGxldHMgYXJlIHVzZWQgYXMgZmFsbGJhY2tzIHRvIGZpbGwgaW4g
dGhlIGJsYW5rcyBhbmQgaWYgdGhlcmUgaXMgb3RoZXIgcGFja2FnZSBwcm92aWRpbmcgYSBnaXZl
biB1dGlsaXR5IHRoZW4gaXRzIGNob3NlbiB0byBwcm92aWRlIGRlZmF1bHRzLg0KDQpsb29rIGlu
dG8gbWV0YS9jbGFzc2VzL3VwZGF0ZS1hbHRlcm5hdGl2ZXMuYmJjbGFzcyBmb3Igc2V0dGluZyBw
cmlvcml0aWVzIHdoaWNoIGFyZSBub3QgZGVmYXVsdC4NCg0KDQo+IEkgaGF2ZSBhIGJ1c3lib3hf
JS5iYmFwcGVuZCB3aGljaCB3aWxsIFNSQ19VUklfYXBwZW5kID0gIiANCj4gZmlsZTovL25vLXVo
ZHBjLmNmZyINCj4NCj4gbm8tdWhkY3BjLmNmZw0KPg0KPiBDT05GSUdfVURIQ1BEPW4NCj4gQ09O
RklHX1VESENQQz1uDQo+DQo+IEhpdHRpbmcgc2VydmFsIGlzc3VlczoNCj4gLSkgbmVlZCB0byBk
byBhIGJpdGJha2UgLWMgY2xlYW5hbGwgYnVzeWJveCBmb3IgYnVzeWJveCB0byBiZSANCj4gcmVj
b21waWxlZCB3aXRoIG5ldyBjb25maWd1cmF0aW9uDQo+IC0pIG5lZWQgdG8gZG8gYSBiaXRiYWtl
IC1jIGNsZWFuIGNvcmUtaW1hZ2UtbWluaW1hbCBzbyBhIG5ldyByb290ZnMgDQo+IHdpbGwgYmUg
Z2VuZXJhdGVkIHdpdGggdGhlIGJ1c3lib3ggKCBuZXcgY29tcGlsZSBvZiBidXN5Ym94IGRvZXMg
bm90IA0KPiBhcHBlYXIgdG8gdHJpZ2dlciBhIG5ldyByb290ZnMgY3JlYXRpb24pDQo+DQo+IE5v
dGU6IEkgdHJpZWQganVzdCB1c2luZw0KPg0KPiBQQUNLQUdFX0VYQ0xVREUgKz0gICIgYnVzeWJv
eC11ZGhjcGQgYnVzeWJveC11ZGhjcGMgIg0KPg0KPiB0byBrZWVwIGZyb20gaGF2aW5nIHRvIGNo
YW5nZSBidXN5Ym94IGNvbmZpZ3VyYXRpb24gLCBidXQgc3RpbGwgZW5kIHVwIA0KPiB3aXRoIHNv
bWUgb2YgdGhlIHVkcGMgaW4gdGhlIGZpbmFsIGltYWdlLg0KPg0KPiAuL3NiaW4vdWRoY3BjIC0+
IC9iaW4vYnVzeWJveC5ub3N1aWQNCj4gLi91c3IvbGliL29wa2cvYWx0ZXJuYXRpdmVzL3VkaGNw
Yw0KPg0KPiBncmVwOiBpbWFnZS1maWxlczogSXMgYSBkaXJlY3RvcnkNCj4gaW1hZ2UtaW5mby50
eHQ6UEFDS0FHRV9FWENMVURFID0gYnVzeWJveC11ZGhjcGQgYnVzeWJveC11ZGhjcGMNCj4NCj4g
QXBwZWFycyB0aGF0IGJ1c3lib3ggZG9lcyBzb21lIGluc3RhbGxhdGlvbiBiYXNlZCBvbiB0aGUg
YWN0dWFsbHkgDQo+IHNldHRpbmcgb2YgQ09ORklHX1VESENQQyBhbmQgQ09ORklHX1VESENQRA0K
Pg0KPg0KPiBGSW5hbGx5LCBJIHdvdWxkIGxpa2UgdGhlIGJ1c3lib3ggYXBwZW5kIHRvIG9ubHkg
Y2hhbmdlIGlmIOKAmGNvbm5tYW7igJkgDQo+IGlzIHByZXNlbnQgSW4gbG9jYWwuY29uZiwgYWRk
IOKAmGV4YW1wbGUNCj4NCj4gSU1BR0VfSU5TVEFMTF9hcHBlbmQgPSAiIGV4YW1wbGUiDQo+DQo+
IEluIGV4YW1wbGUuYmIgaGF2ZQ0KPiBSREVQRU5EU19leGFtcGxlID0gIiBjb25ubWFuIg0KPg0K
PiBTbyBpbiBidXN5Ym94XyouYmJhcHBlbmQNCj4NCj4gSSB0aG91Z2h0IHRoaXMgd291bGQgd29y
ayAoYnV0IHNlZW1zIHRvIGJlIGlnbm9yZWQpDQo+DQo+IFNSQ19VUklfYXBwZW5kX2Nvbm5tYW4g
PSAiIGZpbGU6Ly9uby11aGRwYy5jZmciDQo+ICNTUkNfVVJJX2FwcGVuZCA9ICIgZmlsZTovL25v
LXVoZHBjLmNmZyINCj4NCj4gQnV0IG5lZWQgdG8gdXNlDQo+IFNSQ19VUklfYXBwZW5kID0gIiBm
aWxlOi8vbm8tdWhkcGMuY2ZnIg0KPg0KPiB0byBoYXZlIHRoZSBjZmcgYWRkZWQuDQo+IGFsc28g
dHJpZWQNCj4gU1JDX1VSSV9hcHBlbmRfcG4tY29ubm1hbiA9ICIgZmlsZTovL25vLXVoZHBjLmNm
ZyINCj4NCj4gSG93IGJlc3QgdG8gZ2V0IGEgYnVzeWJveCBjb25maWd1cmF0aW9uIGNoYW5nZWQg
YmFzZWQgb24gaW5zdGFsbGF0aW9uIA0KPiBvZiBhIHBhY2thZ2U/DQo+DQo+IFRoYW5rcw0KPg0K
PiBSaWNoYXJkIEMuIEFsbGVuDQo+DQo+DQo+DQo+IC0tDQo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiB5b2N0
b0B5b2N0b3Byb2plY3Qub3JnDQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0
aW5mby95b2N0bw0KPg0K

