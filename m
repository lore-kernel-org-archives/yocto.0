Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web09.4808.1609916979603252915
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jan 2021 23:09:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: uya9FJ0LguGqHMpoxyuiIcGa22LIhj4Y+Ru6IMEmcnhNlR7iQB7Zt1rCVq1fWSXNbWtlttvowp
 kNJWyb5WXwrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="173731634"
X-IronPort-AV: E=Sophos;i="5.78,479,1599548400"; 
   d="scan'208";a="173731634"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Jan 2021 23:09:38 -0800
IronPort-SDR: J9Lm1PTGqa1jfMNeeV9zdPmfLKstG+zAUBqfSUqb3TVGi7hHnBpPDWPHaT/xg/PzMi0m+lFT+g
 ksmgpEWa/b3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,479,1599548400"; 
   d="scan'208";a="398121614"
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136])
  by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2021 23:09:37 -0800
Received: from pgsmsx601.gar.corp.intel.com (10.108.199.136) by
 pgsmsx601.gar.corp.intel.com (10.108.199.136) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 6 Jan 2021 15:09:37 +0800
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136]) by
 pgsmsx601.gar.corp.intel.com ([10.108.199.136]) with mapi id 15.01.1713.004;
 Wed, 6 Jan 2021 15:09:37 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"jupiter.hce@gmail.com" <jupiter.hce@gmail.com>
Subject: Re: [yocto] How to select Linux kernel version?
Thread-Topic: [yocto] How to select Linux kernel version?
Thread-Index: AQHW4/Gk0D2ehddMQUa2nl57juTf4aoZp8gA
Date: Wed, 6 Jan 2021 07:09:37 +0000
Message-ID: <95248f335ea59edbb8fa0579e0f78d7fd24b71b1.camel@intel.com>
References: <CAA=hcWTML9Dg=yxt5TVw6Z7w35tJA3i6LouFMrVjAy5bo551KA@mail.gmail.com>
In-Reply-To: <CAA=hcWTML9Dg=yxt5TVw6Z7w35tJA3i6LouFMrVjAy5bo551KA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <0E60B12BFAC6764CA4C5FF09D9B0B178@intel.com>
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDIxLTAxLTA2IGF0IDE3OjAyICsxMTAwLCBKSCB3cm90ZToNCj4gSGksDQo+IA0K
PiBJIHJlcGxhY2VkIExpbnV4IGtlcm5lbCB2ZXJzaW9uIGZyb20gNC4xOSBieSA1LjEwIGJiIGZp
bGUsIGJ1dCBpdA0KPiBzdGlsbCBidWlsdCA0LjE5IHpJbWFnZSwgSSBhZGQgUFJFRkVSUkVEX1ZF
UlNJT05fbGludXgteW9jdG8gPQ0KPiAiNS4xMCUiDQo+IGluIGxvY2FsLmNvbmYsIGl0IHN0aWxs
IGJ1aWx0IDQuMTkgekltYWdlLiBXaGVyZSB0aGUgbGludXgga2VybmVsDQo+IHZlcnNpb24gaXMg
ZGVmaW5lZCBpbiBjb25maWd1cmUgZmlsZXM/DQo+IA0KDQpJcyB0aGUgUFJFRkVSUkVEX1BST1ZJ
REVSX3ZpcnR1YWwva2VybmVsIHNldCB0byBsaW51eC15b2N0bz8gWW91IG5lZWQNCnRvIHNldCB0
aGUgUFJFRkVSUkVEX1ZFUlNJT04gZm9yIGtlcm5lbCB0aGF0IHlvdSBhcmUgdXNpbmcgLi4uIA0K
DQpiaXRiYWtlIC1lIHZpcnR1YWwva2VybmVsIG91dHB1dCBzaG91bGQgaGVscCBzZWUgaG93IGl0
J3MgYmVpbmcgc2V0IGFuZA0Kd2hlcmUuDQoNClRoYW5rcywNCg0KQW51ag0K
