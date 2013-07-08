Return-Path: <stefanx.stanacar@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06643E01440
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 07:42:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 08 Jul 2013 07:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1020,1363158000"; d="scan'208";a="362059244"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga001.fm.intel.com with ESMTP; 08 Jul 2013 07:43:28 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.52]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.127]) with mapi id
	14.03.0123.003; Mon, 8 Jul 2013 15:41:44 +0100
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Thread-Topic: [yocto] Fedora 18 x86_64 and make 3.82 & make 3.81
Thread-Index: AQHOe+fzmioX+v0VcE2EERcRvU2/hZlayisA
Date: Mon, 8 Jul 2013 14:41:43 +0000
Message-ID: <1373294550.11384.3.camel@firebird.rb.intel.com>
References: <CANwz6nxcLia6Sp1r-pOE7Qf4BCtJyXsUzXKcE=tguMtn402k3A@mail.gmail.com>
In-Reply-To: <CANwz6nxcLia6Sp1r-pOE7Qf4BCtJyXsUzXKcE=tguMtn402k3A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.73]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fedora 18 x86_64 and make 3.82 & make 3.81
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 08 Jul 2013 14:42:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A46C17CB2F325A4C9D08B7AC40A4C7D2@intel.com>
Content-Transfer-Encoding: base64

VGhlIG9yaWdpbmFsIG1ha2UgMy44MiBpbiBGZWRvcmEgMTggaXMga25vd24gdG8gYmUgYnJva2Vu
LCBoZW5jZSB0aGUNCnNhbml0eSB0ZXN0LiBBbHNvIEkgZG9uJ3QgdGhpbmsgdGhhdCdzIGEgbmlj
ZSB3YXkgb2YgZG93bmdyYWRpbmcgdG8gbWFrZQ0KMy44MSAodGhhdCdzIGEgRmVkb3JhIDEzIG1h
a2UuLi4pDQoNCkFueXdheSwgYWxsIHRoYXQgZG9lc24ndCBtYXR0ZXIgYmVjYXVzZSBhIGZldyBk
YXlzIGFnbyBGZWRvcmEgcHVzaGVkIGFuDQp1cGRhdGUgdG8gbWFrZSB3aGljaCBmaXhlcyB0aGUg
cHJvYmxlbToNCm1ha2UtMy44Mi0xNC5mYzE4Lng4Nl82NA0KDQpZb3Ugc2hvdWxkIGp1c3QgeXVt
IHVwZGF0ZSBhbmQgeW91J3JlIHNldC4NCg0KQ2hlZXJzLA0KU3RlZmFuDQoNCk9uIE1vbiwgMjAx
My0wNy0wOCBhdCAwODozMSAtMDYwMCwgRWR3YXJkIFZpZGFsIHdyb3RlOg0KPiBIZWxsbywNCj4g
SXMgdGhpcyBhIGJpdGJha2Ugb3IgcG9reSBlcnJvcj8gIE15IHBva3kgd2FzIHB1bGxlZCBwdWxs
IG9uDQo+IDA3LzAzLzEzLiANCj4gDQo+IEZlZG9yYSAxOCB4ODZfNjQgd2hpY2ggaGFzIGJlZW4g
dXNlZCB0byBidWlsZCB3aXRoIGJyYW5jaCBkeWxhbiBmb3INCj4gdGhlIHBhc3QgY291cGxlIG9m
IG1vbnRocyBvciBsb25nZXIuDQo+IFRoZSBidWlsZCBiZWxvdyB1c2VkIG1ha2UtMy44Mi0xMy5m
YzE4Lng4Nl82NC5ycG0NCj4gTUFDSElORT1iZWFnbGVib2FyZCBiaXRiYWtlIGNvcmUtaW1hZ2Ut
c2F0by1zZGstZXggDQo+IEJ1aWxkIENvbmZpZ3VyYXRpb246DQo+IEJCX1ZFUlNJT04gICAgICAg
ID0gIjEuMTguMCINCj4gQlVJTERfU1lTICAgICAgICAgPSAieDg2XzY0LWxpbnV4Ig0KPiBOQVRJ
VkVMU0JTVFJJTkcgICA9ICJGZWRvcmEtMTgiDQo+IFRBUkdFVF9TWVMgICAgICAgID0gImFybS1w
b2t5LWxpbnV4LWdudWVhYmkiDQo+IE1BQ0hJTkUgICAgICAgICAgID0gImJlYWdsZWJvYXJkIg0K
PiBESVNUUk8gICAgICAgICAgICA9ICJwb2t5Ig0KPiBESVNUUk9fVkVSU0lPTiAgICA9ICIxLjQu
MSINCj4gVFVORV9GRUFUVVJFUyAgICAgPSAiYXJtdjdhIHZmcCBuZW9uIg0KPiBUQVJHRVRfRlBV
ICAgICAgICA9ICJ2ZnAtbmVvbiINCj4gbWV0YSAgICAgICAgICAgICAgDQo+IG1ldGEteW9jdG8g
ICAgICAgID0gImR5bGFuOmU0YTBhNGM1ZTQxOTE1NGEzNDcxMGExYjZjMjhkNDE4MGM2MzA0YzMi
DQo+IG1ldGEtb2UgICAgICAgICAgID0gIm1hc3Rlcjo0NjM1NGE2OTdjMThhNjRjNTgzNjE1OWFk
ZjhkYmQ5MmU2NTQ3ZTg1Ig0KPiBtZXRhLWphdmEgICAgICAgICA9DQo+ICIobm9icmFuY2gpOjU5
Njk2ZDg5ZmQzM2RmNjk1M2RjYjJkZDU0Y2NkM2IzNjI1MTNmMjgiDQo+IG1ldGEteW9jdG8tYnNw
ICAgID0gImR5bGFuOmU0YTBhNGM1ZTQxOTE1NGEzNDcxMGExYjZjMjhkNDE4MGM2MzA0YzMiDQo+
IA0KPiBNQUNISU5FPWJlYWdsZWJvYXJkIGJpdGJha2UgY29yZS1pbWFnZS1zYXRvLXNkay1leA0K
PiBFUlJPUjogIE9FLWNvcmUncyBjb25maWcgc2FuaXR5IGNoZWNrZXIgZGV0ZWN0ZWQgYSBwb3Rl
bnRpYWwNCj4gbWlzY29uZmlndXJhdGlvbi4NCj4gICAgIEVpdGhlciBmaXggdGhlIGNhdXNlIG9m
IHRoaXMgZXJyb3Igb3IgYXQgeW91ciBvd24gcmlzayBkaXNhYmxlIHRoZQ0KPiBjaGVja2VyIChz
ZWUgc2FuaXR5LmNvbmYpLg0KPiAgICAgRm9sbG93aW5nIGlzIHRoZSBsaXN0IG9mIHBvdGVudGlh
bCBwcm9ibGVtcyAvIGFkdmlzb3JpZXM6DQo+IA0KPiAgICAgWW91ciB2ZXJzaW9uIG9mIG1ha2Ug
My44MiBpcyBicm9rZW4uIFBsZWFzZSByZXZlcnQgdG8gMy44MSBvcg0KPiBpbnN0YWxsIGEgcGF0
Y2hlZCB2ZXJzaW9uLg0KPiBtYWtlLTMuODEtMTkuZmMxMy54ODZfNjQucnBtIHdhcyBpbnN0YWxs
ZWQgd2l0aCBycG0gLVVoIC0tZm9yY2UNCj4gbWFrZS0zLjgxLTE5LmZjMTMueDg2XzY0LnJwbSAN
Cj4gTUFDSElORT1iZWFnbGVib2FyZCBiaXRiYWtlIGNvcmUtaW1hZ2Utc2F0by1zZGstZXggaXMg
Y3VycmVudGx5DQo+IHdvcmtpbmcuDQo+IA0KPiBCdWlsZCBDb25maWd1cmF0aW9uOg0KPiBCQl9W
RVJTSU9OICAgICAgICA9ICIxLjE5LjEiDQo+IEJVSUxEX1NZUyAgICAgICAgID0gIng4Nl82NC1s
aW51eCINCj4gTkFUSVZFTFNCU1RSSU5HICAgPSAiRmVkb3JhLTE4Ig0KPiBUQVJHRVRfU1lTICAg
ICAgICA9ICJhcm0tcG9reS1saW51eC1nbnVlYWJpIg0KPiBNQUNISU5FICAgICAgICAgICA9ICJi
ZWFnbGVib2FyZCINCj4gRElTVFJPICAgICAgICAgICAgPSAicG9reSINCj4gRElTVFJPX1ZFUlNJ
T04gICAgPSAiMS40K3NuYXBzaG90LTIwMTMwNzA4Ig0KPiBUVU5FX0ZFQVRVUkVTICAgICA9ICJh
cm12N2EgdmZwIG5lb24iDQo+IFRBUkdFVF9GUFUgICAgICAgID0gInZmcC1uZW9uIg0KPiBtZXRh
ICAgICAgICAgICAgICANCj4gbWV0YS15b2N0byAgICAgICAgPSAibWFzdGVyOjhhMTg2YTZiMzg1
M2ZjMWE3ZGNmMzQyZDQyMWM4OTI2YzM4OTQ5YzkiDQo+IG1ldGEtb2UgICAgICAgICAgID0gIm1h
c3Rlcjo0NjM1NGE2OTdjMThhNjRjNTgzNjE1OWFkZjhkYmQ5MmU2NTQ3ZTg1Ig0KPiBtZXRhLWph
dmEgICAgICAgICA9ICJtYXN0ZXI6NTk2OTZkODlmZDMzZGY2OTUzZGNiMmRkNTRjY2QzYjM2MjUx
M2YyOCINCj4gbWV0YS15b2N0by1ic3AgICAgPSAibWFzdGVyOjhhMTg2YTZiMzg1M2ZjMWE3ZGNm
MzQyZDQyMWM4OTI2YzM4OTQ5YzkiDQo+IEFueSBhbmQgYWxsIGhlbHAgd2lsbCBiZSBhcHByaWNh
dGVkLg0KPiBUaGFua3MgDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg0K

