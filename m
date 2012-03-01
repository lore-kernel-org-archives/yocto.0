Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAEF8E0059A
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 07:37:05 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2012 07:36:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113347890"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2012 07:36:29 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 1 Mar 2012 07:36:28 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.48]) with mapi id
	14.01.0355.002; Thu, 1 Mar 2012 07:36:28 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Chris Larson <clarson@kergoth.com>
Thread-Topic: [yocto] Documentation: Default FILESDIR
Thread-Index: AQHM9z/9pswaaO49n0+lfHmLBma8wJZVG80AgAADcACAAHJwAA==
Date: Thu, 1 Mar 2012 15:36:27 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123793B741DAC@ORSMSX101.amr.corp.intel.com>
References: <4F4EBEC8.7060705@linux.intel.com>
	<CABcZAN=xxYE+fxC_VhhsH+53eOMR4EPX4apWOG6Ut7zmOnSqyg@mail.gmail.com>
	<4F4EC558.3040401@linux.intel.com>
In-Reply-To: <4F4EC558.3040401@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>, "Perez-Gonzalez,
	Inaky" <inaky.perez-gonzalez@intel.com>
Subject: Re: Documentation: Default FILESDIR
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
X-List-Received-Date: Thu, 01 Mar 2012 15:37:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGFycmVuLCANCg0KUGxlYXNlIGxvb2sgYXQgaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2Rv
Y3MvbGF0ZXN0L3Bva3ktcmVmLW1hbnVhbC9wb2t5LXJlZi1tYW51YWwuaHRtbCNwbGF0ZGV2LWFw
cGRldi1pbnNpdHUgaW4gdGhlIFlQIFJlZmVyZW5jZSBtYW51YWwuICBUaGlzIGlzIHRoZSBzZWN0
aW9uIHlvdSByZWZlciB0byBpbiB0aGlzIG1haWwuICBUaGUgbGluayBpbiB0aGlzIGxhdGVzdCB2
ZXJzaW9uIGNvcnJlY3RseSBnb2VzIHRvIHRoZSByZWZlcmVuY2VkIFF1aWx0IHNlY3Rpb24sIHdo
aWNoIGhhcyBzaWduaWZpY2FudGx5IGNoYW5nZWQuICBUaGUgbGl0dGxlIHBhcmFncmFwaCB5b3Ug
cXVvdGUgYmVsb3cgaXMgbm93IGJhc2ljYWxseSBwYXJ0IG9mIHRoZSA5LXN0ZXAgUXVpbHQgcHJv
Y2VzcyBpbiB0aGUgWVAgRGV2IG1hbnVhbCAoaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2Rv
Y3MvbGF0ZXN0L2Rldi1tYW51YWwvZGV2LW1hbnVhbC5odG1sI3VzaW5nLWEtcXVpbHQtd29ya2Zs
b3cpLiANCg0KQ2FuIHlvdSBsb29rIGF0IHRoZXNlIHR3byBzZWN0aW9ucyBub3cgYW5kIHRoZW4g
cHJvdmlkZSBtZSB3aXRoIEZJTEVTUEFUSCBpbmZvcm1hdGlvbiBzbyBJIGNhbiBjcmVhdGUgYSBn
bG9zc2FyeSBlbnRyeSBmb3IgdGhlIGl0ZW0gYW5kIHBvc3NpYmx5IHdvcmsgdGhlIHVzZSBvZiBG
SUxFU1BBVEggaW50byB0aGUgdXBkYXRlZCBRdWlsdCBzZWN0aW9uPw0KDQpUaGFua3MsIA0KU2Nv
dHQNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IERhcnJlbiBIYXJ0IFttYWls
dG86ZHZoYXJ0QGxpbnV4LmludGVsLmNvbV0gDQpTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDI5
LCAyMDEyIDY6NDAgUE0NClRvOiBDaHJpcyBMYXJzb24NCkNjOiBZb2N0byBQcm9qZWN0OyBQZXJl
ei1Hb256YWxleiwgSW5ha3k7IFJpZmVuYmFyaywgU2NvdHQgTQ0KU3ViamVjdDogUmU6IFt5b2N0
b10gRG9jdW1lbnRhdGlvbjogRGVmYXVsdCBGSUxFU0RJUg0KDQoNCg0KT24gMDIvMjkvMjAxMiAw
NDoyNyBQTSwgQ2hyaXMgTGFyc29uIHdyb3RlOg0KPiBPbiBXZWQsIEZlYiAyOSwgMjAxMiBhdCA1
OjExIFBNLCBEYXJyZW4gSGFydCA8ZHZoYXJ0QGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+PiBX
aGVuIGEgbmV3IHVzZXIgZ29lcyB0byB3cml0ZSBhIHJlY2lwZSBhbmQgYWRkIGEgcGF0Y2ggb3Ig
b3RoZXIgZmlsZSwNCj4+IHRoZXkgbmVlZCB0byB1bmRlcnN0YW5kIEZJTEVTRElSIGFuZCB3aGVy
ZSB0byBwdXQgdGhlc2UgYWRkaXRpb25hbA0KPj4gZmlsZXMuIEkgc2Nhbm5lZCB0aGUgcmVmZXJl
bmNlIG1hbnVhbCBhbmQgdGhlIGRldiBtYW51YWwgYW5kIGNhbWUgdXANCj4+IG1vc3RseSBlbXB0
eSBoYW5kZWQuIFRoZSBvbmUgZ2xpcHNlIG9mIGl0IGlzIGluIHNlY3Rpb24gNS4xLjQgb2YgdGhl
DQo+PiBSZWZlcmVuY2UgTWFudWFsOg0KPj4NCj4+ICINCj4+IEl0IGlzIHVzZWZ1bCB3aGVuIG1h
a2luZyBjaGFuZ2VzIGRpcmVjdGx5IHRvIHRoZSB3b3JrIGRpcmVjdG9yeSBmaWxlcyB0bw0KPj4g
ZG8gc28gdXNpbmcgdGhlIFF1aWx0IHRvb2wgYXMgZGV0YWlsZWQgaW4gdGhlIE1vZGlmeWluZyBQ
YWNrYWdlIFNvdXJjZQ0KPj4gQ29kZSB3aXRoIFF1aWx0IHNlY3Rpb24uIFVzaW5nIFF1aWx0LCB5
b3UgY2FuIGNvcHkgcGF0Y2hlcyBpbnRvIHRoZQ0KPj4gcmVjaXBlIGRpcmVjdG9yeSBhbmQgdXNl
IHRoZSBwYXRjaGVzIGRpcmVjdGx5IHRocm91Z2ggdXNlIG9mIHRoZSBTUkNfVVJJDQo+PiB2YXJp
YWJsZS4NCj4+ICINCj4+DQo+PiBVbmZvcnR1bmF0ZWx5LCB0aGlzIGRvZXNuJ3Qgc2F5IHdoZXJl
IHRoZSByZWNpcGUgZGlyZWN0b3J5IGlzIGFuZCB3aGF0DQo+PiBpdCBzaG91bGQgYmUgbmFtZWQu
DQo+Pg0KPj4gSXMgdGhpcyBkb2N1bWVudGVkIHNvbWV3aGVyZSB0aGF0IEkgbWlzc2VkPyBJZiBu
b3QsIFNjb3R0IGNhbiB5b3UgYWRkDQo+PiB0aGlzIHRhc2sgdG8geW91ciBsaXN0IG9mIGRvYyBn
YXBzPw0KPiANCj4gRklMRVNESVIgaGFzbid0IGFjdHVhbGx5IGJlZW4gdXNlZCAob3IsIHNob3Vs
ZG4ndCBoYXZlIGJlZW4pIGZvcg0KPiB5ZWFycy4gRklMRVNQQVRIIHJlcGxhY2VkIGl0Lg0KDQpT
b3JyeSwgSSBzaG91bGQgaGF2ZSBzYWlkIEZJTEVTUEFUSCAtIHRoYXQncyB3aGF0IEkgZ2V0IGZv
ciBub3QgbG9va2luZw0KaXQgdXAuIFRoZSBzaXR1YXRpb24gaXMgdW5jaGFuZ2VkIHRob3VnaC4N
Cg0KLS0gDQpEYXJyZW4gSGFydA0KSW50ZWwgT3BlbiBTb3VyY2UgVGVjaG5vbG9neSBDZW50ZXIN
CllvY3RvIFByb2plY3QgLSBMaW51eCBLZXJuZWwNCg==

