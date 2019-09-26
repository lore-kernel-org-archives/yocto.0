Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 655DFE00A00; Wed, 25 Sep 2019 21:03:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51B54E00782
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 21:03:47 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Sep 2019 21:03:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,550,1559545200"; d="scan'208";a="390458341"
Received: from kmsmsx157.gar.corp.intel.com ([172.21.138.134])
	by fmsmga006.fm.intel.com with ESMTP; 25 Sep 2019 21:03:45 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.57]) by
	kmsmsx157.gar.corp.intel.com ([169.254.5.132]) with mapi id
	14.03.0439.000; Thu, 26 Sep 2019 12:03:44 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "zhe.he@windriver.com"
	<zhe.he@windriver.com>
Thread-Topic: [yocto][meta-dpdk][PATCH] [RFC] dpdk: Remove v17
Thread-Index: AQHVcoGLhYFAtPyxVUqemyv7lV8t26c806aA
Date: Thu, 26 Sep 2019 04:03:44 +0000
Message-ID: <b1efd2c09642001342df191379bb493e2d434091.camel@intel.com>
References: <1569292846-12595-1-git-send-email-zhe.he@windriver.com>
In-Reply-To: <1569292846-12595-1-git-send-email-zhe.he@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.221.19.251]
MIME-Version: 1.0
Subject: Re: [meta-dpdk][PATCH] [RFC] dpdk: Remove v17
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
X-List-Received-Date: Thu, 26 Sep 2019 04:03:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <6259D3320E95124E96E432E2ADEC1F5A@intel.com>
Content-Transfer-Encoding: base64

SGVsbG8NCg0KT24gVHVlLCAyMDE5LTA5LTI0IGF0IDEwOjQwICswODAwLCB6aGUuaGVAd2luZHJp
dmVyLmNvbSB3cm90ZToNCj4gRnJvbTogSGUgWmhlIDx6aGUuaGVAd2luZHJpdmVyLmNvbT4NCj4g
DQo+IG9wZW52c3dpdGggdXNlZCBub3QgdG8gYmUgYWJsZSB0byB3b3JrIHdpdGggZHBkayB2MTgu
IFRoYXQncyBvbmUgb2YNCj4gdGhlIHJlYXNvbnMNCj4gd2h5IHdlIGtlZXAgdjE3LiBOb3cgdGhh
dCBvcGVudnN3aXRjaCBpbiBtZXRhLXZpcnR1bGl6YXRpb24gaGFzIGJlZW4NCj4gdXBncmFkZWQg
dG8NCj4gdjIuMTEsIG9mZmljaWFsbHkgY2xhaW1lZCBzdXBwb3J0IG9mIGRwZGsxOCwgd2UgY2Fu
IGRyb3AgZHBkayB2MTcuDQo+IA0KDQpDb3VsZCB5b3Ugc2VuZCB0aGlzIHRvIG1ldGEtaW50ZWwg
bGlzdCB0b28gc2luY2UgdGhlIFJFQURNRSBzdGlsbA0KbWVudGlvbnMgdGhhdCBsaXN0IGFzIHRo
ZSBwbGFjZSB3aGVyZSBwYXRjaGVzIHNob3VsZCBiZSBzZW50PyBKdXN0IGluDQpjYXNlIHNvbWVv
bmUgaXMgd2F0Y2hpbmcgSW50ZWwgbGlzdCBmb3IgdXBkYXRlcyAuLi4NCg0KVGhhbmtzLA0KDQpB
bnVqDQo=

