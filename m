Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD192E00804; Mon, 16 Nov 2015 10:40:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.101 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bbn0101.outbound.protection.outlook.com [157.56.111.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7725E0071C
	for <yocto@yoctoproject.org>; Mon, 16 Nov 2015 10:40:48 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1092.namprd05.prod.outlook.com (10.160.113.139) with
	Microsoft
	SMTP Server (TLS) id 15.1.325.17; Mon, 16 Nov 2015 18:25:25 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0325.003; Mon, 16 Nov 2015 18:25:25 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Martin Townsend <mtownsend1973@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] SDK
Thread-Index: AQHRHujDI/g/YFxxpkahd0Gpccs2v56e9xDw
Date: Mon, 16 Nov 2015 18:25:25 +0000
Message-ID: <BN3PR0501MB109059212446E201859CA2FABB1E0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CABatt_ykrWtkrAv-CC-uUiHb4kOKf5B3UFgcuvDUvJ2MRbW1WA@mail.gmail.com>
In-Reply-To: <CABatt_ykrWtkrAv-CC-uUiHb4kOKf5B3UFgcuvDUvJ2MRbW1WA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1092;
	5:+WiWsFfUicKlIjTdqHB3UcvaX1acLlFSziyF0v7pfP17QgRtPs85BJKC43vRkI0DWkaE0qmXDhn98u1jL22YXbcwmk1cwRxsxzilDDoFO/cYbjCHURgu4O4VmGovqe+lyxaltVzlFYb58armQXtfaw==;
	24:j1ujdpd3frVGnA4I2F5dvLUz9kbwJLQl3m+Hn2j6rqqd+ofKRmai9Qwp1/XLaZASU2IISiJnAf5goo0pzpnIMBwunzBUW6BRcmTG+sM+lN4=;
	20:+GtCeZ5XWeRJIevcMmItnSixff2FeYTl0ueYezWbWe3jNV3gLCqxp8T7j24jydSMNCzxgqfijQmx6tBlereW7A==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1092;
x-microsoft-antispam-prvs: <BN3PR0501MB10926CE7A917788E6C4EA60DBB1E0@BN3PR0501MB1092.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(520078)(3002001)(10201501046);
	SRVR:BN3PR0501MB1092; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1092; 
x-forefront-prvs: 0762FFD075
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189002)(13464003)(164054003)(66654002)(199003)(377454003)(19580395003)(5001960100002)(105586002)(5007970100001)(106116001)(99286002)(101416001)(86362001)(33656002)(5001770100001)(77096005)(76576001)(586003)(66066001)(19580405001)(10400500002)(5008740100001)(15975445007)(122556002)(107886002)(5003600100002)(54356999)(50986999)(87936001)(189998001)(76176999)(106356001)(102836002)(2950100001)(2501003)(5002640100001)(40100003)(92566002)(2900100001)(97736004)(11100500001)(81156007)(5004730100002)(74316001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1092;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2015 18:25:25.0298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1092
Subject: Re: SDK
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
X-List-Received-Date: Mon, 16 Nov 2015 18:40:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWFydGluLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvLWJv
dW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLQ0KPiBib3VuY2VzQHlvY3RvcHJv
amVjdC5vcmddIE9uIEJlaGFsZiBPZiBNYXJ0aW4gVG93bnNlbmQNCj4gU2VudDogU2F0dXJkYXks
IE5vdmVtYmVyIDE0LCAyMDE1IDk6MjcgQU0NCj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
Cj4gU3ViamVjdDogW3lvY3RvXSBTREsNCj4gDQo+IEhpLA0KPiANCj4gDQo+IA0KPiBJIHdhbnQg
dG8gcHJvdmlkZSBhbiBTREsgdG8gdGhlIGFwcCBkZXZlbG9wZXJzIHRoYXQgaXMgYSBzZWxmIGNv
bnRhaW5lZA0KPiBpbnN0YWxsYXRpb24uICBUaGUgQURUIGxvb2tlZCBsaWtlIGp1c3QgdGhlIHRo
aW5nIGV4Y2VwdCBJIGRvbid0IHdhbnQgdG8gaGF2ZSB0bw0KPiBzZXR1cCBhbiBBRFQgUmVwby4g
IEkgd291bGQgbGlrZSBpdCB0byBpbmNsdWRlOg0KPiANCj4gDQo+IFRoZSBjcm9zcyBkZXZlbG9w
bWVudCB0b29sY2hhaW4uDQo+IA0KPiBUaGUgdGFyZ2V0IHN5c3Jvb3QgdG8gYnVpbGQgYWdhaW5z
dC4gIEkgd291bGQgbGlrZSB0aGVtIHRvIGJlIGFibGUgdG8NCj4gZHluYW1pY2FsbHkgbGluayBh
bmQgc3RhdGljYWxseSBsaW5rIGFnYWluc3QgZXZlcnl0aGluZyBpbiB0aGUgSW1hZ2UuDQo+IA0K
PiBUaGV5IG1heSB3YW50IHRvIGRldmVsb3Aga2VybmVsIG1vZHVsZXMgc28gSSB3b3VsZCB3YW50
IHRoZSBrZXJuZWwNCj4gaGVhZGVyIGZpbGVzIGV0YyBpbiB0aGUgdGFyZ2V0IHN5c3Jvb3QuDQo+
IA0KPiBUaGUgRWNsaXBzZSBJREUgWW9jdG8gcGx1Zy1pbiBvciBhbm90aGVyIHdheSBvZiB1c2lu
ZyBFY2xpcHNlIHRvIGJ1aWxkIGFuZA0KPiBkZWJ1ZyBmb3IgdGhlIHRhcmdldC4NCj4gSSBXb3Vs
ZCBhbHNvIGxpa2UgdG8gdXNlIHRoaW5ncyBsaWtlIHRoZSBMVFRORyBhbmQgVmFsZ3JpbmQgaW50
ZWdyYXRpb24gaW4NCj4gRWNsaXBzZS4NCj4gDQo+IFFFTVUgd291bGQgYmUgYSBuaWNlIHRvIGhh
dmUgYW5kIHdpdGggaW50ZWdyYXRpb24gaW50byBFY2xpcHNlLg0KPiANCj4gDQo+IEkgaGF2ZSBt
eSBvd24gZGlzdHJvIGFuZCBpbWFnZSBmaWxlcyB3aGljaCBhcmVuJ3QgYSBtaWxsaW9uIG1pbGVz
IGF3YXkgZnJvbQ0KPiBwb2t5IGFuZCBjb3JlLWltYWdlLW1pbmltYWwgOikNCj4gDQo+IA0KPiBG
cm9tIHdoYXQgSSd2ZSByZWFkIEkgdGhpbmsgdGhlIGJlc3QgdGhpbmcgZm9yIG1lIHRvIGRvIGlz
DQo+IA0KPiBiaXRiYWtlIG15LWltYWdlIC1jcG9wdWxhdGVfc2RrDQo+IA0KPiB3aGljaCBnaXZl
cyBteSBhbiBpbnN0YWxsZXIgZm9yIHRoZSB0b29sY2hhaW4sIHRhcmdldCBzeXNyb290IGFuZCBx
ZW11IChJDQo+IHRoaW5rKS4NCg0KWW91IG5lZWQgdG8gbWFrZSBzdXJlIHlvdXIgaW1hZ2UgaW5j
bHVkZXMgdGhlIGZlYXR1cmVzIGZvciBkZWJ1Z2dpbmcuICBJZiB5b3UgaGF2ZSBhbiBpbWFnZSB0
aGF0IGlzIGJhc2VkIHVwb24gY29yZS1pbWFnZS1taW5pbWFsLCB0aGUgaW1hZ2Ugd2lsbCBiZSBt
aXNzaW5nIHNvbWUgZmVhdHVyZXMgYW5kIHlvdSdsbCBuZXZlciBiZSBhYmxlIHRvIGRlYnVnIGFu
IGFwcGxpY2F0aW9uIHRocm91Z2ggRWNsaXBzZSBvciB1c2UgTHR0bmcuDQoNCkknZCBzdWdnZXN0
IG1ha2luZyBhIGRldmVsb3BtZW50IGltYWdlIHJlY2lwZSAoaS5lLiAibXktY3VzdG9tLWltYWdl
LWRldi5iYiIpIGJhc2VkIG9uIHlvdXIgaW1hZ2Ugd2l0aCB0aGUgZm9sbG93aW5nIGNoYW5nZXM6
DQoxLiBBZGQgImRldi1wa2dzIGVjbGlwc2UtZGVidWciIHRvIElNQUdFX0ZFQVRVUkVTDQoyLiBB
ZGQgYSAiLWRiZyIgcGFja2FnZSB0byBJTUFHRV9JTlNUQUxMIGZvciBlYWNoIHVzZXJzcGFjZSBh
cHBsaWNhdGlvbiB5b3UgYXJlIHdyaXRpbmcgd2hpY2ggeW91IHBsYW4gdG8gZGVidWcgd2l0aCBH
REIuDQozLiBBZGQgImdkYnNlcnZlciIgdG8gSU1BR0VfSU5TVEFMTCBmb3IgR0RCIHN1cHBvcnQu
DQo0LiBBZGQgImx0dG5nLXRvb2xzIGx0dG5nLW1vZHVsZXMgbHR0bmctdXN0IiB0byBJTUFHRV9J
TlNUQUxMIGZvciBMdHRuZyBzdXBwb3J0Lg0KDQpPbmNlIHlvdSd2ZSBidWlsdCBhbmQgdmVyaWZp
ZWQgdGhlIG5ldyBpbWFnZSBydW5zIG9uIHlvdXIgaGFyZHdhcmUsIEknZCB0aGVuIGNyZWF0ZSB0
aGUgU0RLIGFzIHlvdSBkZXNjcmliZWQgYWJvdmUuICBJIGRvbid0IHVzZSBRRU1VIHNvIEkgY2Fu
J3Qgc3BlYWsgdG8gd2hldGhlciB0aGF0IGdldHMgaW5jbHVkZWQgaW4gdGhlIFNESyBvciBub3Qu
ICBCdXQsIGlmIHlvdSBoYXZlIGEgZGV2ZWxvcGVyIHRoYXQgaXNuJ3QgcmVzcG9uc2libGUgZm9y
IGJ1aWxkaW5nIHRoZSB3aG9sZSBpbWFnZSBhbmQganVzdCB3YW50cyB0byBidWlsZCBhbmQgZGVi
dWcgdGhlaXIgdXNlcnNwYWNlIGFwcGxpY2F0aW9uLCB0aGUgU0RLIGFuZCByZXN1bHRpbmcgc3lz
cm9vdCBzaG91bGQgYmUgYWxsIHRoZSBwaWVjZXMgdGhleSBuZWVkIG9uIHRoZWlyIGRldmVsb3Bt
ZW50IG1hY2hpbmUuDQoNClJlZ2FyZHMsDQpCcnlhbg0KDQo+IA0KPiBUaGVuIGdldCB0aGVtIHRv
IGluc3RhbGwgdGhlIEVjbGlwc2UgcGx1Z2luIGJ5IGZvbGxvd2luZyB0aGUgaW5zdHJ1Y3Rpb25z
IGZyb20NCj4gaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvMS44L2Rldi1tYW51YWwv
ZGV2LW1hbnVhbC5odG1sI2FkdC0NCj4gZWNsaXBzZQ0KPiANCj4gDQo+IEp1c3Qgd2FudCB0byBj
aGVjayBJJ20gb24gdGhlIHJpZ2h0IHBhdGggYW5kIHRoZXJlJ3Mgbm90IGFub3RoZXIgYmV0dGVy
IHdheS4NCj4gDQo+IA0KPiBNYW55IFRoYW5rcywNCj4gDQo+IE1hcnRpbi4NCj4gDQo+IA0KDQo=

