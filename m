Return-Path: <john.s.summers@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65CABE00566; Mon, 22 Sep 2014 10:06:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1785FE0034C
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 10:05:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Sep 2014 09:59:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,572,1406617200"; d="scan'208";a="577036672"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by orsmga001.jf.intel.com with ESMTP; 22 Sep 2014 10:05:09 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 22 Sep 2014 10:05:05 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.6.135]) by
	fmsmsx116.amr.corp.intel.com ([169.254.2.27]) with mapi id
	14.03.0195.001; Mon, 22 Sep 2014 10:05:04 -0700
From: "Summers, John S" <john.s.summers@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Packages util-linux and gettext both showing undefined
	reference
Thread-Index: Ac/UZukDqRQi6fEkRgawA0lmIJuUTACUor0AAAz8fbA=
Date: Mon, 22 Sep 2014 17:05:04 +0000
Message-ID: <AC825E12842FCA4C9E6DDED8AF00318F1FB79231@FMSMSX106.amr.corp.intel.com>
References: <AC825E12842FCA4C9E6DDED8AF00318F1FB70C57@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LaFn30Fxx2UeJbAdH94Kv1uLbDisiMXHNCHu49POoscwg@mail.gmail.com>
In-Reply-To: <CAJTo0LaFn30Fxx2UeJbAdH94Kv1uLbDisiMXHNCHu49POoscwg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Packages util-linux and gettext both showing undefined reference
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
X-List-Received-Date: Mon, 22 Sep 2014 17:06:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVyZSBpcyBteSBidWlsZCBjb25maWd1cmF0aW9uOg0KQkJfVkVSU0lPTiAgICAgICAgPSAiMS4y
My4yIg0KQlVJTERfU1lTICAgICAgICAgPSAieDg2XzY0LWxpbnV4Ig0KTkFUSVZFTFNCU1RSSU5H
ICAgPSAiVWJ1bnR1LTE0LjA0Ig0KVEFSR0VUX1NZUyAgICAgICAgPSAieDg2XzY0LXBva3ktbGlu
dXgiDQpNQUNISU5FICAgICAgICAgICA9ICI8Y3VzdG9tIG1hY2hpbmUgcmVjaXBlPiINCkRJU1RS
TyAgICAgICAgICAgID0gInBva3ktdGlueSINCkRJU1RST19WRVJTSU9OICAgID0gIjEuNitzbmFw
c2hvdC0yMDE0MDkyMiINClRVTkVfRkVBVFVSRVMgICAgID0gIm02NCBjb3JlMiINClRBUkdFVF9G
UFUgICAgICAgID0gIiINCg0KVGhpcyBpcyB1c2luZyB0aGUgbGF0ZXN0IHJldmlzaW9uIG9mIHBv
a3k6DQpvcmlnaW4JZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvcG9reSAoZmV0Y2gpDQoNClRo
YW5rcywNClN0dWFydA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQnVydG9u
LCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXSANClNlbnQ6IE1vbmRheSwgU2Vw
dGVtYmVyIDIyLCAyMDE0IDk6MDQgQU0NClRvOiBTdW1tZXJzLCBKb2huIFMNCkNjOiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBQYWNrYWdlcyB1dGlsLWxpbnV4
IGFuZCBnZXR0ZXh0IGJvdGggc2hvd2luZyB1bmRlZmluZWQgcmVmZXJlbmNlDQoNCk9uIDIwIFNl
cHRlbWJlciAyMDE0IDAxOjA4LCBTdW1tZXJzLCBKb2huIFMgPGpvaG4ucy5zdW1tZXJzQGludGVs
LmNvbT4gd3JvdGU6DQo+IEkgYW0gc2hvd2luZyBidWlsZCBmYWlsdXJlcyBmb3IgYm90aCB1dGls
LWxpbnV4IChiaXRiYWtlIHV0aWwtbGludXgpIA0KPiBhbmQgZ2V0dGV4dCAoYml0YmFrZSBnZXR0
ZXh0KToNCj4gLi4uL3RtcC93b3JrL2NvcmUyLTY0LXBva3ktbGludXgvdXRpbC1saW51eC8yLjI0
LjItcjEvdXRpbC1saW51eC0yLjI0LjIvdGV4dC11dGlscy9tb3JlLmM6MTk0NzoNCj4gdW5kZWZp
bmVkIHJlZmVyZW5jZSB0byBgbWJydG93YycNCj4g4oCmL3RtcC93b3JrL2NvcmUyLTY0LXBva3kt
bGludXgvdXRpbC1saW51eC8yLjI0LjItcjEvdXRpbC1saW51eC0yLjI0LjIvdGV4dC11dGlscy9t
b3JlLmM6MTk3MDoNCj4gdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgd2N3aWR0aCcNCj4NCj4gSSBh
bSB0cnlpbmcgdG8gYnVpbGQgYSBjb3JlLWltYWdlLW1pbmltYWwtaW5pdHJhbWZzIGltYWdlIGFu
ZCBnZXQgdGhlIA0KPiBhYm92ZSBlcnJvci4NCg0KV2hhdCByZXZpc2lvbiBvZiBnaXQgd2FzIHRo
aXMsIGFuZCB3aGF0IE9FIGRpc3Rybz8gIEkndmUgbm90IHNlZW4gdGhpcyBiZWZvcmUuDQoNClJv
c3MNCg==

