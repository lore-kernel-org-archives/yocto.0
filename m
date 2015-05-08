Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 161D2E009BB; Fri,  8 May 2015 02:41:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 May 2015 02:41:11 PDT
Received: from mail.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91F5FE00945
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 02:41:11 -0700 (PDT)
Received: from mail.raylase.de (127.0.0.1) id h9i2be0171sm for
	<yocto@yoctoproject.org>;
	Fri, 8 May 2015 11:36:07 +0200 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by mail.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256/256)
	id 201505080936050084935; Fri, 08 May 2015 11:36:05 +0200
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 8 May 2015 11:36:05 +0200
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0224.002; Fri, 8 May 2015 11:36:04 +0200
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Need advice on tracking down "-dirty"
Thread-Index: AdCJbJrG4VCM0mIGQamQT84Gxmu17A==
Date: Fri, 8 May 2015 09:36:03 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC521E9F19@EXCHANGE-B.raylase.de>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.104]
MIME-Version: 1.0
X-Mlf-Version: 8.0.7.3275
X-Mlf-UniqueId: o201505080936050084935
Cc: "Wilfert, Dennis" <D.Wilfert.extern@raylase.de>, "Weber,
	Markus" <M.Weber@raylase.de>
Subject: Need advice on tracking down "-dirty"
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
X-List-Received-Date: Fri, 08 May 2015 09:41:14 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgR3V5cywNCg0KVXNpbmcgcG9reSBkaXp6eSB3aXRoIG1ldGEtYWx0ZXJhIChmcm9tIE9FKSwg
YW5kIHRyeWluZyB0byBpbXBsZW1lbnQgYSBzaW1wbGUgbG9hZGFibGUga2VybmVsLW1vZHVsZSBi
eSBmb2xsb3dpbmcgdGhlIG1ldGhvZCBvdXRsaW5lZCAgaW4gTGFiMyBvZiAgaHR0cHM6Ly93d3cu
eW9jdG9wcm9qZWN0Lm9yZy9zaXRlcy9kZWZhdWx0L2ZpbGVzL2tlcm5lbC1sYWItMS42LnBkZi4N
Cg0KSSdtIGRvaW5nIGFuICJybSAtcmYgdG1wIiBiZWZvcmUgc3RhcnRpbmcgImJpdGJha2Ugdmly
dHVhbC9rZXJuZWwgIG15LWltYWdlLXJlY2lwZSIuDQoNClRoZSBidWlsZCBzZWVtcyB0byB3b3Jr
IGp1c3QgZmluZTogdGhlIGtlcm5lbC1tb2R1bGUteHh4eC0xLjAtcjAubWFjaGluZS5ycG0gYXBw
ZWFycyBhcyBleHBlY3RlZCB1bmRlciAuLi4vZGVwbG95Ly4uLg0KDQpUaGUgcGFja2FnZSBpbnN0
YWxsYXRpb24gdGFzayBmYWlscywgaG93ZXZlciwgd2l0aDoNCg0KICAgIGVycm9yOiBDYW4ndCBp
bnN0YWxsIGtlcm5lbC1tb2R1bGUteHh4eC0xLjAtcjBAbWFjaGluZSA6IG5vIHBhY2thZ2UgcHJv
dmlkZXMga2VybmVsLTMuMTUuMC0wMDE4NC1nNWFlMzFhNw0KDQphbmQgaW5kZWVkLCB0aGUga2Vy
bmVsIHBhY2thZ2VzIGF2YWlsYWJsZSBpbiAuLi4vZGVwbG95Ly4uLiBhcmU6DQoNCiAgICBrZXJu
ZWwtMy4xNS1yMS5tYWNoaW5lLnJwbQ0KICAgIGtlcm5lbC0zLjE1LjAtMDAxODQtZzVhZTMxYTct
ZGlydHktMy4xNS1yMS5tYWNoaW5lLnJwbQ0KICAgIGtlcm5lbC1kZXYtMy4xNS1yMS5tYWNoaW5l
LnJwbQ0KICAgIGtlcm5lbC1pbWFnZS0zLjE1LjAtMDAxODQtZzVhZTMxYTctZGlydHktMy4xNS1y
MS5tYWNoaW5lLnJwbQ0KDQoNCllldCAiZ2l0IHN0YXR1cyIgcmVwb3J0cyAibm90aGluZyB0byBj
b21taXQsIHcuZC4gY2xlYW4iIGZvciBib3RoIHRoZSBtYWluIHBva3kgdHJlZSBhbmQgdGhlIG1l
dGEtYWx0ZXJhIHN1Yi10cmVlLg0KDQpTbyBJIGd1ZXNzIHRoZSBuMDBiIG5lZWRzIGEgY2x1ZSBh
Ym91dCBob3cgdG8gZmluZCBvdXQgd2h5IGFuZCB3aGVyZSB0aGUgZGlydHktZmxhZyBpcyBnZXR0
aW5nIHNldD8NCg0KVGhhbmtzIGZvciBsaXN0ZW5pbmchDQotLQ0KamltIHNwcmlnZ3MNCg0KUFM6
IHRoZSByZWFsIG5hbWVzIG9mIG1vZHVsZSBhbmQgbWFjaGluZSBoYXZlIGJlZW4gcmVkYWN0ZWQg
YWJvdmUgdG8gcHJvdGVjdCB0aGUgZ3VpbHR5Li4uDQpQUFM6IHNvcnJ5IGFib3V0IHRoZSBjb21w
YW55IHNpZy4sIEkgY2FuJ3Qgc3dpdGNoIGl0IG9mZi4NCg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KDQpSQVlMQVNFIEFHDQpBcmdlbHNyaWVkZXIgRmVsZCAyKzQNCjgyMjM0
IFdlc3NsaW5nDQpHZXJtYW55DQpUZWwuOiArNDktKDApODE1My84OCA5OC0wDQpGYXg6ICs0OS0o
MCk4MTUzLzg4IDk4LTEwDQpodHRwOi8vd3d3LnJheWxhc2UuZGUNCg0KRGlzdHJpY3QgQ291cnQg
TXVuaWNoLCBIUkIgMTMxNDUwDQoNCkJvYXJkOiBQZXRlciB2b24gSmFuIChDRU8pDQoNClN1cGVy
dmlzb3J5IEJvYXJkOiBEci4gVWxyaWNoIExvaG1hbm4gKENoYWlybWFuKQ0KDQoNCkRpZXNlIEUt
TWFpbCBlbnRow6RsdCB2ZXJ0cmF1bGljaGUgdW5kL29kZXIgcmVjaHRsaWNoIGdlc2Now7x0enRl
IEluZm9ybWF0aW9uZW4uIFdlbm4gU2llIG5pY2h0IGRlciByaWNodGlnZSBBZHJlc3NhdCBzaW5k
IG9kZXIgZGllc2UgRS1NYWlsIGlycnTDvG1saWNoIGVyaGFsdGVuIGhhYmVuLCBpbmZvcm1pZXJl
biBTaWUgYml0dGUgc29mb3J0IGRlbiBBYnNlbmRlciB1bmQgdmVybmljaHRlbiBTaWUgZGllc2Ug
TWFpbC4gRGFzIHVuZXJsYXVidGUgS29waWVyZW4gc293aWUgZGllIHVuYmVmdWd0ZSBXZWl0ZXJn
YWJlIGRpZXNlciBNYWlsIGlzdCBuaWNodCBnZXN0YXR0ZXQuDQoNClRoaXMgZS1tYWlsIG1heSBj
b250YWluIGNvbmZpZGVudGlhbCBhbmQvb3IgcHJpdmlsZWdlZCBpbmZvcm1hdGlvbi4gSWYgeW91
IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCAob3IgaGF2ZSByZWNlaXZlZCB0aGlzIGUt
bWFpbCBpbiBlcnJvcikgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBk
ZXN0cm95IHRoaXMgZS1tYWlsLiBBbnkgdW5hdXRob3JpemVkIGNvcHlpbmcsIGRpc2Nsb3N1cmUg
b3IgZGlzdHJpYnV0aW9uIG9mIHRoZSBtYXRlcmlhbCBpbiB0aGlzIGUtbWFpbCBpcyBzdHJpY3Rs
eSBmb3JiaWRkZW4uDQo=

