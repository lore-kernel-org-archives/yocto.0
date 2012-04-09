Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0265AE00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 11:31:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Apr 2012 11:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130386725"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2012 11:31:15 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 Apr 2012 11:31:15 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.128]) with mapi id
	14.01.0355.002; Mon, 9 Apr 2012 11:31:15 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [PATCH 6/7] Cedartrail: Add a new recipe for Audio.
Thread-Index: AQHNEfN63FWBwRzuoEWPCbPkdJZKT5aTR8OA//+R9WA=
Date: Mon, 9 Apr 2012 18:31:14 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE203609242@ORSMSX105.amr.corp.intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<7a988a33c1d49b6645b55076fe73cb9f2f4f2aaa.1333496206.git.kishore.k.bodke@intel.com>
	<1333994649.2335.72.camel@elmorro>
In-Reply-To: <1333994649.2335.72.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 6/7] Cedartrail: Add a new recipe for Audio.
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
X-List-Received-Date: Mon, 09 Apr 2012 18:31:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFphbnVzc2ksIFRvbQ0KPlNl
bnQ6IE1vbmRheSwgQXByaWwgMDksIDIwMTIgMTE6MDQgQU0NCj5UbzogQm9ka2UsIEtpc2hvcmUg
Sw0KPkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+U3ViamVjdDogUmU6IFtQQVRDSCA2Lzdd
IENlZGFydHJhaWw6IEFkZCBhIG5ldyByZWNpcGUgZm9yIEF1ZGlvLg0KPg0KPk9uIFR1ZSwgMjAx
Mi0wNC0wMyBhdCAxNjo0MyAtMDcwMCwga2lzaG9yZS5rLmJvZGtlQGludGVsLmNvbSB3cm90ZToN
Cj4+IEZyb206IEtpc2hvcmUgQm9ka2UgPGtpc2hvcmUuay5ib2RrZUBpbnRlbC5jb20+DQo+Pg0K
Pj4gQWRkaW5nIGEgbmV3IHJlY2lwZSBmb3IgaW5jbHVkaW5nIGEgQXVkaW8NCj4+IGZlYXR1cmUg
Zm9yIHRoZSBjZWRhcnRyYWlsIGJzcC4NCj4+DQo+DQo+QXMgbWVudGlvbmVkLCBJIHRoaW5rIHRo
ZSBuZXcgd2F5IHRvIGRvIHRoaXMgaXMgdXNpbmcgYXNvdW5kLnN0YXRlIChzZWUNCj5tZXRhLWlu
dGVsL21ldGEtbjQ1MC9yZWNpcGVzLWJzcC9hbHNhLXN0YXRlL2Fsc2Etc3RhdGUvbjQ1MC9hc291
bmQuc3RhdGUNCj5hcyBhbiBleGFtcGxlKS4NCg0KSSB3aWxsIG1vZGlmeSB0aGlzIHJlY2lwZSBh
cyBwZXIgdGhlIG5ldyBjaGFuZ2VzIGluIHRoZSBtYXN0ZXIuDQoNClRoYW5rcw0KS2lzaG9yZS4N
Cg0KPg0KPlRvbQ0KPg0KPj4gU2lnbmVkLW9mZi1ieTogS2lzaG9yZSBCb2RrZSA8a2lzaG9yZS5r
LmJvZGtlQGludGVsLmNvbT4NCj4+IC0tLQ0KPj4gIC4uLi9jZWRhcnRyYWlsLWF1ZGlvL2NlZGFy
dHJhaWwtYXVkaW8uYmIgICAgICAgICAgIHwgICAzMA0KPisrKysrKysrKysrKysrDQo+PiAgLi4u
L2NlZGFydHJhaWwtYXVkaW8vY2VkYXJ0cmFpbC1hdWRpbyAgICAgICAgICAgICAgfCAgIDQyDQo+
KysrKysrKysrKysrKysrKysrKysNCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDcyIGluc2VydGlvbnMo
KyksIDAgZGVsZXRpb25zKC0pDQo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEtY2VkYXJ0cmFp
bC9yZWNpcGVzLWJzcC9jZWRhcnRyYWlsLQ0KPmF1ZGlvL2NlZGFydHJhaWwtYXVkaW8uYmINCj4+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgbWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtYnNwL2NlZGFydHJh
aWwtDQo+YXVkaW8vY2VkYXJ0cmFpbC1hdWRpby9jZWRhcnRyYWlsLWF1ZGlvDQo+Pg0KPj4gZGlm
ZiAtLWdpdCBhL21ldGEtY2VkYXJ0cmFpbC9yZWNpcGVzLWJzcC9jZWRhcnRyYWlsLWF1ZGlvL2Nl
ZGFydHJhaWwtDQo+YXVkaW8uYmIgYi9tZXRhLWNlZGFydHJhaWwvcmVjaXBlcy1ic3AvY2VkYXJ0
cmFpbC1hdWRpby9jZWRhcnRyYWlsLQ0KPmF1ZGlvLmJiDQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0
NA0KPj4gaW5kZXggMDAwMDAwMC4uOWE0M2YwMg0KPj4gLS0tIC9kZXYvbnVsbA0KPj4gKysrIGIv
bWV0YS1jZWRhcnRyYWlsL3JlY2lwZXMtYnNwL2NlZGFydHJhaWwtYXVkaW8vY2VkYXJ0cmFpbC1h
dWRpby5iYg0KPj4gQEAgLTAsMCArMSwzMCBAQA0KPj4gK1NVTU1BUlkgPSAiUHJvdmlkZSBhIGJh
c2ljIGluaXQgc2NyaXB0IHRvIGVuYWJsZSBhdWRpbyINCj4+ICtERVNDUklQVElPTiA9ICJTZXQg
dGhlIHZvbHVtZSBhbmQgdW5tdXRlIHRoZSBGcm9udCBtaXhlciBzZXR0aW5nDQo+ZHVyaW5nIGJv
b3QuIg0KPj4gK1NFQ1RJT04gPSAiYmFzZSINCj4+ICtMSUNFTlNFID0gIk1JVCINCj4+ICtMSUNf
RklMRVNfQ0hLU1VNID0NCj4iZmlsZTovLyR7Q09SRUJBU0V9L0xJQ0VOU0U7bWQ1PTNmNDBkNzk5
NDM5NzEwOTI4NWVjN2I4MWZkZWIzYjU4Ig0KPj4gKw0KPj4gK1BSID0gInIwIg0KPj4gKw0KPj4g
K2luaGVyaXQgdXBkYXRlLXJjLmQNCj4+ICsNCj4+ICtSREVQRU5EUyA9ICJhbHNhLXV0aWxzLWFt
aXhlciINCj4+ICsNCj4+ICtTUkNfVVJJID0gImZpbGU6Ly9jZWRhcnRyYWlsLWF1ZGlvIg0KPj4g
Kw0KPj4gK0lOSVRTQ1JJUFRfTkFNRSA9ICJjZWRhcnRyYWlsLWF1ZGlvIg0KPj4gK0lOSVRTQ1JJ
UFRfUEFSQU1TID0gImRlZmF1bHRzIDkwIg0KPj4gKw0KPj4gK2RvX2luc3RhbGwoKSB7DQo+PiAr
CWluc3RhbGwgLWQgJHtEfSR7c3lzY29uZmRpcn0gXA0KPj4gKwkgICAgICAgICAgICR7RH0ke3N5
c2NvbmZkaXJ9L2luaXQuZA0KPj4gKwlpbnN0YWxsIC1tIDA3NTUgJHtXT1JLRElSfS9jZWRhcnRy
YWlsLWF1ZGlvDQo+JHtEfSR7c3lzY29uZmRpcn0vaW5pdC5kDQo+PiArICAgICAgICBjYXQgJHtX
T1JLRElSfS8ke0lOSVRTQ1JJUFRfTkFNRX0gfCBcDQo+PiArICAgICAgICAgICAgc2VkIC1lICdz
LC9ldGMsJHtzeXNjb25mZGlyfSxnJyBcDQo+PiArICAgICAgICAgICAgICAgIC1lICdzLC91c3Iv
c2Jpbiwke3NiaW5kaXJ9LGcnIFwNCj4+ICsgICAgICAgICAgICAgICAgLWUgJ3MsL3Zhciwke2xv
Y2Fsc3RhdGVkaXJ9LGcnIFwNCj4+ICsgICAgICAgICAgICAgICAgLWUgJ3MsL3Vzci9iaW4sJHti
aW5kaXJ9LGcnIFwNCj4+ICsgICAgICAgICAgICAgICAgLWUgJ3MsL3Vzciwke3ByZWZpeH0sZycg
Pg0KPiR7RH0ke3N5c2NvbmZkaXJ9L2luaXQuZC8ke0lOSVRTQ1JJUFRfTkFNRX0NCj4+ICsgICAg
ICAgIGNobW9kIDc1NSAke0R9JHtzeXNjb25mZGlyfS9pbml0LmQvJHtJTklUU0NSSVBUX05BTUV9
DQo+PiArfQ0KPj4gKw0KPj4gZGlmZiAtLWdpdCBhL21ldGEtY2VkYXJ0cmFpbC9yZWNpcGVzLWJz
cC9jZWRhcnRyYWlsLWF1ZGlvL2NlZGFydHJhaWwtDQo+YXVkaW8vY2VkYXJ0cmFpbC1hdWRpbyBi
L21ldGEtY2VkYXJ0cmFpbC9yZWNpcGVzLWJzcC9jZWRhcnRyYWlsLQ0KPmF1ZGlvL2NlZGFydHJh
aWwtYXVkaW8vY2VkYXJ0cmFpbC1hdWRpbw0KPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGlu
ZGV4IDAwMDAwMDAuLmVmZDA4ZDMNCj4+IC0tLSAvZGV2L251bGwNCj4+ICsrKyBiL21ldGEtY2Vk
YXJ0cmFpbC9yZWNpcGVzLWJzcC9jZWRhcnRyYWlsLWF1ZGlvL2NlZGFydHJhaWwtDQo+YXVkaW8v
Y2VkYXJ0cmFpbC1hdWRpbw0KPj4gQEAgLTAsMCArMSw0MiBAQA0KPj4gKyMhL2Jpbi9zaA0KPj4g
KyMjIyBCRUdJTiBJTklUIElORk8NCj4+ICsjIFByb3ZpZGVzOiAgICAgICAgICBjZWRhcnRyYWls
IG1peGVyIHNldHVwDQo+PiArIyBSZXF1aXJlZC1TdGFydDogICAgJHN5c2xvZw0KPj4gKyMgUmVx
dWlyZWQtU3RvcDogICAgICRzeXNsb2cNCj4+ICsjIERlZmF1bHQtU3RhcnQ6ICAgICAyIDMgNCA1
DQo+PiArIyBEZWZhdWx0LVN0b3A6ICAgICAgMCAxIDYNCj4+ICsjIFNob3J0LURlc2NyaXB0aW9u
OiBJbml0aWFsaXplIHRoZSBjZWRhcnRyYWlsIGF1ZGlvIG1peGVyDQo+PiArIyBEZXNjcmlwdGlv
bjogICAgICAgVW5tdXRlIEZST05UIGFuZCBzZXQgdm9sdW1lDQo+PiArIyMjIEVORCBJTklUIElO
Rk8NCj4+ICsNCj4+ICsjIEF1dGhvcjogRGFycmVuIEhhcnQgPGR2aGFydEBsaW51eC5pbnRlbC5j
b20+DQo+PiArIyBCYXNlZCBvbiAvZXRjL2luaXQuZC9za2VsZXRvbg0KPj4gKw0KPj4gK1BBVEg9
L3NiaW46L3Vzci9zYmluOi9iaW46L3Vzci9iaW4NCj4+ICtERVNDPSJBdWRpbyBtaXhlciBzZXR0
aW5ncyINCj4+ICtOQU1FPWNlZGFydHJhaWwtYXVkaW8NCj4+ICtBTUlYRVI9YHdoaWNoIGFtaXhl
cmANCj4+ICtTQ1JJUFROQU1FPS9ldGMvaW5pdC5kLyROQU1FDQo+PiArDQo+PiArIyBFeGl0IGlm
IGFtaXhlciBpcyBub3QgaW5zdGFsbGVkDQo+PiArWyAteCAiJEFNSVhFUiIgXSB8fCBleGl0IDAN
Cj4+ICsNCj4+ICtkb19zdGFydCgpIHsNCj4+ICsJIyBFbmFibGUgdGhlICJGcm9udCIgc2ltcGxl
IGNvbnRyb2xzIChibGFjayBwaG9uZXMgamFjaykNCj4+ICsJJEFNSVhFUiBzc2V0IEZyb250IDkw
IG9uID4gL2Rldi9udWxsDQo+PiArfQ0KPj4gKw0KPj4gK2Nhc2UgIiQxIiBpbg0KPj4gK3N0YXJ0
KQ0KPj4gKwllY2hvICIkTkFNRTogc2V0dGluZyBkZWZhdWx0IG1peGVyIHNldHRpbmdzLiINCj4+
ICsJZG9fc3RhcnQNCj4+ICsJOzsNCj4+ICtzdG9wKQ0KPj4gKwk7Ow0KPj4gKyopDQo+PiArCWVj
aG8gIlVzYWdlOiAkU0NSSVBUTkFNRSB7c3RhcnR8c3RvcH0iID4mMg0KPj4gKwlleGl0IDMNCj4+
ICsJOzsNCj4+ICtlc2FjDQo+PiArDQo+PiArZXhpdCAwDQo+DQoNCg==

