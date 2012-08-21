Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF43E01304
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 14:16:39 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Aug 2012 14:16:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,804,1336374000"; d="scan'208";a="211887184"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 21 Aug 2012 14:16:25 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 21 Aug 2012 14:16:24 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.138]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.3]) with mapi id
	14.01.0355.002; Tue, 21 Aug 2012 14:16:24 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Saxena, Rahul" <rahul.saxena@intel.com>, Chris Larson
	<clarson@kergoth.com>
Thread-Topic: [yocto] ERROR: QA Issue: No GNU_HASH in the elf binary
Thread-Index: Ac1/xz1OQq0h6peoTwi2emTaPSNZ4wAO3cuAAA1mg+D//6UFgIAAcOgwgADaODCAAZzngA==
Date: Tue, 21 Aug 2012 21:16:23 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003313C00@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49003313905@ORSMSX103.amr.corp.intel.com>
	<CAMKF1soePqtwZyQTJLOi2wxi9ODf1W-JP_cKf6Kvi6wJ4GtFtg@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003313948@ORSMSX103.amr.corp.intel.com>
	<CABcZANmPJRyXSh0H7GD3Gr7Yn4GbPQYmPNLpO5vQNHGAuZ=t8w@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C49003313B6E@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49003313B6E@ORSMSX103.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 21 Aug 2012 21:16:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCByZWFycmFuZ2luZyB0aGUgcGFja2FnZSBnZW5lcmF0aW9uIG9yZGVyIHdvcmtlZC4gV2Fz
IG5vdCBhd2FyZSB0aGF0IGRlZmF1bHQgcGFja2FnZQ0KZ2VuZXJhdGlvbiBjb3VsZCBjaGFuZ2Ug
YmV0d2VlbiBwb2t5IHJlbGVhc2VzLg0KDQpSYWh1bA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KRnJvbTogU2F4ZW5hLCBSYWh1bCANClNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAyMSwgMjAx
MiAxMjo1NCBQTQ0KVG86IFNheGVuYSwgUmFodWw7IENocmlzIExhcnNvbg0KQ2M6IEtoZW0gUmFq
OyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSRTogW3lvY3RvXSBFUlJPUjogUUEg
SXNzdWU6IE5vIEdOVV9IQVNIIGluIHRoZSBlbGYgYmluYXJ5DQoNCkxvb2tzIGxpa2UgdGhlIG9y
ZGVyIG9mIHBhY2thZ2VzIChhcyBzaG93biBpbiBiaXRiYWtlLmNvbmYpIGluIFBBQ0tBR0VTIHZh
cmlhYmxlIGlzIGRpZmZlcmVudCAgaW4gMS4zX00zIGNvbXBhcmVkIHRvIERlbnplbC4NCg0KSW4g
MS4zX00zLCAke1BOfSBwYWNrYWdlIGlzIGxhc3QgKHRoYXQgaXMgY29tZXMgYWZ0ZXIgJHtQTn0t
ZGV2IHBhY2thZ2UpIC4uc28gdGhhdCBwcm9iYWJseSBleHBsYWlucyB0aGUgaXNzdWUuDQpJIHdp
bGwgZXhwbGljaXRseSBjaGFuZ2UgaXQgYW5kIHRyeS1vdXQuDQoNCkNocmlzLCB5b3Ugd2VyZSBy
aWdodCBiaXRiYWtlLmNvbmYgd2FzIHRoZSBwbGFjZSB0byBsb29rIGF0IDopDQoNClJhaHVsDQoN
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFNheGVuYSwgUmFodWwNClNlbnQ6
IFR1ZXNkYXksIEF1Z3VzdCAyMSwgMjAxMiAxMjoyNSBQTQ0KVG86ICdDaHJpcyBMYXJzb24nDQpD
YzogS2hlbSBSYWo7IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJFOiBbeW9jdG9d
IEVSUk9SOiBRQSBJc3N1ZTogTm8gR05VX0hBU0ggaW4gdGhlIGVsZiBiaW5hcnkNCg0Kb2UtY29y
ZS9tZXRhL2NvbmYvYml0YmFrZS5jb25mIHNwZWNpZmllcyB0aGUgZGVmYXVsdCBwYWNrYWdlIHNl
dHRpbmdzLg0KSG93ZXZlciB0aGUgcHJvYmxlbSBJIHNlZW0gdG8gYmUgc2VlaW5nIGlzIHRoYXQg
bXkgcmVjaXBlIGlzIG5vdCBhYmxlIHRvIG92ZXJyaWRlIHRoZSBkZWZhdWx0Lg0KDQpIb3dldmVy
IGxldCBtZSBrbm93IGlmIEkgc2hvdWxkIHN0aWxsIGJlIGxvb2tpbmcgYXQgdGhhdCBmaWxlLi4N
Cg0KUmFodWwNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IGtlcmdvdGhAZ21h
aWwuY29tIFttYWlsdG86a2VyZ290aEBnbWFpbC5jb21dIE9uIEJlaGFsZiBPZiBDaHJpcyBMYXJz
b24NClNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAyMSwgMjAxMiAxMjowNyBQTQ0KVG86IFNheGVuYSwg
UmFodWwNCkNjOiBLaGVtIFJhajsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6
IFt5b2N0b10gRVJST1I6IFFBIElzc3VlOiBObyBHTlVfSEFTSCBpbiB0aGUgZWxmIGJpbmFyeQ0K
DQpPbiBUdWUsIEF1ZyAyMSwgMjAxMiBhdCAxMjowNSBQTSwgU2F4ZW5hLCBSYWh1bCA8cmFodWwu
c2F4ZW5hQGludGVsLmNvbT4gd3JvdGU6DQo+IFlvdSBhcmUgcmlnaHQsIHRoZXNlIGFyZSByZWd1
bGFyIGZpbGVzIGFuZCBub3Qgc3ltbGlua3MgYW5kIGFyZSBlbmRpbmcgDQo+IHVwIGluIHVzci9s
aWIgaW4gcGFja2FnZW5hbWUtZGV2IHBhY2thZ2UgSG93ZXZlciBJIHdhbnQgdGhlbSB0byBiZSBp
biB0aGUgcmVndWxhciBwYWNrYWdlLg0KPg0KPiBJIGRvIGhhdmUgdGhlIGZvbGxvd2luZyBzdGF0
ZW1lbnQgaW4gbXkgcmVjaXBlOg0KPg0KPiBGSUxFU18ke1BOfSArPSAiJHtsaWJkaXJ9L2xpYiou
c28iDQo+DQo+IGFuZCBub3RoaW5nIGluIG15IHJlY2lwZSBoYXMgc3RhdGVtZW50cyBzdWNoIGFz
IEZJTEVTXyR7UE4pLWRldiA9IC4uLg0KDQoNClJlYWQgb2UtY29yZS9tZXRhL2NvbmYvYml0YmFr
ZS5jb25mLg0KDQotLQ0KQ2hyaXN0b3BoZXIgTGFyc29uDQo=

