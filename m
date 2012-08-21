Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F035E00346
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 12:25:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Aug 2012 12:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,803,1336374000"; d="scan'208";a="207739408"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2012 12:25:31 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.40) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Aug 2012 12:25:31 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.138]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.94]) with mapi id
	14.01.0355.002; Tue, 21 Aug 2012 12:25:31 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Chris Larson <clarson@kergoth.com>
Thread-Topic: [yocto] ERROR: QA Issue: No GNU_HASH in the elf binary
Thread-Index: Ac1/xz1OQq0h6peoTwi2emTaPSNZ4wAO3cuAAA1mg+D//6UFgIAAcOgw
Date: Tue, 21 Aug 2012 19:25:31 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003313B51@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003313905@ORSMSX103.amr.corp.intel.com>
	<CAMKF1soePqtwZyQTJLOi2wxi9ODf1W-JP_cKf6Kvi6wJ4GtFtg@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003313948@ORSMSX103.amr.corp.intel.com>
	<CABcZANmPJRyXSh0H7GD3Gr7Yn4GbPQYmPNLpO5vQNHGAuZ=t8w@mail.gmail.com>
In-Reply-To: <CABcZANmPJRyXSh0H7GD3Gr7Yn4GbPQYmPNLpO5vQNHGAuZ=t8w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ERROR: QA Issue: No GNU_HASH in the elf binary
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
X-List-Received-Date: Tue, 21 Aug 2012 19:25:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

b2UtY29yZS9tZXRhL2NvbmYvYml0YmFrZS5jb25mIHNwZWNpZmllcyB0aGUgZGVmYXVsdCBwYWNr
YWdlIHNldHRpbmdzLg0KSG93ZXZlciB0aGUgcHJvYmxlbSBJIHNlZW0gdG8gYmUgc2VlaW5nIGlz
IHRoYXQgbXkgcmVjaXBlIGlzIG5vdCBhYmxlIHRvIG92ZXJyaWRlIHRoZSBkZWZhdWx0Lg0KDQpI
b3dldmVyIGxldCBtZSBrbm93IGlmIEkgc2hvdWxkIHN0aWxsIGJlIGxvb2tpbmcgYXQgdGhhdCBm
aWxlLi4NCg0KUmFodWwNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IGtlcmdv
dGhAZ21haWwuY29tIFttYWlsdG86a2VyZ290aEBnbWFpbC5jb21dIE9uIEJlaGFsZiBPZiBDaHJp
cyBMYXJzb24NClNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAyMSwgMjAxMiAxMjowNyBQTQ0KVG86IFNh
eGVuYSwgUmFodWwNCkNjOiBLaGVtIFJhajsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVj
dDogUmU6IFt5b2N0b10gRVJST1I6IFFBIElzc3VlOiBObyBHTlVfSEFTSCBpbiB0aGUgZWxmIGJp
bmFyeQ0KDQpPbiBUdWUsIEF1ZyAyMSwgMjAxMiBhdCAxMjowNSBQTSwgU2F4ZW5hLCBSYWh1bCA8
cmFodWwuc2F4ZW5hQGludGVsLmNvbT4gd3JvdGU6DQo+IFlvdSBhcmUgcmlnaHQsIHRoZXNlIGFy
ZSByZWd1bGFyIGZpbGVzIGFuZCBub3Qgc3ltbGlua3MgYW5kIGFyZSBlbmRpbmcgDQo+IHVwIGlu
IHVzci9saWIgaW4gcGFja2FnZW5hbWUtZGV2IHBhY2thZ2UgSG93ZXZlciBJIHdhbnQgdGhlbSB0
byBiZSBpbiB0aGUgcmVndWxhciBwYWNrYWdlLg0KPg0KPiBJIGRvIGhhdmUgdGhlIGZvbGxvd2lu
ZyBzdGF0ZW1lbnQgaW4gbXkgcmVjaXBlOg0KPg0KPiBGSUxFU18ke1BOfSArPSAiJHtsaWJkaXJ9
L2xpYiouc28iDQo+DQo+IGFuZCBub3RoaW5nIGluIG15IHJlY2lwZSBoYXMgc3RhdGVtZW50cyBz
dWNoIGFzIEZJTEVTXyR7UE4pLWRldiA9IC4uLg0KDQoNClJlYWQgb2UtY29yZS9tZXRhL2NvbmYv
Yml0YmFrZS5jb25mLg0KDQotLQ0KQ2hyaXN0b3BoZXIgTGFyc29uDQo=

