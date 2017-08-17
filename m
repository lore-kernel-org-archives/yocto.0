Return-Path: <Matthias.Schoepfer@ithinx.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E94EE00DCA; Thu, 17 Aug 2017 01:49:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HK_NAME_DR
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  0.0 T_HK_NAME_DR T_HK_NAME_DR
X-Greylist: delayed 360 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Aug 2017 01:49:45 PDT
Received: from mx.kellendonk.de (mx.kellendonk.de [213.168.66.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0811E00D05
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 01:49:45 -0700 (PDT)
From: =?utf-8?B?RHIuIE1hdHRoaWFzIFNjaMO2cGZlcg==?=
	<Matthias.Schoepfer@ithinx.io>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: RDEPENDS on package does not include package in rootfs
Thread-Index: AdMXNO2bnwi6oHkfTy2n9xaDhNhsxA==
Date: Thu, 17 Aug 2017 08:43:41 +0000
Message-ID: <63EFF8D6B0566D4E82DEBC3D979C491383D8D9F3@SW-VM-02.kelle.grp>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.100.177]
x-c2processedorg: 75376498-2711-4ea7-8653-9a4c2c5b248f
MIME-Version: 1.0
Subject: RDEPENDS on package does not include package in rootfs
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
X-List-Received-Date: Thu, 17 Aug 2017 08:49:47 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgeW9jdG8gY29tbXVuaXR5IQ0KDQpIZXJlIGlzIG15IHByb2JsZW0sIG1heWJlIEkgbWlzdW5k
ZXJzdG9vZCBzb21ldGhpbmcuIEkgaGF2ZSBhIGxpYnJhcnkNCnJlY2lwZSwgbGV0cyBuYW1lIGl0
IGZvbywgdGhhdCBERVBFTkRTIG9uIG1vc3F1aXR0byBmcm9tDQptZXRhLWludGVsLWlvdC1taWRk
bGV3YXJlLiBJIGFkZGVkIGEgUkRFUEVORFNfJHtQTn0gKz0gIiBsaWJtb3NxdWl0dG8xDQoiLCBh
cyB0aGUgbW9zcXVpdHRvIHBhY2thZ2UgYWRkcyB0aGlzIGV4dHJhIHBhY2thZ2UgZm9yIHRoZSBt
b3NxdWl0dG8NCmxpYnJhcnksIHRoYXQgbGlicmFyeSBmb28gZGVwZW5kcyBvbi4gVGhlbiBJIGhh
dmUgbXkgYXBwICJiYXIiLCB0aGF0DQpkZXBlbmRzIG9uICJmb28iLiAiYmFyIiBpcyBhZGRlZCB0
byB0aGUgaW1hZ2UgcmVjaXBlLiBUaGUgcm9vdGZzIGlzDQptaXNzaW5nIG91dCB0aGUgcGFja2Fn
ZSBsaWJtb3NxdWl0dG8xLCBhbmQgdGhlcmVmb3JlIG1pc3NpbmcgdGhlDQptb3NxdWl0dG8gbGli
cmFyeS4gV29ya2Fyb3VuZCBpcyB0byBhZGQgbGlibW9zcXVpdHRvIGV4cGxpY2l0bHkgdG8gdGhl
DQpJbWFnZSByZWNpcGUsIGJ1dCBhcyBJIHVuZGVyc3RhbmQsIHRoaXMgc2hvdWxkIG5vdCBtZSBu
ZWNlc3NhcnkuDQoNClRoYW5rcyBpbiBhZHZhbmNlLA0KDQogICAgTWF0dGhpYXMNCg0KDQoNCmku
QS4gRHIuLUluZy4gTWF0dGhpYXMgU2Now7ZwZmVyICB8ICBpdGhpbnggR21iSCAgfCAgU29mdHdh
cmUgRW5naW5lZXINClBob25lOiArNDkgKDIyMSkgOTk1ODktMzMyICB8ICBGYXg6ICs0OSAoMjIx
KSA5OTU4OS0xOTkNCkFkZHJlc3M6IGl0aGlueCBHbWJIICB8ICBCdXR6d2VpbGVyaG9mIEFsbGVl
IDQgIHwgIDUwODI5IENvbG9nbmUgIHwgIEdlcm1hbnkNCkUtTWFpbDogTWF0dGhpYXMuU2Nob2Vw
ZmVyQGl0aGlueC5pbyAgfCAgV2Vic2l0ZTogd3d3Lml0aGlueC5pbw0KUmVnaXN0ZXJlZCBPZmZp
Y2U6IENvbG9nbmUgIHwgIERpc3RyaWN0IGNvdXJ0OiBNYXJidXJnICB8ICBIUkIgNjc0OQ0KTWFu
YWdpbmcgRGlyZWN0b3I6IENocmlzdGlhbiBGYXVzdA0KDQpUaGlzIGUtbWFpbCBtYXkgY29udGFp
biBjb25maWRlbnRpYWwgYW5kL29yIHByaXZpbGVnZWQgaW5mb3JtYXRpb24uIGlmIHlvdSBhcmUg
bm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQgKG9yIGhhdmUgcmVjZWl2ZWQgdGhpcyBlLW1haWwg
aW4gZXJyb3IpIHBsZWFzZQ0Kbm90aWZpeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkZXN0
cm95IHRoaXMgZS1tYWlsLiBBbnkgdW5hdXRvaHJpemVkIGNvcHlpbmcsIGRpc2Nsb3N1cmUgb3Ig
ZGlzdHJpYnV0aW9uIG9mIHRoZSBtYXRlcmlhbCBpbiB0aGlzIGUtbWFpbCBpcyBzdHJpY3RseSBm
b3JiaWRkZW4uDQoNCldlIGxpa2UgdHJlZXMuIFBsZWFzZSBjb25zaWRlciB0aGUgZW52aXJvbm1l
bnQgYmVmb3JlIHByaW50aW5nIHRoaXMgZS1tYWlsLiBUaGFuayB5b3UuDQo=


