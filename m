Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD47E013CC
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 05:36:00 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Feb 2012 05:35:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113060148"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga001.jf.intel.com with ESMTP; 29 Feb 2012 05:35:59 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 29 Feb 2012 05:35:59 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.137]) with mapi id
	14.01.0355.002; Wed, 29 Feb 2012 05:35:59 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "sean_liming@sjjmicro.com" <sean_liming@sjjmicro.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Nicholson, Andrew"
	<andrew.nicholson@intel.com>
Thread-Topic: [yocto] current Quick Start manual bug?
Thread-Index: AQHM9qdAglgB5eXSVUKz/+P/i4lo5JZT3wGQ
Date: Wed, 29 Feb 2012 13:35:58 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123793B7418BB@ORSMSX101.amr.corp.intel.com>
References: <20120229005840.83wd2v3tgkowk8so@webmail.sjjmicro.com>
In-Reply-To: <20120229005840.83wd2v3tgkowk8so@webmail.sjjmicro.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: current Quick Start manual bug?
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
X-List-Received-Date: Wed, 29 Feb 2012 13:36:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciBub3RpbmcgdGhpcy4gIFdoYXQgaGFwcGVucyB3aGVuIHdlIHJlbGVhc2Ugc29m
dHdhcmUgaXMgdGhhdCB0aGUgbWFudWFscyBhcmUgcmVsZWFzZWQgYXMgd2VsbC4gIFRoZSByZWxl
YXNlZCBtYW51YWxzIGJlY29tZSB0aGUgImN1cnJlbnQiIHZlcnNpb24gb2YgdGhlIG1hbnVhbHMu
ICBBbnkgYnVncyBvciBlcnJvcnMgd2l0aCB0aGUgZG9jdW1lbnRhdGlvbiBhcmUgYWRkcmVzc2Vk
IHdpdGggdGhlIG5leHQgdmVyc2lvbiB1bmRlciBkZXZlbG9wbWVudC4gIFdlIHRyeSBvdXIgYmVz
dCB0byBrZWVwIHRoZSAiY3VycmVudCIgbWFudWFscyBpbiBzeW5jIHdpdGggdGhlIHJlbGVhc2Vk
IHRhcmJhbGwgdmVyc2lvbnMgb2YgdGhlIG1hbnVhbHMuICBTb21ldGltZXMsIHRoZXJlIGFyZSBj
cml0aWNhbCB0aGluZ3MgdGhhdCBhcmUgY2F1Z2h0IGFmdGVyIHRoZSB0YXJiYWxsIGlzIGdlbmVy
YXRlZCBhbmQgdGhlICJjdXJyZW50IiBtYW51YWwgd2lsbCBoYXZlIHRvIGJlIGNoYW5nZWQuICAN
Cg0KQXMgYW4gRllJLCB0aGUgImxhdGVzdCIgdmVyc2lvbnMgb2YgdGhlIG1hbnVhbHMgaGF2ZSBh
cmVhcyB1bmRlciBkZXZlbG9wbWVudCwgd3JpdGVyIG5vdGVzIHNvbWV0aW1lcyBlbWJlZGRlZCBp
biB0aGUgdGV4dCwgYW5kIGluY29tcGxldGUgYXJlYXMuICBIb3dldmVyLCB0aGV5IGFyZSB0aGUg
dmVyeSBsYXRlc3Qgd29yay4NCg0KVGhhbmtzLA0KU2NvdHQNCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlv
Y3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIHNlYW5fbGltaW5nQHNq
am1pY3JvLmNvbQ0KU2VudDogVHVlc2RheSwgRmVicnVhcnkgMjgsIDIwMTIgMTE6NTkgUE0NClRv
OiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBOaWNob2xzb24sIEFuZHJldw0KU3ViamVjdDogUmU6
IFt5b2N0b10gY3VycmVudCBRdWljayBTdGFydCBtYW51YWwgYnVnPw0KDQoNCg0KT24gV2VkLCAy
OSBGZWIgMjAxMiAwMzowMjozNSArMDAwMCwgIk5pY2hvbHNvbiwgQW5kcmV3IiANCjxhbmRyZXcu
bmljaG9sc29uQGludGVsLmNvbT4gd3JvdGU6DQpJJ20gd29ya2luZyB0aHJvdWdoIHRoZSBleHBl
cmllbmNlIGZvciBzb21lb25lIG5ldyB0byBlbWJlZGRlZCBMaW51eCANCmRldmVsb3BtZW50IHRv
IHVzZSB0aGUgWW9jdG8gUHJvamVjdCwgYW5kIEkgYmVsaWV2ZSBJIGZvdW5kIGEgcHJvYmxlbSAN
CndpdGggdGhlIGN1cnJlbnQgcXVpY2sgc3RhcnQgbWFudWFsLiANCj4NCj4gSSBmb2xsb3dlZCB0
aGUgaW5zdHJ1Y3Rpb25zIGluIHRoZSBtYW51YWwgZm9yICJCdWlsZGluZyBhbiBJbWFnZSIgYW5k
IA0KPiB0aGUgYml0YmFrZSBidWlsZCBmYWlsZWQuIEkgZHVnIGludG8gdGhlIGJ1aWxkIGxvZ3Mg
YW5kIGZvdW5kIHRoYXQgaXQgDQo+IGFwcGVhcmVkIGFsbCB0aGUgZXJyb3JzIHdlcmUgZHVlIHRv
IHRoZSBsYWNrIG9mIGEgcGVybCBtb2R1bGUuIEkgDQo+IG5vdGljZWQgdGhhdCB0aGUgY3VycmVu
dCBtYW51YWwgZG9lc24ndCBsaXN0IGdldHRpbmcgdGhlIA0KPiAibGlieG1sLXBhcnNlci1wZXJs
IiBwYWNrYWdlLCBhbmQgdGhlICJsYXRlc3QiIG1hbnVhbCBkb2VzICh0aGFuayB5b3UgDQo+IGdv
b2dsZSkuIEkgYWRkZWQgdGhhdCBwYWNrYWdlIGFuZCBub3cgZXZlcnl0aGluZyB3b3Jrcy4gDQo+
DQo+IFNvIEkgcHJlc3VtZSB0aGF0IHRoZSBjdXJyZW50IG1hbnVhbCBpcyBpbiBlcnJvciBvciB0
aGVyZSBpcyBhIA0KPiBzeW5jaW5nIHByb2JsZW0/DQo+DQo+IEknbSBydW5uaW5nIHVidW50dSAx
MS4xMCAzMiBiaXQgYW5kIHRoZSBwb2t5LWVkaXNvbi02LjAudGFyLmJ6MiANCj4gdGFyYmFsbCBh
cyBpbiB0aGUgY29tbWFuZHMgaW4gdGhlIHF1aWNrIHN0YXJ0IG1hbnVhbC4gDQo+DQo+IFRoYW5r
cyENCj4NCj4gcC5zLiB5ZXMgSSBhbSBrZWVwaW5nIGEgbG90IG9mIG5vdGVzIGFzIEkgZ28gdGhy
b3VnaCB0aGlzIHByb2Nlc3MuIDotKQ0KPg0KPiBBbmRyZXcgTmljaG9sc29uDQo+IFNvQyBTVyBQ
cm9kdWN0IFBsYW5uZXINCj4gSW50ZWwgQ29ycG9yYXRpb24NCj4gb2ZjOiA0MjUtODgxLTQ4NDMg
bW9iaWxlOiAyMDYtOTE0LTAxMjcNCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0DQo+IHlvY3RvQHlvY3Rv
cHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lv
Y3RvDQo+DQo+DQoNCiAgSSByYW4gaW50byB0aGUgc2FtZSBwcm9ibGVtIGEgZmV3IHdlZWtzIGFn
byBvbiBVYnVudHUuIElmIHlvdSBjaGVjayANCnRoZSBkb2N1bWVudHMgdW5kZXIgZGV2ZWxvcG1l
bnQsIHRoZSBwYWNrYWdlIHdhcyBhZGRlZCB0byB0aGUgbGlzdCBmbyANClVidW50dS4gDQogIMKg
DQogIC1TZWFuIExpbWluZw0KDQogIMKgDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCnlvY3RvIG1haWxpbmcgbGlzdA0KeW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZw0KaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo=

