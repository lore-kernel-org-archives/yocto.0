Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80CE3E00C18; Tue, 24 May 2016 16:30:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D8EAE00756
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 16:30:07 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP; 24 May 2016 16:30:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,360,1459839600"; d="scan'208";a="109872892"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga004.fm.intel.com with ESMTP; 24 May 2016 16:30:06 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.2.84]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.161]) with mapi id
	14.03.0248.002; Tue, 24 May 2016 16:30:06 -0700
From: "Randle, William C" <william.c.randle@intel.com>
To: "Graydon, Tracy" <tracy.graydon@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto-autobuilder][PATCH] bin/release_scripts/release.py
Thread-Index: AQHRthD0YYx0ZU6WwEOzNprDmIW81Z/JMZ2A
Date: Tue, 24 May 2016 23:30:05 +0000
Message-ID: <1464132605.2920.54.camel@intel.com>
References: <1464131193-25397-1-git-send-email-tracy.graydon@intel.com>
In-Reply-To: <1464131193-25397-1-git-send-email-tracy.graydon@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.199.54]
MIME-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] bin/release_scripts/release.py
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
X-List-Received-Date: Tue, 24 May 2016 23:30:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <784E6CCCF2D0424C837FE805EF4C7FD5@intel.com>
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDE2LTA1LTI0IGF0IDE2OjA2IC0wNzAwLCBHcmF5ZG9uLCBUcmFjeSB3cm90ZToN
Cj4gR2V0IHJpZCBvZiB0aGUgZXh0cmFuZW91cyBETF9CQVNFIGxpbmUuIEl0J3Mgbm90IHVzZWQg
YW5kIHNob3VsZCBoYXZlDQo+IGJlZW4gcmVtb3ZlZCB3aGVuIEkgZml4ZWQgdGhlIGVjbGlwc2Ut
cGx1Z2luIHJlbGVhc2UgcGF0aC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEdyYXlkb24sIFRyYWN5
IDx0cmFjeS5ncmF5ZG9uQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgYmluL3JlbGVhc2Vfc2NyaXB0
cy9yZWxlYXNlLnB5IHwgMSAtDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9iaW4vcmVsZWFzZV9zY3JpcHRzL3JlbGVhc2UucHkgYi9iaW4vcmVs
ZWFzZV9zY3JpcHRzL3JlbGVhc2UucHkNCj4gaW5kZXggMmI0ZDIxYy4uODlmNjhiZSAxMDA3NTUN
Cj4gLS0tIGEvYmluL3JlbGVhc2Vfc2NyaXB0cy9yZWxlYXNlLnB5DQo+ICsrKyBiL2Jpbi9yZWxl
YXNlX3NjcmlwdHMvcmVsZWFzZS5weQ0KPiBAQCAtMzUxLDcgKzM1MSw2IEBAIGlmIF9fbmFtZV9f
ID09ICdfX21haW5fXyc6DQo+IMKgwqDCoMKgwqBWSE9TVFMgPSAiL3Nydi93d3cvdmhvc3RzIg0K
PiDCoMKgwqDCoMKgQUJfQkFTRSA9IG9zLnBhdGguam9pbihWSE9TVFMsDQo+ICJhdXRvYnVpbGRl
ci55b2N0b3Byb2plY3Qub3JnL3B1Yi9yZWxlYXNlcyIpDQo+IMKgwqDCoMKgwqBETF9ESVIgPSBv
cy5wYXRoLmpvaW4oVkhPU1RTLCAiZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMi
KQ0KPiAtwqDCoMKgwqBETF9CQVNFID0gb3MucGF0aC5qb2luKERMX0RJUiwgIi9yZWxlYXNlcy95
b2N0byIpDQo+IMKgwqDCoMKgwqBBRFRfQkFTRSA9IG9zLnBhdGguam9pbihWSE9TVFMsICJhZHRy
ZXBvLnlvY3RvcHJvamVjdC5vcmciKQ0KPiDCoA0KPiDCoMKgwqDCoMKgIyBMaXN0IG9mIHRoZSBk
aXJlY3RvcmllcyB3ZSBkZWxldGUgZnJvbSBhbGwgcmVsZWFzZXMNCg0KU2luY2UgeW91ciBwcmV2
aW91cyB2ZXJzaW9uIG9mIHRoaXMgcGF0Y2ggaGFzIG5vdCB5ZXQgYmVlbiBhcHBsaWVkIHRvIG1h
c3RlciwgSQ0Kd291bGQgdGhpbmsgaXQgd291bGQgYmUgYmV0dGVyIHRvIGluY29ycG9yYXRlIHRo
aXMgYXMgcGFydCBvZiBhIFYyIG9mIHlvdXINCnByZXZpb3VzIHBhdGNoLCByYXRoZXIgdGhhbiBh
IG5ldyBwYXRjaCBvbiB0b3Agb2YgYW4gYXMgeWV0IHVuYXBwbGllZCBwYXRjaC4NCg0KwqAgwqAg
LUJpbGw=

