Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B922E003DB; Fri, 13 Jan 2017 00:54:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 177 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 Jan 2017 00:54:00 PST
Received: from cit-hm8-gw01.bmw-carit.de (cit-hm8-mail01.bmw-carit.de
	[212.118.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2F75E0034A
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 00:54:00 -0800 (PST)
Received: from [172.20.0.50] (port=61153 helo=cit-hm8-mail01.bmw-carit.de)
	by cit-hm8-gw01.bmw-carit.de with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1cRxZc-0002Zy-0y
	for yocto@yoctoproject.org; Fri, 13 Jan 2017 09:51:00 +0100
Received: from ULM-DC01.bmw-carit.intra ([fe80::41cf:62be:aacc:1aad]) by
	ULM-DC01.bmw-carit.intra ([fe80::41cf:62be:aacc:1aad%11]) with mapi id
	14.03.0123.003; Fri, 13 Jan 2017 09:50:59 +0100
X-CTCH-RefID: str=0001.0A0C0206.587894F4.012F, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
From: Clemens Lang <Clemens.Lang@bmw-carit.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Building on MacOS X
Thread-Index: AQHSbOfagOCkOJDQWUevakFI4lbOJKE06B2AgAABWYCAAAvGgIAACAsAgAAORACAAFjRgIAApWEA
Date: Fri, 13 Jan 2017 08:50:58 +0000
Message-ID: <23A9A636-C738-4FF6-962F-DCDC107A7AA8@bmw-carit.de>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
	<CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
	<448FE605-0D5E-4057-BF49-9EFFBC5CB8DD@sentientblue.com>
	<a0f910e1-e4e3-a36c-54f8-029cd72bae83@windriver.com>
In-Reply-To: <a0f910e1-e4e3-a36c-54f8-029cd72bae83@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.20.80]
MIME-Version: 1.0
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Fri, 13 Jan 2017 08:54:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <5F4E8B03ABFF1541BB7078004AED2A0B@bmw-carit.de>
Content-Transfer-Encoding: base64

SGksDQoNCg0KPiBPbiAxMiBKYW4gMjAxNywgYXQgMjM6NTksIE1hcmsgSGF0bGUgPG1hcmsuaGF0
bGVAd2luZHJpdmVyLmNvbT4gd3JvdGU6DQo+IA0KPiBBcyBmYXIgYXMgSSBrbm93IHBzZXVkbyBh
bmQgdGhlIHNlY3VyaXR5IGludHJvZHVjZWQgaW4gMTAuMTEgdGhhdCBhZmZlY3QNCj4gcHJlbG9h
ZGluZyBpcyBsaWtlbHkgdGhlIGJpZ2dlc3QgdGVjaG5pY2FsIHByb2JsZW0uLi4gIGV2ZXJ5dGhp
bmcgZWxzZSBpcyBqdXN0DQo+ICJpdCdzIG5vdCBMaW51eOKAnS4NCg0KV2l0aCBTeXN0ZW0gSW50
ZWdyaXR5IFByb3RlY3Rpb24gZGlzYWJsZWQsIHBzZXVkbyBzaG91bGQgc3RpbGwgd29yayBhcyBp
dCBkaWQgYmVmb3JlLCBpZiB0aGF04oCZcyBhbiBhY2NlcHRhYmxlIHN0ZXAgZm9yIHlvdS4NCg0K
SWYgaXQgaXNu4oCZdCwgQXBwbGXigJlzIG5ldyBsaW1pdGF0aW9ucyBjYW4gYWxzbyBiZSB3b3Jr
ZWQgYXJvdW5kIGluIHBzZXVkbyBieSBob29raW5nIHRoZSBleGVjKDIpIGFuZCBwb3NpeF9zcGF3
bigyKSBzeXNjYWxscywgY2hlY2tpbmcgaWYgdGhlIGJpbmFyeSB0byBiZSBleGVjdXRlZCBpcyB1
bmRlciBzeXN0ZW0gaW50ZWdyaXR5IHByb3RlY3Rpb24sIG1ha2luZyBhIGNvcHkgd2l0aG91dCB0
aGUgU0lQLWJpdCBpZiBpdCBpcyBhbmQgdHJhbnNwYXJlbnRseSBydW5uaW5nIHRoYXQgY29weSBp
bnN0ZWFkLiBUaGF0IGNvZGUgd291bGQgbmVlZCB0byBiZSB3cml0dGVuLCB0aG91Z2ggKExldCBt
ZSBrbm93IGlmIHlvdSB3YW50IHRvIGRvIHRoYXQsIEkgaGF2ZSB0aGUgY29kZSBmb3IgYSBkaWZm
ZXJlbnQgcHJvamVjdC4pLiBJdOKAmXMgcHJvYmFibHkgb25seSBhIG1hdHRlciBvZiB0aW1lIHVu
dGlsIEFwcGxlIHByZXZlbnRzIHRoYXQgZnJvbSB3b3JraW5nLCB0b28sIHRob3VnaCwgZS5nLiBi
eSBtYWtpbmcgc29tZSBzdGFuZGFyZCBzeXN0ZW0gdG9vbHMgc2lnbmVkIGJpbmFyaWVzIHRoYXQg
bm8gbG9uZ2VyIGxvYWQgcHJlbG9hZGVkIGxpYnJhcmllcy4NCg0KDQpIVEgsDQpDbGVtZW5zDQot
LSANCkNsZW1lbnMgTGFuZyDigKIgRGV2ZWxvcG1lbnQgU3BlY2lhbGlzdA0KQk1XIENhciBJVCBH
bWJIIOKAoiBMaXNlLU1laXRuZXItU3RyLiAxNCDigKIgODkwODEgVWxtIOKAoiBodHRwOi8vYm13
LWNhcml0LmNvbQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KQk1XIENhciBJVCBHbWJIDQpHZXNjaMOkZnRz
ZsO8aHJlcjogTWljaGFlbCBXw7xydGVuYmVyZ2VyIHVuZCBBbGV4aXMgVHJvbGluDQpTaXR6IHVu
ZCBSZWdpc3RlcmdlcmljaHQ6IE3DvG5jaGVuIEhSQiAxMzQ4MTANCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0N
Cg0K

