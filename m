Return-Path: <john.ernberg@actia.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65593E009E4; Wed, 24 Jun 2015 01:53:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.actia.se (mail.actia.se [193.41.119.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B87DBE00974
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 01:53:07 -0700 (PDT)
Received: from S005ANL.actianordic.se ([::1]) by S005ANL.actianordic.se
	([::1]) with mapi id 14.03.0235.001; Wed, 24 Jun 2015 10:53:03 +0200
From: John Ernberg <john.ernberg@actia.se>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Deploying 2 machines, u-boot does not include with both.
Thread-Index: AQHQrlsunkuv3M+DwkiGUA/H/Ppn8w==
Date: Wed, 24 Jun 2015 08:53:03 +0000
Message-ID: <558A7025.4050204@actia.se>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.15.20]
x-esetresult: clean, is OK
x-esetid: 360D0A390C662C34604F57
MIME-Version: 1.0
Subject: Deploying 2 machines, u-boot does not include with both.
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
X-List-Received-Date: Wed, 24 Jun 2015 08:53:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <73714B5B65165247BA5D07ABEAC0AF01@actia.se>
Content-Transfer-Encoding: base64

SGkNCg0KVGhpcyBpcyBhIHdlaXJkIG9uZSB0aGF0IEkgaGF2ZSBiZWVuIHJlc2VhcmNoaW5nIGZv
ciBhIHdoaWxlIHRyeWluZyB0byANCmZpZ3VyZSBvdXQgaG93IHRoaXMgY2FuIGhhcHBlbi4NCldl
IHJlY2VudGx5IGhhZCB0byBleHRlbmQgb3VyIHRhcmdldHMgd2l0aCBhbm90aGVyIG1hY2hpbmUs
IHRoZXkgaGF2ZSANCnRoZSBzYW1lIGNvcmUgQ1BVIGFyY2hpdGVjdHVyZSwgYnV0IHdlIHByb3Zp
ZGUgZGlmZmVyZW50IGNvbmZpZ3VyYXRpb25zIA0Kb2YgdGhlIGtlcm5lbCBmb3IgdGhlbS4gQWxv
bmcgd2l0aCBzb21lIElNQUdFX0lOU1RBTEwgY2hhbmdlcy4NCg0KU2luY2UgdmVyeSBsaXR0bGUg
bmVlZHMgdG8gYmUgcmVidWlsdCwgYW5kIHRoZSBvbmx5IHRoaW5nIG5lZWRlZCB0byANCmNoYW5n
ZSB0YXJnZXQgbWFjaGluZSBpcyB0byBlZGl0IHRoZSBNQUNISU5FIHZhcmlhYmxlLCB3ZSBjaG9z
ZSB0byBidWlsZCANCnRoZSBpbWFnZXMgdXNpbmcgdGhlIHNhbWUgYnVpbGQgZGlyZWN0b3J5Lg0K
DQpUaGlzIG1lYW5zIHdlIHNldCB0aGUgTUFDSElORSB2YXJpYWJsZSB0byBtYWNoaW5lX0EuIHJ1
biBiaXRiYWtlIA0KW21hY2hpbmVfQV9pbWFnZV0sIGNoYW5nZSB0aGUgTUFDSElORSB2YXJpYWJs
ZSB0byBtYWNoaW5lX0IsIGFuZCB0aGVuIA0KcnVuIGJpdGJha2UgW21hY2hpbmVfQl9pbWFnZV0u
DQoNCkhlcmUgaXMgd2hlbiB0aGUgd2VpcmQgaGFwcGVucy4gQWZ0ZXIgbWFjaGluZV9BIGhhcyBi
dWlsdCwgd2UgY2FuIGZpbmQgDQpldmVyeXRoaW5nIHdlIGV4cGVjdCB0byBmaW5kIGluIHRoZSBt
YWNoaW5lX0EgaW1hZ2UgZGVwbG95IGRpcmVjdG9yeS4gDQpXaGVuIHdlIGNoYW5nZSB0aGUgTUFD
SElORSB2YXJpYWJsZSBhbmQgYnVpbGQgbWFjaGluZV9CLCB3ZSBmaW5kIHRoYXQgDQp0aGUgdS1i
b290IGltYWdlIGZyb20gdGhlIG1hY2hpbmVfQSBkaXJlY3RvcnkgaGFzIGRpc2FwcGVhcmVkLg0K
RGVwZW5kaW5nIG9uIGJ1aWxkIG1hY2hpbmUgaXQgaGFzIG1vdmVkIGludG8gdGhlIG1hY2hpbmVf
QiBkaXJlY3RvcnksIGluIA0KYWRkaXRpb24gdG8gdS1ib290IGltYWdlIGZvciBtYWNoaW5lX0Ig
YmVpbmcgcHJlc2VudCBpbiB0aGlzIGRpcmVjdG9yeSwgDQpPUiBpdCBoYXMganVzdCBiZWVuIHJl
bW92ZWQuDQpDaGFuZ2luZyBiYWNrIHRvIGJ1aWxkaW5nIG1hY2hpbmVfQSwgdGhlIHUtYm9vdChz
KSBhcmUgcmVtb3ZlZCBmcm9tIHRoZSANCm1hY2hpbmVfQiBkaXJlY3RvcnksIGFuZCB0aGUgbWFj
aGluZV9BIHUtYm9vdCB3aWxsIHNob3cgdXAgaW4gdGhlIA0KbWFjaGluZV9BIGRpcmVjdG9yeS4N
Cg0KV2hhdCBjb3VsZCBiZSBhdCBwbGF5IGhlcmUgdG8gY2F1c2Ugc3VjaCBhIHN0cmFuZ2UgYmVo
YXZpb3VyPyBIb3cgY2FuIEkgDQpkZWJ1ZyBzdWNoIGEgYmVoYXZpb3VyPyBJIGNvdWxkIG5vdCBm
aW5kIGFueXRoaW5nIG9uIEdvb2dsZSByZWdhcmRpbmcgDQp0aGlzLCBub3IgYW55dGhpbmcgaW4g
dGhlIGxvZ3MgZ2VuZXJhdGVkIGJ5IGJpdGJha2UuDQoNCldlJ3JlIHVzaW5nIHRoZSBEYWlzeSBi
cmFuY2ggb2YgWW9jdG8uDQoNClRoYW5rIHlvdSBpbiBhZHZhbmNlLg0KDQpCZXN0IHJlZ2FyZHMg
Ly8gSm9obiBFcm5iZXJn

