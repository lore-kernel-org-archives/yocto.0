Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0FBEE00C78; Wed, 22 Nov 2017 08:17:10 -0800 (PST)
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
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CCA3E008A4
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 08:17:08 -0800 (PST)
Received: from g4t3426.houston.hpe.com (g4t3426.houston.hpe.com
	[15.241.140.75])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id 77149609BE
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 16:17:08 +0000 (UTC)
Received: from G9W8455.americas.hpqcorp.net (exchangepmrr1.us.hpecorp.net
	[16.216.161.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3426.houston.hpe.com (Postfix) with ESMTPS id 2EB8966;
	Wed, 22 Nov 2017 16:17:07 +0000 (UTC)
Received: from G9W8456.americas.hpqcorp.net (2002:10d8:a15f::10d8:a15f) by
	G9W8455.americas.hpqcorp.net (2002:10d8:a15e::10d8:a15e) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Wed, 22 Nov 2017 16:16:53 +0000
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (15.241.52.10) by
	G9W8456.americas.hpqcorp.net (16.216.161.95) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Wed, 22 Nov 2017 16:16:53 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	CS1PR8401MB0839.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.19) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.239.5; Wed, 22 Nov 2017 16:16:53 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0239.009;
	Wed, 22 Nov 2017 16:16:52 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Generating Package/Image Developer Documentation
Thread-Index: AdNiOFkSWGT/NWj8QTqoWvcjeANdPQAdph0AAD94qtA=
Date: Wed, 22 Nov 2017 16:16:52 +0000
Message-ID: <CS1PR8401MB08405B07B659CA7C8530654DED200@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
References: <CS1PR8401MB0840E46221671FF3A69BA921ED220@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<f849e7ef-c733-18a2-3032-643b3ca476a4@linux.intel.com>
In-Reply-To: <f849e7ef-c733-18a2-3032-643b3ca476a4@linux.intel.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CS1PR8401MB0839;
	6:2PNoJPDn9bl4m8ABUuYFA6/Jhz85uH27bNW7lqKmf5Pa5KbRp6iq5FJsx52BJSg+6iWG6i96HhJ/A4QR4veoSuPJfZj80w5cThmYsNtswZ1oNurh4cjO3PiXeewipC7fyDx8jLw9X4i9YseUWcOAIzo3pIowxIA8Pe3E52olYV/wF36pgZVMX/2FjMuInHHh9dSO4JUlHmgU1BhdiK24uaIgk3WbTrCFXeTIBdY7uFJD5PqEKV66etZ5fcWg27lslkWzTgt1kV4fKwA10WpVqOHC9hL7/QpadMp9hZQ/l3XnOMyeMqdtNywTX/nN5zz3v3DMQx9qD7OSWepHokgfU5gVuvoLGBZmKFhE38OidKE=;
	5:zsyYdfY3Leg+ovKKbrumLg+9F6XSBBS22ecyKVpIvEoSf2wC9lFPNfZlxwjj06o6mKYmXaQZMYpscpD17+AEm+fHIbPYAbGCNiI8HPrUSMetCvaEiWKiXCjOkmebCtyH2184qqMZwDBl1P+s6lKgGFB5SKqzGkliRfqZEqUmGoM=;
	24:gLV/GPLYpRVi/jyWP2XJZm4uYQVXpVpToRsxS9Qvbq+NXwsCORB+H5M5t29hUToeSwd20R3cLqKP/O+hOWtZWVIhjiN+clp3MfIbwQIrvmY=;
	7:TmF9/SMykgWItIpmAC2rv8N1+YMowhF/10gq8HboVjkvExAjj77dkCJbaub7dkOSD6et1vfIJB1QMzsdpjlzZnpAEhY5hCEr6q+9Od9N/4lfCtTTWZrQJwDbnU9SXjNd+0hYCpqHD+TQ3PaMqFSX1vUSNuuo8302+gq7mJTSG35Cpuev52al7Cl2gferp33J6OkXG4XgLZBWGl9nUF6Jr5A1KXgNJeyRdaGQ53O9yKcAmtv/nqw3bL/B+L8GoClm
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: b5f29bf8-32d6-4e15-03e9-08d531c47167
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:(222181515654134); BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(48565401081)(2017052603199);
	SRVR:CS1PR8401MB0839; 
x-ms-traffictypediagnostic: CS1PR8401MB0839:
x-microsoft-antispam-prvs: <CS1PR8401MB0839017816C31C86DF3EE6EFED200@CS1PR8401MB0839.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(227479698468861)(222181515654134)(228905959029699); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(10201501046)(3231022)(3002001)(93006095)(93001095)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123562025)(20161123558100)(20161123564025)(20161123560025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CS1PR8401MB0839; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CS1PR8401MB0839; 
x-forefront-prvs: 0499DAF22A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39860400002)(346002)(376002)(199003)(52314003)(24454002)(189002)(55784002)(7696004)(478600001)(97736004)(106356001)(25786009)(86362001)(99286004)(81166006)(33656002)(105586002)(2900100001)(6246003)(2950100002)(14454004)(8936002)(3280700002)(5250100002)(5660300001)(3660700001)(68736007)(81156014)(8676002)(966005)(102836003)(3846002)(101416001)(189998001)(7736002)(53546010)(305945005)(54356999)(50986999)(74316002)(53936002)(6506006)(6436002)(9686003)(2501003)(66066001)(6306002)(76176999)(316002)(110136005)(229853002)(55016002)(6116002)(2906002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB0839;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b5f29bf8-32d6-4e15-03e9-08d531c47167
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2017 16:16:52.7627 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB0839
X-OriginatorOrg: hpe.com
Subject: Re: Generating Package/Image Developer Documentation
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
X-List-Received-Date: Wed, 22 Nov 2017 16:17:10 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLA0KDQpJIGFtIHVzaW5nIFlvY3RvIDEuOS8yLjAgYW5kIGEgcXVpY2sgZ3JlcCBkb2Vz
bid0IHNlZW1zIHRvIGluZGljYXRlIHN1cHBvcnQgZm9yIHRoaXMgRElTVFJPX0ZFQVRVUkUuDQoN
CkluIG15IGNhc2UsIHRoZSBwYWNrYWdlIEkgY2FyZSBhYm91dCBhbGwgdXNlIENNYWtlIGFuZCBo
YXZlIGEgc2ltaWxhciBzdHJ1Y3R1cmUNCg0KCS9DTWFrZUxpc3RzLnR4dCAjIEEgZGV2IGRvYyB0
YXJnZXQgZXhpc3RzIGhlcmUNCgkvZG9jDQoJCS9DTWFrZUxpc3RzLnR4dA0KCQkvRG94eWZpbGUu
aW4NCg0KQXMgc3VjaCwgSSBjYW4gaGF2ZSBhIHNpbmdsZSBzY3JpcHQgdG8gaGFuZGxlIHRoZW0s
IHVzaW5nICJtYWtlIGRldmRvYyIuICBJIG1heSBub3QgYmUgYWJsZSB0byBwdXNoIHRoaXMgdXBz
dHJlYW0gYnV0IEknbGwgc2VlIHdoYXQgSSBjYW4gZG8uDQoNCk1heWJlIHRoZSAidGFyZ2V0IiB0
byBidWlsZCBkb2MgY291bGQgYmUgcGVyLXJlY2lwZS4gIA0KDQotLQ0KWWFubmljayBLb2VobGVy
DQoNCi0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQ0KRGXCoDogQWxleGFuZGVyIEthbmF2aW4g
W21haWx0bzphbGV4YW5kZXIua2FuYXZpbkBsaW51eC5pbnRlbC5jb21dIA0KRW52b3nDqcKgOiAy
MSBub3ZlbWJyZSAyMDE3IDA0OjU2DQrDgMKgOiBLb2VobGVyLCBZYW5uaWNrIDx5YW5uaWNrLmtv
ZWhsZXJAaHBlLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCk9iamV0wqA6IFJlOiBbeW9j
dG9dIEdlbmVyYXRpbmcgUGFja2FnZS9JbWFnZSBEZXZlbG9wZXIgRG9jdW1lbnRhdGlvbg0KDQpP
biAxMS8yMC8yMDE3IDA5OjUzIFBNLCBLb2VobGVyLCBZYW5uaWNrIHdyb3RlOg0KPiAgICBUaGUg
aW1hZ2Ugd291bGQgdGhlbiBpbnN0YWxsIHRob3NlIGRvY3VtZW50YXRpb24gaW4gdGhlIHN5c3Jv
b3QgdW5kZXIgc29tZSBmb2xkZXIsIG1heWJlIC91c3Ivc2hhcmUvZGV2ZG9jLzxwYWNrYWdlbmFt
ZT4vIGFuZCBwb3RlbnRpYWxseSBjcmVhdGUgYSB0YXJiYWxsIG9mIHRoaXMgZG9jdW1lbnRhdGlv
bi4NCj4gDQo+ICAgICBBbnl3YXksIGxldCBtZSBrbm93IGlmIHNvbWV0aGluZyBzaW1pbGFyIHBy
ZS1leGlzdHMgb3IgaWYgc3VjaCBhIHByb2plY3QgaGFzIGJlZW4gc3RhcnRlZCBzb21laG93IHBs
ZWFzZSwgYXMgSSB3b3VsZCBsaWtlIHRvIGNvbnRyaWJ1dGUvcGFydGljaXBhdGUuDQoNCg0KWWVz
LiBBZGQgImFwaS1kb2N1bWVudGF0aW9uIiB0byBESVNUUk9fRkVBVFVSRVMgYW5kIHlvdSB3aWxs
IGdldCBtYW5wYWdlcyBhbmQgZ3RrLWRvYyBiYXNlZCBkb2N1bWVudGF0aW9uIGdlbmVyYXRlZCwg
cGFja2FnZWQgYW5kIGFkZGVkIHRvIFNES3MuIEl0IHdpbGwgc2xvdyBkb3duIHRoZSBidWlsZCBz
aWduaWZpY2FudGx5LCBzbyB1c2Ugd2l0aCBjYXJlLg0KDQpJIGNvbnNpZGVyZWQgYWRkaW5nIGRv
eHlnZW4gc3VwcG9ydCBhcyB3ZWxsLCBidXQgZ2VuZXJhdGluZyBhbmQgaW5zdGFsbGluZyB0aGF0
IG5lZWRzIHRvIGJlIGhhbmQtY3JhZnRlZCBmb3IgZWFjaCByZWNpcGUsIGFuZCBzbyBpdCB3YXNu
J3QgZG9uZS4gWW91IGFyZSB3ZWxjb21lIHRvIHdvcmsgb24gdGhhdCwgc3ViamVjdCB0byBhcGkt
ZG9jdW1lbnRhdGlvbiBiZWluZyBlbmFibGVkLiBJIGhhdmUgYSByZWNpcGUgZm9yIGRveHlnZW4g
aXRzZWxmIGhlcmU6DQoNCmh0dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQuY2dp
L3Bva3ktY29udHJpYi9sb2cvP2g9YWthbmF2aW4vZW5hYmxlLWRveHlnZW4NCg0KQWxleA0K

