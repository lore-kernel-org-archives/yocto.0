Return-Path: <rcalhoun@shotspotter.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBA49E00D1F; Sun, 13 Sep 2015 18:55:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0085.outbound.protection.outlook.com [65.55.169.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E3C9E00B36
	for <yocto@yoctoproject.org>; Sun, 13 Sep 2015 18:55:45 -0700 (PDT)
Received: from BY2PR0401MB0902.namprd04.prod.outlook.com (10.160.64.139) by
	BY2PR0401MB0901.namprd04.prod.outlook.com (10.160.64.13) with Microsoft
	SMTP Server (TLS) id 15.1.268.17; Mon, 14 Sep 2015 01:40:23 +0000
Received: from BY2PR0401MB0902.namprd04.prod.outlook.com ([10.160.64.139]) by
	BY2PR0401MB0902.namprd04.prod.outlook.com ([10.160.64.139]) with
	mapi id 15.01.0268.017; Mon, 14 Sep 2015 01:40:22 +0000
From: Robert Calhoun <rcalhoun@shotspotter.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Warning about auto generated BSP description
Thread-Index: AdDuYPUVhS0FImuORRu4v3X7tO4CNQAC9SEA
Date: Mon, 14 Sep 2015 01:40:22 +0000
Message-ID: <90A8BD5E-50DE-4AF8-946D-62620C29AF12@shotspotter.com>
References: <CBE84E2773C74A3AB4EA3A80074BCFB3@PAULD>
In-Reply-To: <CBE84E2773C74A3AB4EA3A80074BCFB3@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/0.0.0.150807
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rcalhoun@shotspotter.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [172.77.112.35]
x-microsoft-exchange-diagnostics: 1; BY2PR0401MB0901;
	5:RDeswOG/91Fdc5Ii8qU2UJvTf/r188H0YwaF+IH8Ysn5c7Q+8tU7AXAKR/LZm3aLks0TaYUflE4eG8wwnoWzrkw/R9eFxr/LqDjqf3dPn+WR1YpWzY6U4clPjpdV0cVq9guQMDj4I9LfYWt/SMspBA==;
	24:2I+8bMDIGBQJTYhXBi5bwc+lclGDB4foMMBwhRKphgYFBlsccy0FD9WoDLiBi3BZs0BLpRNVKV7py91TTXCkvng6yIBwvt65uzNUGy81X0s=;
	20:OBMbJHsCUISdTSX3rI3U/mXafaMSMDPR9dkwOix4IByJWY4QovSu4V0ZCFIrrUGCWrmPx004gOcKF4CwkJB0+Q==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR0401MB0901;
x-microsoft-antispam-prvs: <BY2PR0401MB090183273C5138097C9E988BCE5D0@BY2PR0401MB0901.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(8121501046)(3002001);
	SRVR:BY2PR0401MB0901; BCL:0; PCL:0; RULEID:;
	SRVR:BY2PR0401MB0901; 
x-forefront-prvs: 0699FCD394
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(199003)(377454003)(479174004)(24454002)(189002)(2501003)(40100003)(99286002)(105586002)(101416001)(106356001)(5004730100002)(19580395003)(5007970100001)(19580405001)(5001830100001)(5001770100001)(5002640100001)(10400500002)(102836002)(77096005)(86362001)(68736005)(122556002)(189998001)(33656002)(5001960100002)(107886002)(46102003)(4001350100001)(81156007)(5001860100001)(87936001)(92566002)(4001540100001)(97736004)(83506001)(62966003)(77156002)(83716003)(54356999)(76176999)(2900100001)(82746002)(2950100001)(50986999)(64706001)(36756003)(66066001)(7059030)(104396002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR0401MB0901;
	H:BY2PR0401MB0902.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: shotspotter.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: shotspotter.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2015 01:40:22.4939 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 375a7f95-52d1-443a-aa60-167b2aefb8af
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0401MB0901
Subject: Re: Warning about auto generated BSP description
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
X-List-Received-Date: Mon, 14 Sep 2015 01:55:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FB5DBBC7ED705242BB5E0B629618CAF7@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

WW91ciBrZXJuZWwgcmVjaXBlIG5lZWRzIHRvIGhhdmUgYW4gZW50cnkgZm9yIHRoZSBtYWNoaW5l
LCBlLmcuIGEga2VybmVsIHJlY2lwZSBjYWxsZWQgbGludXgtbWFpbmxpbmUuYmIgY29udGFpbnMN
CkNPTVBBVElCTEVfTUFDSElORV9teW1hY2hpbmUgPSAibXltYWNoaW5lIg0KDQpBbHNvLCB5b3Vy
IG1hY2hpbmUgY29uZmlnIGZpbGUgbXltYWNoaW5lLmNvbmYgbmVlZHMgdG8gaGF2ZSBhIHByZWZl
cnJlZCBrZXJuZWwgdmVyc2lvbiwgZS5nOg0KUFJFRkVSUkVEX1BST1ZJREVSX3ZpcnR1YWwva2Vy
bmVsID89ICJsaW51eC1tYWlubGluZSINClBSRUZFUlJFRF9WRVJTSU9OX2xpbnV4LXlvY3RvID89
ICIzLjE5JSINClBSRUZFUlJFRF9WRVJTSU9OX2xpbnV4LW1haW5saW5lID89ICI0LjIlIg0KDQoN
CihJIGFtIG5vdCBjZXJ0YWluIHRoZXNlIHdpbGwgZml4IHlvdXIgZXJyb3IgYnV0IHlvdSBzaG91
bGQgaGF2ZSB0aGVtIGRlZmluZWQuKQ0KLVJvYg0KDQoNCg0KDQpPbiA5LzEzLzE1LCA0OjE1IFBN
LCAieW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIG9uIGJlaGFsZiBvZiBQYXVsIEQuIERl
Um9jY28iIDx5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgb24gYmVoYWxmIG9mIHBkZXJv
Y2NvQGl4Lm5ldGNvbS5jb20+IHdyb3RlOg0KDQo+SSdtIGdldHRpbmcgdGhlIGZvbGxvd2luZyB3
YXJuaW5nOg0KPg0KPltrZXJuZWxdOiBBbiBhdXRvIGdlbmVyYXRlZCBCU1AgZGVzY3JpcHRpb24g
d2FzIHVzZWQsIHRoaXMgbm9ybWFsbHkNCj5pbmRpY2F0ZXMgYSBtaXNjb25maWd1cmF0aW9uLg0K
PkNoZWNrIHRoYXQgeW91ciBtYWNoaW5lIChjaHJvbWEtYnNwKSBoYXMgYW4gYXNzb2NpYXRlZCBr
ZXJuZWwgZGVzY3JpcHRpb24uDQo+DQo+R29vZ2xpbmcgdHVybnMgdXAgdGhlIGluZm9ybWF0aW9u
IHRoYXQgdGhpcyBpcyBzb21ldGltZXMgYSBzcHVyaW91cyBlcnJvcg0KPmFuZCBub3RoaW5nIHRv
IHdvcnJ5IGFib3V0LCBiZWNhdXNlIGEgZnVsbCBCU1AgZGVzY3JpcHRpb24gaXNuJ3Qgc3RyaWN0
bHkNCj5yZXF1aXJlZC4gSG93ZXZlciwgYXMgZmFyIGFzIEkgY2FuIHNlZSBJIGRvIGluZGVlZCBo
YXZlIGEgQlNQIGRlc2NyaXB0aW9uLg0KPkkgYnVpbHQgdGhlIEJTUCB1c2luZyB0aGUgeW9jdG8t
YnNwIHRvb2wuIEl0IGNyZWF0ZWQgYQ0KPmxpbnV4LXlvY3RvLXJ0XzMuMTQuYmJhcHBlbmQgKHNp
bmNlIEknbSB1c2luZyB0aGUgUlQga2VybmVsKSwgYW5kIHRoZQ0KPmZvbGxvd2luZyBmaWxlczoN
Cj4NCj4gICAgY2hyb21hLWJzcC5jZmcNCj4gICAgY2hyb21hLWJzcC5zY2MNCj4gICAgY2hyb21h
LWJzcC1wcmVlbXB0LXJ0LnNjYw0KPiAgICBjaHJvbWEtYnNwLXN0YW5kYXJkLnNjYw0KPiAgICBj
aHJvbWEtYnNwLXRpbnkuc2NjDQo+ICAgIGNocm9tYS1ic3AtdXNlci1jb25maWcuY2ZnDQo+ICAg
IGNocm9tYS1ic3AtdXNlci1mZWF0dXJlcy5zY2MNCj4gICAgY2hyb21hLWJzcC11c2VyLXBhdGNo
ZXMuc2NjDQo+DQo+VGhlIGJiYXBwZW5kIHJlZmVycyB0byBjaHJvbWEtYnNwLXByZWVtcHQtcnQu
c2NjIGFuZCB0aGUgbGFzdCB0aHJlZQ0KPihlbXB0eSkgZmlsZXMuIGNocm9tYS1ic3AtcHJlZW1w
dC1ydC5zY2MgY29udGFpbnMgdGhlIHJlcXVpc2l0ZSBLTUFDSElORSwNCj5LVFlQRSBhbmQgS0FS
Q0gsIGFuZCBpbmNsdWRlcyBjaHJvbWEtYnNwLnNjYywgd2hpY2ggcmVmZXJzIHRvDQo+Y2hyb21h
LWJzcC5jZmcuIFRoaXMgc2VlbXMgdG8gZml0IHRoZSBkZWZpbml0aW9uIG9mIGEgIkJTUCBkZXNj
cmlwdGlvbiIgaW4NCj4zLjQuNSBvZiB0aGUgS2VybmVsIERldmVsb3BtZW50IE1hbnVhbC4gVGhl
IHdob2xlIEJTUCB0cmVlIGlzIGNhbGxlZA0KPiJtZXRhLWNocm9tYS1ic3AiIGFuZCB0aGF0IGlz
IGluZGVlZCBsaXN0ZWQgaW4gbXkgYmJsYXllcnMuY29uZi4gU28gd2h5IGlzDQo+aXQgY29tcGxh
aW5pbmc/DQo+DQo+QWxzbywgSSBkb24ndCBrbm93IHRoYXQgIkNoZWNrIHRoYXQgeW91ciBtYWNo
aW5lIGhhcyBhbiBhc3NvY2lhdGVkIGtlcm5lbA0KPmRlc2NyaXB0aW9uIiBtZWFucy4gVGhlIHRl
cm0gImtlcm5lbCBkZXNjcmlwdGlvbiIgZG9lc24ndCBhcHBlYXIgYW55d2hlcmUNCj5pbiB0aGUg
ZG9jcy4NCj4NCj4tLSANCj4NCj5DaWFvLCAgICAgICAgICAgICAgIFBhdWwgRC4gRGVSb2Njbw0K
PlBhdWwgICAgICAgICAgICAgICAgbWFpbHRvOnBkZXJvY2NvQGl4Lm5ldGNvbS5jb20gDQo+DQo+
LS0gDQo=

