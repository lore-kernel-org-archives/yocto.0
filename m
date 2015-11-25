Return-Path: <Andy_Hung@pegatroncorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F12BE00BFE; Wed, 25 Nov 2015 02:52:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	RDNS_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [124.9.5.30 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from ms.pegatroncorp.com (unknown [124.9.5.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64910E00BF4
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 02:51:58 -0800 (PST)
Received: from unknown (HELO PTW-EX-CASHUB07.PEGA.CORP.PEGATRON)
	([172.18.6.20])
	by ms.pegatroncorp.com with ESMTP; 25 Nov 2015 18:51:56 +0800
Received: from PTW-EX-37.PEGA.CORP.PEGATRON ([fe80::5466:11cb:50e:8c0e]) by
	PTW-EX-CASHUB07.PEGA.CORP.PEGATRON ([::1]) with mapi id 14.02.0342.003;
	Wed, 25 Nov 2015 18:51:51 +0800
From: =?big5?B?QW5keSBIdW5nKKx41vau2V9QZWdhdHJvbik=?=
	<Andy_Hung@pegatroncorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Header files in /usr/include of rootfs
Thread-Index: AdEnaFqhflxlEyA9TqSi+UXJ5PVYbA==
Date: Wed, 25 Nov 2015 10:51:51 +0000
Message-ID: <6AC2D51E0855E34EBDB192F9BA81BFB3A743E819@PTW-EX-37.PEGA.CORP.PEGATRON>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.194.41.169]
MIME-Version: 1.0
Subject: Re: Header files in /usr/include of rootfs
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
X-List-Received-Date: Wed, 25 Nov 2015 10:52:01 -0000
Content-Language: zh-TW
Content-Type: text/plain; charset="big5"
Content-Transfer-Encoding: base64

TWVzc2FnZTogMg0KRGF0ZTogVHVlLCAyNCBOb3YgMjAxNSAxNDoyNToxNCArMDEwMA0KRnJvbTog
QW5kZXJzIERhcmFuZGVyIDxhbmRlcnNAY2hhcmdlc3Rvcm0uc2U+DQpUbzogeW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gSGVhZGVyIGZpbGVzIGluIC91c3IvaW5j
bHVkZSBvZiByb290ZnMNCk1lc3NhZ2UtSUQ6IDwyMDE1MTEyNDEzMjUxNC5HQjIxNjVAYWQuY2hh
cmdlc3Rvcm0uc2U+DQpDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9dXRmLTgNCg0K
KiBBbmR5IEh1bmcoPz8/X1BlZ2F0cm9uKSA8QW5keV9IdW5nQHBlZ2F0cm9uY29ycC5jb20+IFsx
NTExMjQgMTE6MzVdOg0KPiBJIHdhcyB0cnlpbmcgdG8gYWRkIHNvbWUgcHJlLWJ1aWx0IGJpbmFy
aWVzIGFuZCBmaWxlcyBieSB1c2luZyBhIHJlY2lwZS4NCj4gVGhlIHJlY2lwZSBoYXMgc29tZXRo
aW5nIGxpa2UgdGhpczoNCg0KPiBTUkNfVVJJID0gZmlsZTovL2ZpbGVzPGZpbGU6Ly8vXFxmaWxl
cz4gPw0KPiBkb19pbnN0YWxsKCkgew0KPiAgICAgaW5zdGFsbCA/ZCAke0R9DQo+IH0NCg0KCT4g
V2hhdCBmaWxlcyBhcmUgeW91IGluc3RhbGxpbmc/IEhvdyBkb2VzIHRob3NlIGxvb2sgbGlrZT8N
CglUaGUgY29udGVudCBvZiB0aGUgZm9sZGVyIGhhcyB0aG9zZSBzdWItZm9sZGVycywgc2Jpbiwg
cm9vdCwgbGliLCBldGMuDQoJVGhvc2Ugc3ViLWZvbGRlcnMgY29udGFpbnMgZmlsZXMgc3VjaCBh
cyBleGVjdXRhYmxlIGJpbmFyaWVzLCBjb25maWcgZmlsZXMsIGtlcm5lbCBtb2R1bGVzLCAuc28g
ZmlsZXMgLi4uDQoJQWxsIHRoZXNlIGZpbGVzIGFyZSBhY3R1YWxseSBidWlsdCBmcm9tIHRoZSBz
b3VyY2UgY29kZSBvZiBhIHNwZWNpZmljIFdpRmkgZHJpdmVyLA0KCXdoYXQgSSB3YW50IHRvIGRv
IGlzIGluc3RhbGxpbmcgYWxsIHByZS1idWlsdCBiaW5hcmllcy9maWxlcyBpbnRvIGNvcnJlc3Bv
bmRpbmcgbG9jYXRpb25zIGluIHJvb3Rmcy4NCgkgDQo+IEZJTEVTXyR7UE59ID0gPy8qPw0KDQoJ
PiBIZXJlIHlvdSBhZGQgc2F5IHRoYXQgYW55dGhpbmcgdGhhdCBoYXMgYmVlbiBpbnN0YWxsZWQs
IGJ1dCBub3QgcHV0IGludG8gYW55IG90aGVyIHBhY2thZ2UsIHNob3VsZCBiZSBhZGRlZCB0byAk
e1BOfS4gSXMgdGhhdCB3aGF0IHlvdSB3YW50Pw0KCVllcywgYWxsIGZpbGVzIGFyZSBpbnN0YWxs
ZWQgaW4gYSBwYWNrYWdlLg0KDQo+IEFMTE9XX0VNUFRZXyR7UE59ID0gPzE/DQoNCgk+IFJlbW92
ZSB0aGlzIG9uZSB1bmxlc3MgJHtQTn0gaXMgZ29pbmcgdG8gYmUgZW1wdHkuDQoJVGhpcyBsaW5l
IGlzIHJlbW92ZWQuDQoNCj4gSU5TQU5FX1NLSVBfJHtQTn0gPSA/ZGVidWctZmlsZXMgZGV2LXNv
Pw0KDQoJPiBUaGVzZSBtaWdodCBiZSBuZWVkZWQgaWYgeW91IGdldCBjZXJ0YWluIFFBLXdhcm5p
bmdzL2Vycm9yIHdpdGhvdXQgdGhlbS4NCglZZXMsIGdvdCBzb21lIFFBLXdhcm5pbmdzIHdoZW4g
YnVpbGRpbmcgc28gSSBrZWVwIHRoaXMuDQogDQo+IFRoZSByZXN1bHQgd2FzIGFsbCB0aGUgYmlu
YXJpZXMgYW5kIGZpbGVzIGluc3RhbGxlZCBhbmQgcGFja2FnZXMgYXJlIA0KPiBjcmVhdGVkLCBC
dXQgSSBhbHNvIGZvdW5kIGtlcm5lbCBoZWFkZXIgZmlsZXMgYXJlIGFsc28gYnVpbHQgaW4gdW5k
ZXIgL3Vzci9pbmNsdWRlIGluIHJvb3RmcyBpbWFnZS4NCj4gRm9yIG15IHVuZGVyc3RhbmRpbmcg
dGhvc2UgaGVhZGVyIGZpbGVzIHNob3VsZCBiZSB1c2VkIGlmIEkgd2FudCB0byBkZXZlbG9wL2Rl
YnVnIGFwcGxpY2F0aW9ucyBvbiB0aGUgdGFyZ2V0IGRldmljZSBidXQgaXQgaXMgbm90IHRoZSBj
YXNlLg0KDQo+IEFsc28gSSBub3RpY2VkIHRoZSB1c2Ugb2YgSU5TQU5FX1NLSVBfJHtQTn0gc28g
SSBjaGVjayB0aGUgdXNhZ2Ugb2YgDQo+IGRlYnVnLWZpbGVzIGFuZCBkZXYtc28sIEFuZCBpdCB0
dXJuZWQgb3V0IHRoZXJlIGFyZSAuZGVidWcgZm9sZGVycyBpbiB0aGUgV09SS0RJUi9wYWNrYWdl
IGZvbGRlciBzbyBJIHRob3VnaHQgdGhhdCBpcyB3aHkgZGVidWctZmlsZXMgd2FzIHVzZWQuDQoN
Cgk+IFNlZSBhbnN3ZXIgYmVsb3cuDQoNCj4gVGhlIHF1ZXN0aW9ucyBhcmUsDQo+IFdoeSBhcmUg
dGhvc2Uga2VybmVsIGhlYWRlciBmaWxlcyBpbnN0YWxsZWQgaW4gcm9vdGZzPyBIb3cgZG8gSSBw
cmV2ZW50IHRoaXNhPw0KDQoJPiBJIGFzc3VtZSB0aGF0IHRoZXkgYXJlbid0IGluIHRoZSBwYWNr
YWdlIHlvdSBqdXN0IGNyZWF0ZWQ/IERvIHlvdSBoYXZlIGFueXRoaW5nIGluIHlvdXIgcGFja2Fn
ZSB0aGF0IG1pZ2h0IGhhdmUgYSBkZXBlbmRlbmN5IG9uIHRoZSBrZXJuZWwgaGVhZGVycz8gRG8g
eW91IGhhdmUgYW55dGhpbmcgaW4geW91ciBJTUFHRV9GRUFUVVJFUz8NCglObywgaGVhZGVyIGZp
bGVzIGFyZW4ndCBpbiB0aGUgcGFja2FnZS4NCglJIGNoZWNrZWQgdGhlIGRyaXZlciBzb3VyY2Ug
Y29kZSBhbmQgbWFueSBmaWxlcyBpbmNsdWRlIGtlcm5lbCBoZWFkZXJzIGxpa2UgdGhpcyAgIiNp
bmNsdWRlIDxsaW51eC94eHguaD4iICwgaXMgdGhpcyB3aGF0IHlvdSBtZWFudCBieSBkZXBlbmRl
bmN5IG9uIGtlcm5lbCBoZWFkZXJzPw0KCUlNQUdFX0ZFQVRVUkVTIHdhcyBub3QgdXNlZCBpbiB0
aGUgcmVjaXBlIGZpbGUuDQoNCj4gV2h5IGFyZSB0aGVyZSAuZGVidWcgaW4gdGhlIHBhY2thZ2Ug
Zm9sZGVyLCBpdCBzaG91bGQgb25seSBiZSBpbiBwYWNrYWdlID9kYmcgZm9sZGVyLCByaWdodD8N
Cg0KCT4gV2hlcmUgYXJlIHRoZSAuZGVidWcgZGlyZWN0b3JpZXMgbG9jYXRlZD8gWW91IHNob3Vs
ZCBhZGQgdGhlbSB0bzoNCgk+IEZJTEVTXyR7UE59LWRiZyArPSAiPGxvY2F0aW9uPi8uZGVidWci
DQoJSSBhZGQgdGhpcyBsaW5lIGFuZCByZWJ1aWxkIGJ1dCB0aGUgcmVzdWx0IHNlZW1zIHVuY2hh
bmdlZC4NCiAJdGhlIC5kZWJ1ZyBmb2xkZXJzIGFyZSBsb2NhdGVkIGluIA0KCSR7V09SS0RJUn0v
cGFja2FnZQ0KCSR7V09SS0RJUn0vcGFja2FnZS1zcGxpdC88cGFja2FnZSBuYW1lPiAtIGRiZw0K
DQoJVGhhbmtzLA0KCUFuZHkNCg0KCT4gQ2hlZXJzLA0KCT4gQW5kZXJzDQoNCgk+IC0tDQoJPiBB
bmRlcnMgRGFyYW5kZXIsIFNlbmlvciBTeXN0ZW0gQXJjaGl0ZWN0IENoYXJnZVN0b3JtIEFCIC8g
ZVN0b3JtIEFCDQoNCg0K

