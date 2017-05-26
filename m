Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC938E00C30; Thu, 25 May 2017 20:17:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 May 2017 20:17:22 PDT
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AB41E00C20
	for <yocto@yoctoproject.org>; Thu, 25 May 2017 20:17:22 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Fri, 26 May 2017 13:16:13 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "Burton, Ross" <ross.burton@intel.com>, Andras Tantos
	<andras@tantosonline.com>
Date: Fri, 26 May 2017 13:16:11 +1000
Thread-Topic: [yocto] Problem building glibc-locale
Thread-Index: AdJ+c3C+qXAo3qYLSlmAeupanjRQ1xXWkwvQ
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F0633E68@IR-CENTRAL.corp.innerrange.com>
References: <43debf33-b22d-2838-fcc3-286bc837e015@tantosonline.com>
	<CAJTo0Laxnjdzn4pGz9JsvesUHuUeRO3nPymfYFaDDTsTjVj2Hg@mail.gmail.com>
In-Reply-To: <CAJTo0Laxnjdzn4pGz9JsvesUHuUeRO3nPymfYFaDDTsTjVj2Hg@mail.gmail.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23090.007
x-tm-as-result: No--3.941200-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem building glibc-locale
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
X-List-Received-Date: Fri, 26 May 2017 03:17:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiANCj4gRnJvbTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8t
Ym91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgQnVydG9uLCBSb3NzDQo+DQo+
IFNvIHlvdSBkaWQ6DQo+DQo+IGVjaG8gIkRJU1RST19GRUFUVVJFUyArPSBcInVzYmhvc3RcIiIg
Pj4gY29uZi9sb2NhbC5jb25mDQo+DQo+IEJ1dCBwb2t5LmNvbmYgZG9lczoNCj4NCj4gRElTVFJP
X0ZFQVRVUkVTID89ICIke0RJU1RST19GRUFUVVJFU19ERUZBVUxUfSAke0RJU1RST19GRUFUVVJF
U19MSUJDfSAke1BPS1lfREVGQVVMVF9ESVNUUk9fRkVBVFVSRVN9Ig0KPg0KPiBXaGljaCBtZWFu
cyB0aGF0IHRoZSBmaW5hbCB2YWx1ZSBvZiBESVNUUk9fRkVBVFVSRVMgaXMgInVzYmhvc3QiLCBz
byBub25lIG9mIHRoZSBsb2NhbGUgc3VwcG9ydCBpcyBlbmFibGVkLCBhbmQgZ2xpYmMgcGFja2Fn
ZXMgYmFkbHkuDQo+DQo+IElmIHlvdSBqdXN0IHdhbnQgdG8gYWRkIGEgZmVhdHVyZSwgdXNlIERJ
U1RST19GRUFUVVJFU19hcHBlbmQgPSAiIHVzYmhvc3QiIChsZWFkaW5nIHdoaXRlc3BhY2UgaW4g
dGhlIHN0cmluZyBpcyBjcml0aWNhbCkuwqAgTm90ZSB0aGF0IHVzYmhvc3QgaXMgYSBkZWZhdWx0
IGRpc3RybyBmZWF0dXJlOg0KPg0KPiBtZXRhL2NvbmYvZGlzdHJvL2luY2x1ZGUvZGVmYXVsdC1k
aXN0cm92YXJzLmluYzpESVNUUk9fRkVBVFVSRVNfREVGQVVMVCA/PSAiYWNsIGFsc2EgYXJncCBi
bHVldG9vdGggZXh0MiBpcmRhIGxhcmdlZmlsZSBwY21jaWEgdXNiZ2FkZ2V0IHVzYmhvc3Qgd2lm
aSB4YXR0ciBuZnMgemVyb2NvbmYgcGNpIDNnIG5mYyB4MTEiDQo+DQo+IFNvIHlvdSBkb24ndCBu
ZWVkIHRvIHNwZWNpZnkgaXQgdW5sZXNzIHlvdSBhcmUgZGVmaW5pbmcgYSBkaXN0cmlidXRpb24g
ZnJvbSBzY3JhdGNoLg0KPg0KPiBSb3NzDQoNCkknbSBoYXZpbmcgdGhpcyBpc3N1ZSwgd2hlbiB0
cnlpbmcgdG8gdXNlIGEgbW9kaWZpY2F0aW9uIG9mIHRoZSBwb2t5LXRpbnkgZGlzdHJvIChjdXJy
ZW50bHkgdXNpbmcgbW9ydHkpLiBEb2VzIHRoZSBwb2t5LXRpbnkgZGlzdHJvIGRvIHRoZSByaWdo
dCB0aGluZz8NCg0KLS0gDQpDcmFpZyBNY1F1ZWVuDQoNCg==

