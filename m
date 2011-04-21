Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 893574C80AC3
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2011 00:53:46 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Apr 2011 22:53:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,249,1301900400"; d="scan'208";a="423067937"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 20 Apr 2011 22:53:45 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 21 Apr 2011 13:52:13 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 21 Apr 2011 13:52:13 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 21 Apr 2011 13:52:06 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 21 Apr 2011 13:52:04 +0800
Thread-Topic: [Yocto] discussion about bug770: Add mechanism to enable UI's
	to request extra data be stored in the cache
Thread-Index: Acv/diebEva7Pr9oRniiBxUXmduBtgAa4LSwAAGVstA=
Message-ID: <789F9655DD1B8F43B48D77C5D30659734AAFF30F@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: FW: discussion about bug770: Add mechanism to enable UI's	to request extra data be stored in the cache
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
X-List-Received-Date: Thu, 21 Apr 2011 05:53:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Rm9yd2FyZCB0aGUgbWFpbCB0byB0aGUgcHJvcGVyIG1haWwgbGlzdC4NCg0KRGlzY3Vzc2lvbnMg
YWJvdXQgYWRkaW5nIGV4dHJhIGNhY2hlIGZpbGUgZm9yIGNhY2hpbmcgZXh0cmEgZmllbGRzIHJl
cXVlc3RlZCBieSBiaXRiYWtlIHVpLCBpbiBjYXNlIHlvdSdyZSBpbnRlcmVzdGVkIC06KQ0KDQpj
cmlwaW5nDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBMb2NrLCBKb3NodWEg
DQpTZW50OiBUaHVyc2RheSwgQXByaWwgMjEsIDIwMTEgMToxMiBQTQ0KVG86IHlvY3RvQGxpbnV4
LmludGVsLmNvbQ0KU3ViamVjdDogUkU6IFtZb2N0b10gZGlzY3Vzc2lvbiBhYm91dCBidWc3NzA6
IEFkZCBtZWNoYW5pc20gdG8gZW5hYmxlIFVJJ3MgdG8gcmVxdWVzdCBleHRyYSBkYXRhIGJlIHN0
b3JlZCBpbiB0aGUgY2FjaGUNCg0KSGksIEpvc2gNCg0KVGhhbmtzIGZvciB5b3VyIHF1aWNrIHJl
c3BvbnNlIQ0KDQpZZXMsIHRoZSBtYWlsIHNob3VsZCBiZSB0byBwdWJsaWMgbWFpbCBsaXN0LiBJ
IGFtIGp1c3QgaW5zdGFsbGluZyB3aW43IGFuZCBzeXMtY29uZmlndXJhdGlvbiBpcyBzdGlsbCBp
biBhIG1lc3MuLi4NCg0KWWVzLCBJIHdpbGwgdHJ5IHVpLXNwZWNpZmljIGNhY2hlIGZpbGVzIGZv
ciBpbmNyZW1lbnRhbCBjYWNoZSBmaWVsZHMgc3RvcmluZy4gRm9yIGRvaW5nIHRoaXMsIEkgbmVl
ZCB0byBwYXNzDQpDb25maWcudWkgaW5mbyBpbnRvIENhY2hlIGNsYXNzIGZvciByZWZlcmVuY2lu
ZyB3aGV0aGVyIGl0IGlzIGluIHVpIG1vZGUuIA0KDQpJIGZvdW5kIGEgc3RyYW5nZSBmdW5jdGlv
biBjYWxsZWQgZGVmIGluaXQoY29va2VyKSBpbiBjYWNoeS5weS4gRG8geW91IGtub3cgd2hhdCdz
IHRoaXMgZnVuY3Rpb24gZm9yPw0KU2luY2UgQ2FjaGUgY2xhc3MgaXMgaW5zdGFuY2VkIG9ubHkg
dHdpY2UsIG9uZSBpbiBjb29rZXIgYW5kIG9uZSBpbiB0aGlzIGluaXQuLi4gSSBqdXN0IHdhbnQg
dG8gbWFrZSBzdXJlIHdoYXQgdGhpcw0KZGVmIGluaXQgaXMgZm9yLg0KDQpUaGFua3MgYSBsb3Qg
Zm9yIHlvdXIgaGVscCENCmNyaXBpbmcNCg0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQpGcm9tOiB5b2N0by1ib3VuY2VzQGxpbnV4LmludGVsLmNvbSBbbWFpbHRvOnlvY3RvLWJvdW5j
ZXNAbGludXguaW50ZWwuY29tXSBPbiBCZWhhbGYgT2YgTG9jaywgSm9zaHVhDQpTZW50OiBUaHVy
c2RheSwgQXByaWwgMjEsIDIwMTEgMTI6MTQgQU0NClRvOiB5b2N0b0BsaW51eC5pbnRlbC5jb20N
ClN1YmplY3Q6IFJlOiBbWW9jdG9dIGRpc2N1c3Npb24gYWJvdXQgYnVnNzcwOiBBZGQgbWVjaGFu
aXNtIHRvIGVuYWJsZSBVSSdzIHRvIHJlcXVlc3QgZXh0cmEgZGF0YSBiZSBzdG9yZWQgaW4gdGhl
IGNhY2hlDQoNCkhpIExpcGluZywNCg0KQW55IHJlYXNvbiB0aGlzIGRpc2N1c3Npb24gY291bGRu
J3QgYmUgaGFkIG9uIHRoZSBwdWJsaWMgbWFpbGluZyBsaXN0DQoocGVyIFJpY2hhcmQncyByZWNl
bnQgZW1haWwpPw0KDQpPbiBXZWQsIDIwMTEtMDQtMjAgYXQgMTY6MzQgKzA4MDAsIEtlLCBMaXBp
bmcgd3JvdGU6DQo+IEhpLCBKZXNzaWNhIGFuZCBKb3NoDQo+IA0KPiBBZnRlciBsb29raW5nIGlu
dG8gdGhlIGNhY2hlLnB5LCBhcyB3ZWxsIGFzIHRoZSBidWcgNzcwIGRlc2NyaXB0aW9uLCBJIGhh
dmUgZm9sbG93aW5nIHF1ZXN0aW9uczoNCj4gDQo+IDEuIFZhbGlkIENhY2hlIFByb2JsZW06IHdl
IG9ubHkgaGF2ZSBvbmUgY2FjaGUgZmlsZSwgcmlnaHQ/DQo+IFVzZSBzY2VuYXJpbyAxOiBJZiBk
ZXZlbG9wZXIgZmlyc3RseSB1c2UgdWkgbW9kZSwgYW5kIHRoZW4gbm9uLXVpIG1vZGUsIHRoZSBj
YWNoZSBmaWxlIHNob3VsZCBiZSB2YWxpZD8gTm8gbmVlZCB0byB1cGRhdGU/DQo+IFVzZSBTY2Vu
YXJpbyAyOiBJZiBkZXZlbG9wZXIgZmlyc3RseSB1c2Ugbm9uLXVpIG1vZGUsIGFuZCB0aGVuIHVp
IG1vZGUsIHRoZSBjYWNoZSBmaWxlIHNob3VsZCBiZSBpbnZhbGlkLCBuZWVkIHRvIHVwZGF0ZSBj
YWNoZT8NCj4gVXNlIFNjZW5hcmlvIDM6IElmIGRldmVsb3BlciBmaXJzdGx5IHVzZSB1aSBtb2Rl
LCBhbmQgdGhlbiBub24tdWkgbW9kZSwgYW5kIHRoZW4gdWkgbW9kZSwgdGhlIGNhY2hlIGZpbGUg
c2hvdWxkIGJlIHZhbGlkIHRvbz8NCj4gU28gd2UgbmVlZCB0byB0cmFjayB0aGUgdWkvbm9uLXVp
IG9wcyBtYWNoaW5lIHRvIHRyYWNrIHRoZSB0aHJlZSBkaWZmZXJlbnQgc3RhdGUgKHVpKS0+IDwt
KG5vbi11aSk/DQoNClJpZ2h0IG5vdyB3ZSBvbmx5IGhhdmUgb25lIGNhY2hlIGZpbGUsIGJ1dCBp
biB0aGUgYnVnIHJlcG9ydCB5b3UnbGwgc2VlDQphIGNvbW1lbnQgSSBwYXN0ZWQgZnJvbSBJUkMg
d2hlcmUgUlAgc3VnZ2VzdHMgd2UgbWlnaHQgaGF2ZSB1aSBzcGVjaWZpYw0KY2FjaGVzLiBZb3Vy
IGFuYWx5c2lzIGhlcmUgZW1waGFzaXNlcyB0aGF0IGFzIGEgdmFsaWQgdGVjaG5pcXVlIHRvDQpp
bnZlc3RpZ2F0ZS4NCg0KPiANCj4gT3B0aW9uIDE6IHVwZGF0ZSBjYWNoZSwgbW9kaWZ5IGNhY2hl
IGludmFsaWRhdGlvbiBtZWNoYW5pc20gKGN1cnJlbnRseSBkZXBlbmQgb24gbXRpbWUpLCBpdCB3
aWxsIHN1cmVseSBjYXVzZSB0aGUgcGVyZm9ybWFuY2UgZGVjcmVhc2VkIGlmIHVzZXIgc3dpdGNo
IGZyb20gdWkvbm9uLXVpIG1vZGUNCj4gT3B0aW9uIDI6IHR3byBkaWZmZXJlbnQgY2FjaGUgZmls
ZXM/IExvYWRpbmcgdGhlbSBhY2NvcmRpbmcgdG8gdWkgb3Igbm9uLXVpIG1vZGUgLCBubyBuZWVk
IHRvIGludmFsaWQgY2FjaGU/DQoNCldlbGwsIHRoZSB1aS1zcGVjaWZpYyBjYWNoZXMgd291bGQg
c3RpbGwgbmVlZCB0byBiZSBpbnZhbGlkYXRlZCBpbiB0aGUNCnNhbWUgd2F5IHRoYXQgdGhlIGN1
cnJlbnQgY2FjaGUgaXMuDQoNCj4gDQo+IA0KPiAyLiBNb2RpZnkgUmVjaXBlSW5mbyBkYXRhIHN0
cnVjdHVyZSAsIHN0YXRpYyBuYW1lZHR1cGxlIGNvdWxkIG5vdCBiZQ0KPiB1c2VkLCBhIGR5bmFt
aWMgZGljdGlvbmFyeSB3aWxsIGJlIHVzZWQgb2YgY291cnNlLiBJdCBtaWdodCBjYXVzZQ0KPiBw
ZXJmb3JtYW5jZSBkZWNyZWFzZSB0b28gYWNjb3JkaW5nIHRvIFFpbmcncyBpbnB1dC4NCj4gDQo+
IA0KPiBNeSBxdWVzdGlvbiBpcyA6IA0KPiAxLiB3ZSB3aWxsIHNhY3JpZmljZSBwYXJzaW5nIHBl
cmZvcm1hbmNlIGZvciB0aGUgY2FjaGUgZmlsZSBzaXplIGdhaW4NCg0KSSB0aGluayB3ZSdkIGhh
dmUgdG8gaGF2ZSBhIHJlYXNvbmFibGUgaWRlYSBvZiBob3cgbXVjaCBvZiBhIHBlcmZvcm1hbmNl
DQpoaXQgdGhpcyB3b3VsZCBjYXVzZSBiZWZvcmUgcnVsaW5nIGl0IG91dC4gSSBjb3VsZG4ndCBv
ZmZlciBhbiBhbnN3ZXIgdG8NCnRoaXMgd2l0aG91dCB3cml0aW5nIHNvbWUgY29kZSBhbmQgZG9p
bmcgc29tZSBiZW5jaG1hcmtpbmcuDQoNCj4gMi4gV2Ugd2lsbCBjaG9vc2Ugb3B0aW9uIDEsIGNo
YW5nZSBjYWNoZSBpbnZhbGlkIG1lY2hhbmlzbT8gSSBndWVzcz8NCj4gDQo+IA0KPiBJIGFtIG5v
dCBzdXJlIHdoZXRoZXIgSSBhbSBpbiB0aGUgcmlnaHQgdHJhY2s/IEFueSBjb21tZW50cz8NCg0K
WW91IGFyZSBkZWZpbml0ZWx5IG9uIHRoZSByaWdodCB0cmFjaywgSSB0aGluayB0aGlzIGRpc2N1
c3Npb24gd291bGQNCmJlbmVmaXQgZnJvbSBwdWJsaWMgZGlzY3Vzc2lvbiB0aG91Z2ggKHRoYXQg
d2F5IENocmlzIExhcnNvbiAoa2VyZ290aCkNCmNvdWxkIGJlIGludm9sdmVkIGFsc28pLg0KDQpD
aGVlcnMsDQpKb3NodWENCi0tIA0KSm9zaHVhIExvY2sNCiAgICAgICAgWW9jdG8gQnVpbGQgU3lz
dGVtIE1vbmtleQ0KICAgICAgICBJbnRlbCBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENlbnRyZQ0K
DQoNCg==

