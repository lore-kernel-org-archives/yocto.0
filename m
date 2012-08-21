Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8ECDE00346
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 12:54:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by orsmga102.jf.intel.com with ESMTP; 21 Aug 2012 12:54:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,804,1336374000"; d="scan'208";a="183568116"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 21 Aug 2012 12:54:22 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Aug 2012 12:54:21 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.138]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.150]) with mapi id
	14.01.0355.002; Tue, 21 Aug 2012 12:54:21 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>, Chris Larson
	<clarson@kergoth.com>
Thread-Topic: [yocto] ERROR: QA Issue: No GNU_HASH in the elf binary
Thread-Index: Ac1/xz1OQq0h6peoTwi2emTaPSNZ4wAO3cuAAA1mg+D//6UFgIAAcOgwgADaODA=
Date: Tue, 21 Aug 2012 19:54:21 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003313B6E@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003313905@ORSMSX103.amr.corp.intel.com>
	<CAMKF1soePqtwZyQTJLOi2wxi9ODf1W-JP_cKf6Kvi6wJ4GtFtg@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003313948@ORSMSX103.amr.corp.intel.com>
	<CABcZANmPJRyXSh0H7GD3Gr7Yn4GbPQYmPNLpO5vQNHGAuZ=t8w@mail.gmail.com> 
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
X-List-Received-Date: Tue, 21 Aug 2012 19:54:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TG9va3MgbGlrZSB0aGUgb3JkZXIgb2YgcGFja2FnZXMgKGFzIHNob3duIGluIGJpdGJha2UuY29u
ZikgaW4gUEFDS0FHRVMgdmFyaWFibGUgaXMgZGlmZmVyZW50ICBpbiAxLjNfTTMgY29tcGFyZWQg
dG8gRGVuemVsLg0KDQpJbiAxLjNfTTMsICR7UE59IHBhY2thZ2UgaXMgbGFzdCAodGhhdCBpcyBj
b21lcyBhZnRlciAke1BOfS1kZXYgcGFja2FnZSkgLi5zbyB0aGF0IHByb2JhYmx5IGV4cGxhaW5z
IHRoZSBpc3N1ZS4NCkkgd2lsbCBleHBsaWNpdGx5IGNoYW5nZSBpdCBhbmQgdHJ5LW91dC4NCg0K
Q2hyaXMsIHlvdSB3ZXJlIHJpZ2h0IGJpdGJha2UuY29uZiB3YXMgdGhlIHBsYWNlIHRvIGxvb2sg
YXQgOikNCg0KUmFodWwNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogU2F4
ZW5hLCBSYWh1bCANClNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAyMSwgMjAxMiAxMjoyNSBQTQ0KVG86
ICdDaHJpcyBMYXJzb24nDQpDYzogS2hlbSBSYWo7IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1
YmplY3Q6IFJFOiBbeW9jdG9dIEVSUk9SOiBRQSBJc3N1ZTogTm8gR05VX0hBU0ggaW4gdGhlIGVs
ZiBiaW5hcnkNCg0Kb2UtY29yZS9tZXRhL2NvbmYvYml0YmFrZS5jb25mIHNwZWNpZmllcyB0aGUg
ZGVmYXVsdCBwYWNrYWdlIHNldHRpbmdzLg0KSG93ZXZlciB0aGUgcHJvYmxlbSBJIHNlZW0gdG8g
YmUgc2VlaW5nIGlzIHRoYXQgbXkgcmVjaXBlIGlzIG5vdCBhYmxlIHRvIG92ZXJyaWRlIHRoZSBk
ZWZhdWx0Lg0KDQpIb3dldmVyIGxldCBtZSBrbm93IGlmIEkgc2hvdWxkIHN0aWxsIGJlIGxvb2tp
bmcgYXQgdGhhdCBmaWxlLi4NCg0KUmFodWwNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IGtlcmdvdGhAZ21haWwuY29tIFttYWlsdG86a2VyZ290aEBnbWFpbC5jb21dIE9uIEJl
aGFsZiBPZiBDaHJpcyBMYXJzb24NClNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAyMSwgMjAxMiAxMjow
NyBQTQ0KVG86IFNheGVuYSwgUmFodWwNCkNjOiBLaGVtIFJhajsgeW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gRVJST1I6IFFBIElzc3VlOiBObyBHTlVfSEFTSCBp
biB0aGUgZWxmIGJpbmFyeQ0KDQpPbiBUdWUsIEF1ZyAyMSwgMjAxMiBhdCAxMjowNSBQTSwgU2F4
ZW5hLCBSYWh1bCA8cmFodWwuc2F4ZW5hQGludGVsLmNvbT4gd3JvdGU6DQo+IFlvdSBhcmUgcmln
aHQsIHRoZXNlIGFyZSByZWd1bGFyIGZpbGVzIGFuZCBub3Qgc3ltbGlua3MgYW5kIGFyZSBlbmRp
bmcgDQo+IHVwIGluIHVzci9saWIgaW4gcGFja2FnZW5hbWUtZGV2IHBhY2thZ2UgSG93ZXZlciBJ
IHdhbnQgdGhlbSB0byBiZSBpbiB0aGUgcmVndWxhciBwYWNrYWdlLg0KPg0KPiBJIGRvIGhhdmUg
dGhlIGZvbGxvd2luZyBzdGF0ZW1lbnQgaW4gbXkgcmVjaXBlOg0KPg0KPiBGSUxFU18ke1BOfSAr
PSAiJHtsaWJkaXJ9L2xpYiouc28iDQo+DQo+IGFuZCBub3RoaW5nIGluIG15IHJlY2lwZSBoYXMg
c3RhdGVtZW50cyBzdWNoIGFzIEZJTEVTXyR7UE4pLWRldiA9IC4uLg0KDQoNClJlYWQgb2UtY29y
ZS9tZXRhL2NvbmYvYml0YmFrZS5jb25mLg0KDQotLQ0KQ2hyaXN0b3BoZXIgTGFyc29uDQo=

