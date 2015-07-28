Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A779E00A3B; Tue, 28 Jul 2015 02:10:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F11BAE00902
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 02:10:18 -0700 (PDT)
Received: from mail.raylase.de (127.0.0.1) id hmt3fm0171sr for
	<yocto@yoctoproject.org>;
	Tue, 28 Jul 2015 11:10:16 +0200 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by mail.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256/256)
	id 201507280910150034365; Tue, 28 Jul 2015 11:10:16 +0200
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Tue, 28 Jul 2015 11:10:15 +0200
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0248.002; Tue, 28 Jul 2015 11:10:15 +0200
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	=?utf-8?B?cmZpIOKAjltyZmlAbGlzdHMucm9ja2V0Ym9hcmRzLm9yZ13igI4=?=
	<rfi@lists.rocketboards.org>
Thread-Topic: Which repo for meta-altera ?
Thread-Index: AdDJFHrk/r5V2qTtQ1K5KfDyaiXrhA==
Date: Tue, 28 Jul 2015 09:10:14 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.109]
MIME-Version: 1.0
X-Mlf-Version: 8.0.8.3655
X-Mlf-UniqueId: o201507280910150034365
Subject: Which repo for meta-altera ?
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
X-List-Received-Date: Tue, 28 Jul 2015 09:10:21 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgR3V5czsgY29uZnVzZWQgbm9vYiBoZXJlLi4uDQoNClRoZXJlIGFwcGVhciB0byBiZSAoYXQg
bGVhc3QpIHR3byAib2ZmaWNpYWwiIHJlcG9zIGZvciBtZXRhLWFsdGVyYToNCg0KICAgICAgICBn
aXRodWIuY29tL2tyYWovbWV0YS1hbHRlcmENCg0KYW5kDQoNCiAgICAgICAgZ2l0LnJvY2tldGJv
YXJkcy5vcmcvbWV0YS1hbHRlcmEuZ2l0DQoNCg0KU28gaG93IHNob3VsZCBJIGNob29zZSBiZXR3
ZWVuIHRoZW0/DQoNClRoYW5rcyENCi0tDQpKaW0NCg0KU29ycnkgYWJvdXQgdGhlIGNvbXBhbnkg
c2lnLjogSSBjYW4ndCBzd2l0Y2ggaXQgb2ZmLg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQoNClJBWUxBU0UgQUcNCkFyZ2Vsc3JpZWRlciBGZWxkIDIrNA0KODIyMzQgV2Vz
c2xpbmcNCkdlcm1hbnkNClRlbC46ICs0OS0oMCk4MTUzLzg4IDk4LTANCkZheDogKzQ5LSgwKTgx
NTMvODggOTgtMTANCmh0dHA6Ly93d3cucmF5bGFzZS5kZQ0KDQpEaXN0cmljdCBDb3VydCBNdW5p
Y2gsIEhSQiAxMzE0NTANCg0KQm9hcmQ6IFBldGVyIHZvbiBKYW4gKENFTykNCg0KU3VwZXJ2aXNv
cnkgQm9hcmQ6IERyLiBVbHJpY2ggTG9obWFubiAoQ2hhaXJtYW4pDQoNCg0KRGllc2UgRS1NYWls
IGVudGjDpGx0IHZlcnRyYXVsaWNoZSB1bmQvb2RlciByZWNodGxpY2ggZ2VzY2jDvHR6dGUgSW5m
b3JtYXRpb25lbi4gV2VubiBTaWUgbmljaHQgZGVyIHJpY2h0aWdlIEFkcmVzc2F0IHNpbmQgb2Rl
ciBkaWVzZSBFLU1haWwgaXJydMO8bWxpY2ggZXJoYWx0ZW4gaGFiZW4sIGluZm9ybWllcmVuIFNp
ZSBiaXR0ZSBzb2ZvcnQgZGVuIEFic2VuZGVyIHVuZCB2ZXJuaWNodGVuIFNpZSBkaWVzZSBNYWls
LiBEYXMgdW5lcmxhdWJ0ZSBLb3BpZXJlbiBzb3dpZSBkaWUgdW5iZWZ1Z3RlIFdlaXRlcmdhYmUg
ZGllc2VyIE1haWwgaXN0IG5pY2h0IGdlc3RhdHRldC4NCg0KVGhpcyBlLW1haWwgbWF5IGNvbnRh
aW4gY29uZmlkZW50aWFsIGFuZC9vciBwcml2aWxlZ2VkIGluZm9ybWF0aW9uLiBJZiB5b3UgYXJl
IG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50IChvciBoYXZlIHJlY2VpdmVkIHRoaXMgZS1tYWls
IGluIGVycm9yKSBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRlc3Ry
b3kgdGhpcyBlLW1haWwuIEFueSB1bmF1dGhvcml6ZWQgY29weWluZywgZGlzY2xvc3VyZSBvciBk
aXN0cmlidXRpb24gb2YgdGhlIG1hdGVyaWFsIGluIHRoaXMgZS1tYWlsIGlzIHN0cmljdGx5IGZv
cmJpZGRlbi4NCg==

