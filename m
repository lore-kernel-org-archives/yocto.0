Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D49E9E00718
	for <yocto@yoctoproject.org>; Fri,  7 Sep 2012 10:32:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Sep 2012 10:32:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,387,1344236400"; d="scan'208";a="190130041"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 07 Sep 2012 10:32:49 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 7 Sep 2012 10:32:48 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.204]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.178]) with mapi id
	14.01.0355.002; Fri, 7 Sep 2012 10:32:47 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] [PATCH 1/1] emgd-driver-bin: Fix package naming issue
Thread-Index: AQHNjJT/5KcWtL3eJE2M4XI1iteyiZd/Eq+AgAAQpMA=
Date: Fri, 7 Sep 2012 17:32:46 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C0CCBB18F@ORSMSX106.amr.corp.intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
	<30372536d05d69007337ef870f3c960b5647b63d.1346893078.git.nitin.a.kamble@intel.com>
	<CAJTo0LaQsen6Swn7kHnjM=F7dTerKZ-btPr09z=82kDJz_ORww@mail.gmail.com>
In-Reply-To: <CAJTo0LaQsen6Swn7kHnjM=F7dTerKZ-btPr09z=82kDJz_ORww@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCH 1/1] emgd-driver-bin: Fix package naming issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Sep 2012 17:32:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQnVydG9uLCBSb3NzIFtt
YWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPiBTZW50OiBGcmlkYXksIFNlcHRlbWJlciAw
NywgMjAxMiAyOjI5IEFNDQo+IFRvOiBLYW1ibGUsIE5pdGluIEENCj4gQ2M6IFphbnVzc2ksIFRv
bTsgSGFydCwgRGFycmVuOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBb
eW9jdG9dIFtQQVRDSCAxLzFdIGVtZ2QtZHJpdmVyLWJpbjogRml4IHBhY2thZ2UgbmFtaW5nIGlz
c3VlDQo+IA0KPiBPbiA2IFNlcHRlbWJlciAyMDEyIDAxOjU5LCAgPG5pdGluLmEua2FtYmxlQGlu
dGVsLmNvbT4gd3JvdGU6DQo+ID4gZW1nZC1kcml2ZXItYmluIGlzIGdlbmVyYXRpbmcgcnBtIHBh
Y2thZ2Ugd2l0aCBuYW1lIGxpYmVnbDEuDQo+ID4gVGhpcyBuYW1lIGNsYXNoZXMgd2l0aCBhIHBh
Y2thZ2Ugb2YgbWVzYS1kcmkgcmVjaXBlLiBUaGlzIG5hbWUgY2xhc2gNCj4gPiBibG9ja3MgaW5z
dGFsbGF0aW9uIG9mIGVtZ2QgdXNlciBsYW5kIGJpbmFyaWVzIGluIHRoZSBpbWFnZS4gQW5kIGR1
ZQ0KPiA+IHRvIG1pc3NpbmcgZW1nZCB1c2VyIGxhbmQgY29tcG9uZW50cyBYIGZhaWxzIHN0YXJ0
IG9uIEJTUHMgbGlrZQ0KPiA+IGNyb3duYmF5Lg0KPiA+DQo+ID4gRml4IHRoaXMgcHJvYmxlbSBi
eSBzcGVjaWZ5aW5nIHBhY2thZ2UgbmFtZXMgaW4gdGhlIHJlY2lwZSB3aXRoIHRoZQ0KPiA+IFBL
R18gdmFycy4NCj4gDQo+IENvdWxkIHdlIG5hbWUgdGhlIHBhY2thZ2VzIHdpdGggYSAtZW1nZCBz
dWZmaXgsIHN1Y2ggYXMgbGliZWdsLWVtZ2Q/DQo+IEknbSBnb2luZyB0byBmaXggbWVzYSB0byBu
YW1lIGl0J3MgcGFja2FnZXMgbGliZWdsLW1lc2EgYW5kIHNvIG9uLCBzbw0KPiBjb25zaXN0ZW5j
eSB3b3VsZCBtYWtlIGV2ZXJ5dGhpbmcgYSBsb3QgZWFzaWVyIChzZWUgbXkgbWFpbCB0byBvZS1j
b3JlDQo+IHllc3RlcmRheSBhYm91dCBHTCkuDQo+IA0KPiBSb3NzDQoNCg0KVGhlIHBhY2thZ2Ug
Z2VuZXJhdGVkIGhhcyBsb3Qgb2Ygb3RoZXIgbGlicmFyaWVzLiBBbmQgSU1PIHRoZSBtb3N0IGlt
cG9ydGFudCBpbiB0aGF0IGlzIGVtZ2QtZHJ2LiBMaWJlZ2wgaXMgb25lIG9mIHRoZSBtYW55IHN1
cHBvcnRpbmcgbGlicmFyaWVzIGluIHRoZSBwYWNrYWdlLiBTbyB0byBtZSByZW5hbWluZyBwYWNr
YWdlIHRvIGVtZ2QtZHJ2IG1ha2VzIG1vcmUgc2Vuc2UgdGhhbiBleHRlbmRpbmcgdGhlIG5hbWUg
dG8gbGliZWdsLWVtZ2QuDQoNCk5pdGluDQoNCg==

