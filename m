Return-Path: <hamish.guthrie@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20AD1E00571; Wed, 21 Dec 2016 10:11:49 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E5A8E0034A
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 10:11:44 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.33,384,1477954800"; d="scan'208";a="27172952"
Received: from kihagsepp01.int.kistler.com ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/AES256-GCM-SHA384;
	21 Dec 2016 19:11:43 +0100
Received: from mx2.kistler.com (kihagciip02.int.kistler.com [192.168.52.58])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS;
	Wed, 21 Dec 2016 19:11:43 +0100 (CET)
X-IronPort-AV: E=Sophos;i="5.33,384,1477954800"; 
   d="scan'208";a="4534795"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx2.kistler.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	21 Dec 2016 19:11:43 +0100
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%14]) with mapi
	id 14.03.0266.001; Wed, 21 Dec 2016 19:11:43 +0100
From: Hamish Guthrie <Hamish.Guthrie@kistler.com>
To: 'Rick Altherr' <raltherr@google.com>
Thread-Topic: [yocto] fitImage and initramfs
Thread-Index: AdJbqVNnBUCbCbYDS66rJ3mlKS7xKf//+HUA///sf0CAABy/gP//7cLA
Date: Wed, 21 Dec 2016 18:11:43 +0000
Message-ID: <7411EC580D08984EBA0A1730211182191AA8E7ED@kihagwinex01.int.kistler.com>
References: <7411EC580D08984EBA0A1730211182191AA8E7A2@kihagwinex01.int.kistler.com>
	<CAPLgG=kHYWHWzYPiaGdW7avoxzjQy1WnJkMnRDXaXsDH3ODAaA@mail.gmail.com>
	<7411EC580D08984EBA0A1730211182191AA8E7C3@kihagwinex01.int.kistler.com>
	<CAPLgG==_xUCSGDEitJNj_OY-wvOUB50_eagrdW+58n4aXreX_w@mail.gmail.com>
In-Reply-To: <CAPLgG==_xUCSGDEitJNj_OY-wvOUB50_eagrdW+58n4aXreX_w@mail.gmail.com>
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
X-List-Received-Date: Wed, 21 Dec 2016 18:11:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaywNCg0KPj4gV2hhdCBoYXBwZW5zIGlmIHlvdSB1c2UgY29yZS1pbWFnZS1taW5pbWFs
LWluaXRyYW1mcyBmb3IgSU5JVFJBTUZTX0lNQUdFP8KgDQoNCkkganVzdCB0cmllZCB0aGF0IGFu
ZCBZb2N0byBjb21wbGFpbnMgd2l0aCBOb3RoaW5nIFBST1ZJREVTICdjb3JlLWltYWdlLW1pbmlt
YWwtaW5pdHJhbWZzJw0KDQo+PiBJIHRoaW5rIHRoZSBtYWluIHByb2JsZW0gaXMgdGhhdCB5b3Ug
YXJlIHRlbGxpbmcgWW9jdG8gdG8gaW5jbHVkZSB0aGUgZnVsbCByb290ZnMgaW1hZ2UgYXMgYW4g
aW5pdHJhbWZzIGluc3RlYWQgb2YgdGhlIHJlZHVjZWQsIHNwZWNpYWwtcHVycG9zZSBpbml0cmFt
ZnMgaW1hZ2UuDQoNCkkgYW0gbm90IHN1cmUgdGhhdCBZb2N0byBzaG91bGQgZ2l2ZSBhIGRhbW4g
YWJvdXQgd2hhdCBJIGFtIHRyeWluZyB0byBwdXQgaW50byBteSBpbml0cmFtZnMsIGlmIEkgYW0g
c3R1cGlkIGVub3VnaCB0byBpbmNsdWRlIGEgMTAwRyBpbWFnZSBpbnRvIG15IGluaXRyYW1mcywg
aXQgaXMgbXkgcHJvYmxlbSwgbm90IFlvY3RvJ3MhIElmIEkgYW0gc3R1cGlkIGVub3VnaCB0byBk
byB0aGF0LCBrbm93aW5nIHRoYXQgSSBvbmx5IGhhdmUgMjU2TSBSQU0sIEkgc2hvdWxkIGJlIHRo
ZSBvbmUgYml0dGVuIQ0KDQpJIGhhdmUgdHJpZWQgZG9pbmcgdGhlIHNhbWUgdGhpbmcgd2l0aCBh
IHNwZWNpYWwgcmVkdWNlZCBmaWxlc3lzdGVtIGZvciBvdXIgdXBkYXRlIHNvZnR3YXJlICh3aGlj
aCBpcyBhYm91dCA0TSwgYnkgdGhlIHdheSksIGFuZCBJIGdldCB0aGUgc2FtZSBlcnJvciB3aXRo
IChVbmV4cGVjdGVkIGVuZCBvZiBpbnB1dCksIHNvIEkgZG8gbm90IGJlbGlldmUgZm9yIGEgbW9t
ZW50IGl0IGlzIHRoZSBzaXplIG9mIHRoZSBpbml0cmFtZnMuIEkgc3VzcGVjdCBzb21ldGhpbmcg
aW4gdGhlIGtlcm5lbC5iYmNsYXNzLCBidXQgZm9yIHRoZSBsaWZlIG9mIG1lIEkgY2Fubm90IHNl
ZSB3aHkgaXQgd291bGQgZmFpbC4gSXQgc2hvdWxkIGp1c3QgV09SSyENCg0KSGFtaXNoDQo=

