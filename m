Return-Path: <john.ernberg@actia.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4B6BE009C8; Thu,  4 Jun 2015 02:32:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Jun 2015 02:31:57 PDT
Received: from mail.actia.se (mail.actia.se [193.41.119.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8357E007B6
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 02:31:57 -0700 (PDT)
Received: from S005ANL.actianordic.se ([::1]) by S005ANL.actianordic.se
	([::1]) with mapi id 14.03.0235.001; Thu, 4 Jun 2015 11:30:50 +0200
From: John Ernberg <john.ernberg@actia.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Removing rootfs from SDK
Thread-Index: AQHQnqkksrR0RtzV0UqrLrguwcGouA==
Date: Thu, 4 Jun 2015 09:30:49 +0000
Message-ID: <55701AD1.3060300@actia.se>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.15.20]
x-esetresult: clean, is OK
x-esetid: 360D0A390C662C34654E56
MIME-Version: 1.0
Subject: Removing rootfs from SDK
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
X-List-Received-Date: Thu, 04 Jun 2015 09:32:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <37A0DACDCAAD994DA5BD742B28AEF29C@actia.se>
Content-Transfer-Encoding: base64

SGkNCg0KV2UncmUgdHJ5aW5nIHRvIG9wdGltaXplIHRoZSBTREsgZ2VuZXJhdGVkIGJ5IGJpdGJh
a2UgLWMgcG9wdWxhdGVfc2RrLg0KQ3VycmVudGx5IHdlJ3JlIHRyeWluZyB0byByZW1vdmUgdGhl
IGtlcm5lbCwgbW9kdWxlcyBhbmQgb3RoZXIgDQpleGVjdXRhYmxlcyB3aGljaCB3ZSBoYXZlIG5v
IHVzZSBmb3IsIG1vc3Qgb2YgaXQgY291bGQgYmUgcmVtb3ZlZCB1c2luZyANCklNQUdFX0lOU1RB
TEwgPSAiIiBhbmQgSU1BR0VfRkVBVFVSRVMgPSAiIi4NCg0KRHVlIHRvIHVzIHVzaW5nIDIgZGlm
ZmVyZW50IGtlcm5lbCBtb2R1bGUgc2V0cywgd2UncmUgdXNpbmcgDQpJTUFHRV9JTlNUQUxMX2Fw
cGVuZF9bbWFjaGluZV0gYWRkaXRpb25zIHRvIElNQUdFX0lOU1RBTEwgd2hpY2ggYXJlIG5vdCAN
CmNsZWFyZWQgYnkgdGhlIElNQUdFX0lOU1RBTEwgPSAiIiBzZXR0aW5nLg0KDQpJJ3ZlIHRyaWVk
IHRvIGRvIElNQUdFX0lOU1RBTExfcmVtb3ZlIHVzaW5nIHRoZSBzYW1lIHZhcmlhYmxlIHRoYXQg
d2UgDQp1c2UgdG8gcG9wdWxhdGUgdGhlIElNQUdFX0lOU1RBTExfYXBwZW5kLCBidXQgdGhhdCBk
b2Vzbid0IHdvcmsuIEkgY2FuIA0KaG93ZXZlciByZW1vdmUgZWFjaCBpbmRpdmlkdWFsIHBhY2th
Z2UgYWRkZWQgYnkgSU1BR0VfSU5TVEFMTF9hcHBlbmQuDQpEdWUgdG8gdGhlIG51bWJlciBvZiBw
YWNrYWdlcyBhZGRlZCBieSBJTUFHRV9JTlNUQUxMX2FwcGVuZCB0aGlzIGlzIG5vdCANCnJlYWxs
eSBmZWFzaWJsZS4NCg0KSXMgdGhlcmUgYSB3YXkgdG8gY2xlYXIgSU1BR0VfSU5TVEFMTF9hcHBl
bmQgd2l0aG91dCBkb2luZyBhbiANCklNQUdFX0lOU1RBTExfcmVtb3ZlIHBlciBwYWNrYWdlPyBB
bHRlcm5hdGl2ZWx5IGNsZWFyaW5nIGl0IHVzaW5nIGEgDQpweXRob24gbG9vcCB3aXRob3V0IG5l
ZWRpbmcgdG8ga25vdyB0aGUgbmFtZSBvZiBlYWNoIHBhY2thZ2UuDQoNCldlJ3JlIGFsc28gc2Vl
aW5nIGJ1c3lib3ggZ2V0dGluZyBpbmNsdWRlZCBpbnRvIHRoZSBTREsgd2l0aG91dCBhbnl0aGlu
ZyANCnNob3dpbmcgYSBkZXBlbmRlbmN5IG9uIGl0IGZyb20gcnVubmluZyBiaXRiYWtlIC1nIC1j
IHBvcHVsYXRlX3Nkay4NCg0KV2hhdCBjb3VsZCBiZSBnb2luZyBvbiB3aXRoIHRoYXQ/DQoNCldl
J3JlIHVzaW5nIHBva3kgZGFpc3kgMTEgYW5kIFlvY3RvIDEuNi4xLg0KDQpUaGFuayB5b3UgaW4g
YWR2YW5jZS4NCg0KQmVzdCByZWdhcmRzIC8vIEpvaG4gRXJuYmVyZw==

