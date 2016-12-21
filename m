Return-Path: <hamish.guthrie@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91EFBE004E5; Wed, 21 Dec 2016 09:38:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.223.79.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx1.kistler.com (mx1.kistler.com [91.223.79.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F026E0034A
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:38:17 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.33,384,1477954800"; d="scan'208";a="27172469"
Received: from kihagsepp01.int.kistler.com ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/AES256-GCM-SHA384;
	21 Dec 2016 18:38:16 +0100
Received: from mx1.kistler.com (kihagciip01.int.kistler.com [192.168.52.57])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Wed, 21 Dec 2016 18:38:16 +0100 (CET)
X-IronPort-AV: E=Sophos;i="5.33,384,1477954800"; d="scan'208";a="27172468"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx1.kistler.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	21 Dec 2016 18:38:16 +0100
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%14]) with mapi
	id 14.03.0266.001; Wed, 21 Dec 2016 18:38:16 +0100
From: Hamish Guthrie <Hamish.Guthrie@kistler.com>
To: 'Rick Altherr' <raltherr@google.com>
Thread-Topic: [yocto] fitImage and initramfs
Thread-Index: AdJbqVNnBUCbCbYDS66rJ3mlKS7xKf//+HUA///sf0A=
Date: Wed, 21 Dec 2016 17:38:16 +0000
Message-ID: <7411EC580D08984EBA0A1730211182191AA8E7C3@kihagwinex01.int.kistler.com>
References: <7411EC580D08984EBA0A1730211182191AA8E7A2@kihagwinex01.int.kistler.com>
	<CAPLgG=kHYWHWzYPiaGdW7avoxzjQy1WnJkMnRDXaXsDH3ODAaA@mail.gmail.com>
In-Reply-To: <CAPLgG=kHYWHWzYPiaGdW7avoxzjQy1WnJkMnRDXaXsDH3ODAaA@mail.gmail.com>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fitImage and initramfs
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
X-List-Received-Date: Wed, 21 Dec 2016 17:38:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaywNCg0KPj4gSGF2ZSB5b3UgdHJpZWQgbWFudWFsbHkgZXh0cmFjdGluZyB0aGUgLnh6
IGl0IGlzIGhhdmluZyB0cm91YmxlIHdpdGg/DQoNClllcyBJIGhhdmUgdHJpZWQgdGhpcywgaW4g
ZmFjdCBJIG1hZGUgc29tZSBjaGFuZ2VzIHRvIHRoZSBzY3JpcHQgd2hlcmUgdGhlIGNvcHkgYW5k
IGV4dHJhY3QgaXMgZG9uZSBhbmQgSSBjYW4gdmVyaWZ5IHRoYXQgaW4gZmFjdCB0aGUgY29weSBv
ZiB0aGUgY3Bpby54eiBpbWFnZSBpcyBkb25lIGNvcnJlY3RseSB0byB0aGUgdXNyIGRpcmVjdG9y
eSBpbiB0aGUga2VybmVsIGRpcmVjdG9yeSwgSSBhbHNvIGFkZGVkIGEgbGluZSB0byBtYWtlIGFu
IGFkZGl0aW9uYWwgY29weSBvZiBpdCwgYW5kIGluIGZhY3QgdGhlIG9yaWdpbmFsIGlzIGJlaW5n
IGV4dHJhY3RlZCBjb3JyZWN0bHkgdG8gdGhlIHVzciBkaXJlY3RvcnksIGFuZCBpdCBpcyBjb3Jy
ZWN0bHkgZXh0cmFjdGVkLCBidXQgZm9yIHNvbWUgc3RyYW5nZSByZWFzb24gSSBnZXQgdGhlIFVu
ZXhwZWN0ZWQgZW5kIG9mIGlucHV0IGVycm9yLiBJIGhhdmUgbWFudWFsbHkgZXh0cmFjdGVkIHRo
ZSBpbWFnZSBhbmQgdGhlIHJlc3VsdCBvZiB0aGF0IGV4dHJhY3Rpb24gaXMgaWRlbnRpY2FsIGJv
dGggaW4gc2l6ZSBhbmQgY29udGVudCB0byB0aGUgb25lIHdoaWNoIGNsYWltcyB0byBoYXZlIGFu
IGVycm9yLg0KDQpUaGUgY29yZS1pbWFnZS1taW5pbWFsIGlzIHB1cmVseSBmb3IgZXhwZXJpbWVu
dGFsIHB1cnBvc2VzLCB3aGF0IEkgYW0gYWN0dWFsbHkgdHJ5aW5nIHRvIGRvIGlzIHRvIGNyZWF0
ZSBhIGZpdCBpbWFnZSBmb3Igb3VyIHN3dXBkYXRlIGltYWdlIHNvIHRoYXQgSSBjYW4gaGF2ZSBh
IHNpbmdsZSBmaXQgaW1hZ2UgaW5jbHVkaW5nIHRoZSBrZXJuZWwsIGRldmljZSB0cmVlIGFuZCBp
bml0cmFtZnMgZm9yIHN3dXBkYXRlLCBzbyBJIGNhbiBpbmNsdWRlIGl0IGluIGEgc2luZ2xlIFVC
SSB2b2x1bWUuDQoNCkhhbWlzaCAtDQo=

