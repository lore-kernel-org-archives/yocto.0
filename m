Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web09.842.1582169704203735738
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 19:35:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: anuj.mittal@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2020 19:34:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,462,1574150400"; 
   d="scan'208";a="315600742"
Received: from kmsmsx151.gar.corp.intel.com ([172.21.73.86])
  by orsmga001.jf.intel.com with ESMTP; 19 Feb 2020 19:34:57 -0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.77]) by
 KMSMSX151.gar.corp.intel.com ([169.254.10.233]) with mapi id 14.03.0439.000;
 Thu, 20 Feb 2020 11:34:56 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, akuster808
	<akuster808@gmail.com>, "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yi.zhao@windriver.com" <yi.zhao@windriver.com>, "Sangal, Apoorv"
	<apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "Chan,
 Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>, "Tummalapalli, Vineela"
	<vineela.tummalapalli@intel.com>
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Topic: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
Thread-Index: AdXm9tQL7AlvpbmGSCSL3Ar4BNZE0QAO8k2AAAAOm4AAGmHqEA==
Date: Thu, 20 Feb 2020 03:34:54 +0000
Message-ID: <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
	 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
In-Reply-To: <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjg3OWQ0YzAtNjkyNy00MmE4LWFiYmYtZjYxMzY1OThiZGY1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoic0tNdjJCbVVtZnFvSFFucVZESzZTUGFBNmFmNFlxZXdqa0tTZlFoNk1vVWpMcnRTUlhpcXplb3ZvdUtOWHQ0byJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBPbiBXZWQsIDIwMjAtMDItMTkgYXQgMTQ6NDEgLTA4MDAsIGFrdXN0ZXI4MDggd3JvdGU6DQo+
ID4NCj4gPiBPbiAyLzE4LzIwIDExOjMzIFBNLCBKYWluLCBTYW5nZWV0YSB3cm90ZToNCj4gPiA+
IEhpIEFsbCwNCj4gPiA+DQo+ID4gPiBUaGlzIGlzIHRoZSBmdWxsIHJlcG9ydCBmb3IgeW9jdG8t
My4wLjIucmMyOg0KPiA+ID4gaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQu
Y2dpL3lvY3RvLXRlc3RyZXN1bHRzLWNvbnRyaWINCj4gPiA+IC90cmVlLz9oPWludGVsLXlvY3Rv
LXRlc3RyZXN1bHRzDQo+ID4gPg0KPiA+ID4gPT09PT09PSBTdW1tYXJ5ID09PT09PT09DQo+ID4g
PiBObyBoaWdoIG1pbGVzdG9uZSBkZWZlY3RzLg0KPiA+ID4gb25lIG5ldyBkZWZlY3RzIGFyZSBm
b3VuZCBpbiB0aGlzIGN5Y2xlIC0gb2VxYS9ydW50aW1lIHRlc3QNCj4gPiA+ICd0ZXN0X2RuZl9l
eGNsdWRlJyBmYWlsZWQgKEJ1Z2lkOjEzNzk3KSBvcGVuc3NoIHB0ZXN0IGZhaWxlZCAoQlVHDQo+
ID4gPiBpZDoxMzc5NikgYmFzaCBwdGVzdCBmYWlsZWQgKEJVRyBpZDoxMzc5NSkNCj4gPiA+DQo+
ID4gPiA9PT09PT09IEJ1Z3MgPT09PT09PT0NCj4gPiA+IGh0dHBzOi8vYnVnemlsbGEueW9jdG9w
cm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTM3OTcNCg0KRnJvbSB0aGUgZXJyb3IgbG9nLCBp
dCBsb29rcyBsaWtlIHdlIGFyZSB0cnlpbmcgdG8gaW5zdGFsbCA3LjY3IHdoaWxlIHpldXMgaGFz
IDcuNjYgc28gaXQgZXJyb3JzIG91dC4gSSBhbSBndWVzc2luZyB0aGF0IGN1cmwgd2Fzbid0IGJ1
aWx0IGluIGEgY2xlYW4gYnVpbGQgZGlyZWN0b3J5IHNvIHRoZSBjb3JyZWN0IHZlcnNpb24gb2Yg
Y3VybCBpcyBkZXBsb3llZC4gQ2FuIHRoaXMgdGVzdCBiZSByZS1ydW4gcGxlYXNlPw0KDQo+ID4g
PiBodHRwczovL2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTEzNzk2
DQoNClRoaXMgbmVlZHM6DQoNCmh0dHBzOi8vZ2l0aHViLmNvbS9vcGVuc3NoL29wZW5zc2gtcG9y
dGFibGUvY29tbWl0L2ZmMzFmMTU3NzNlZTE3MzUwMmVlYzRkNzg2MWVjNTZmMjZiYmEzODENCg0K
PiA+ID4gaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3Nob3dfYnVnLmNnaT9pZD0x
Mzc5NQ0KDQpXYXMgYmVjYXVzZSBvZiB0aGUgYmFzaCBDVkUgcGF0Y2guDQoNCj4gPg0KPiA+IFRo
YW5rIHlvdSBmb3IgbG9nZ2luZyB0aGUgZGVmZWN0cy4NCj4gPg0KPiA+IEkgc3VzcGVjdCB0aGlz
IGluIG5vdyBpbiB0aGUgaGFuZHMgb2YgdGhlIFlQIFRTQy4NCj4gDQo+IFdoYXQgaXMgdGhlIHN0
YWJsZSBtYWludGFpbmVyJ3MgdGhvdWdodHMgb24gdGhpcz8NCj4gDQo+IEluIHBhcnRpY3VsYXIg
SSdtIHdvcnJpZWQgYWJvdXQgdGhlIGJhc2ggcGF0Y2ggYW5kIHdoZXRoZXIgdGhlIHB0ZXN0IHJl
Z3Jlc3Npb24gYWJvdmUNCj4gaXMgcmVsYXRlZCB0byB0aGF0IG9yIG5vdD8gQW55IHJlY29tbWVu
ZGF0aW9uPw0KDQpMb29rcyBsaWtlIGl0J3MgcmVsYXRlZCBidXQgSSBkb24ndCB0aGluayB0aGUg
aW1wYWN0IGlzIG11Y2guIFRoZSB0ZXN0IGlzIGZhaWxpbmcgYmVjYXVzZSB0aGUgbGluZSBudW1i
ZXIgdGhhdCBpcyBleHBlY3RlZCB0byBmYWlsIGNoYW5nZWQgKGJlY2F1c2Ugb2YgdGhlIGxpbmVz
IGJlaW5nIGFkZGVkIGluIHRoZSB0ZXN0KS4gU28gd2Ugc2hvdWxkIGJlIG9rYXkgaW4gbXkgb3Bp
bmlvbi4NCg0KVGhhbmtzLA0KDQpBbnVqDQo=
