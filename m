Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF7CDE00750; Tue, 24 Feb 2015 11:09:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.217.128.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g2t2353.austin.hp.com (g2t2353.austin.hp.com [15.217.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 534D0E00404
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 11:09:11 -0800 (PST)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2353.austin.hp.com (Postfix) with ESMTPS id EDBAC188;
	Tue, 24 Feb 2015 19:09:10 +0000 (UTC)
Received: from G2W4313.americas.hpqcorp.net (16.197.24.255) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Tue, 24 Feb 2015 19:08:26 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.112]) by
	G2W4313.americas.hpqcorp.net ([16.197.24.255]) with mapi id
	14.03.0169.001; Tue, 24 Feb 2015 19:08:26 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: =?utf-8?B?S2V2eW4tQWxleGFuZHJlIFBhcsOp?= <kapare@rogue-research.com>
Thread-Topic: [yocto] The kernel *.cfg system
Thread-Index: AQHQUFMVxA5WDNZ62kS5fME3+ketbZ0AKXJw
Date: Tue, 24 Feb 2015 19:08:26 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A806900C24@G2W2533.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A8054C2850@G1W3650.americas.hpqcorp.net>
	<CACgAsMddAf-Rp-fs7htQWXwT2bwZ6g_ccex2BJhzo+9BRpKEJg@mail.gmail.com>
In-Reply-To: <CACgAsMddAf-Rp-fs7htQWXwT2bwZ6g_ccex2BJhzo+9BRpKEJg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.29]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The kernel *.cfg system
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
X-List-Received-Date: Tue, 24 Feb 2015 19:09:13 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbSBjdXJyZW50bHkgdXNpbmcgWW9jdG8gRGFpc3kgKGFuZCBkYWlzeSBhbHNvIGZvciBtZXRh
LWZzbC1wcGMpLg0KDQpOb3RlIHRoYXQgSSBub3RpY2VkIGluIHJlY2VudCBmcmVlc2NhbGUgbWV0
YSBsYXllciB0aGV5IGFkZGVkIGNvZGUgdG8gaW5oZXJpdCBrZXJuZWwgYW5kIHRvIGhhbmRsZSBw
YXJ0aWFsIGNmZy4gIFNvIEkgdGhpbmsgdGhlIGlzc3VlIHdhcyB3aXRoIHRoZSBsaW51eC1xb3Jp
ay1zZGsgcGFja2FnZSByZWNpcGUgYW5kIG5vdCB5b2N0byBpdHNlbGYuICBTaW5jZSB0aGV5IGhh
dmUgbm90IGJhc2VkIHRoZW1zZWx2ZWQgb24geW9jdG8tbGludXggdGhleSBkbyBub3Qgb2ZmZXIg
ZnJhZ21lbnQgY29uZmlnIHN1cHBvcnQuDQoNCkJ1dCBpbiBtb3JlIHJlY2VudCBvZiB0aGUgbGlu
dXgtcW9yaWsgSSBub3cgc2VlIHJlZmVyZW5jZSB0byBwYXJ0aWFsIGNmZy4NCg0KWWFubmljayBL
b2VobGVyDQoNCi0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQ0KRGXCoDogS2V2eW4tQWxleGFu
ZHJlIFBhcsOpIFttYWlsdG86a2FwYXJlQHJvZ3VlLXJlc2VhcmNoLmNvbV0gDQpFbnZvecOpwqA6
IEZlYnJ1YXJ5LTI0LTE1IDExOjU4IEFNDQrDgMKgOiBLb2VobGVyLCBZYW5uaWNrIChIUCBOZXR3
b3JraW5nKQ0KQ2PCoDogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KT2JqZXTCoDogUmU6IFt5b2N0
b10gVGhlIGtlcm5lbCAqLmNmZyBzeXN0ZW0NCg0KSGkgWWFubmljaywNCg0KSSBkb24ndCBrbm93
IGlmIHRoaXMgY291bGQgYmUgcmVsYXRlZCBidXQgd2FzIHBsYXlpbmcgd2l0aCBrZXJuZWwgLmNm
ZyB3aXRoIG1ldGEtZnNsIGFuZCBjaGFuZ2luZyBjZmcgZGlkbid0IGNoYW5nZSBJIGhhZCB0byBj
aGFuZ2UgdGhlIGVudGlyZSAuY29uZmlnPw0KDQoNCkZyb206DQpodHRwczovL2xpc3RzLnlvY3Rv
cHJvamVjdC5vcmcvcGlwZXJtYWlsL3lvY3RvLzIwMTUtRmVicnVhcnkvMDIzNjE2Lmh0bWwNCg0K
aG1tIEkganVzdCBub3RpY2UgdGhhdCBhZGRpbmcgQ09ORklHX0JUPW0sIHdoZW4gaXQgd2FzID15
LCBpbiBkZWZjb25maWcuY2ZnIGRpZG4ndCBjaGFuZ2UgaXQgZXZlbiB0cmllZCBjbGVhbnNzdGF0
ZS4gQnV0IGl0IHdvcmtlZCBpZiBJIGNvcHkgdGhlIG9yaWdpbmFsIC5jb25maWcgdG8gbXkgYmJh
cHBlbmQgYW5kIGNoYW5nZSBpdCBpbnNpZGUuLi4NCg0KSSdtIHdpdGggeW9jdG8gMS43LjENCg0K
TkFUSVZFTFNCU1RSSU5HICAgPSAiVWJ1bnR1LTE0LjA0Ig0KVEFSR0VUX1NZUyAgICAgICAgPSAi
YXJtLXBva3ktbGludXgtZ251ZWFiaSINCk1BQ0hJTkUgICAgICAgICAgID0gIndhbmRib2FyZC1x
dWFkIg0KRElTVFJPICAgICAgICAgICAgPSAicG9reSINCkRJU1RST19WRVJTSU9OICAgID0gIjEu
Ny4xIg0KDQoNCldoaWNoIHZlcnNpb24gb2YgeW9jdG8gYXJlIHlvdSB1c2luZyBieSBjdXJpb3Np
dHk/DQoNCnRoeCwNCg0KLUtBDQoNCg0KT24gVGh1LCBGZWIgMTksIDIwMTUgYXQgMjoxNyBQTSwg
S29laGxlciwgWWFubmljayAoSFAgTmV0d29ya2luZykgPHlhbm5pY2sua29laGxlckBocC5jb20+
IHdyb3RlOg0KPiBIaSwNCj4NCj4gICBJIHJlY2VudGx5IHdhcyBwbGF5aW5nIHdpdGggdGhlIEZy
ZWVTY2FsZSBjb21tdW5pdHkgbGF5ZXIgbWV0YS1mc2wtcHBjLiAgVGhleSBhcmUgdXNpbmcgdGhl
aXIgb3duIGtlcm5lbCBwYWNrYWdlIGxpbnV4LXFvcmlxLXNkay4gIEkgYXR0ZW1wdGVkIHRvIGFs
dGVyIHRoZSBjb25maWd1cmF0aW9uIGZpbGUgdXNpbmcgYSBzeXN0ZW1kLmNmZyBmb3IgdGhlIHBs
ZWFzdXJlLCB0byBteSBzdXJwcmlzZSwgdGhlIC5jZmcgZGlkbid0IGNoYW5nZSBhbnl0aGluZyBh
dCBhbGwuICBJcyBGcmVlU2NhbGUgcGxheWluZyBZb2N0byBydWxlcyBwcm9wZXJseSBvciBpcyBp
dCBtZSB0aGF0IG1pc3NlZCBzb21ldGhpbmcgPyAgSSBkaWQgdGhlIHNhbWUgYXMgd2l0aCBsaW51
eC15b2N0bzoNCj4NCj4gICBGSUxFU0VYVFJBUEFUSFNfcHJlcGVuZCA6PSAiJHtUSElTRElSfS8k
e1BOfToiDQo+ICAgS0VSTkVMX0ZFQVRVUkVTID0gImV4dDIgY2dyb3VwcyBpcHY2Ig0KPiAgIFNS
Q19VUkkgKz0gImZpbGU6Ly9zeXN0ZW1kLmNmZyINCj4NCj4gICBZZXQsIHRoZSBrZXJuZWwgLmNv
bmZpZyBkaWRuJ3QgY29udGFpbmVkIG15IGNoYW5nZXMgbGlrZSB0aGUgbGludXgteW9jdG8gZGlk
LiAgSSB3YXMgd29uZGVyaW5nIGlmIGl0IHdhcyBiZWNhdXNlIHRoZSBRb3JpcSBLZXJuZWwgZGlk
bid0IGluY2x1ZGUgc3BlY2lmaWMgWW9jdG8gcmVjaXBlIGluc3RydWN0aW9ucyBvciBjbGFzcyBh
bmQgaXQgd2FzIHNvbWV0aGluZyB0aGF0IEkgY291bGQgZWFzaWx5IGFkZCBvciBpZiB0aGlzIG5l
ZWRlZCB0byBjb21lIGZyb20gRnJlZVNjYWxlIGl0c2VsZiwgb3IgaWYgaXQgd2FzIHJlYWxseSBq
dXN0IG15IHNldHVwIGhhdmluZyBhIHByb2JsZW0uICBOb3RlIHRoYXQgSSBkaWQgY29weSB0aGUg
c3lzdGVtZC5jZmcgZmlsZSBhdCBhIHByb3BlciBsb2NhdGlvbiBhbmQgYml0YmFrZSBkaWQgZmlu
ZCBpdCwgZXZlbiB0aG91Z2h0IHRoZSBmaW5hbCBjb25maWcgdW5kZXIgdGhlIC90bXAvd29yay8u
Li4gZGlkbid0IGNvbnRhaW4gdGhlIGNoYW5nZXMuDQo+DQo+ICAgQW55IGhlbHAgb24gdGhpcyB3
ZWxjb21lLg0KPg0KPiBZYW5uaWNrIEtvZWhsZXINCj4gLS0NCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0DQo+IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xp
c3RpbmZvL3lvY3RvDQo=

