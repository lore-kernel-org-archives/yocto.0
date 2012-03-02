Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E759E003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 15:34:36 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2012 15:34:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="132646271"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2012 15:34:35 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 2 Mar 2012 15:34:34 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.90]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.137]) with mapi id
	14.01.0355.002; Fri, 2 Mar 2012 15:34:34 -0800
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Joshua Immanuel <josh@hipro.co.in>
Thread-Topic: [yocto] do_qa_cofigure error message: host include and/or
	library paths while determining system capabilities
Thread-Index: AQHM+M0Fx6dxD0CJ/k+aAhXWBJGNcg==
Date: Fri, 2 Mar 2012 23:34:33 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C4900ACE30@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C4900AC948@ORSMSX103.amr.corp.intel.com>
	<1330660346.2804.5.camel@babel.joshhome>
In-Reply-To: <1330660346.2804.5.camel@babel.joshhome>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: do_qa_cofigure error message: host include and/or library paths while determining system capabilities
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
X-List-Received-Date: Fri, 02 Mar 2012 23:34:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSm9zaHVhLA0KDQpUaGUgZXJyb3IgbWVzc2FnZSBob3dldmVyIGRvZXMgbm90IHNlZW0gdG8g
cHJpbnQgdGhlIGNvcnJlY3QgcHJvYmxlbWF0aWMgcGF0aC4uDQpidXQgSSB3YXMgYWJsZSB0byBm
aW5kIHRoZSBwcm9ibGVtIHVzaW5nIHlvdXIgdGlwcy4NCg0KVGhhbmtzICENCg0KUmFodWwNCg0K
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEpvc2h1YSBJbW1hbnVlbCBbbWFpbHRv
Ompvc2hAaGlwcm8uY28uaW5dIA0KU2VudDogVGh1cnNkYXksIE1hcmNoIDAxLCAyMDEyIDc6NTIg
UE0NClRvOiBTYXhlbmEsIFJhaHVsDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgSGFydCwg
RGFycmVuDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBkb19xYV9jb2ZpZ3VyZSBlcnJvciBtZXNzYWdl
OiBob3N0IGluY2x1ZGUgYW5kL29yIGxpYnJhcnkgcGF0aHMgd2hpbGUgZGV0ZXJtaW5pbmcgc3lz
dGVtIGNhcGFiaWxpdGllcw0KDQpIZWxsbyBSYWh1bCwNCg0KT24gRnJpLCAyMDEyLTAzLTAyIGF0
IDAyOjAwICswMDAwLCBTYXhlbmEsIFJhaHVsIHdyb3RlOg0KPiBDYW4gc29tZW9uZSBleHBsYWlu
IHRoZSBtZWFuaW5nIG9mIHRoZSBmb2xsb3dpbmcgZXJyb3I6IA0KPiANCj4gfCBFUlJPUjogVGhp
cyBhdXRvY29uZiBsb2cgaW5kaWNhdGVzIGVycm9ycywgaXQgbG9va2VkIGF0IGhvc3QgaW5jbHVk
ZQ0KPiBhbmQvb3IgbGlicmFyeSBwYXRocyB3aGlsZSBkZXRlcm1pbmluZyBzeXN0ZW0gY2FwYWJp
bGl0aWVzLg0KDQpUaGUgaW5zYW5lLmJiY2xhc3MgZ3JlcHMgdGhlIGNvbmZpZy5sb2cgZmlsZSBm
b3IgdGhlIHN0cmluZ3MgbGlrZSAnQ1JPU1MgQ09NUElMRSBCYWRuZXNzOicsICdpcyB1bnNhZmUg
Zm9yIGNyb3NzLWNvbXBpbGF0aW9uJyB0byBjaGVjayBmb3IgaG9zdCBjb250YW1pbmF0aW9uLiBJ
ZiBpdCBmaW5kcyBhbnksIGl0IHRocm93cyBhbiBlcnJvci4gU28sIHlvdSBjYW4gY2hlY2sgZm9y
IHlvdXJzZWxmIHRoZSBjb25maWcubG9nIGZpbGUgYW5kIGZpbmQgdGhlIGN1bHByaXQgOikNCg0K
UmVnYXJkcw0KSm9zaHVhDQotLQ0KSm9zaHVhIEltbWFudWVsDQpIaVBybyBJVCBTb2x1dGlvbnMg
UHJpdmF0ZSBMaW1pdGVkDQpodHRwOi8vaGlwcm8uY28uaW4NCg==

