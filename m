Return-Path: <Matthias.Schoepfer@ithinx.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75856E00D2E; Thu, 17 Aug 2017 02:55:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HK_NAME_DR
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  0.0 T_HK_NAME_DR T_HK_NAME_DR
Received: from mx.kellendonk.de (mx.kellendonk.de [213.168.66.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A7C2E00C45
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 02:55:11 -0700 (PDT)
From: =?utf-8?B?RHIuIE1hdHRoaWFzIFNjaMO2cGZlcg==?=
	<Matthias.Schoepfer@ithinx.io>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] RDEPENDS on package does not include package in rootfs
Thread-Index: AdMXNO2bnwi6oHkfTy2n9xaDhNhsxA==
Date: Thu, 17 Aug 2017 09:55:09 +0000
Message-ID: <63EFF8D6B0566D4E82DEBC3D979C491383D8DA81@SW-VM-02.kelle.grp>
References: <63EFF8D6B0566D4E82DEBC3D979C491383D8D9F3@SW-VM-02.kelle.grp>
	<2194654.OpPfn0j9vU@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.100.177]
x-c2processedorg: 75376498-2711-4ea7-8653-9a4c2c5b248f
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RDEPENDS on package does not include package in rootfs
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
X-List-Received-Date: Thu, 17 Aug 2017 09:55:13 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUGF1bCBldCBhbCwNCg0KDQoNCmkuQS4gRHIuLUluZy4gTWF0dGhpYXMgIFNjaMO2cGZlciAg
fCBpdGhpbnggR21iSCB8ICBTb2Z0d2FyZSBFbmdpbmVlcg0KUGhvbmU6ICArNDkgKDIyMSkgOTk1
ODktMzMyIHwgRmF4OiArNDkgKDIyMSkgOTkgNTg5LTE5OSAgfCBFLU1haWw6ICBNYXR0aGlhcy5T
Y2hvZXBmZXJAaXRoaW54LmlvDQoNCg0KT24gMDgvMTcvMjAxNyAxMToyNyBBTSwgUGF1bCBFZ2ds
ZXRvbiB3cm90ZToNCj4gSGkgTWF0dGhpYXMsDQo+DQo+IE9uIFRodXJzZGF5LCAxNyBBdWd1c3Qg
MjAxNyA4OjQzOjQxIFBNIE5aU1QgRHIuIE1hdHRoaWFzIFNjaMO2cGZlciB3cm90ZToNCj4+IEhl
cmUgaXMgbXkgcHJvYmxlbSwgbWF5YmUgSSBtaXN1bmRlcnN0b29kIHNvbWV0aGluZy4gSSBoYXZl
IGEgbGlicmFyeQ0KPj4gcmVjaXBlLCBsZXRzIG5hbWUgaXQgZm9vLCB0aGF0IERFUEVORFMgb24g
bW9zcXVpdHRvIGZyb20NCj4+IG1ldGEtaW50ZWwtaW90LW1pZGRsZXdhcmUuIEkgYWRkZWQgYSBS
REVQRU5EU18ke1BOfSArPSAiIGxpYm1vc3F1aXR0bzENCj4+ICIsIGFzIHRoZSBtb3NxdWl0dG8g
cGFja2FnZSBhZGRzIHRoaXMgZXh0cmEgcGFja2FnZSBmb3IgdGhlIG1vc3F1aXR0bw0KPj4gbGli
cmFyeSwgdGhhdCBsaWJyYXJ5IGZvbyBkZXBlbmRzIG9uLiBUaGVuIEkgaGF2ZSBteSBhcHAgImJh
ciIsIHRoYXQNCj4+IGRlcGVuZHMgb24gImZvbyIuICJiYXIiIGlzIGFkZGVkIHRvIHRoZSBpbWFn
ZSByZWNpcGUuIFRoZSByb290ZnMgaXMNCj4+IG1pc3Npbmcgb3V0IHRoZSBwYWNrYWdlIGxpYm1v
c3F1aXR0bzEsIGFuZCB0aGVyZWZvcmUgbWlzc2luZyB0aGUNCj4+IG1vc3F1aXR0byBsaWJyYXJ5
LiBXb3JrYXJvdW5kIGlzIHRvIGFkZCBsaWJtb3NxdWl0dG8gZXhwbGljaXRseSB0byB0aGUNCj4+
IEltYWdlIHJlY2lwZSwgYnV0IGFzIEkgdW5kZXJzdGFuZCwgdGhpcyBzaG91bGQgbm90IG1lIG5l
Y2Vzc2FyeS4NCj4gU29tZXRoaW5nIGlzIG9kZCBoZXJlIGJlY2F1c2UgaWYgeW91ciBmb28gbGli
cmFyeSBsaW5rcyB0byBsaWJtb3NxdWl0dG8xLnNvLjEgdGhlbiBpdCBzaG91bGQgYWxyZWFkeSBn
ZXQgYSBydW50aW1lIGRlcGVuZGVuY3kgb24gdGhlIGxpYm1vc3F1aXR0bzEgcGFja2FnZSB3aXRo
b3V0IHlvdSBuZWVkaW5nIHRvIGFkZCBpdC4gSSB3b3VsZCBwZXJoYXBzIHN1Z2dlc3QgbG9va2lu
ZyBhdCBwa2dkYXRhIC0gIGJpdGJha2UgLWUgZm9vIHwgZ3JlcCBQS0dEQVRBX0RJUiAgYW5kIHRo
ZW4gbG9vayBpbiBydW50aW1lL2ZvbyB1bmRlciB0aGF0IGFuZCBzZWUgd2hhdCBSREVQRU5EUyBp
cyBpbmRpY2F0ZWQgaW4gdGhlcmUuDQo+DQpUaGFua3MgZm9yIHRoZSBoaW50LiBBbGwgSSBjYW4g
c2F5IGlzIHRoYXQgaXQgbG9va3MgZ29vZDoNCg0KUkRFUEVORFNfZm9vOiBsaWJzdGRjKysgKD49
IDYuMy4wKSBnbGliYyAoPj0gMi4yNSkgbGliY3J5cHRvICg+PSAxLjAuMmspDQpqc29uY3BwICg+
PSAxLjguMCkgbGlibW9zcXVpdHRvMSAoPj0gMS40LjEwKSBsaWJjdXJsICg+PSA3LjUzLjEpIGxp
YmdjYw0KKD49IDYuMy4wKSBsaWJzc2wgKD49IDEuMC4yaykNCg0KVGhlbiwgaW4gYmFyDQoNClJE
RVBFTkRTX2JhcjogZm9vICg+PSAxLjQuMC1naXQwZTM3MTIzMSkgZ2xpYmMgKD49IDIuMjUpIGpz
b25jcHAgKD49DQoxLjguMCkgbGlic3RkYysrICg+PSA2LjMuMCkgbGliZ2NjICg+PSA2LjMuMCkN
Cg0KKGZvbyBhbmQgYmFyIG9mIGNvdXJzZSByZXBsYWNlbWVudHMgdG8gcHJvdGVjdCB0aGUgaW5u
b2NlbnQpDQoNCkFnYWluLCBsaWJtb3NxdWl0dG8xIGlzIG1pc3NpbmcgaW4gcm9vdGZzIGV4Y2Vw
dCBpZiBJIGFkZCB0aGUgcGFja2FnZSB0bw0KdGhlIGltYWdlIHJlY2lwZS4NCg0KSSBhbSB1c2lu
ZyBweXJvLCBpZiB0aGF0IGlzIG9mIGFueSBoZWxwLg0KDQpUaGFua3MsDQoNCiAgICBNYXR0aGlh
cw0KDQoNCg==


