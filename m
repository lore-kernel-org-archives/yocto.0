Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by mx.groups.io with SMTP id smtpd.web09.14109.1608656101877790150
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Dec 2020 08:55:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.93, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: QEDlxtJx2JPfap6nUxEiFzicNPweSU0/7MQ5LKoldayTgwmyYRmNCnOuKgARrGZ+FwwztY0V64
 kbAyIZ5EV1iQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9843"; a="172384310"
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; 
   d="scan'208";a="172384310"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Dec 2020 08:55:01 -0800
IronPort-SDR: LfysNGt9dTprK0qwuYMTuqlg2C39AcBXzmfV/NdLH+AM8+H3FhC2ZPDBP6UNAYHPLIY2l2blkU
 f1rRzj1osL9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,439,1599548400"; 
   d="scan'208";a="560946091"
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137])
  by orsmga005.jf.intel.com with ESMTP; 22 Dec 2020 08:54:59 -0800
Received: from pgsmsx601.gar.corp.intel.com (10.108.199.136) by
 pgsmsx602.gar.corp.intel.com (10.108.199.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Dec 2020 00:54:58 +0800
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136]) by
 pgsmsx601.gar.corp.intel.com ([10.108.199.136]) with mapi id 15.01.1713.004;
 Wed, 23 Dec 2020 00:54:58 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>,
	"peter.kjellerstedt@axis.com" <peter.kjellerstedt@axis.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1) is Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1)
 is Released
Thread-Index: AdbTG4rDkRnyxgcZTbap8GFLmyVcLAAGNySAAULuA4A=
Date: Tue, 22 Dec 2020 16:54:58 +0000
Message-ID: <b6efb453e252ef83fbad6c465ac834156d7f52fd.camel@intel.com>
References: <BYAPR11MB279089CF30BA5D2240349ECE88C60@BYAPR11MB2790.namprd11.prod.outlook.com>
	 <fcdceff7753a4f52911b8b3c61a35d76@XBOX03.axis.com>
In-Reply-To: <fcdceff7753a4f52911b8b3c61a35d76@XBOX03.axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <30531E3C51CA5141A15F7D410F67AA61@intel.com>
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDIwLTEyLTE1IGF0IDIzOjA3ICswMDAwLCBQZXRlciBLamVsbGVyc3RlZHQgd3Jv
dGU6DQo+ID4gUmVwb3NpdG9yeSBOYW1lOiBtZXRhLWdwbHYyDQo+ID4gUmVwb3NpdG9yeSBMb2Nh
dGlvbjogaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9naXQvbWV0YS1ncGx2Mg0KPiA+IEJy
YW5jaDogZ2F0ZXNnYXJ0aA0KPiA+IFRhZzogeW9jdG8tMy4yLjENCj4gDQo+IFRoZSB5b2N0by0z
LjIuMSBhbmQgZ2F0ZXNnYXJ0aC0yNC4wLjEgdGFncyBmb3IgbWV0YS1ncGx2MiBoYXZlIGJlZW4N
Cj4gaW5jb3JyZWN0bHkgDQo+IHNldCBvbiB0aGUgZHVuZmVsbCBicmFuY2ggcmF0aGVyIHRoYW4g
dGhlIGdhdGVzZ2FydGggYnJhbmNoLiBUaGUgR2l0DQo+IHJldmlzaW9uIA0KPiBhbmQgdGFyIGJh
bGxzIGJlbG93IGFyZSBjb3JyZWN0IHRob3VnaC4gU2luY2UgdGhlIHRhZ3MgYXJlIHNpZ25lZCBJ
DQo+IGRvIG5vdyB3YW50IA0KPiB0byBtb2RpZnkgdGhlbSBteXNlbGYsIHNvIHBsZWFzZSBjb3Jy
ZWN0IHRoZW0gYXMgc29vbiBhcyBwb3NzaWJsZS4NCg0KVmluZWVsYSBpc24ndCB3b3JraW5nIHRo
aXMgd2VlayBJIHRoaW5rIHNvIHNoZSBtaWdodCBub3QgYmUgYWJsZSB0bw0KaGVscCBidXQgaXQg
bG9va3MgbGlrZSB0aGUgY29tbWl0IHRhZ2dlZCBpcyBvbiBnYXRlc2dhcnRoIC4uLg0KDQpodHRw
czovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NsZWFuL2NnaXQuY2dpL21ldGEtZ3BsdjIvbG9nLz9o
PWdhdGVzZ2FydGgNCg0KJCBnaXQgYnJhbmNoIC1hIC0tY29udGFpbnMgeW9jdG8tMy4yLjENCiog
bWFzdGVyDQogIHJlbW90ZXMvb3JpZ2luL0hFQUQgLT4gb3JpZ2luL21hc3Rlcg0KICByZW1vdGVz
L29yaWdpbi9nYXRlc2dhcnRoDQogIHJlbW90ZXMvb3JpZ2luL21hc3Rlcg0KICByZW1vdGVzL29y
aWdpbi9tYXN0ZXItbmV4dA0KDQpUaGFua3MsDQoNCkFudWoNCg==
