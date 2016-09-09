Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59176E00A84; Fri,  9 Sep 2016 15:02:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28582E00A4B
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 15:02:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 09 Sep 2016 15:02:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,307,1470726000"; d="scan'208";a="1053802752"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga002.fm.intel.com with ESMTP; 09 Sep 2016 15:02:47 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Fri, 9 Sep 2016 15:02:45 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.239]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.232]) with mapi id
	14.03.0248.002; Fri, 9 Sep 2016 15:02:44 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-autobuilder][PATCH] /bin/checkvnc
Thread-Index: AQHSCtcxDFWBjJMQIkq3g4nO66oerqBxthiA
Date: Fri, 9 Sep 2016 22:02:44 +0000
Message-ID: <D3F87F59.110BC%tracy.graydon@intel.com>
References: <1473452127-32362-1-git-send-email-tracy.graydon@intel.com>
In-Reply-To: <1473452127-32362-1-git-send-email-tracy.graydon@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.7.160722
x-originating-ip: [10.254.62.88]
MIME-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] /bin/checkvnc
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
X-List-Received-Date: Fri, 09 Sep 2016 22:02:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <102C5E68BB15EC4ABC99E1909B4E1FB5@intel.com>
Content-Transfer-Encoding: base64

T24gc2Vjb25kIHRob3VnaHTigKYgRm9yZ2V0IHRoaXMgb25lLiBJIHdpbGwgc3VibWl0IGEgbmV3
IHBhdGNoIHRoYXQNCnVuLWJhc2hpZmllcyBpdC4gVGhhdCB3b3VsZCBiZSB0aGUg4oCccmlnaHTi
gJ0gdGhpbmcgdG8gZG8uDQoNCi10DQoNCk9uIDA5LzA5LzE2LCAxOjE1IFBNLCAieW9jdG8tYm91
bmNlc0B5b2N0b3Byb2plY3Qub3JnIG9uIGJlaGFsZiBvZg0KR3JheWRvbiwgVHJhY3kiIDx5b2N0
by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgb24gYmVoYWxmIG9mDQp0cmFjeS5ncmF5ZG9uQGlu
dGVsLmNvbT4gd3JvdGU6DQoNCj5TY3JpcHQgd2FzIHVzaW5nIC9iaW4vc2ggYW5kIGNhdXNpbmcg
YW4gZXJyb3IgaW4gbmlnaHRseS1vZS1zZWxmdGVzdA0KPmJ1aWxkOg0KPi9ob21lL3Bva3lidWls
ZC95b2N0by1hdXRvYnVpbGRlci9iaW4vY2hlY2t2bmM6IDY6DQo+L2hvbWUvcG9reWJ1aWxkL3lv
Y3RvLWF1dG9idWlsZGVyL2Jpbi9jaGVja3ZuYzogW1s6IG5vdCBmb3VuZA0KPg0KPkNoYW5naW5n
IHNjcmlwdCB0byB1c2UgL2Jpbi9iYXNoIGluc3RlYWQgZml4ZXMgdGhlIGlzc3VlLg0KPg0KPlNp
Z25lZC1vZmYtYnk6IEdyYXlkb24sIFRyYWN5IDx0cmFjeS5ncmF5ZG9uQGludGVsLmNvbT4NCj4t
LS0NCj4gYmluL2NoZWNrdm5jIHwgMiArLQ0KPiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkNCj4NCj5kaWZmIC0tZ2l0IGEvYmluL2NoZWNrdm5jIGIvYmluL2No
ZWNrdm5jDQo+aW5kZXggNTc0YmE0OC4uMTFiMWE0MSAxMDA3NTUNCj4tLS0gYS9iaW4vY2hlY2t2
bmMNCj4rKysgYi9iaW4vY2hlY2t2bmMNCj5AQCAtMSw0ICsxLDQgQEANCj4tIyEvYmluL3NoDQo+
KyMhL2Jpbi9iYXNoDQo+ICMNCj4gIyBjaGVjayBpZiB2bmMgc2VydmVyIGlzIHJ1bm5pbmcsIGFu
ZCBpZiBub3QsIGNsZWFudXAgYW5kIHJlc3RhcnQNCj4gIw0KPi0tIA0KPjIuNy4wDQo+DQo+LS0g
DQo+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj55b2N0
byBtYWlsaW5nIGxpc3QNCj55b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+aHR0cHM6Ly9saXN0cy55
b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo+DQoNCg0K

