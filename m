Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E07D9E009B2; Wed, 15 Jul 2015 02:11:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Jul 2015 02:11:28 PDT
Received: from mail.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B21A1E00973
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 02:11:28 -0700 (PDT)
Received: from mail.raylase.de (127.0.0.1) id hkohs20171s9 for
	<yocto@yoctoproject.org>;
	Wed, 15 Jul 2015 11:06:23 +0200 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by mail.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256/256)
	id 201507150906210068626; Wed, 15 Jul 2015 11:06:21 +0200
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Wed, 15 Jul 2015 11:06:21 +0200
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0248.002; Wed, 15 Jul 2015 11:06:20 +0200
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Is there a fetcher for (dare I say it?) TFS (arrrrgh, I said
	it...) out there somewhere, or do I have to roll my own?
Thread-Index: AdC+2vO/cYxOhM4tR4+d3AdLFs63hg==
Date: Wed, 15 Jul 2015 09:06:19 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC547088C1@EXCHANGE-B.raylase.de>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.109]
MIME-Version: 1.0
X-Mlf-Version: 8.0.8.3655
X-Mlf-UniqueId: o201507150906210068626
Subject: Is there a fetcher for (dare I say it?) TFS (arrrrgh, I said it...) out there somewhere, or do I have to roll my own?
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
X-List-Received-Date: Wed, 15 Jul 2015 09:11:32 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgR3V5cywNCg0KWyBiZWZvcmUgYW55b25lIHRlbGxzIG1lIHRvIHdhc2ggbXkgbW91dGggd2l0
aCBzb2FwOiBJIGFjdHVhbGx5IGhhdmUgdG8gbGl2ZSB3aXRoIHRoaXMganVuayBvbiBhIGRhaWx5
IGJhc2lzLCBzbyBjdXQgbWUgc29tZSBzbGFjayBhbHJlYWR5IDotXCBdDQoNCkknbSBydW5uaW5n
IHRoZSBkaXp6eSB2ZXJzaW9uIG9mIGJiICBvbiBteSBidWlsZC1zZXJ2ZXIsIGFuZCBjdXJyZW50
bHkgYWN0aXZlbHkgKnB1c2gqIHN0dWZmIHRvIGl0IGZyb20gdGhlIFRGUy1zZXJ2ZXIuDQoNCk9i
dmlvdXNseSwgSSdkIG11Y2ggcmF0aGVyIGhhdmUgdGhlIGJ1aWxkLXNlcnZlciAqcHVsbCogZnJv
bSB0aGUgVEZTLXNlcnZlciwgcHJvYmFibHkgdXNpbmcgdGhlIFRFRSBDTEMuDQoNCkkgcmVhbGl6
ZSB0aGF0IHRoZXJlJ3MgbmV2ZXIgbGlrZWx5IHRvIGJlIGFueSAib2ZmaWNpYWwiIHN1cHBvcnQg
Zm9yIFRGUywgYW5kIEknbGwgcHJvYmFibHkgaGF2ZSB0byByb2xsIG15IG93biBmZXRjaGVyLg0K
DQpUaGUgY3VycmVudCBCaXRiYWtlIFVzZXIgTWFudWFsIHNlZW1zIG9ubHkgdG8gZGVzY3JpYmUg
dGhlIHN0YW5kYXJkIGZldGNoZXJzLCBzbyBpZiBhbnlvbmUgY291bGQgcG9pbnQgbWUgYXQgYQ0K
Y2x1ZSBvciB0d28gYWJvdXQgaG93IHRvIHdyaXRlIGFuZCBpbnRlZ3JhdGUgYSBjdXN0b20gZmV0
Y2hlciwgSSdkIGJlIHZlcnkgZ3JhdGVmdWwgaW5kZWVkLg0KDQpUaGFua3MgZm9yIGxpc3Rlbmlu
ZyENCi0tDQpKaW0NCg0KUFM6IHNvcnJ5IGFib3V0IHRoZSBjb21wYW55IHNpZy46IEkgY2FuJ3Qg
c3dpdGNoIGl0IG9mZi4NCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KDQpS
QVlMQVNFIEFHDQpBcmdlbHNyaWVkZXIgRmVsZCAyKzQNCjgyMjM0IFdlc3NsaW5nDQpHZXJtYW55
DQpUZWwuOiArNDktKDApODE1My84OCA5OC0wDQpGYXg6ICs0OS0oMCk4MTUzLzg4IDk4LTEwDQpo
dHRwOi8vd3d3LnJheWxhc2UuZGUNCg0KRGlzdHJpY3QgQ291cnQgTXVuaWNoLCBIUkIgMTMxNDUw
DQoNCkJvYXJkOiBQZXRlciB2b24gSmFuIChDRU8pDQoNClN1cGVydmlzb3J5IEJvYXJkOiBEci4g
VWxyaWNoIExvaG1hbm4gKENoYWlybWFuKQ0KDQoNCkRpZXNlIEUtTWFpbCBlbnRow6RsdCB2ZXJ0
cmF1bGljaGUgdW5kL29kZXIgcmVjaHRsaWNoIGdlc2Now7x0enRlIEluZm9ybWF0aW9uZW4uIFdl
bm4gU2llIG5pY2h0IGRlciByaWNodGlnZSBBZHJlc3NhdCBzaW5kIG9kZXIgZGllc2UgRS1NYWls
IGlycnTDvG1saWNoIGVyaGFsdGVuIGhhYmVuLCBpbmZvcm1pZXJlbiBTaWUgYml0dGUgc29mb3J0
IGRlbiBBYnNlbmRlciB1bmQgdmVybmljaHRlbiBTaWUgZGllc2UgTWFpbC4gRGFzIHVuZXJsYXVi
dGUgS29waWVyZW4gc293aWUgZGllIHVuYmVmdWd0ZSBXZWl0ZXJnYWJlIGRpZXNlciBNYWlsIGlz
dCBuaWNodCBnZXN0YXR0ZXQuDQoNClRoaXMgZS1tYWlsIG1heSBjb250YWluIGNvbmZpZGVudGlh
bCBhbmQvb3IgcHJpdmlsZWdlZCBpbmZvcm1hdGlvbi4gSWYgeW91IGFyZSBub3QgdGhlIGludGVu
ZGVkIHJlY2lwaWVudCAob3IgaGF2ZSByZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBlcnJvcikgcGxl
YXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkZXN0cm95IHRoaXMgZS1tYWls
LiBBbnkgdW5hdXRob3JpemVkIGNvcHlpbmcsIGRpc2Nsb3N1cmUgb3IgZGlzdHJpYnV0aW9uIG9m
IHRoZSBtYXRlcmlhbCBpbiB0aGlzIGUtbWFpbCBpcyBzdHJpY3RseSBmb3JiaWRkZW4uDQo=

