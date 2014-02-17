Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A058E007AE
	for <yocto@yoctoproject.org>; Sun, 16 Feb 2014 23:32:13 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 16 Feb 2014 23:32:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,859,1384329600"; d="scan'208";a="476379859"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga001.fm.intel.com with ESMTP; 16 Feb 2014 23:32:12 -0800
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.202]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.244]) with mapi id
	14.03.0123.003; Mon, 17 Feb 2014 07:32:10 +0000
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [yocto-autobuilder][PATCH] buildsets: add a new buildset to
	run builds on target
Thread-Index: AQHPI/P5SZBpvNoSSUSWESHsaeILNZq5HNCA
Date: Mon, 17 Feb 2014 07:32:10 +0000
Message-ID: <1392622327.15910.0.camel@firebird.rb.intel.com>
References: <1391770883-14353-1-git-send-email-stefanx.stanacar@intel.com>
In-Reply-To: <1391770883-14353-1-git-send-email-stefanx.stanacar@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.105.156]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] buildsets: add a new buildset to run builds on target
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
X-List-Received-Date: Mon, 17 Feb 2014 07:32:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <1479D767D664BD4890EEF0B26C67E76A@intel.com>
Content-Transfer-Encoding: base64

DQpQaW5nDQoNCk9uIEZyaSwgMjAxNC0wMi0wNyBhdCAxMzowMSArMDIwMCwgU3RlZmFuIFN0YW5h
Y2FyIHdyb3RlOg0KPiBCdWlsZHMgY29yZS1pbWFnZS1zYXRvLXNkayBmb3IgZWFjaCBxZW11IGFy
Y2ggYW5kDQo+IHJ1bnMgdGVzdHMgYnVpbGRpbmcgc3Vkb2t1L2N2cy9pcHRhYmxlcy4NCj4gVGhl
c2UgZG8gdGFrZSBhIHdoaWxlLCBzbyB0aGV5IHNob3VsZG4ndCBiZSBhZGRlZCB0byBuaWdodGx5
IQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIFN0YW5hY2FyIDxzdGVmYW54LnN0YW5hY2Fy
QGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vbmlnaHRseS1xYS10YXJnZXRidWlsZHMuY29uZiAg
ICAgICAgICAgICAgICAgICB8IDI2ICsrKysrKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBj
aGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYnVpbGRzZXQt
Y29uZmlnLm1hc3Rlci9uaWdodGx5LXFhLXRhcmdldGJ1aWxkcy5jb25mDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvYnVpbGRzZXQtY29uZmlnLm1hc3Rlci9uaWdodGx5LXFhLXRhcmdldGJ1aWxkcy5jb25m
IGIvYnVpbGRzZXQtY29uZmlnLm1hc3Rlci9uaWdodGx5LXFhLXRhcmdldGJ1aWxkcy5jb25mDQo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAwMDAwMDAuLmE5NWRiNzgNCj4gLS0tIC9k
ZXYvbnVsbA0KPiArKysgYi9idWlsZHNldC1jb25maWcubWFzdGVyL25pZ2h0bHktcWEtdGFyZ2V0
YnVpbGRzLmNvbmYNCj4gQEAgLTAsMCArMSwyNiBAQA0KPiArW25pZ2h0bHktcWEtdGFyZ2V0YnVp
bGRzXQ0KPiArYnVpbGRlcnM6ICdidWlsZGVyMScNCj4gK3JlcG9zOiBbeydwb2t5JzoNCj4gKyAg
ICAgICAgICAgIHsncmVwb3VybCc6J2dpdDovL2dpdC55b2N0b3Byb2plY3Qub3JnL3Bva3knLA0K
PiArICAgICAgICAgICAgICdsYXllcnZlcnNpb24nOnsnY29yZSc6J21ldGEnLCAneW9jdG9ic3An
OidtZXRhLXlvY3RvLWJzcCd9LA0KPiArICAgICAgICAgICAgICdicmFuY2gnOidtYXN0ZXInfX1d
DQo+ICtzdGVwczogW3snU2V0RGVzdCc6e319LA0KPiArICAgICAgICB7J0NoZWNrT3V0TGF5ZXJz
Jzoge319LA0KPiArICAgICAgICB7J1J1blByZWFtYmxlJzoge319LA0KPiArICAgICAgICB7J0dl
dERpc3Ryb1ZlcnNpb24nIDogeydkaXN0cm8nOiAncG9reSd9fSwNCj4gKyAgICAgICAgeydDcmVh
dGVBdXRvQ29uZic6IHsnbWFjaGluZSc6ICdxZW11eDg2LTY0JywgJ1NES01BQ0hJTkUnIDogJ3g4
Nl82NCcsICdkaXN0cm8nOiAncG9reSd9fSwNCj4gKyAgICAgICAgeydDcmVhdGVCQkxheWVyc0Nv
bmYnOiB7J2J1aWxkcHJvdmlkZXInIDogJ3lvY3RvJ319LA0KPiArICAgICAgICB7J0J1aWxkSW1h
Z2VzJzogeydpbWFnZXMnOiAnY29yZS1pbWFnZS1zYXRvLXNkayd9fSwNCj4gKyAgICAgICAgeydS
dW5TYW5pdHlUZXN0cyc6IHsnaW1hZ2VzJzogJ2NvcmUtaW1hZ2Utc2F0by1zZGsnLCAnc3VpdGVz
JyA6ICdwaW5nIHNzaCBidWlsZHN1ZG9rdSBidWlsZGN2cyBidWlsZGlwdGFibGVzJ319LA0KPiAr
ICAgICAgICB7J0NyZWF0ZUF1dG9Db25mJzogeydtYWNoaW5lJzogJ3FlbXV4ODYnLCAnU0RLTUFD
SElORScgOiAneDg2XzY0JywgJ2Rpc3Rybyc6ICdwb2t5J319LA0KPiArICAgICAgICB7J0J1aWxk
SW1hZ2VzJzogeydpbWFnZXMnOiAnY29yZS1pbWFnZS1zYXRvLXNkayd9fSwNCj4gKyAgICAgICAg
eydSdW5TYW5pdHlUZXN0cyc6IHsnaW1hZ2VzJzogJ2NvcmUtaW1hZ2Utc2F0by1zZGsnLCAnc3Vp
dGVzJyA6ICdwaW5nIHNzaCBidWlsZHN1ZG9rdSBidWlsZGN2cyBidWlsZGlwdGFibGVzJ319LA0K
PiArICAgICAgICB7J0NyZWF0ZUF1dG9Db25mJzogeydtYWNoaW5lJzogJ3FlbXVhcm0nLCAnU0RL
TUFDSElORScgOiAneDg2XzY0JywgJ2Rpc3Rybyc6ICdwb2t5J319LA0KPiArICAgICAgICB7J0J1
aWxkSW1hZ2VzJzogeydpbWFnZXMnOiAnY29yZS1pbWFnZS1zYXRvLXNkayd9fSwNCj4gKyAgICAg
ICAgeydSdW5TYW5pdHlUZXN0cyc6IHsnaW1hZ2VzJzogJ2NvcmUtaW1hZ2Utc2F0by1zZGsnLCAn
c3VpdGVzJyA6ICdwaW5nIHNzaCBidWlsZHN1ZG9rdSBidWlsZGN2cyBidWlsZGlwdGFibGVzJ319
LA0KPiArICAgICAgICB7J0NyZWF0ZUF1dG9Db25mJzogeydtYWNoaW5lJzogJ3FlbXVwcGMnLCAn
U0RLTUFDSElORScgOiAneDg2XzY0JywgJ2Rpc3Rybyc6ICdwb2t5J319LA0KPiArICAgICAgICB7
J0J1aWxkSW1hZ2VzJzogeydpbWFnZXMnOiAnY29yZS1pbWFnZS1zYXRvLXNkayd9fSwNCj4gKyAg
ICAgICAgeydSdW5TYW5pdHlUZXN0cyc6IHsnaW1hZ2VzJzogJ2NvcmUtaW1hZ2Utc2F0by1zZGsn
LCAnc3VpdGVzJyA6ICdwaW5nIHNzaCBidWlsZHN1ZG9rdSBidWlsZGN2cyBidWlsZGlwdGFibGVz
J319LA0KPiArICAgICAgICB7J0NyZWF0ZUF1dG9Db25mJzogeydtYWNoaW5lJzogJ3FlbXVtaXBz
JywgJ1NES01BQ0hJTkUnIDogJ3g4Nl82NCcsICdkaXN0cm8nOiAncG9reSd9fSwNCj4gKyAgICAg
ICAgeydCdWlsZEltYWdlcyc6IHsnaW1hZ2VzJzogJ2NvcmUtaW1hZ2Utc2F0by1zZGsnfX0sDQo+
ICsgICAgICAgIHsnUnVuU2FuaXR5VGVzdHMnOiB7J2ltYWdlcyc6ICdjb3JlLWltYWdlLXNhdG8t
c2RrJywgJ3N1aXRlcycgOiAncGluZyBzc2ggYnVpbGRzdWRva3UgYnVpbGRjdnMgYnVpbGRpcHRh
Ymxlcyd9fV0NCg0K

