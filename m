Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55214E01408
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 00:59:11 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 17 Apr 2012 00:59:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="89901286"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Apr 2012 00:55:59 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 17 Apr 2012 00:55:59 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.125]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.53]) with mapi id
	14.01.0355.002; Tue, 17 Apr 2012 09:24:41 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: =?gb2312?B?Isnyu6rD90BxcSI=?= <446257357@qq.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Can not boot with USB
Thread-Index: AQHNG+CoG69/v3+q9UymhKp1YrljE5aeN3Ig
Date: Tue, 17 Apr 2012 01:24:40 +0000
Message-ID: <A25F549E4D43CD42B4C02DF47A1913230FD0475B@SHSMSX102.ccr.corp.intel.com>
References: <4F8A45D4.5070705@qq.com>
In-Reply-To: <4F8A45D4.5070705@qq.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: Can not boot with USB
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
X-List-Received-Date: Tue, 17 Apr 2012 07:59:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGksDQpUaGUgaW1hZ2Ugc2l6ZSBvZiB0aGUgc2F0by1zZGsgaW1hZ2UgY2FuIGV4Y2VlZHMgMUdC
LiBJbiB0aGlzIGNhc2UsIGR1ZSB0byBhbiBvbGQgYnVnKGh0dHBzOi8vYnVnemlsbGEueW9jdG9w
cm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjEzOCwgdGhhdCBoYXMgYmVlbiBmaXhlZCBpbiB0
aGUgbGF0ZXN0IHBva3kgbWFzdGVyJ3MgY29kZSkgLCBkaXJlY3RseSBkb2luZyBkZCB0aGUgaW1h
Z2UgaW50byBhIFVTQiBkaXNrIGNhbid0IG1ha2UgYSBib290YWJsZSBVU0IgZGlzayhpdCBzaG93
cyAiTm8gREVGQVVMVCBvciBVSSBjb25maWd1cmF0aW9uIGRpcmVjdGl2ZSBmb3VuZCIpLg0KDQpQ
bGVhc2UgdHJ5IHRoZSBsYXRlc3QgcG9reSBtYXN0ZXIncyBjb2RlLg0KT3IsIHdlIGNhbiB1c2Ug
YW5vdGhlciB3YXkgdG8gY29wZSB3aXRoIHRoZSBpc3N1ZTogcGxlYXNlIHVzZSB0aGUgbWV0aG9k
IG1rZGlza2ltYWdlL21rZGlyL21vdW50L2NwL3Vtb3VudC9zeXNsaW51eCBtZW50aW9uZWQgaW4g
dGhlIGJlbG93IHBhZ2UgaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQvY2dpdC5jZ2kv
cG9reS90cmVlL1JFQURNRS5oYXJkd2FyZQ0KDQpUaGFua3MsDQotLSBEZXh1YW4NCg0KDQo+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9q
ZWN0Lm9yZw0KPiBbbWFpbHRvOnlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVo
YWxmIE9mICLJ8ruqw/dAcXEiDQo+IFNlbnQ6IFN1bmRheSwgQXByaWwgMTUsIDIwMTIgMTE6NTIg
QU0NCj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogW3lvY3RvXSBDYW4g
bm90IGJvb3Qgd2l0aCBVU0INCj4gDQo+IEhlbGxvLA0KPiAgICAgIEkgd2FudCB0byB1c2UgdGhl
IHNkayBpbWFnZSBib290aW5nIHdpdGggdXNiIGZsYXNoIGRpc2ssYnV0IHRoZQ0KPiBib2FyZCBj
YW4gbm90IGJvb3QgLi4uIFdoaWxlIEkgdXNlIG90aGVyIGltYWdlIHdpdGhvdXQgc2RrIHRoZSBi
b2FyZCBjYW4NCj4gYm9vdC5Bbnlib2R5IGNhbiBoZWxwIG1lPw0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4g
eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcv
bGlzdGluZm8veW9jdG8NCg==

