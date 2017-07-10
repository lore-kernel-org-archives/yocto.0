Return-Path: <Matthias.Schoepfer@ithinx.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0CB8E00BB6; Mon, 10 Jul 2017 09:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HK_NAME_DR
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  0.0 T_HK_NAME_DR T_HK_NAME_DR
Received: from mx.kellendonk.de (mx.kellendonk.de [213.168.66.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C137DE00B76
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 09:19:35 -0700 (PDT)
From: =?utf-8?B?RHIuIE1hdHRoaWFzIFNjaMO2cGZlcg==?=
	<Matthias.Schoepfer@ithinx.io>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: License missing coreutils when creating /usr/share/licenses
	and bbappend
Thread-Index: AdL5mE78aKVdcmwYTKeFJQ+XwmQWMg==
Date: Mon, 10 Jul 2017 16:19:30 +0000
Message-ID: <63EFF8D6B0566D4E82DEBC3D979C491383D59D8A@SW-VM-02.kelle.grp>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.100.89]
x-c2processedorg: 75376498-2711-4ea7-8653-9a4c2c5b248f
MIME-Version: 1.0
Subject: License missing coreutils when creating /usr/share/licenses and bbappend
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
X-List-Received-Date: Mon, 10 Jul 2017 16:19:38 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhDQoNCldlIGFyZSB1c2luZyB5b2N0byAvIG9wZW5lbWJlZGRlZCAocHlybykuIEkgdXNlOg0K
DQpDT1BZX0xJQ19NQU5JRkVTVCA9ICIxIg0KQ09QWV9MSUNfRElSUyA9ICIxIg0KTElDRU5TRV9D
UkVBVEVfUEFDS0FHRSA9ICIxIg0KDQp0byBnZW5lcmF0ZSBhIC91c3Ivc2hhcmUvbGljZW5zZXMg
YW5kIC91c3Ivc2hhcmUvY29tbW9uLWxpY2Vuc2VzDQpyZXNwZWN0aXZlbHkuIEJ1dCB1bmZvcnR1
bmF0ZWx5LCB0aGUgY29yZXV0aWxzIHN1YmRpcmVjdG9yeSBpcyBlbXB0eS4NCg0KSSB1c2UgYSBi
YmFwcGVuZCBmaWxlIGNvbnRhaW5pbmcgb25seToNCg0KQUxURVJOQVRJVkVfUFJJT1JJVFkgPSAi
NDAiDQpBTFRFUk5BVElWRV9QUklPUklUWVtvZF0gPSAiMTAwIg0KDQpzdWNoIHRoYXQgb25seSBv
ZCBnZXRzIGluc3RhbGxlZCAocmVtYWluaW5nIGZ1bmN0aW9uYWxpdHkgYnkgYnVzeWJveCkuDQoN
CkFueSBoaW50cyBvbiBob3cgdG8gZ2V0IHRoZSBsaWNlbnNlIGluZm8gaW4gdGhlcmUgYXMgd2Vs
bD8hDQoNClJlZ2FyZHMsDQoNCiAgICBNYXR0aGlhcw0KDQoNCg0KDQoNCmkuQS4gRHIuLUluZy4g
TWF0dGhpYXMgU2Now7ZwZmVyICB8ICBpdGhpbnggR21iSCAgfCAgU29mdHdhcmUgRW5naW5lZXIN
ClBob25lOiArNDkgKDIyMSkgOTk1ODktMzMyICB8ICBGYXg6ICs0OSAoMjIxKSA5OTU4OS0xOTkN
CkFkZHJlc3M6IGl0aGlueCBHbWJIICB8ICBCdXR6d2VpbGVyaG9mIEFsbGVlIDQgIHwgIDUwODI5
IENvbG9nbmUgIHwgIEdlcm1hbnkNCkUtTWFpbDogTWF0dGhpYXMuU2Nob2VwZmVyQGl0aGlueC5p
byAgfCAgV2Vic2l0ZTogd3d3Lml0aGlueC5pbw0KUmVnaXN0ZXJlZCBPZmZpY2U6IENvbG9nbmUg
IHwgIERpc3RyaWN0IGNvdXJ0OiBNYXJidXJnICB8ICBIUkIgNjc0OQ0KTWFuYWdpbmcgRGlyZWN0
b3I6IENocmlzdGlhbiBGYXVzdA0KDQpUaGlzIGUtbWFpbCBtYXkgY29udGFpbiBjb25maWRlbnRp
YWwgYW5kL29yIHByaXZpbGVnZWQgaW5mb3JtYXRpb24uIGlmIHlvdSBhcmUgbm90IHRoZSBpbnRl
bmRlZCByZWNpcGllbnQgKG9yIGhhdmUgcmVjZWl2ZWQgdGhpcyBlLW1haWwgaW4gZXJyb3IpIHBs
ZWFzZQ0Kbm90aWZpeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkZXN0cm95IHRoaXMgZS1t
YWlsLiBBbnkgdW5hdXRvaHJpemVkIGNvcHlpbmcsIGRpc2Nsb3N1cmUgb3IgZGlzdHJpYnV0aW9u
IG9mIHRoZSBtYXRlcmlhbCBpbiB0aGlzIGUtbWFpbCBpcyBzdHJpY3RseSBmb3JiaWRkZW4uDQoN
CldlIGxpa2UgdHJlZXMuIFBsZWFzZSBjb25zaWRlciB0aGUgZW52aXJvbm1lbnQgYmVmb3JlIHBy
aW50aW5nIHRoaXMgZS1tYWlsLiBUaGFuayB5b3UuDQo=


