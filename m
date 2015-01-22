Return-Path: <john.ernberg@actia.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F7A7E00902; Thu, 22 Jan 2015 01:47:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Jan 2015 01:47:38 PST
Received: from mail.actia.se (mail.actia.se [193.41.119.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B2B9E0089B
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 01:47:38 -0800 (PST)
Received: from S005ANL.actianordic.se ([::1]) by S005ANL.actianordic.se
	([::1]) with mapi id 14.03.0210.002; Thu, 22 Jan 2015 10:46:28 +0100
From: John Ernberg <john.ernberg@actia.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can't add glib-2.0 and zlib into nativesdk
Thread-Index: AQHQNihK5/6jTltddkWeJmvv8JI76A==
Date: Thu, 22 Jan 2015 09:46:27 +0000
Message-ID: <54C0C6F0.1010408@actia.se>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.15.9]
x-esetresult: clean, is OK
x-esetid: E7C3CC3D94689A08B58E9C
MIME-Version: 1.0
Subject: Can't add glib-2.0 and zlib into nativesdk
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
X-List-Received-Date: Thu, 22 Jan 2015 09:47:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <1B50C5B7F721AF479DCBF2280D4DE81D@actia.se>
Content-Transfer-Encoding: base64

SGksDQoNCldlIGhhdmUgYW4gZW1iZWRkZWQgc3lzdGVtIHRoYXQgd2UncmUgYnVpbGRpbmcgb3Vy
IG93biBkaXN0cmlidXRpb24gZm9yLg0KSW4gb3JkZXIgdG8gZml0IHRoZSBkaXN0cmlidXRpb24g
b24gdGhlIGZsYXNoIHdlIGJ1aWxkIG91ciBpbWFnZXMgd2l0aCANCk5PX1JSRUNPTU1FTkRTID0g
IjEiLg0KDQpUaGlzIGNhdXNlcyBvdXIgbmF0aXZlc2RrIHRvIG5vdCBpbmNsdWRlIGFueXRoaW5n
IGV4Y2VwdCB0aGUgcGFja2FnZXMgd2UgDQpzcGVjaWZ5IGV4cGxpY2l0bHkgaW4gdGhlIFRPT0xD
SEFJTl9IT1NUX1RBU0sgdmFyaWFibGUuDQpUaGUgaXNzdWUgd2l0aCB0aGF0IGlzIHRoYXQgb3Vy
IG5hdGl2ZXNkayBuZWVkcyB0byBpbmNsdWRlIGdsaWItMi4wIGFuZCANCnpsaWIgd2hpY2ggd2Ug
Y2Fubm90IGZpZ3VyZSBvdXQgaG93IHRvIGdldCBpbnRvIHRoZSBTREsuDQpJZiB3ZSBpbmNsdWRl
IHRoZW0gbGlrZSB0aGlzOiAibmF0aXZlc2RrLWdsaWItMi4wLWRldiANCm5hdGl2ZXNkay16bGli
LWRldiIsIHRoZW4gdGhlIHJlY2lwZSBwYXJzaW5nIHBhc3NlcywgYnV0IHRoZSANCmRvX3BvcHVs
YXRlX3NkayB0YXNrIGZhaWxzIGJlY2F1c2UgaXQgY2Fubm90IGZpbmQgdGhvc2UgMiBwYWNrYWdl
cy4NClRoZSBlcnJvcnMgd2Ugc2VlIGFyZToNCkVSUk9SOiBuYXRpdmVzZGstZ2xpYi0yLjAtZGV2
IG5vdCBmb3VuZCBpbiB0aGUgYmFzZSBmZWVkcyANCih4ODZfNjQtbmF0aXZlc2RrIG5vYXJjaCBh
bnkgYWxsKS4NCkVSUk9SOiBuYXRpdmVzZGstemxpYi1kZXYgbm90IGZvdW5kIGluIHRoZSBiYXNl
IGZlZWRzICh4ODZfNjQtbmF0aXZlc2RrIA0Kbm9hcmNoIGFueSBhbGwpLg0KDQpJZiB3ZSBzcGVj
aWZ5IHRoZSBzdWdnZXN0ZWQgcGFja2FnZXMgZnJvbSB0aGUgYXZhaWxhYmxlIHBhY2thZ2VzIGR1
bXAgDQpmcm9tIHRoZSBhYm92ZSBlcnJvcnMgaW5zdGVhZDogIm5hdGl2ZXNkay1saWJnbGliLTIu
MC1kZXYgDQpuYXRpdmVzZGstbGliei1kZXYiLCB0aGVuIHdlIGdldCB0aGUgZm9sbG93aW5nIHBh
cnNpbmcgZXJyb3JzOg0KRVJST1I6IE5vdGhpbmcgUlBST1ZJREVTICduYXRpdmVzZGstbGliZ2xp
Yi0yLjAtZGV2Jw0KTk9URTogUnVudGltZSB0YXJnZXQgJ25hdGl2ZXNkay1saWJnbGliLTIuMC1k
ZXYnIGlzIHVuYnVpbGRhYmxlLCANCnJlbW92aW5nLi4uDQpNaXNzaW5nIG9yIHVuYnVpbGRhYmxl
IGRlcGVuZGVuY3kgY2hhaW4gd2FzOiBbJ25hdGl2ZXNkay1saWJnbGliLTIuMC1kZXYnXQ0KDQpF
UlJPUjogTm90aGluZyBSUFJPVklERVMgJ25hdGl2ZXNkay1saWJ6LWRldicNCk5PVEU6IFJ1bnRp
bWUgdGFyZ2V0ICduYXRpdmVzZGstbGliei1kZXYnIGlzIHVuYnVpbGRhYmxlLCByZW1vdmluZy4u
Lg0KTWlzc2luZyBvciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogWyduYXRpdmVz
ZGstbGliei1kZXYnXQ0KDQpUaGUgWW9jdG8gdmVyc2lvbiB3ZSdyZSB1c2luZyBpcyBzb21ld2hl
cmUgYmV0d2VlbiBkYWlzeS0xMS4wLjAgLw0KeW9jdG8tMS42IGFuZCBkYWlzeS0xMS4wLjEgLyB5
b2N0by0xLjYuMSwgcmV2aXNpb246DQozY2FhZTkwMGYzMjdhZTY3NDQ1ZWNlNjc5NzU4NjJiZTEx
ZDJmZGU3DQoNClRoYW5rIHlvdSBpbiBhZHZhbmNlIGZvciBhc3Npc3RhbmNlIQ0KDQpSZWdhcmRz
IC8vIEpvaG4=

