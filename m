Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87271E008C8; Mon, 16 Sep 2019 20:54:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 471F2E007AA
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 20:54:46 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Sep 2019 20:54:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,515,1559545200"; d="scan'208";a="361729976"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by orsmga005.jf.intel.com with ESMTP; 16 Sep 2019 20:54:44 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.57]) by
	KMSMSX153.gar.corp.intel.com ([169.254.5.31]) with mapi id
	14.03.0439.000; Tue, 17 Sep 2019 11:54:32 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "zhe.he@windriver.com"
	<zhe.he@windriver.com>
Thread-Topic: [yocto] [meta-dpdk][PATCH] dpdk: Skip build if necessary
	kernel options is not included
Thread-Index: AQHVbQuccJ3XwVAR9Eae5FpQOm+zkg==
Date: Tue, 17 Sep 2019 03:54:31 +0000
Message-ID: <d265b26458d0d7f1f981c3bfd3275d5843076719.camel@intel.com>
References: <1568620588-32639-1-git-send-email-zhe.he@windriver.com>
In-Reply-To: <1568620588-32639-1-git-send-email-zhe.he@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.221.16.105]
MIME-Version: 1.0
Subject: Re: [meta-dpdk][PATCH] dpdk: Skip build if necessary kernel options is not included
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
X-List-Received-Date: Tue, 17 Sep 2019 03:54:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <36EEC3E1DAF1854582CA599563FC5442@intel.com>
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDE5LTA5LTE2IGF0IDE1OjU2ICswODAwLCB6aGUuaGVAd2luZHJpdmVyLmNvbSB3
cm90ZToNCj4gRnJvbTogSGUgWmhlIDx6aGUuaGVAd2luZHJpdmVyLmNvbT4NCj4gDQo+IGRwZGsg
ZGVwZW5kcyBvbiBzb21lIGtlcm5lbCBjb25maWd1cmF0aW9uIG9wdGlvbnMgd2l0aG91dCB3aGlj
aCBpdCBpcw0KPiBub3QgYWJsZQ0KPiB0byBzdWNjZXNzZnVsbHkgYnVpbGQuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBIZSBaaGUgPHpoZS5oZUB3aW5kcml2ZXIuY29tPg0KPiAtLS0NCj4gIHJlY2lw
ZXMtZXh0ZW5kZWQvZHBkay9kcGRrLmluYyB8IDUgKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA1
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9yZWNpcGVzLWV4dGVuZGVkL2RwZGsv
ZHBkay5pbmMgYi9yZWNpcGVzLQ0KPiBleHRlbmRlZC9kcGRrL2RwZGsuaW5jDQo+IGluZGV4IDNi
OTk3ZWIuLjljOWIzOTcgMTAwNjQ0DQo+IC0tLSBhL3JlY2lwZXMtZXh0ZW5kZWQvZHBkay9kcGRr
LmluYw0KPiArKysgYi9yZWNpcGVzLWV4dGVuZGVkL2RwZGsvZHBkay5pbmMNCj4gQEAgLTEsNiAr
MSwxMSBAQA0KPiAgREVTQ1JJUFRJT04gPSAiSW50ZWwocikgRGF0YSBQbGFuZSBEZXZlbG9wbWVu
dCBLaXQiDQo+ICBIT01FUEFHRSA9ICJodHRwOi8vZHBkay5vcmciDQo+ICANCj4gK3B5dGhvbiAo
KSB7DQo+ICsgICAgaWYgbm90IGJiLnV0aWxzLmNvbnRhaW5zKCdLRVJORUxfRkVBVFVSRVMnLCAn
ZmVhdHVyZXMvaW50ZWwtDQo+IGRwZGsvaW50ZWwtZHBkay5zY2MnLCBUcnVlLCBGYWxzZSwgZCk6
DQo+ICsgICAgICAgIHJhaXNlIGJiLnBhcnNlLlNraXBQYWNrYWdlKCJkcGRrIHJlcXVpcmVzIGZl
YXR1cmVzL2ludGVsLQ0KPiBkcGRrL2ludGVsLWRwZGsuc2NjIGluIEtFUk5FTF9GRUFUVVJFUyB0
byBidWlsZCIpDQo+ICt9DQo+ICsNCg0KSSB0aGluayB0aGlzIHdvbid0IHdvcmsgZm9yIHBlb3Bs
ZSB3aG8gZG9uJ3QgdXNlIHlvY3RvLWtlcm5lbC1jYWNoZS4NCg0KVGhhbmtzLA0KDQpBbnVqDQo=

