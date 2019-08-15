Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81018E00E08; Thu, 15 Aug 2019 16:17:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22EC5E00DD3
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2019 16:17:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Aug 2019 16:17:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="178600848"
Received: from pgsmsx103.gar.corp.intel.com ([10.221.44.82])
	by fmsmga007.fm.intel.com with ESMTP; 15 Aug 2019 16:17:50 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.232]) by
	PGSMSX103.gar.corp.intel.com ([169.254.2.25]) with mapi id
	14.03.0439.000; Fri, 16 Aug 2019 07:17:49 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "antonio.teixeira@bry.com.br" <antonio.teixeira@bry.com.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Trouble using initramfs
Thread-Index: AQHVU7ehn1rkazCIxkWZBLRquYSYeqb8UcCA
Date: Thu, 15 Aug 2019 23:17:48 +0000
Message-ID: <96faecc73afeba5146e926dc43b7bbcc7ee12947.camel@intel.com>
References: <e30590c0-3122-15f6-013b-2e6c565c89c9@bry.com.br>
In-Reply-To: <e30590c0-3122-15f6-013b-2e6c565c89c9@bry.com.br>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.199.133]
MIME-Version: 1.0
Subject: Re: Trouble using initramfs
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
X-List-Received-Date: Thu, 15 Aug 2019 23:17:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D86929892F75D84E955410D1BA3025A6@intel.com>
Content-Transfer-Encoding: base64

T24gVGh1LCAyMDE5LTA4LTE1IGF0IDE5OjEyIC0wMzAwLCBBbnRvbmlvIFRlaXhlaXJhIHdyb3Rl
Og0KPiBIZWxsby4NCj4gDQo+IEkndmUgYmVlbiBoYXZpbmcgdHJvdWJsZSB3aXRoIGxvYWRpbmcg
aW5pdHJhbWZzIG9uIGJvb3Qgd2hlbiB0aGUgDQo+IGluaXRyYW1mcyBpcyBidW5kbGVkIHdpdGgg
dGhlIGtlcm5lbCBpbWFnZS4NCj4gSSd2ZSBiZWVuIHVzaW5nIHRoZSBmb2xsb3dpbmcgb3B0aW9u
cyBpbiBsb2NhbC5jb25mOg0KPiBJTklUUkFNRlNfSU1BR0UgPSAiY29yZS1pbWFnZS1taW5pbWFs
LWluaXRyYW1mcyINCj4gSU5JVFJBTUZTX0lNQUdFX0JVTkRMRSA9ICIxIg0KPiANCj4gSSdtIHVz
aW5nIHRoZSBsaW51eC1pbnRlbCBrZXJuZWwgZnJvbSB0aGUgbWV0YS1pbnRlbCBsYXllciwgaG93
ZXZlciwgDQo+IHdoZW4gYm9vdGluZywgdGhlIGtlcm5lbCBzaW1wbHkgZG9lc24ndCBsb2FkIHRo
ZSBpbml0cmFtZnMuDQo+IA0KPiBJZiBJIHNldCBJTklUUkFNRlNfSU1BR0VfQlVORExFIHRvICIw
IiwgY29weSB0aGUgZ2VuZXJhdGVkIGluaXRyYW1mcyANCj4gaW1hZ2UgdG8gdGhlIGJvb3QgcGFy
dGl0aW9uLCBhbmQgdGhlbiBwb2ludCBncnViIHRvIHRoZSBleHRlcm5hbCANCj4gaW5pdHJhbWZz
LmNwaW8uZ3ogaW1hZ2UgdXNpbmcgdGhlIGluaXRyZCBvcHRpb24gaW4gdGhlIGJvb3QgZW50cnkg
DQo+IGNvbmZpZywgdGhlIGtlcm5lbCBsb2FkcyBpdCBmaW5lIGFuZCBldmVyeXRoaW5nIHdvcmtz
Lg0KDQpXaGljaCBicmFuY2ggYXJlIHlvdSB1c2luZz8gQ2FuIHlvdSB0cnkgdGhlIGxhdGVzdCBt
YXN0ZXIgd2l0aCB3aWM/DQpUaGVyZSB3YXMgYSBmaXggdG8gd2ljIHRvIGFsbG93IGNvcHlpbmcg
dGhlIGtlcm5lbCBpbWFnZSB3aXRoIGJ1bmRsZWQNCmluaXRyYW1mcyB0byBib290IHBhcnRpdGlv
biBpbnN0ZWFkIG9mIHRoZSBvbmUgd2l0aG91dCB3aGVuDQpJTklUUkFNRlNfSU1BR0VfQlVORExF
IGlzIDEuDQoNClRoYW5rcywNCg0KQW51ag0K

