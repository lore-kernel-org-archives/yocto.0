Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45A57E00BF7; Thu, 10 Dec 2015 07:00:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 67224 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Dec 2015 07:00:07 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0133.outbound.protection.outlook.com [207.46.100.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A288BE00718
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 07:00:07 -0800 (PST)
Received: from DM2PR0501MB1101.namprd05.prod.outlook.com (10.160.245.11) by
	DM2PR0501MB1104.namprd05.prod.outlook.com (10.160.245.140) with
	Microsoft
	SMTP Server (TLS) id 15.1.355.16; Thu, 10 Dec 2015 15:00:02 +0000
Received: from DM2PR0501MB1101.namprd05.prod.outlook.com ([10.160.245.11]) by
	DM2PR0501MB1101.namprd05.prod.outlook.com ([10.160.245.11]) with
	mapi id 15.01.0355.012; Thu, 10 Dec 2015 15:00:02 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: ed <ed@disignconsultants.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] DHCP kernel 2.6.35
Thread-Index: AQHRMmHVCmGWg6jvZke3g7asUVXJVJ7ESrYA
Date: Thu, 10 Dec 2015 15:00:02 +0000
Message-ID: <DM2PR0501MB1101759688A2B9291E09F6BBBBE90@DM2PR0501MB1101.namprd05.prod.outlook.com>
References: <5667EEE6.1080106@disignconsultants.com>
In-Reply-To: <5667EEE6.1080106@disignconsultants.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; DM2PR0501MB1104;
	5:ijxf79FcGxUf5DGiFwC27MHLyEGPU4S32Sx1VGTIj4ZEtj9uR7bMGsU3YHrFi6at0JOTMcEZplbDdsVzhLfqZbrKcOdyPHmAhXguXhSnHqDfcfxX6ho4BxvnHBzvjd1dwQ8Asy72jRnQZzYfo7oJ1w==;
	24:H0LFUWMQh48qCmdCFwEGPjHlZyVsLYCUnP7LW/4C1V7PU+1L27TGFDpuPz2U010jv8SuEz7BG76aOANQRmcgm043Yhs1CBAJrruEj8ODqeA=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0501MB1104;
x-microsoft-antispam-prvs: <DM2PR0501MB110410BC3512C812AFB68CBEBBE90@DM2PR0501MB1104.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:DM2PR0501MB1104; BCL:0; PCL:0; RULEID:;
	SRVR:DM2PR0501MB1104; 
x-forefront-prvs: 078693968A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(57704003)(199003)(377454003)(189002)(5423002)(13464003)(164054003)(106356001)(33656002)(105586002)(66066001)(19580405001)(86362001)(87936001)(122556002)(40100003)(106116001)(99286002)(2950100001)(77096005)(2900100001)(97736004)(101416001)(15975445007)(81156007)(92566002)(5008740100001)(15974865002)(5003600100002)(5002640100001)(586003)(19580395003)(102836003)(3846002)(1220700001)(1096002)(11100500001)(6116002)(74316001)(5004730100002)(76576001)(5001960100002)(5890100001)(10400500002)(189998001)(2501003)(54356999)(107886002)(76176999)(50986999)(5001770100001)(15395725005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0501MB1104;
	H:DM2PR0501MB1101.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2015 15:00:02.1886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0501MB1104
Subject: Re: DHCP kernel 2.6.35
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
X-List-Received-Date: Thu, 10 Dec 2015 15:00:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RWR3YXJkLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvLWJv
dW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLQ0KPiBib3VuY2VzQHlvY3RvcHJv
amVjdC5vcmddIE9uIEJlaGFsZiBPZiBlZA0KPiBTZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDA5
LCAyMDE1IDQ6MDYgQU0NCj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDog
W3lvY3RvXSBESENQIGtlcm5lbCAyLjYuMzUNCj4gDQo+IEhpLA0KPiANCj4gUmVnYXJkcyB0aGUg
WW9jdG8gMi42LjM1IGtlcm5lbCBJIGhhdmUgdHdvIHF1ZXN0aW9uczsgdGhpcyBpcyBmb3IgYW4g
aW14Mjg7DQo+IA0KPiAxKSBXaGF0IGlmIGFueXRoaW5nIGlzIHJlc3BvbnNpYmxlIGZvciBnZXR0
aW5nIGEgbmV3IERIQ1AgbGVhc2UgKGFuZCBJUA0KPiBhZGRyZXNzKSBhZnRlciBpdCBleHBpcmVz
IG9yIG1pc3NlcyB0aGUgaW5pdGlhbCBsZWFzZT8gSWYgdGhlIEV0aGVybmV0IGNhYmxlIGlzDQo+
IHBsdWdnZWQgaW4gcG9zdCBib290aW5nIHVwLCB0aGUgZGV2aWNlIG5ldmVyIGdldHMgYW4gYWRk
cmVzcy4gSSBoYXZlIHRvDQo+IG1hbnVhbGx5IHVzZSB1ZGhjcGMuIEhvdyBkb2VzIGVtYmVkZGVk
IExpbnV4IGNhdGVyIGZvciB0aGlzPw0KPiANCg0KV2hhdCBpbWFnZSBpcyBpdCB0aGF0IHlvdSBh
cmUgYnVpbGRpbmc/ICBUaGUgY29yZS1pbWFnZS1taW5pbWFsIGltYWdlIGRvZXNuJ3QgaGF2ZSBh
bnl0aGluZyBpbmNsdWRlZCBmb3IgaG90cGx1ZyBzdXBwb3J0LiAgU28gaWYgdGhlIEV0aGVybmV0
IGNvbm5lY3Rpb24gaXMgbm90IHRoZXJlIG9uIGluaXRpYWwgYm9vdCwgeW91J3JlIG91dCBvZiBs
dWNrIHVubGVzcyB5b3UgbWFudWFsbHkgcmVzdGFydCBuZXR3b3JraW5nIG9uIHRoZSBkZXZpY2Ug
b3IgcmVib290IGl0LiAgWW91IGNhbiBlaXRoZXIgdXNlIGlmcGx1Z2QgaW4gQnVzeWJveCBvciBj
b25ubWFuLiAgTm90ZSB0aGF0IGlmIHlvdSBhZGQgaWZwbHVnZCBmb3IgQnVzeWJveCB0aGF0IGl0
IGRvZXNu4oCZdCBjb21lIHdpdGggYW4gaW5pdCBzY3JpcHQgYW5kIHlvdSdsbCBoYXZlIHRvIGdl
bmVyYXRlIG9uZS4gIEkgZm91bmQgaXQgZWFzaWVyIHRvIGRvd25sb2FkIHRoZSBvcmlnaW5hbCBp
ZnBsdWdkIHNvdXJjZSAobG9jYXRlZCBoZXJlOiBodHRwOi8vMHBvaW50ZXIuZGUvbGVubmFydC9w
cm9qZWN0cy9pZnBsdWdkLyNkb3dubG9hZCkgYW5kIG1ha2UgbXkgb3duIHBhY2thZ2UgZnJvbSBp
dCB0aGFuIHRvIHVzZSBCdXN5Ym94J3MgdmVyc2lvbi4gIElmIHlvdXIgaW1hZ2UgaGFzIGEgbG90
IG1vcmUgZmVhdHVyZXMgb24gaXQgdGhhbiBhcmUgcHJlc2VudCBpbiBjb3JlLWltYWdlLW1pbmlt
YWwsIGNvbm5tYW4gbWF5IGJlIG1vcmUgYXBwcm9wcmlhdGUuICBPbiBteSBzeXN0ZW0gSSBkaWRu
J3Qgd2FudCB0byBwdWxsIGluIGFsbCB0aGUgZGVwZW5kZW5jaWVzIHJlcXVpcmVkIGZvciBjb25u
bWFuIHNvIGlmcGx1Z2Qgd2FzIG1vcmUgYXBwcm9wcmlhdGUuDQoNClJlZ2FyZHMsDQpCcnlhbg0K
DQo+IDIpIEJhc2VkIG9uIHRoZSBpbXgyOF9ldmsgd2hpY2ggaGFzIGV0aDAsIGV0aDEgYW5kIFdh
bjAsIG91ciBib2FyZCBvbmx5DQo+IHVzZXMgZXRoMC4gV2hpY2ggZmlsZSBkbyBJIG5lZWQgdG8g
ZWRpdCB0byByZW1vdmUgZXRoMSBhbmQgd2FuMD8NCj4gDQo+IFRoYW5rcywNCj4gDQo+IEVkd2Fy
ZC4NCj4gDQo+IA0KPiAtLQ0KPiBEaXNpZ24gQ29uc3VsdGFudHMNCj4gdDogKzQ0ICgwKSAyMDcg
NTQ0IDg0ODYNCj4gdzogd3d3LmRpc2lnbmNvbnN1bHRhbnRzLmNvbSA8aHR0cDovL3d3dy5kaXNp
Z25jb25zdWx0YW50cy5jb20+DQo+IA0KPiBUaGlzIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2htZW50
IGFyZSBjb25maWRlbnRpYWwgYW5kIG1heSBiZSBwcml2aWxlZ2VkIG9yDQo+IG90aGVyd2lzZSBw
cm90ZWN0ZWQgZnJvbSBkaXNjbG9zdXJlLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVj
aXBpZW50LA0KPiBwbGVhc2UgdGVsZXBob25lIG9yIGVtYWlsIHRoZSBzZW5kZXIgYW5kIGRlbGV0
ZSB0aGlzIG1lc3NhZ2UgYW5kIGFueQ0KPiBhdHRhY2htZW50IGZyb20geW91ciBzeXN0ZW0uIElm
IHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQgeW91DQo+IG11c3Qgbm90IGNvcHkg
dGhpcyBtZXNzYWdlIG9yIGF0dGFjaG1lbnQgb3IgZGlzY2xvc2UgdGhlIGNvbnRlbnRzIHRvIGFu
eQ0KPiBvdGhlciBwZXJzb24uDQo=

