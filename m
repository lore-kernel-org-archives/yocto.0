Return-Path: <Tim.Verstraete@medecbenelux.be>
Received: from mail.medecbenelux.be (mail.medecbenelux.be [81.83.14.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E513BE00288
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 02:45:48 -0700 (PDT)
Received: from SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407]) by
	SBS-MEDEC.medecbenelux.local ([fe80::1b66:a66e:3778:1407%10]) with mapi
	id 14.01.0355.002; Tue, 31 Jul 2012 11:45:47 +0200
From: Tim Verstraete <Tim.Verstraete@medecbenelux.be>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [Yocto] general question about how certain features
	get processed into packages
Thread-Index: Ac1u/GuTncsv5cZuQK+q3zrD6TQ7rv//5BsA///azIA=
Date: Tue, 31 Jul 2012 09:45:45 +0000
Message-ID: <4439C3C0562087488F139C696CD862A72C1841@SBS-MEDEC.medecbenelux.local>
References: <4439C3C0562087488F139C696CD862A72C1827@SBS-MEDEC.medecbenelux.local>
	<CAJTo0La=eXxB2suczx3Y6XOAxf=fu5+W5gef2C-XqRQi=iqzAQ@mail.gmail.com>
In-Reply-To: <CAJTo0La=eXxB2suczx3Y6XOAxf=fu5+W5gef2C-XqRQi=iqzAQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2002:5153:ef2:0:812:67e5:2c33:1a19]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: general question about how certain features get processed into packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 31 Jul 2012 09:45:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCBpIGZvdW5kIHRoYXQgb25lIGJ1dCB0YXNrLWNvcmUtYXBwcy1jb25zb2xlIGlzIG5vdCB0
aGUgc2FtZSBhcyB0YXNrcy1jb3JlLWNvbnNvbGUuYmIgSSB3b3VsZCB0aGluayBiZWNhdXNlIGlu
IHRhc2stY29yZS1jb25zb2xlLmJiIHRoZXkgYWdhaW4gcmVmZXIgdG8gdGhlIG9uZSBJIGFtIGxv
b2tpbmcgZm9yOiB0YXNrLWNvcmUtYXBzcy1jb25zb2xlIC4uLg0KDQpLaW5kIHJlZ2FyZHMsDQoN
ClRpbQ0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCdXJ0b24sIFJvc3Mg
W21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dIA0KU2VudDogZGluc2RhZyAzMSBqdWxpIDIw
MTIgMTE6MzENClRvOiBUaW0gVmVyc3RyYWV0ZQ0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
ClN1YmplY3Q6IFJlOiBbeW9jdG9dIFtZb2N0b10gZ2VuZXJhbCBxdWVzdGlvbiBhYm91dCBob3cg
Y2VydGFpbiBmZWF0dXJlcyBnZXQgcHJvY2Vzc2VkIGludG8gcGFja2FnZXMNCg0KT24gMzEgSnVs
eSAyMDEyIDEwOjE1LCBUaW0gVmVyc3RyYWV0ZSA8VGltLlZlcnN0cmFldGVAbWVkZWNiZW5lbHV4
LmJlPiB3cm90ZToNCj4gTm93IG15IHF1ZXN0aW9uIGlzLCB3aGVyZSBjYW4gSSBmaW5kIHdoYXQg
Zm9yIGV4YW1wbGUgDQo+IHRhc2stY29yZS1hcHBzLWNvbnNvbGUgZXhhY3RseSBpcyBhcyBwYWNr
YWdlIGNvbGxlY3Rpb24/IFNpbmNlIHRoaXMgaXMgDQo+IGEgY29yZSB0YXNrIGxpc3QgSSB0aG91
Z2h0IEkgd291bGQgZmluZCBpdCBpbiAvbWV0YS9yZWNpcGVzLWNvcmUvdGFza3MgDQo+IGJ1dCBu
byBsdWNrLCBJIGRpZCBmaW5kIHRhc2stY29yZS1ib290IHRoZXJlIGJ1dCB0aGF0IGlzIGl0IOKA
pg0KDQpPbiBtYXN0ZXIgYXQgbGVhc3QsIG1ldGEvcmVjaXBlcy1jb3JlL3Rhc2tzL3Rhc2tzLWNv
cmUtY29uc29sZS5iYg0KZGVmaW5lcyBhIHBhY2thZ2UgY2FsbGVkIHRhc2stY29yZS1hcHBzLWNv
bnNvbGUgYW5kIHNwZWNpZmllZCB0aGUgcnVudGltZSBkZXBlbmRlbmNpZXMgb2YgaXQuDQoNCklu
IGFueSBjYXNlLCBnaXQgZ3JlcCBpcyB5b3VyIGZyaWVuZC4gOikNCg0KUm9zcw0K

