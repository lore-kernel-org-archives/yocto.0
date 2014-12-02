Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13739E006EF; Tue,  2 Dec 2014 04:11:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00, SUBJ_OBFU_PUNCT_MANY
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.7 SUBJ_OBFU_PUNCT_MANY Punctuation-obfuscated Subject: header
Received: from emailsecurity.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C3DFE0034B
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 04:10:56 -0800 (PST)
Received: from emailsecurity.raylase.de (127.0.0.1) id hfmm560171s6 for
	<yocto@yoctoproject.org>;
	Tue, 2 Dec 2014 13:10:55 +0100 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by emailsecurity.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA
	bits=256/256)
	id 201412021210540009892; Tue, 02 Dec 2014 13:10:54 +0100
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.210.2;
	Tue, 2 Dec 2014 13:10:54 +0100
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0210.002; Tue, 2 Dec 2014 13:10:53 +0100
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: "bitbake altera-gsrd-image -c populate_sdk" fails with
	"Multiple .bb files ... nativesdk-libiconv ...
	external-linaro-toolchain.bb ...  eglibc_2.16.bb"
Thread-Index: AdAODLajOW2E6hQITpeUwmjQuUgUIw==
Date: Tue, 2 Dec 2014 12:10:53 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC5200F81C@EXCHANGE-B.raylase.de>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.97]
MIME-Version: 1.0
X-Mlf-Version: 8.0.5.2663
X-Mlf-UniqueId: o201412021210540009892
Subject: "bitbake altera-gsrd-image -c populate_sdk" fails with "Multiple .bb files ... nativesdk-libiconv ... external-linaro-toolchain.bb ... eglibc_2.16.bb"
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
X-List-Received-Date: Tue, 02 Dec 2014 12:11:03 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgR3V5cywNCg0KSGF2aW5nIGZvbGxvd2VkIHRoZSBpbnN0cnVjdGlvbnMgYXQgaHR0cDovL3d3
dy5yb2NrZXRib2FyZHMub3JnL2Zvc3dpa2kvRG9jdW1lbnRhdGlvbi9HU1JEMTQwQ29tcGlsaW5n
TGludXhDb3B5QXJyb3dTb0NLaXRFZGl0aW9uICB0byBzZXQgdXAgZm9yIGJ1aWxkaW5nIHRoZSBH
U1JEIGltYWdlLA0KSSB0cmllZCAiYml0YmFrZSBhbHRlcmEtZ3NyZC1pbWFnZSIgYW5kIGl0IHdv
cmtlZCBqdXN0IGZpbmUsIHByb2R1Y2luZyB0aGUgaW1hZ2UgYXMgZXhwZWN0ZWQuDQoNClRoZW4g
SSB0cmllZCAiYml0YmFrZSBhbHRlcmEtZ3NyZC1pbWFnZSAtYyBwb3B1bGF0ZV9zZGsiLCBhbmQg
Z290IHRoZSBlcnJvciBtZXNzYWdlIGluIHRoZSBTdWJqZWN0Lg0KDQpBcyBhbiB1dHRlciBuZXdi
aWUsIEknbSBob3Bpbmcgc29tZW9uZSBjYW4gcG9pbnQgb3V0IChpbiBzaW1wbGUgdGVybXMhKSB3
aGF0IEknbSBkb2luZyB3cm9uZy4NCg0KSXMgcG9wdWxhdGVfc2RrIG5vdCBzdXBwb3J0ZWQgYnkg
U29DS2l0IEdTUkQgMTQuMCA/DQpJcyBteSBpbnZvY2F0aW9uIHdyb25nPw0KDQpUaGFua3MgZm9y
IGFueSBjbHVlcyENCg0KLS0NCkppbQ0KUFM6IHNvcnJ5IGFib3V0IHRoZSBjb21wYW55IHNpZyAt
IEkgY2FuJ3Qgc3dpdGNoIGl0IG9mZi4NCg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQoNClJBWUxBU0UgQUcNCkFyZ2Vsc3JpZWRlciBGZWxkIDIrNA0KODIyMzQgV2Vzc2xp
bmcNCkdlcm1hbnkNClRlbC46ICs0OS0oMCk4MTUzLzg4IDk4LTANCkZheDogKzQ5LSgwKTgxNTMv
ODggOTgtMTANCmh0dHA6Ly93d3cucmF5bGFzZS5kZQ0KDQpEaXN0cmljdCBDb3VydCBNdW5pY2gs
IEhSQiAxMzE0NTANCg0KQm9hcmQ6IFBldGVyIHZvbiBKYW4gKENFTykNCg0KU3VwZXJ2aXNvcnkg
Qm9hcmQ6IERyLiBVbHJpY2ggTG9obWFubiAoQ2hhaXJtYW4pDQoNCg0KRGllc2UgRS1NYWlsIGVu
dGjDpGx0IHZlcnRyYXVsaWNoZSB1bmQvb2RlciByZWNodGxpY2ggZ2VzY2jDvHR6dGUgSW5mb3Jt
YXRpb25lbi4gV2VubiBTaWUgbmljaHQgZGVyIHJpY2h0aWdlIEFkcmVzc2F0IHNpbmQgb2RlciBk
aWVzZSBFLU1haWwgaXJydMO8bWxpY2ggZXJoYWx0ZW4gaGFiZW4sIGluZm9ybWllcmVuIFNpZSBi
aXR0ZSBzb2ZvcnQgZGVuIEFic2VuZGVyIHVuZCB2ZXJuaWNodGVuIFNpZSBkaWVzZSBNYWlsLiBE
YXMgdW5lcmxhdWJ0ZSBLb3BpZXJlbiBzb3dpZSBkaWUgdW5iZWZ1Z3RlIFdlaXRlcmdhYmUgZGll
c2VyIE1haWwgaXN0IG5pY2h0IGdlc3RhdHRldC4NCg0KVGhpcyBlLW1haWwgbWF5IGNvbnRhaW4g
Y29uZmlkZW50aWFsIGFuZC9vciBwcml2aWxlZ2VkIGluZm9ybWF0aW9uLiBJZiB5b3UgYXJlIG5v
dCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50IChvciBoYXZlIHJlY2VpdmVkIHRoaXMgZS1tYWlsIGlu
IGVycm9yKSBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRlc3Ryb3kg
dGhpcyBlLW1haWwuIEFueSB1bmF1dGhvcml6ZWQgY29weWluZywgZGlzY2xvc3VyZSBvciBkaXN0
cmlidXRpb24gb2YgdGhlIG1hdGVyaWFsIGluIHRoaXMgZS1tYWlsIGlzIHN0cmljdGx5IGZvcmJp
ZGRlbi4NCg==

