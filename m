Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3311FE00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 11:25:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2012 11:25:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130384501"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2012 11:25:44 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 Apr 2012 11:25:44 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.141]) with mapi id
	14.01.0355.002; Mon, 9 Apr 2012 11:25:44 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 3/7] Cedartrail: Add new recipes for audio and video
	samples.
Thread-Index: AQHNEfN2/TmuQngeAUGC4KFPl1WGMJaTReUA//+SMlA=
Date: Mon, 9 Apr 2012 18:25:44 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE203609220@ORSMSX105.amr.corp.intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<349bec4216096df2d42f0e9b2174e2937d80afd6.1333496206.git.kishore.k.bodke@intel.com>
	<1333994248.2335.66.camel@elmorro>
In-Reply-To: <1333994248.2335.66.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/7] Cedartrail: Add new recipes for audio and video samples.
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
X-List-Received-Date: Mon, 09 Apr 2012 18:25:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFphbnVzc2ksIFRvbQ0KPlNl
bnQ6IE1vbmRheSwgQXByaWwgMDksIDIwMTIgMTA6NTcgQU0NCj5UbzogQm9ka2UsIEtpc2hvcmUg
Sw0KPkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+U3ViamVjdDogUmU6IFtQQVRDSCAzLzdd
IENlZGFydHJhaWw6IEFkZCBuZXcgcmVjaXBlcyBmb3IgYXVkaW8gYW5kIHZpZGVvDQo+c2FtcGxl
cy4NCj4NCj5PbiBUdWUsIDIwMTItMDQtMDMgYXQgMTY6NDMgLTA3MDAsIGtpc2hvcmUuay5ib2Rr
ZUBpbnRlbC5jb20gd3JvdGU6DQo+PiBGcm9tOiBLaXNob3JlIEJvZGtlIDxraXNob3JlLmsuYm9k
a2VAaW50ZWwuY29tPg0KPj4NCj4+IFRoaXMgcmVjaXBlIGFkZHMgc2FtcGxlIEF1ZGlvIGZpbGVz
IGFuZCBWaWRlbyBmaWxlcw0KPj4gZm9yIHRlc3Rpbmcgd2l0aCBwdnIgQWNjZWxlcmF0aW9uIGRy
aXZlci4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBLaXNob3JlIEJvZGtlIDxraXNob3JlLmsuYm9k
a2VAaW50ZWwuY29tPg0KPj4gLS0tDQo+PiAgLi4uL29nZy1DQy1CWS0zLjAtbXVzaWMtc2FtcGxl
c18wLjEuYmIgICAgICAgICAgICAgfCAgIDIzDQo+KysrKysrKysrKysrKysrKysrKw0KPj4gIC4u
Li92aWRlby1zYW1wbGVzL2JpZ2J1Y2tidW5ueS1vZ2cuYmIgICAgICAgICAgICAgIHwgICAyNA0K
PisrKysrKysrKysrKysrKysrKysrDQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25z
KCspLCAwIGRlbGV0aW9ucygtKQ0KPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBtZXRhLWNlZGFydHJh
aWwvcmVjaXBlcy1tZWRpYXNhbXBsZXMvbXVzaWMtDQo+c2FtcGxlcy9vZ2ctQ0MtQlktMy4wLW11
c2ljLXNhbXBsZXNfMC4xLmJiDQo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2VkYXJ0cmFp
bC9yZWNpcGVzLW1lZGlhc2FtcGxlcy92aWRlby0NCj5zYW1wbGVzL2JpZ2J1Y2tidW5ueS1vZ2cu
YmINCj4+DQo+PiBkaWZmIC0tZ2l0IGEvbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtbWVkaWFzYW1w
bGVzL211c2ljLXNhbXBsZXMvb2dnLQ0KPkNDLUJZLTMuMC1tdXNpYy1zYW1wbGVzXzAuMS5iYiBi
L21ldGEtY2VkYXJ0cmFpbC9yZWNpcGVzLQ0KPm1lZGlhc2FtcGxlcy9tdXNpYy1zYW1wbGVzL29n
Zy1DQy1CWS0zLjAtbXVzaWMtc2FtcGxlc18wLjEuYmINCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQo+PiBpbmRleCAwMDAwMDAwLi5mZDY1Y2M3DQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi9t
ZXRhLWNlZGFydHJhaWwvcmVjaXBlcy1tZWRpYXNhbXBsZXMvbXVzaWMtc2FtcGxlcy9vZ2ctQ0Mt
QlktDQo+My4wLW11c2ljLXNhbXBsZXNfMC4xLmJiDQo+PiBAQCAtMCwwICsxLDIzIEBADQo+PiAr
U1VNTUFSWSA9ICJvZ2cgZmlsZSBmb3JtYXQgbXVzaWMgc2FtcGxlcyINCj4+ICtERVNDUklQVElP
TiA9ICJJbnN0YWxscyBvZ2cgZmlsZSBmb3JtYXQgbXVzaWMgc2FtcGxlcyBpbiAvaG9tZS9NdXNp
Yw0KPmRpciINCj4+ICsNCj4+ICtMSUNFTlNFID0gIkNDLUJZLTMuMCINCj4+ICtMSUNfRklMRVNf
Q0hLU1VNID0gImZpbGU6Ly8ke0NPTU1PTl9MSUNFTlNFX0RJUn0vQ0MtQlktDQo+My4wO21kNT1k
ZmEwMmI1NzU1NjI5MDIyZTI2N2YxMGI5YzBhMmFiNyINCj4+ICsNCj4+ICtERVBFTkRTICs9ICIg
Ig0KPj4gKw0KPg0KPkRvZXMgdGhpcyBlbXB0eSBERVBFTkRTIGRvIGFueXRoaW5nPyAgU2FtZSB0
aGluZyBpbiBhIGNvdXBsZSBvdGhlcg0KPnBsYWNlcy4uLg0KDQpJdCBkb2VzIG5vdGhpbmcuIEkg
bWlnaHQgaGF2ZSBmb3Jnb3R0ZW4gdGhpcyB0byByZW1vdmUuDQoNClRoYW5rcw0KS2lzaG9yZS4N
Cg0KPg0KPlRvbQ0KPg0KPg0KPj4gK1BSID0gInIwIg0KPj4gKw0KPj4gK1NSQ19VUkkgPQ0KPiJo
dHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMvbWVkaWEvbXVzaWMvb2dn
LUNDLUJZLTMuMC0NCj5tdXNpYy1zYW1wbGVzLSR7UFZ9LnRhci5iejIgXA0KPj4gKyAgICAgICAg
ICAgICINCj4+ICsNCj4+ICtTUkNfVVJJW21kNXN1bV0gPSAiZGMzZGQ0YWRjYTY5OTk2ZWRhZmZl
ODgyOGUxZWUxNjUiDQo+PiArU1JDX1VSSVtzaGEyNTZzdW1dID0NCj4iODYzODFmODQ3NGQ1YWMy
YzgwZjU0Yzk1MWE4YzIyZjY3ZDM1MmRhYTk3NzM0MWQzZGZiNDE2MWUzOWNhMzk3NSINCj4+ICsN
Cj4+ICtkb19pbnN0YWxsKCkgew0KPj4gKw0KPj4gK2luc3RhbGwgLWQgJHtEfSR7YmFzZV9wcmVm
aXh9L2hvbWUvbXVzaWMNCj4+ICtpbnN0YWxsIC1tIDA2NDQgICR7V09SS0RJUn0vb2dnLUNDLUJZ
LTMuMC1tdXNpYy1zYW1wbGVzLSR7UFZ9LyovKi5vZ2cNCj4ke0R9JHtiYXNlX3ByZWZpeH0vaG9t
ZS9tdXNpYw0KPj4gK30NCj4+ICsNCj4+ICtGSUxFU18ke1BOfSArPSAiJHtiYXNlX3ByZWZpeH0v
aG9tZS9tdXNpYy8qLm9nZyINCj4+IGRpZmYgLS1naXQgYS9tZXRhLWNlZGFydHJhaWwvcmVjaXBl
cy1tZWRpYXNhbXBsZXMvdmlkZW8tDQo+c2FtcGxlcy9iaWdidWNrYnVubnktb2dnLmJiIGIvbWV0
YS1jZWRhcnRyYWlsL3JlY2lwZXMtDQo+bWVkaWFzYW1wbGVzL3ZpZGVvLXNhbXBsZXMvYmlnYnVj
a2J1bm55LW9nZy5iYg0KPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAwMDAu
LjAzNjcyMWMNCj4+IC0tLSAvZGV2L251bGwNCj4+ICsrKyBiL21ldGEtY2VkYXJ0cmFpbC9yZWNp
cGVzLW1lZGlhc2FtcGxlcy92aWRlby1zYW1wbGVzL2JpZ2J1Y2tidW5ueS0NCj5vZ2cuYmINCj4+
IEBAIC0wLDAgKzEsMjQgQEANCj4+ICtTVU1NQVJZID0gIkJpZyBCdWNrIEJ1bm55IHZpZGVvIE9H
RyBzYW1wbGUgIg0KPj4gK0RFU0NSSVBUSU9OID0gIkluc3RhbGxzIEJpZyBCdWNrIEJ1bm55IFZp
ZGVvIE9HRyBmaWxlIHNhbXBsZXMgaW4NCj4vaG9tZS92aWRlbyBkaXIgIg0KPj4gKw0KPj4gK0xJ
Q0VOU0UgPSAiQ0MtQlktMy4wIg0KPj4gK0xJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovLyR7Q09N
TU9OX0xJQ0VOU0VfRElSfS9DQy1CWS0NCj4zLjA7bWQ1PWRmYTAyYjU3NTU2MjkwMjJlMjY3ZjEw
YjljMGEyYWI3Ig0KPj4gKw0KPj4gK0RFUEVORFMgKz0gIiAiDQo+PiArDQo+PiArUFIgPSAicjAi
DQo+PiArDQo+PiArU1JDX1VSSSA9ICJodHRwOi8vYmxlbmRlci0NCj5taXJyb3Iua2lubzNkLm9y
Zy9wZWFjaC9iaWdidWNrYnVubnlfbW92aWVzL2JpZ19idWNrX2J1bm55XzcyMHBfc3RlcmVvLm8N
Cj5nZyBcDQo+PiArICAgICAgICAgICAgIg0KPj4gKw0KPj4gKw0KPj4gK1NSQ19VUklbbWQ1c3Vt
XSA9ICI1NzY0MjRjNjUzZGE1M2UzMWI4NmMwMjdlNTU3NThhZSINCj4+ICtTUkNfVVJJW3NoYTI1
NnN1bV0gPQ0KPiI3ODViMDlhNTg1YmU1NWY4MTMyNmEzZmNlZjJjZGVlYjdlYmJjMzM5MzJiNjMw
NWZkODQyMDk5MjhkZjY3ZjI4Ig0KPj4gKw0KPj4gK2RvX2luc3RhbGwoKSB7DQo+PiArDQo+PiAr
aW5zdGFsbCAtZCAke0R9JHtiYXNlX3ByZWZpeH0vaG9tZS9WaWRlb3MNCj4+ICtpbnN0YWxsIC1t
IDA2NDQgICR7V09SS0RJUn0vKi5vZ2cgJHtEfSR7YmFzZV9wcmVmaXh9L2hvbWUvVmlkZW9zDQo+
PiArfQ0KPj4gKw0KPj4gK0ZJTEVTXyR7UE59ICs9ICIke2Jhc2VfcHJlZml4fS9ob21lL1ZpZGVv
cy8qLm9nZyINCj4NCg0K

