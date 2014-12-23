Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38217E008A7; Tue, 23 Dec 2014 07:58:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.119 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0119.outbound.protection.outlook.com [157.56.110.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8042E00872
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 07:58:17 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (25.160.113.12) by
	BN3PR0501MB1092.namprd05.prod.outlook.com (25.160.113.139) with
	Microsoft
	SMTP Server (TLS) id 15.1.49.12; Tue, 23 Dec 2014 15:58:12 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([25.160.113.12]) with
	mapi id 15.01.0036.010; Tue, 23 Dec 2014 15:58:12 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Openembedded-core@lists.openembedded.org"
	<Openembedded-core@lists.openembedded.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Setting up an init other than SysVinit or systemd?
Thread-Index: AdAewcqPWg+hG407QHGwuIa7BUBmYA==
Date: Tue, 23 Dec 2014 15:58:12 +0000
Message-ID: <BN3PR0501MB109080D667D1D1CE555BC9B3BB570@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 007C8E8B008CAC007C8FD8
x-originating-ip: [98.100.91.242]
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1092;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1092; 
x-forefront-prvs: 04347F8039
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(164054003)(57704003)(189002)(106356001)(92566001)(105586002)(54356999)(68736005)(87936001)(102836002)(2656002)(101416001)(554214002)(31966008)(40100003)(99286002)(50986999)(20776003)(2900100001)(33656002)(62966003)(66066001)(229853001)(99396003)(120916001)(107046002)(4396001)(107886001)(74316001)(19580395003)(64706001)(21056001)(2501002)(46102003)(76576001)(97736003)(122556002)(77156002)(86362001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1092;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2014 15:58:12.0666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1092
Subject: Setting up an init other than SysVinit or systemd?
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
X-List-Received-Date: Tue, 23 Dec 2014 15:58:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsLA0KDQpJIGFtIGluIHRoZSBwcm9jZXNzIG9mIHVwZ3JhZGluZyBjb3JlIGl0ZW1zIGluIG15
IGltYWdlIChjb3JlLWltYWdlLW1pbmltYWwgd2l0aCBhIGZldyBhZGRpdGlvbmFsIHBhY2thZ2Vz
KSwgYW5kIG9uZSBpdGVtIEkgYW0gdGFraW5nIGEgbG9vayBhdCBpcyBjaGFuZ2luZyBteSBpbml0
IGZyb20gU3lzVmluaXQuICBJIGtub3cgdGhlIG90aGVyIGVhc2lseSBzdXBwb3J0ZWQgb3B0aW9u
IGZvciBpbml0IGlzIHN5c3RlbWQsIGJ1dCBpZiBJIGNoYW5nZSB0byBzeXN0ZW1kIEkgd2FudCB0
byBkbyBpdCBiZWNhdXNlIGl0IHdvcmtzIGJlc3QgZm9yIG15IHNldHVwIGFuZCBub3QganVzdCBi
ZWNhdXNlIEkgdGhpbmsgaXRzIG15IG9ubHkgb3RoZXIgb3B0aW9uLiAgSSdkIGxpa2UgdG8gdHJ5
IHNvbWUgb3RoZXIgaW5pdCBvcHRpb25zIG91dCwgYnV0IEkgZG9uJ3Qgc2VlIGhvdyB0byBzZXR1
cCB0aGUgY29uZmlndXJhdGlvbiB0byB1c2UgYW4gaW5pdCBvdGhlciB0aGFuIFN5c1Zpbml0IG9y
IHN5c3RlbWQgYW5kIEkgYW0gbG9va2luZyBmb3Igc29tZSBoZWxwLg0KDQpGcm9tIGxvb2tpbmcg
YXQgdGhlIE9wZW5FbWJlZGRlZCBNZXRhZGF0YSBJbmRleCwgSSBzZWUgdGhlcmUgaXMgYSByZWNp
cGUgZm9yIFVwc3RhcnQgKGh0dHA6Ly9sYXllcnMub3BlbmVtYmVkZGVkLm9yZy9sYXllcmluZGV4
L3JlY2lwZS80OTk0Lykgc28gSSdtIGFzc3VtaW5nIHNvbW9uZSBlbHNlIGhhcyB1c2VkIFVwc3Rh
cnQgYXQgbGVhc3QgYXQgb25lIHRpbWUuICBJIGFsc28ga25vdyB0aGF0IEJ1c3lib3ggaW5jbHVk
ZXMgcnVuaXQuICBJJ2QgbGlrZSB0byBnaXZlIGVhY2ggb2YgdGhlc2UgYSB0cnkgdG8gc2VlIGhv
dyB0aGV5IHdvcmssIGJ1dCBmaXJzdCBJIG5lZWQgdG8gYnVpbGQgYW4gaW1hZ2Ugd2l0aCB0aGVz
ZSBpbml0IG1hbmFnZXJzLiAgRnJvbSBsb29raW5nIGF0IHRoZSBkZXZlbG9wbWVudCBtYW51YWwg
SSBzZWUgaG93IHRvIGNob29zZSBzeXN0ZW1kIGJ1dCBJIGRvbid0IHNlZSBob3cgdG8gY2hvb3Nl
IGFueXRoaW5nIGVsc2UuDQoNCldoYXQgY29uZmlndXJhdGlvbiB2YXJpYWJsZXMgZG8gSSBuZWVk
IHRvIHNldCBpbiBvcmRlciB0byB1c2UgYSBkaWZmZXJlbnQgaW5pdCBzeXN0ZW0/ICBXaGF0IGl0
ZW1zIGRvIEkgbmVlZCB0byBhZGQgdGhhdCBhcmUgYXV0b21hdGljYWxseSBhZGRlZCB3aGVuIHVz
aW5nIFN5c1ZJbml0IG9yIHN5c3RlbWQgdGhhdCB3b3VsZCBub3QgYmUgYWRkZWQgd2hlbiB1c2lu
ZyBhbiB1bnN1cHBvcnRlZCBpbml0IHN5c3RlbT8NCg0KVGhhbmtzLA0KQnJ5YW4NCg0K

