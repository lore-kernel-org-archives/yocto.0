Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web11.7054.1612971319102376497
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Feb 2021 07:35:19 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: T3T9xYppLglJxHHzMfAB5LWaYTkjkcbC3JedtMGHgOlftowPEFiBuB+Ro52lEAAAgmXE6OM//u
 qrg0igTJmk2w==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="266933046"
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; 
   d="scan'208";a="266933046"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Feb 2021 07:35:18 -0800
IronPort-SDR: LNzgi4uEPLRamtdUlSnxuSk+RUSZz9MjVImG2S5aMldDD5s452hyKSNdDbry9sW8FY2YwAvLDs
 OfNqCk2eaDSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; 
   d="scan'208";a="359600375"
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143])
  by orsmga003.jf.intel.com with ESMTP; 10 Feb 2021 07:35:17 -0800
Received: from pgsmsx601.gar.corp.intel.com (10.108.199.136) by
 kmsmsx603.gar.corp.intel.com (172.21.219.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 23:35:16 +0800
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136]) by
 pgsmsx601.gar.corp.intel.com ([10.108.199.136]) with mapi id 15.01.2106.002;
 Wed, 10 Feb 2021 23:35:16 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel "yocto-check-layer"
Thread-Topic: [yocto] #yocto #kernel "yocto-check-layer"
Thread-Index: Adb/sdxXMPr95eIOQseZ1TN4BkqMO///mtKA
Date: Wed, 10 Feb 2021 15:35:16 +0000
Message-ID: <220d0d7cb6d00c2b105a71ea9402575e42e54cb8.camel@intel.com>
References: <MADEUP.1662676ABE100B46.25203@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1662676ABE100B46.25203@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <8C71F144515E0541A9B6F77E49C21C95@intel.com>
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDIxLTAyLTEwIGF0IDEzOjU1ICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMp
IHZpYQ0KbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyB3cm90ZToNCj4gwqANCj4gTWIgYnVpbGQgd2Fz
IHNldHVwIGFuZCBkb25lIHVuZGVyIG9uZSBsYXllciwgd2l0aCDigJxkaXN0cm/igJ0gYW5kIOKA
nGJzcOKAnA0KPiBhdCB0aGUgc2FtZSBsYXllciwgSSB3YW50ZWQgdG8gc3BsaXQgdGhlbSB1cCBp
bnRvIHNlcGFyYXRlIGxheWVycw0KPiBpbm9yZGVyIHRvIGJldHRlciBjb25mb3JtIHRvIHRoZSBZ
b2N0byBzdGFuZGFyZOKApi4gKE5vdGUgbXkga2VybmVsDQo+IGJ1aWxkcyBhbmQgcnVucyBjb3Jy
ZWN0bHkgd2hlbiBzcGxpdCBvciBub3Qgc3BsaXQpDQo+IMKgDQo+IFdoZW4gbm90IHNwbGl0IOKA
nFlvY3RvLWNoZWNrLWxheWVy4oCdIGNhbGxzIG1lIG91dCBmb3IgaGF2aW5nIOKAnGRpc3Ryb+KA
nQ0KPiBhbmQg4oCcYnNw4oCdIGluIHNhbWUgbGF5ZXIsIHdoZW4gSSBzcGxpdCB0aGVtIEkgYW0g
c2VlaW5nIHRoZSBmb2xsb3dpbmcNCj4gZm9yIGVhY2ggbmV3IGxheWVyOg0KPiDCoA0KPiBDYW4g
c29tZW9uZSBleHBsYWluIHRoZSBlcnJvcnMgdGhlIHNjcmlwdCBpcyByZXBvcnRpbmcgYW5kIGhv
dyB0bw0KPiByZXNvbHZlICh0aGVzZSBhcmUgbm90IHNlZW4gYnVpbGQgdGhlIHNwbGl0IG9yIG5v
bi1zcGxpdCBpbWFnZXMpID8NCj4gwqANCj4gMDg6NDMgc21vbnNlZXNAeWl4NDkwMDMxDQo+IC9k
aXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtzcGFjZV8zL21ldGEtYmFlL21ldGEtDQo+
IGxpbXdzL2J1aWxkcy9zYmNiLWRlZmF1bHQ+eW9jdG8tY2hlY2stbGF5ZXINCj4gL2Rpc2swL3Nj
cmF0Y2gvc21vbnNlZXMveW9jdG8vd29ya3NwYWNlXzMvcG9reS8uLi9tZXRhLWJhZS9tZXRhLQ0K
PiBsaW13cy9tZXRhLWludGVsL21ldGEtaW50ZWwtYnNwDQo+IElORk86IERldGVjdGVkIGxheWVy
czoNCj4gSU5GTzogbWV0YS1pbnRlbC1ic3A6IExheWVyVHlwZS5CU1AsDQo+IC9kaXNrMC9zY3Jh
dGNoL3Ntb25zZWVzL3lvY3RvL3dvcmtzcGFjZV8zL21ldGEtYmFlL21ldGEtbGltd3MvbWV0YS0N
Cj4gaW50ZWwvbWV0YS1pbnRlbC1ic3ANCj4gSU5GTzogDQo+IElORk86IFNldHRpbmcgdXAgZm9y
IG1ldGEtaW50ZWwtYnNwKExheWVyVHlwZS5CU1ApLA0KPiAvZGlzazAvc2NyYXRjaC9zbW9uc2Vl
cy95b2N0by93b3Jrc3BhY2VfMy9tZXRhLWJhZS9tZXRhLWxpbXdzL21ldGEtDQo+IGludGVsL21l
dGEtaW50ZWwtYnNwDQo+IElORk86IEdldHRpbmcgaW5pdGlhbCBiaXRiYWtlIHZhcmlhYmxlcyAu
Li4NCj4gSU5GTzogR2V0dGluZyBpbml0aWFsIHNpZ25hdHVyZXMgLi4uDQo+IElORk86IEdlbmVy
YXRpbmcgc2lnbmF0dXJlcyBmYWlsZWQuIFRoaXMgbWlnaHQgYmUgZHVlIHRvIHNvbWUgcGFyc2UN
Cj4gZXJyb3IgYW5kL29yIGdlbmVyYWwgbGF5ZXIgaW5jb21wYXRpYmlsaXRpZXMuDQo+IENvbW1h
bmQ6IEJCX0VOVl9FWFRSQVdISVRFPSIkQkJfRU5WX0VYVFJBV0hJVEUgQkJfU0lHTkFUVVJFX0hB
TkRMRVIiDQo+IEJCX1NJR05BVFVSRV9IQU5ETEVSPSJPRUJhc2ljSGFzaCIgYml0YmFrZSAtUyBu
b25lIHdvcmxkDQo+IE91dHB1dDoNCj4gUGFyc2luZyByZWNpcGVzLi4uZG9uZS4NCj4gUGFyc2lu
ZyBvZiAyNDUwIC5iYiBmaWxlcyBjb21wbGV0ZSAoMCBjYWNoZWQsIDI0NTAgcGFyc2VkKS4gMzY0
NQ0KPiB0YXJnZXRzLCA5MSBza2lwcGVkLCAwIG1hc2tlZCwgMCBlcnJvcnMuDQo+IE5PVEU6IFJl
c29sdmluZyBhbnkgbWlzc2luZyB0YXNrIHF1ZXVlIGRlcGVuZGVuY2llcw0KPiBFUlJPUjogTm90
aGluZyBSUFJPVklERVMgJ3NoaW0nIChidXQNCj4gL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9j
dG8vd29ya3NwYWNlXzMvcG9reS9tZXRhL3JlY2lwZXMtDQo+IGNvcmUvcGFja2FnZWdyb3Vwcy9w
YWNrYWdlZ3JvdXAtYmFzZS5iYiBSREVQRU5EUyBvbiBvciBvdGhlcndpc2UNCj4gcmVxdWlyZXMg
aXQpDQo+IE5PVEU6IFJ1bnRpbWUgdGFyZ2V0ICdzaGltJyBpcyB1bmJ1aWxkYWJsZSwgcmVtb3Zp
bmcuLi4NCj4gTWlzc2luZyBvciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogWydz
aGltJ10NCj4gRVJST1I6IFJlcXVpcmVkIGJ1aWxkIHRhcmdldCAnbWV0YS13b3JsZC1wa2dkYXRh
JyBoYXMgbm8gYnVpbGRhYmxlDQo+IHByb3ZpZGVycy4NCj4gTWlzc2luZyBvciB1bmJ1aWxkYWJs
ZSBkZXBlbmRlbmN5IGNoYWluIHdhczogWydtZXRhLXdvcmxkLXBrZ2RhdGEnLA0KPiAncGFja2Fn
ZWdyb3VwLWJhc2UnLCAnc2hpbSddDQoNCkl0IGxvb2tzIGxpa2UgdGhpcyBwYWNrYWdlZ3JvdXAg
aGFzIGEgUkRFUEVORFMgb24gInNoaW0iIHdoaWxlIHRoZSBjb2RlDQpjYW4ndCBmaW5kIHRoZSBy
ZWNpcGUuwqBJZiB0aGF0IFJERVBFTkRTIGlzIGNvcnJlY3QsIHRoaXMgbGF5ZXIgcHJvYmFibHkN
Cm5lZWRzIHRvIGFkZCBhIExBWUVSREVQRU5EUyBvbiBhIGxheWVyIHRoYXQgaGFzIHRoaXMgcmVj
aXBlIGluDQpsYXllci5jb25mLg0KDQoNClRoYW5rcywNCg0KQW51ag0K
