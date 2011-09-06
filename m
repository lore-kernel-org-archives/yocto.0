Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33C86E01285
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 02:18:16 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Sep 2011 02:18:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,337,1312182000"; d="scan'208";a="14354204"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Sep 2011 02:18:15 -0700
Received: from pgsmsx101.gar.corp.intel.com (10.221.44.78) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 6 Sep 2011 17:17:18 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX101.gar.corp.intel.com (10.221.44.78) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Tue, 6 Sep 2011 17:17:18 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 6 Sep 2011
	17:17:16 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: =?utf-8?B?RW5yaWMgQmFsbGV0YsOyIGkgU2VycmE=?= <eballetbo@gmail.com>
Date: Tue, 6 Sep 2011 17:17:16 +0800
Thread-Topic: [yocto] Error Creating Project with Eclipse IDE
Thread-Index: AcxsdGVryhyohlceSnqwfBvu2X/RUwAAMkIw
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F30C590D755@shsmsx502.ccr.corp.intel.com>
References: <CAFqH_53qx7d13w-AcNErp5qm9HmhOOkPU62pD03Xv222YMO8YQ@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F30C590D6B8@shsmsx502.ccr.corp.intel.com>
	<CAFqH_520LDVehR==BXrmLxG_9y=Dsh5NydND1KCkG4QKOd6bdQ@mail.gmail.com>
In-Reply-To: <CAFqH_520LDVehR==BXrmLxG_9y=Dsh5NydND1KCkG4QKOd6bdQ@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error Creating Project with Eclipse IDE
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
X-List-Received-Date: Tue, 06 Sep 2011 09:18:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RW5yaWMgQmFsbGV0YsOyIGkgU2VycmEgd3JvdGUgb24gMjAxMS0wOS0wNjoNCj4gSGkgTGlhbmhh
bywNCj4gDQo+IDIwMTEvOS82IEx1LCBMaWFuaGFvIDxsaWFuaGFvLmx1QGludGVsLmNvbT46DQo+
PiBIaSBFbnJpYywNCj4+IA0KPj4gV2hpY2ggdmVyc2lvbiBvZiB0aGUgWW9jdG8gZWNsaXBzZSBw
bHVnLWluIGRpZCB5b3UgdXNlPw0KPiANCj4gSSdtIHVzaW5nIHZlcnNpb24gMS4wIGZyb20NCj4g
aHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2Rvd25sb2Fkcy9lY2xpcHNlLXBsdWdpbi8xLjAg
d2l0aCBsYXRlc3QNCj4geW9jdG8gbWFpbmxpbmUgZnJvbSBnaXQuDQoNCkkgYmVsaWV2ZSB0aGUg
bGF0ZXN0IGNoYW5nZXMgaW4gWW9jdG8gbWFpbmxpbmUgaXMgbm90IGNvbXBhdGlibGUgd2l0aCB0
aGUgMS4wIHBsdWdpbiBkdWUgdG8gc29tZSBmaWxlL3ZhcmlhYmxlIG5hbWUgY2hhbmdlcyBpbiB0
aGUgWW9jdG8gbWFpbmxpbmUuDQoNCi1MaWFuaGFvDQoNCj4gDQo+PiBIYXZlIHlvdSBjb25maWd1
cmUgdGhlIHBsdWctaW4gYXMgbWVudGlvbmVkIGluIG1hbnVhbCBzZWN0aW9uIDQuMS4zPw0KPiAN
Cj4gWWVzLCBJIGZvbGxvd2VkIHRoZXNlIHN0ZXBzIEkgd2lsbCByZXZpZXcgdGhlIHN0ZXBzIHRv
IHNlZSBpZiBJJ20NCj4gbWlzc2luZyBzb21ldGhpbmcgLi4uDQo+IA0KPiBDaGVlcnMsDQo+ICAg
RW5yaWMNCj4+IA0KPj4gQmVzdCBSZWdhcmRzLA0KPj4gLUxpYW5oYW8NCj4+IA0KPj4gRW5yaWMg
QmFsbGV0YsOyIGkgU2VycmEgd3JvdGUgb24gMjAxMS0wOS0wNjoNCj4+PiBIaSBhbGwsDQo+Pj4g
DQo+Pj4gRm9sbG93aW5nDQo+Pj4gaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvMS4x
L2FkdC1tYW51YWwvYWR0LW1hbnVhbC5odG0NCj4+PiAoY2hhcHRlciA0LjIpLCB3aGVuIEnigJlt
IGNyZWF0aW5nIGEgTmV3IFByb2plY3QgSeKAmW0gZ2V0dGluZyB0aGUgbWVzc2FnZToNCj4+PiAN
Cj4+PiDCoCBFcnJvciBDcmVhdGluZyBQcm9qZWN0DQo+Pj4gwqAgUHJvamVjdCBjYW5ub3QgYmUg
Y3JlYXRlZA0KPj4+IMKgIFJlYXNvbjogSW50ZXJuYWwgRXJyb3I6IGphdmEubGFuZy5OdWxsUG9p
bnRlckV4Y2VwdGlvbiBJJ20NCj4+PiBydW5uaW5nIEVjbGlwc2UgSGVsaW9zIChWZXJzaW9uOiBI
ZWxpb3MgU2VydmljZSBSZWxlYXNlIDIsIEJ1aWxkDQo+Pj4gaWQ6IDIwMTEwMzAxLTE4MTUpIG9u
IFVidW50dSAxMC4xMCBtYWNoaW5lLg0KPj4+IA0KPj4+IEFueSBjbHVlIHdpdGggdGhpcyA/DQo+
Pj4gDQo+Pj4gVGhhbmtzIGluIGFkdmFuY2UsDQo+Pj4gwqAgwqBFbnJpYw0KPj4NCg0KDQo=

