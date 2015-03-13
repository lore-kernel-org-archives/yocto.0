Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8D04E0086D; Fri, 13 Mar 2015 04:02:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.115 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0115.outbound.protection.outlook.com [157.56.110.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A9FCE00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 04:02:16 -0700 (PDT)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) by
	BN3PR0501MB1089.namprd05.prod.outlook.com (25.160.113.11) with
	Microsoft SMTP
	Server (TLS) id 15.1.112.19; Fri, 13 Mar 2015 11:02:14 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) with
	mapi id 15.01.0112.000; Fri, 13 Mar 2015 11:02:14 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Minchev, Todor" <todor.minchev@intel.com>
Thread-Topic: [yocto] eclipse-poky: Can't build from Eclipse, but command line
	build works
Thread-Index: AdBb/BnFUUT6HWWeSZuLla6w2kTN0wAuqBWAAAPbjNAACbe0gAAEo/MgABsWYIAAA+6TYA==
Date: Fri, 13 Mar 2015 11:02:13 +0000
Message-ID: <BN3PR0501MB10907FCB5DACF59DDB5916E8BB070@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <BN3PR0501MB109035A8492F6EA261F15FE8BB190@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<1426159307.7680.18.camel@intel.com>
	<BN3PR0501MB1090163B91C05C2E2CCFDB9CBB060@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<1426182629.7680.39.camel@intel.com>
	<BN3PR0501MB109054B33836D4B641BE0EEBBB060@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<1426237126.26568.19.camel@intel.com>
In-Reply-To: <1426237126.26568.19.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [24.209.195.144]
authentication-results: intel.com; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1089;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(13464003)(51704005)(164054003)(377454003)(92566002)(74316001)(19580405001)(19580395003)(33656002)(2950100001)(2900100001)(87936001)(2656002)(86362001)(50986999)(76176999)(54356999)(110136001)(46102003)(76576001)(93886004)(122556002)(40100003)(99286002)(66066001)(102836002)(62966003)(77156002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1089;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <BN3PR0501MB10895B5576CE34118A6A99D4BB070@BN3PR0501MB1089.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002009)(5005006); SRVR:BN3PR0501MB1089; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1089; 
x-forefront-prvs: 05143A8241
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2015 11:02:13.7703 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1089
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eclipse-poky: Can't build from Eclipse, but command line build works
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
X-List-Received-Date: Fri, 13 Mar 2015 11:02:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9kb3IsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWluY2hldiwg
VG9kb3IgW21haWx0bzp0b2Rvci5taW5jaGV2QGludGVsLmNvbV0NCj4gU2VudDogRnJpZGF5LCBN
YXJjaCAxMywgMjAxNSA0OjU5IEFNDQo+IFRvOiBCcnlhbiBFdmVuc29uDQo+IENjOiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGVjbGlwc2UtcG9reTogQ2Fu
J3QgYnVpbGQgZnJvbSBFY2xpcHNlLCBidXQgY29tbWFuZCBsaW5lDQo+IGJ1aWxkIHdvcmtzDQo+
IA0KPiAqc25pcCoNCj4gDQo+ID4gPiBUaGlzIGlzIGEgZGlmZmVyZW50IGVycm9yLiBUaGVyZSBz
ZWVtcyB0byBiZSBhIG1pc21hdGNoIGJldHdlZW4geW91cg0KPiA+ID4gdG9vbGNoYWluIGFuZCBy
b290ZnMuIENvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgdGhlIGZ1bGwgbmFtZSBvZg0KPiA+ID4NCj4g
PiA+IG15X2J1aWx0X2ltYWdlLnRhci5neiBmcm9tDQo+ID4gPg0KPiA+ID4gcnVucWVtdS1leHRy
YWN0LXNkayA8bXlfYnVpbHRfaW1hZ2UudGFyLmd6Pg0KPiA+ID4gPHN5c3Jvb3RfZGVzdGluYXRp
b25fZGlyZWN0b3J5PiINCj4gPiA+DQo+ID4NCj4gPiBJIGhhdmUgYmVlbiBhYmxlIHRvIGdldCB0
aGluZ3MgdG8gYnVpbGQsIGJ1dCBub3QgZXhhY3RseSBpbiBhIHN1Z2dlc3RlZA0KPiBtYW5uZXIu
ICBJIGNvcGllZCB0aGUgZW50aXJlIHRhcmdldCBzeXNyb290IGRpcmVjdG9yeQ0KPiAofi9wb2t5
L3Bva3lfYnVpbGQvdG1wL3N5c3Jvb3RzL2F0OTFzYW05eDVlaykgdG8gdGhlIHByZXZpb3VzbHkN
Cj4gbWVudGlvbmVkIHN5c3Jvb3QgZGVzdGluYXRpb24gZGlyZWN0b3J5LiAgSSByZS1yYW4gImJp
dGJha2UgbWV0YS1pZGUtDQo+IHN1cHBvcnQiIGp1c3QgdG8gZW5zdXJlIEkgaGFkIGEgY2xlYW4g
Y29weS4gIEkgdGhlbiBtb2RpZmllZCB0aGUNCj4gU0RLVEFSR0VUU1lTUk9PVCB0byBwb2ludCB0
byBteSBjb3BpZWQgc3lzcm9vdCBsb2NhdGlvbi4gIFdpdGggdGhpcyBzZXR1cCwNCj4gSSB3YXMg
YWJsZSB0byBnZXQgdGhlIHByb2plY3QgdG8gYnVpbGQgZnJvbSBFY2xpcHNlLiAgSXQncyB3b3Jr
aW5nLCBidXQgaXQncyBhIGxpdHRsZQ0KPiB1Z2x5IGdldHRpbmcgdGhlcmUuDQo+ID4NCj4gDQo+
IGNvcmUtaW1hZ2UtbWluaW1hbCBidWlsZHMgYSB2ZXJ5IHNtYWxsIGltYWdlLCB3aGljaCBkb2Vz
bid0IGhhdmUgYWxsDQo+IGhlYWRlcnMgYW5kIGxpYnJhcmllcyByZXF1aXJlZCB0byBsaW5rIGV2
ZW4gYSBzaW1wbGUgYmluYXJ5DQo+IA0KPiA+IFNvIEknbSBhc3N1bWluZyBJJ20gc3RhcnRpbmcg
YXQgdGhlIHdyb25nIHBvaW50IGZvciB0aGUgc3lzcm9vdCB0byBleHRyYWN0Lg0KPiBXaGF0IGRv
IG90aGVyIHBlb3BsZSBkbz8NCj4gDQo+IFlvdSBoYXZlIHR3byBvcHRpb25zIGhlcmU6DQo+IA0K
PiAxKSBHZW5lcmF0ZSBhIHN0YW5kYWxvbmUgdG9vbGNoYWluIGFuZCBzZGsgaW5zdGFsbGVyLg0K
PiANCj4gYml0YmFrZSAtYyBwb3B1bGF0ZV9zZGsgeW91cl9pbWFnZV9uYW1lDQo+IA0KPiBUaGlz
IHdpbGwgZ2VuZXJhdGUgYW4gaW5zdGFsbGVyIHNjcmlwdC10YXJiYWxsIGluDQo+IH4vcG9reS9w
b2t5X2J1aWxkL3RtcC9kZXBsb3kvc2RrLw0KPiANCj4gRXhlY3V0ZSB0aGlzIHNjcmlwdCBhbmQg
Zm9sbG93IHRoZSBpbnN0YWxsYXRpb24gaW5zdHJ1Y3Rpb25zLiBUaGlzIHdpbGwNCj4gZXh0cmFj
dCBib3RoIHRoZSB0b29sY2hhaW4gYW5kIHN5c3Jvb3QgdG8gYSBkaXJlY3Rvcnkgb2YgeW91ciBj
aG9pY2UNCj4gKGUuZy4gL29wdC9wb2t5LzEuNi4yLykuDQo+IA0KPiBXaGVuIHlvdSBjb25maWd1
cmUgdGhlIFlvY3RvIEFEVCBwbHVnaW4gaW4gRWNsaXBzZSwgc2VsZWN0ICJTdGFuZGFsb25lDQo+
IHByZS1idWlsdCB0b29sY2hhaW4iIGJlZm9yZSB5b3UgcG9pbnQgaXQgdG8gdGhlIHN5c3Jvb3Qg
YW5kIHRvb2xjaGFpbg0KPiBkaXJlY3RvcmllcyBjcmVhdGVkIGJ5IHRoZSBpbnN0YWxsZXIgYWJv
dmUuDQo+IA0KPiANCj4gMikgQmFzZSB5b3VyIGltYWdlIG9uIG9uZSBvZiB0aGUgZGV2ZWxvcG1l
bnQgaW1hZ2VzIChlLmcuDQo+IGNvcmUtaW1hZ2UtbWluaW1hbC1kZXYpDQo+IA0KDQpTbyAqdGhh
dCogZXhwbGFpbnMgd2h5IEkndmUgbmV2ZXIgYmVlbiBhYmxlIHRvIGdldCB0aGUgRWNsaXBzZSBw
bHVnLWluIHRvIHdvcmsuICBJJ2Qgc3VnZ2VzdCBhZGRpbmcgdGhlIGFib3ZlIGRldGFpbCB0byB0
aGUgIkV4dHJhY3RpbmcgYSBSb290IEZpbGVzeXN0ZW0iIHNlY3Rpb24gb2YgdGhlIG1hbnVhbC4N
Cg0KRm9yIGEgZnJhbWUgb2YgcmVmZXJlbmNlLCBJIGRvIHR3byBzZXBhcmF0ZSBhY3Rpb25zLiAg
SSdsbCB1c2UgYml0YmFrZSB0byBidWlsZCBvdXIgZnVsbCBwcm9kdWN0aW9uIGltYWdlLiAgV2Ug
YWxzbyBoYXZlIGEgZmV3IHVzZXJzcGFjZSBhcHBsaWNhdGlvbnMgaW4gd2hpY2ggSSdsbCBidWls
ZCB0aHJvdWdoIEVjbGlwc2UgYW5kIHRlc3Qgb24gdGhlIGFjdHVhbCBoYXJkd2FyZS4gIFdlIGlu
dGVyZmFjZSB3aXRoIGVub3VnaCBleHRlcm5hbCBkZXZpY2VzIHRoYXQgdGVzdGluZyB3aXRoIHRo
ZSBRRU1VIGRvZXNuJ3Qgd29yayB0b28gd2VsbCBhbmQgd2UnbGwgbmVlZCB0byB0ZXN0IG9uIGFj
dHVhbCBoYXJkd2FyZS4gIFNvIEkganVzdCBuZWVkIHRvIGJ1aWxkIHNvbWV0aGluZyB0aGF0IEkg
Y2FuIHRoZW4gcnVuIG9uIHRoZSBhY3R1YWwgaGFyZHdhcmUuICBBZnRlciByZS1yZWFkaW5nIHRo
ZSAiRXh0cmFjdGluZyB0aGUgUm9vdCBGaWxlc3lzdGVtIiBzZWN0aW9uLCBJIHRoaW5rIHRoZXJl
IGlzIGFuIGFzc3VtcHRpb24gdGhhdCBzb21lb25lIHdvdWxkIG9ubHkgYmUgZG9pbmcgdGhpcyBm
b3IgUUVNVSBwdXJwb3Nlcy4gIEkgdGhpbmsgc29tZSBkZXRhaWxzIHN0YXRpbmcgd2hhdCBpcyBu
ZWVkZWQgb3V0IG9mIHRoZSBleHRyYWN0ZWQgZmlsZXN5c3RlbSBmb3IgZGV2ZWxvcG1lbnQgd291
bGQgYmUgYmVuZWZpY2lhbC4NCg0KVGhhbmtzLA0KQnJ5YW4NCg0KPiBDaGVlcnMsDQo+IFRvZG9y
DQo+IA0KPiANCg0K

