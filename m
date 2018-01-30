Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CCD8E00DD1; Tue, 30 Jan 2018 12:21:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 516 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 Jan 2018 12:21:51 PST
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F4F5E0056D;
	Tue, 30 Jan 2018 12:21:51 -0800 (PST)
Received: from g4t3427.houston.hpe.com (g4t3427.houston.hpe.com
	[15.241.140.73])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id A0C1F607A7;
	Tue, 30 Jan 2018 20:13:14 +0000 (UTC)
Received: from G1W8108.americas.hpqcorp.net (g1w8108.austin.hp.com
	[16.193.72.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3427.houston.hpe.com (Postfix) with ESMTPS id 5F7947B;
	Tue, 30 Jan 2018 20:13:13 +0000 (UTC)
Received: from G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) by
	G1W8108.americas.hpqcorp.net (2002:10c1:483c::10c1:483c) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Tue, 30 Jan 2018 20:13:12 +0000
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (15.241.52.11) by
	G2W6309.americas.hpqcorp.net (16.197.64.51) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Tue, 30 Jan 2018 20:13:12 +0000
Received: from TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM (10.169.45.143) by
	TU4PR8401MB0909.NAMPRD84.PROD.OUTLOOK.COM (10.169.46.143) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.444.14; Tue, 30 Jan 2018 20:13:11 +0000
Received: from TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::c5e4:c2db:16be:49f1]) by
	TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::c5e4:c2db:16be:49f1%18]) with mapi id 15.20.0444.016;
	Tue, 30 Jan 2018 20:13:11 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Eclipse plugin plans
Thread-Index: AQHTmXtAQyWYFj/3q0Cf2EP/gcKibaOM13cw
Date: Tue, 30 Jan 2018 20:13:10 +0000
Message-ID: <TU4PR8401MB07670A15303FC3FCC8FA14CFEDE40@TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM>
References: <3080197.gSJsdXIicL@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3080197.gSJsdXIicL@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR8401MB0909;
	7:M8j4KQtz3XN8zOOk547O1veCplydD2G2rkP4sVLb/jmX8D9fczm+qb3TGXT5Elg8Z6NE4p+TN+N27A+sPl7vEIBwtGKm5G/ESprjh9LcjQThWq1FdKiqiUkECNnERhzmn/8wUoYmvVPCzVKQCVBqxWsTELH3Ets8eHowmW/qXNYBvjDsgphAyhhD0X9BVuf1yWqttMC+Bl4+8iX/7YyfTs0vLX/06wTsFnDbfAg30s4eREkU3z4gk1Z/mumCydwL
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ca52ca4a-52a4-454f-1cf3-08d5681de2cd
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(8989060)(4534165)(4627221)(201703031133081)(201702281549075)(8990040)(48565401081)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:TU4PR8401MB0909; 
x-ms-traffictypediagnostic: TU4PR8401MB0909:
x-microsoft-antispam-prvs: <TU4PR8401MB0909DE3DEE623070B25B5AFCEDE40@TU4PR8401MB0909.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(158342451672863)(5213294742642)(17755550239193); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(5005006)(8121501046)(10201501046)(3002001)(93006095)(93001095)(3231101)(944501161)(6055026)(6041288)(20161123562045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123564045)(6072148)(201708071742011);
	SRVR:TU4PR8401MB0909; BCL:0; PCL:0; RULEID:;
	SRVR:TU4PR8401MB0909; 
x-forefront-prvs: 0568F32D91
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(396003)(39380400002)(376002)(366004)(346002)(55784002)(189003)(199004)(53754006)(3846002)(316002)(6116002)(5660300001)(76176011)(2906002)(26005)(97736004)(110136005)(186003)(66066001)(59450400001)(102836004)(6506007)(2950100002)(55016002)(86362001)(229853002)(53936002)(99286004)(9686003)(7696005)(3660700001)(6306002)(3280700002)(6436002)(81166006)(105586002)(6246003)(33656002)(68736007)(106356001)(74316002)(966005)(14454004)(478600001)(8676002)(81156014)(8936002)(2900100001)(2501003)(4326008)(305945005)(7736002)(25786009)(5250100002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR8401MB0909;
	H:TU4PR8401MB0767.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: Tu8iMG4KNAZlx1VY3yVRAA9MALubDPYJDA6CvMcXkHqE6cjvny6AsWHYjErE1Ki33Vlb3JcOIIapTJ471GD0vQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ca52ca4a-52a4-454f-1cf3-08d5681de2cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2018 20:13:10.9820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0909
X-OriginatorOrg: hpe.com
Cc: "eclipse-poky@yoctoproject.org" <eclipse-poky@yoctoproject.org>
Subject: Re: Eclipse plugin plans
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
X-List-Received-Date: Tue, 30 Jan 2018 20:21:52 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QmlnIGZhbiBvZiB3aGF0IENST1BTIGRpZCBhbmQgd2UgdXNlIHRoZSBwb2t5IGNvbnRhaW5lciBp
biBvdXIgZGV2ZWxvcG1lbnQsIGJ1dCBzbGlnaHRseSBkaWZmZXJlbnRseS4NCg0KSWYgSSBtYXks
IEkgd291bGQgbGlrZSB0byBzZWUgaXMgYW4gZWNsaXBzZSBkb2NrZXIgaW1hZ2UgdGhhdCBwcmUt
aW5jbHVkZSB0aGUgWW9jdG8gcGx1Z2luIChDRFQsIGdkYiwgZXRjKSwgd2hpY2ggc3RpbGwgYWxs
b3cgZm9yIGFkZGluZyBhZGR0bCBwbHVnaW4gdmlhIERvY2tlcmZpbGUgKHRoZXkgaXMgbGlrZWx5
IGFscmVhZHkgc29tZSBEb2NrZXJmaWxlIGxpa2UgdGhpcyB0aGF0IGV4aXN0cyBidXQgbm90IHRh
cmdldGluZyBZb2N0byBpdHNlbGYpLg0KDQpBbmQgSSB3b3VsZCBsaWtlIHRvIGJlIGFibGUgdG8g
dXNlIGJpdGJha2UgKG9yIHRvYXN0ZXIpIGFzIGEgc2VydmVyIHJ1bm5pbmcgaW5zaWRlIGRvY2tl
ciBjb250cm9sbGVkIGJ5IGFub3RoZXIgYml0YmFrZSBwb2t5IGFjdGluZyBhcyBhIGNsaWVudCwg
dXNpbmcgcG9reSBjb2RlIHRoYXQgaXMgbW91bnRlZCB1c2luZyB2b2x1bWUgaW5zdGVhZCBvZiBw
cmUtYnVpbHQgaW4gdGhlIERvY2tlcmZpbGUuDQoNCglkb2NrZXIgcnVuIC12IG15cG9reWZvbGRl
cjovdmFyL2xpYi9wb2t5LyAtdCBjcm9wcy9iaXRiYWtlLXNlcnZlciANCglkb2NrZXIgcnVuIC10
aSBjcm9wcy9iaXRiYWtlIC4uLg0KDQotLQ0KWWFubmljayBLb2VobGVyDQoNCi0tLS0tTWVzc2Fn
ZSBkJ29yaWdpbmUtLS0tLQ0KRGXCoDogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFtt
YWlsdG86eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBEZSBsYSBwYXJ0IGRlIFBhdWwg
RWdnbGV0b24NCkVudm95w6nCoDogMjkgamFudmllciAyMDE4IDIyOjMzDQrDgMKgOiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQpDY8KgOiBlY2xpcHNlLXBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KT2Jq
ZXTCoDogW3lvY3RvXSBFY2xpcHNlIHBsdWdpbiBwbGFucw0KDQpIaSBhbGwsDQoNCkkndmUgcmVj
ZW50bHkgYmVjb21lIGludm9sdmVkIGluIGRldmVsb3BtZW50IG9mIG91ciBFY2xpcHNlIGludGVn
cmF0aW9uLCBhbmQgd2UgZmlndXJlZCBpdCdzIGFib3V0IHRpbWUgd2Ugc2VudCBvdXQgYW4gdXBk
YXRlIG9uIHdoZXJlIHRoaW5ncyBjdXJyZW50bHkgc3RhbmQuDQoNCkN1cnJlbnQgZGV2ZWxvcG1l
bnQNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpOZXcgbGlmZSBpcyBiZWluZyBpbmpl
Y3RlZCBpbnRvIHRoZSBZb2N0byBQcm9qZWN0IEVjbGlwc2UgcGx1Z2lucy4gVGhlcmUgYXJlIHNl
dmVyYWwgZHJpdmVycyBmb3IgdGhpczoNCg0KMSkgSW50ZWdyYXRlIHRoZSB0b29saW5nIHdpdGgg
RG9ja2VyLiBXaXRoIGNoYW5nZXMgYW5kIGFkZGl0aW9ucyB0byBFY2xpcHNlIENEVCBhbmQgRWNs
aXBzZSBMaW51eHRvb2xzIHByb2plY3RzLCBpdOKAmXMgbm93IHBvc3NpYmxlIHRvIGhhdmUgRG9j
a2VyIGltYWdlcyBwcm92aWRlIGZ1bmN0aW9uYWxpdHkgdGhhdOKAmXMgcnVubmluZyB3aXRoaW4g
RWNsaXBzZS4gRm9yIGV4YW1wbGUsIENEVOKAmXMgYXV0b3Rvb2xzIGNhbiBiZSBydW4gaW4gYSBE
b2NrZXIgY29udGFpbmVyIGZvciBjb21waWxpbmcvYnVpbGRpbmcvcmVjaXBlIGFuZCBmb3IgcnVu
bmluZy9kZWJ1Z2dpbmcuDQoNCjIpIERvY2tlciB0b29saW5nIGFsc28gcHJvdmlkZXMgYSB3YXkg
dG8gZG8gY3Jvc3MtT1MgYnVpbGRpbmcvcnVubmluZyAtIGUuZy4gDQpFY2xpcHNlIHJ1bm5pbmcg
b24gV2luZG93cyBkb2luZyBjb21waWxlcy9ydW5uaW5nL3JlY2lwZXMgZm9yIGEgdGFyZ2V0IHJ1
bm5pbmcgb24gTGludXggKGluIGEgTGludXggRG9ja2VyIENvbnRhaW5lcikuIFVwIHVudGlsIG5v
dyB3ZSBoYXZlIGJlZW4gcmVzdHJpY3RlZCB0byBMaW51eCBhcyB0aGUgRWNsaXBzZSBob3N0IE9T
LiBXZSB3aWxsIGJlIGxvb2tpbmcgYXQgV2luZG93cyBmaXJzdCwgTWFjT1MgbWF5IGZvbGxvdyBs
YXRlci4NCg0KMykgU2ltcGxpZnkgdGhlIGRlcGxveW1lbnQgYW5kIGluc3RhbGxhdGlvbiBvZiB0
aGUgcGx1Z2lucy4gQ3VycmVudGx5LCB0aGUgcGx1Z2lucyBoYXZlIGEgbnVtYmVyIG9mIGRlcGVu
ZGVuY2llc+KApmUuZy4gb24gRWNsaXBzZSBDRFQgYW5kIG90aGVycy4gVGhpcyBvZnRlbiBtYWtl
cyBpdCBkaWZmaWN1bHQgdG8gaW5zdGFsbCwgdXNlLCBhbmQgdXBncmFkZSB0aGUgcGx1Z2lucywg
cGFydGljdWxhcmx5IGZvciBZb2N0byBQcm9qZWN0IGJlZ2lubmVycy4NCg0KNCkgVXBkYXRlIHRo
ZSBwbHVnaW5zIGZvciBsYXRlc3QgRWNsaXBzZS4gRWNsaXBzZSBoYXMgdXBncmFkZWQgaXRzIHN1
cHBvcnQgKENEVCwgTGludXh0b29scy9Eb2NrZXIsIGV0Yykgc2lnbmlmaWNhbnRseSwgYW5kIHRo
ZSBwbHVnaW5zIGRvIG5vdCB5ZXQgdGFrZSBhZHZhbnRhZ2Ugb2YgdGhlc2UgaW1wcm92ZW1lbnRz
LiBUaGUgdGFyZ2V0IGZvciB0aGUgMi42IHJlbGVhc2Ugd2lsbCBsaWtlbHkgYmUgRWNsaXBzZSBQ
aG90b24gKHJlbGVhc2VkIEp1bmUgMjAxOCkuDQoNCjUpIEltcHJvdmUgYW5kIG1ha2UgbW9yZSB0
cmFuc3BhcmVudCB0aGUgQnVpbGQvQ29udGludW91cyBJbnRlZ3JhdGlvbi9SZWxlYXNlIEVuZ2lu
ZWVyaW5nIGZvciB0aGUgcGx1Z2lucy4gVGhpcyB3aWxsIG1ha2UgaXQgZWFzaWVyIGZvciBvdGhl
cnMgdG8gY29udHJpYnV0ZSwgYW5kIHdpbGwgbWFrZSBpdCBlYXNpZXIgZm9yIGF1dG9tYXRlZCB0
ZXN0aW5nIHRvIGJlIGRvbmUgaW1wcm92aW5nIG92ZXJhbGwgcXVhbGl0eS4gDQoNClRvIHN0YXJ0
IGRvd24gdGhlc2UgZGlyZWN0aW9ucyBhbmQgZXhwbGljaXRseSBzdGFydCBvbiAzLCA0LCA1IHdl
IHByb3Bvc2UgdGhhdCBmb3IgZWNsaXBzZS1wb2t5IHdlIG1vdmUgdG93YXJkIGEgbWF2ZW4tYmFz
ZWQgYnVpbGQuIE1hdmVuLWJhc2VkIGJ1aWxkcyBhcmUgZXh0cmVtZWx5IGNvbW1vbiBpbiB0aGUg
RWNsaXBzZSBwbHVnaW4gZGV2ZWxvcG1lbnQgd29ybGQsIGFuZCB0aGVyZSBhcmUgYSBsb3Qgb2Yg
dGVjaG5vbG9naWVzIG9wZW5seSBhdmFpbGFibGUgdG8gc3VwcG9ydCBidWlsZGluZyB0aGVzZSBw
bHVnaW5zOiBlLmcuIA0KbWF2ZW4sIHR5Y2hvLCBFY2xpcHNlIGl0c2VsZi4gQXMgcGFydCBvZiB0
aGlzIHdlIHdpbGwgYmUgbG9va2luZyB0byB0cmFuc2l0aW9uIHRoZSBhdXRvYnVpbGRlciBmcm9t
IHRoZSBjdXJyZW50IHNjcmlwdC1iYXNlZCBidWlsZCB0byBhIG1hdmVuLWJhc2VkIGJ1aWxkLCBi
dXQgd2l0aCB0d28gY2F2ZWF0czogDQoNCmEpIHRoZSBjdXJyZW50IGF1dG9idWlsZGVyIHdpbGwg
YmUgdXNlZCBmb3IgMi41IHJlbGVhc2UNCmIpIGJvdGggYnVpbGRzIChzY3JpcHQtYmFzZWQpIGFu
ZCBtYXZlbi1iYXNlZCB3aWxsIGJlIG1haW50YWluZWQgdW50aWwgYWZ0ZXINCjIuNSByZWxlYXNl
DQpjKSB0aGUgbWF2ZW4tYmFzZWQgYnVpbGQgd2lsbCBhZGQ6IGF1dG9tYXRlZCB0ZXN0aW5nLCBl
YXNpZXIgZGVwZW5kZW5jeSBtYW5hZ2VtZW50LCBhIG1vcmUgb3BlbiBhbmQgbWFpbnRhaW5hYmxl
IGJ1aWxkIHN5c3RlbQ0KDQpXZSBhcmUgcHJvcG9zaW5nIHRoYXQgdGhlIGV4aXN0aW5nIGVjbGlw
c2UtcG9reSAyLjUgYnJhbmNoIChveHlnZW4ubWFzdGVyKSBiZSBzb29uIGZyb3plbiAoYWZ0ZXIg
YSBmZXcgc21hbGwgcGVuZGluZyBmaXhlcykgYW5kIHRoYXQgdGhlIGVjbGlwc2UtcG9reSDigJht
YXN0ZXLigJkgYmUgb3BlbmVkIHVwIGZvciAyLjYgZGV2ZWxvcG1lbnQuIFRoaXMgd2F5IHdlIHdp
bGwgaGF2ZSBhIHN0YWJsZSByZWxlYXNlIGNhbmRpZGF0ZSBhcyAyLjUgYXBwcm9hY2hlcywgYW5k
IGJlIGFibGUgdG8gYmVnaW4gd29yayBvbiAxLTUgYXMgYWJvdmUgZm9yIDIuNiBhcyBzb29uIGFz
IHBvc3NpYmxlLg0KDQpJZiB5b3Ugd2FudCBhIHBlZWsgYXQgd2hhdCB3ZSBhcmUgY3VycmVudGx5
IHdvcmtpbmcgb24gd2l0aCBtYXZlbiBzZWUgdGhlIHRpbW8vbWF2ZW4gYnJhbmNoIGluIGVjbGlw
c2UtcG9reS1jb250cmliLiBOZXcgaW5zdHJ1Y3Rpb25zIGFyZSBpbiB0aGUgUkVBRE1FLmRldiBm
aWxlLg0KDQoNCkEgbm90ZSBhYm91dCBDUk9QUw0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KDQpUaGUgZWFybGllciBlZmZvcnQgdG8gYnVpbGQgdGhlIENST1BTIGFyY2hpdGVjdHVyZSB0
byBzdXBwb3J0IG11bHRpcGxlIElERXMgaGFzIGJlZW4gZHJvcHBlZCAtIHVuZm9ydHVuYXRlbHkg
d2Ugd2VyZW4ndCBhYmxlIHRvIHJlYWxpc2UgdGhlIG9yaWdpbmFsIGRlc2lnbiBmb3IgYSBudW1i
ZXIgb2YgcmVhc29ucyBpbmNsdWRpbmcgdGhhdCBpbiB0aGUgY2FzZSBvZiBFY2xpcHNlIGl0IHdh
cyBpbmNvbXBhdGlibGUgd2l0aCB0aGUgdXBzdHJlYW0gRWNsaXBzZSBkaXJlY3Rpb24uIFdlIGhh
dmUgbm93IHN3aXRjaGVkIGJhY2sgdG8gdGhlIG9yaWdpbmFsIGVjbGlwc2UtcG9reSBjb2RlYmFz
ZSBhbmQgYXJlIGZvbGxvd2luZyB1cHN0cmVhbSBFY2xpcHNlIC8gTGludXh0b29scyAvIENEVCBk
ZXZlbG9wbWVudCBhIGxvdCBtb3JlIGNsb3NlbHkuIFdlIHdpbGwgaG93ZXZlciBnYWluIHNvbWUg
b2YgdGhlIGZlYXR1cmVzIHRoYXQgQ1JPUFMgc2V0IG91dCB0byBwcm92aWRlIC0gaS5lLiBidWls
ZGluZyBpbiBhIGNvbnRhaW5lciBhbmQgdGhlcmVmb3JlIGVuYWJsaW5nIHRoZSBJREUgdG8gYmUg
cnVubmluZyBvbiBhIG5vbi1MaW51eCBPUy4gDQoNCk5vdGU6IHRoZSBDUk9QUyBjb250YWluZXJz
IFsxXSBhcmUgc3RpbGwgYXJvdW5kIGFuZCBmdW5jdGlvbmFsLCBhbmQgd2lsbCBsaWtlbHkgZm9y
bSB0aGUgYmFzaXMgb2YgdGhlIGNvbnRhaW5lcnMgdXNlZCBieSB0aGUgY3VycmVudCBZUCBFY2xp
cHNlIHBsdWdpbnMuDQoNCg0KTmV3IG1haWxpbmcgbGlzdA0KLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQoNCkFzIHlvdSBtYXkgaGF2ZSBzZWVuIGVsc2V3aGVyZSwgd2Ugbm93IGhhdmUgYSBtYWlsaW5n
IGxpc3QgZGVkaWNhdGVkIHRvIEVjbGlwc2UgcGx1Z2luIGRldmVsb3BtZW50IGFuZCByZWxhdGVk
IGRpc2N1c3Npb24uIFlvdSBjYW4gZmluZCBpbmZvcm1hdGlvbiAoYW5kIGxpc3QgYXJjaGl2ZXMp
IGhlcmU6DQoNCiAgaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL2VjbGlw
c2UtcG9reQ0KDQpJZiB5b3UgaGF2ZSBmb2xsb3ctdXAgcXVlc3Rpb25zIC8gZGlzY3Vzc2lvbiBv
ciB3b3VsZCBsaWtlIHRvIGdldCBpbnZvbHZlZCwgcGxlYXNlIGpvaW4gdXMgb3ZlciBvbiB0aGF0
IGxpc3QuDQoNCkNoZWVycywNClBhdWwNCg0KWzFdIGh0dHBzOi8vd2lraS55b2N0b3Byb2plY3Qu
b3JnL3dpa2kvVGlwc0FuZFRyaWNrcy9Dcm9wc0NMSUNvbnRhaW5lcnMNCg0KLS0gDQoNClBhdWwg
RWdnbGV0b24NCkludGVsIE9wZW4gU291cmNlIFRlY2hub2xvZ3kgQ2VudHJlDQotLQ0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnlvY3RvIG1haWxpbmcg
bGlzdA0KeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qu
b3JnL2xpc3RpbmZvL3lvY3RvDQo=

