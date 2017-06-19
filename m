Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B033CE009A0; Mon, 19 Jun 2017 09:33:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.116 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0116.outbound.protection.outlook.com [104.47.2.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E055DE0084A
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 09:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=j1edu4SiQaACJJpfXLdFZ9MLXu0BgEcfB4D++gpuP2g=;
	b=JT0qvyrwFP8Jv62JP2qVQwy1ecaxFv71xUS6TAaJPhh96FeTQZz3gTUZ+tQORy5ISfjw/Z4R5mC53Ie20PsWno4I3Kq7cszsNA+3eWXk7Nv88mGf9e7ZIEWThT6xMDhWKA0YCo6Z8AhNyk3bHVm2dtKwdE7UuaICu0wYFARZxTI=
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com (10.168.10.151) by
	DB6PR0701MB2520.eurprd07.prod.outlook.com (10.168.76.20) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1199.6; Mon, 19 Jun 2017 16:33:27 +0000
Received: from DB6PR0701MB1879.eurprd07.prod.outlook.com
	([fe80::b0ad:4d46:ac20:61bd]) by
	DB6PR0701MB1879.eurprd07.prod.outlook.com
	([fe80::b0ad:4d46:ac20:61bd%13]) with mapi id 15.01.1199.007;
	Mon, 19 Jun 2017 16:33:26 +0000
From: Thomas Thorne <Thomas.Thorne@net2edge.com>
To: Joshua Watt <jpewhacker@gmail.com>, Khem Raj <raj.khem@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Using A Proprietary Closed License Inside A Layer & Its
	Recipes
Thread-Index: AQHS5eb620Has8x1vUOBfuT14ME7fqImUMOAgADiqUCAAEXQAIAAT/IAgAAC3ACABJqCMA==
Date: Mon, 19 Jun 2017 16:33:26 +0000
Message-ID: <DB6PR0701MB1879067A942AAC9702A6C52ED3C40@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
	<CAJTo0LZjhRyL4gzOyK4OKUpTpCarUPmv8TjVQ5485hG-6R=1qw@mail.gmail.com>
	<DB6PR0701MB1879F68989431486E48F7FF6D3C10@DB6PR0701MB1879.eurprd07.prod.outlook.com>
	<1497618884.2549.1.camel@gmail.com>
	<fde71ccf-4363-2b33-56d3-6826e72d87de@gmail.com>
	<1497636666.2549.6.camel@gmail.com>
In-Reply-To: <1497636666.2549.6.camel@gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=net2edge.com; 
x-originating-ip: [81.128.174.58]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB6PR0701MB2520;
	7:GyXwyHxN6o9lXiuN493Kn5NLCQ5gM2/k+XPMDNbD/jLRoMvceRr2lQcTMQVQwlx5SAo2lQSMCDte3QcAQ0NVj0HRGZqn1Nt1kBf4xwVwbDHbhupAYAmKA83ZK/irf4p5SGq03m1SSOUUMNHoe+UMr2mVJJYw5jhGDH0G5XzuSPzSvG95Um7hMRWBa8s0oUptlw+ZMCn2jbXbg9P3FwhYH2n0PGP3dUa6mx9FbVWG8KhM8OygZXzJGbt7CnA/GhDQea535XREbHUW2OXcI6ZXiq7SMPIICK+yJfBkoHhmgXckdfmjkVBvPdqQPBYNT4XZ8pQd8Sl+ys0oi02Hl8Qomo/9CJPQ/gKmlTE+BA8KYIV+PMmSi67HBppKgfIW6oq0dRudm92Aw1o49GjwisUVBJ5p9KYV9/YBJmJ6o+IJsq0AUAwE3AnFGhD+AaUjVX4ODr8SpLN8jJHJT2WM3BzAW/3PUkd1JJGHQNOIDcKD+dzCJqYjil06LGA/P4VNRyby3nmHgNm+NQo6MtTD80tgH0rLSFm82Qq+ZF1Np4ClldIaIcm7pAG7uPoOyfDkHV59WWc5WOs5XFXlBLHrcOWUobb+czSkfVm8Rf8bzsBstthYKm85V6MiTmH+KJS92XyF6RnMKxIEgH0n/7ZPXYUkKqGpbRggwNprY5ehoHcZUxYAqfZHdzGfcix+RTxPU0JkiCu5545c3LMgO7dQm6cqh6s8DEQRz21wY7mob0tTqknveXOnSTBSQlrXOyqpEcRxxjIJ8g1qas3Dosz8tATlC7TPypRsn7YyH4sopmMU0x8=
x-ms-office365-filtering-correlation-id: 24df25b1-a7e2-4eb7-5bc1-08d4b730e97e
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500041)(300135000095)(300000501041)(300135300095)(22001)(300000502041)(300135100095)(2017030254075)(300000503041)(300135400095)(201703131423075)(300000504041)(300135200095)(300000505041)(300135600095)(300000506037)(300135500095);
	SRVR:DB6PR0701MB2520; 
x-ms-traffictypediagnostic: DB6PR0701MB2520:
x-microsoft-antispam-prvs: <DB6PR0701MB2520E3E4652F0116E1EE3CEFD3C40@DB6PR0701MB2520.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(100000703101)(100105400095)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123560025)(20161123558100)(20161123564025)(20161123562025)(2016111802025)(6072148)(6043046)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DB6PR0701MB2520; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB6PR0701MB2520; 
x-forefront-prvs: 0343AC1D30
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39400400002)(39450400003)(39830400002)(39410400002)(74316002)(5660300001)(2501003)(189998001)(2950100002)(5250100002)(93886004)(7696004)(6506006)(81166006)(81156014)(6436002)(99286003)(55016002)(8676002)(9686003)(6246003)(86362001)(53936002)(305945005)(33656002)(102836003)(3846002)(478600001)(6116002)(2906002)(25786009)(38730400002)(54356999)(50986999)(76176999)(72206003)(7736002)(229853002)(2900100001)(39060400002)(66066001)(8936002)(3280700002)(14454004)(3660700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB2520;
	H:DB6PR0701MB1879.eurprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2017 16:33:26.8986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 851184e8-8658-4a6a-973d-aa012bcc8794
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB2520
Subject: Re: Using A Proprietary Closed License Inside A Layer & Its Recipes
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
X-List-Received-Date: Mon, 19 Jun 2017 16:33:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiA+IEZXSVc6IFdlIGNyZWF0ZWQgYSBwcm9wcmlldGFyeSBsaWNlbnNlIGZpbGUgY2FsbGVkIGZp
bGVzL2NvbW1vbi0gDQo+ID4gbGljZW5zZXMvY29tcGFueS50eHQgaW4gb3VyIHByb3ByaWV0YXJ5
IGxheWVyLCB0aGVuIGFkZGVkIHRoZSANCj4gPiBmb2xsb3dpbmcgdG8gbGF5ZXIuY29uZjoNCj4g
PiANCj4gPiAgQ09NUEFOWV9DT01NT05fTElDRU5TRVMgOj0gJyR7QG9zLnBhdGgubm9ybXBhdGgo
IiR7TEFZRVJESVJ9L2ZpbGVzDQo+ID4gL2NvbQ0KPiA+IG1vbi1saWNlbnNlcyIpfScNCj4gPiAg
QkJfSEFTSEJBU0VfV0hJVEVMSVNUX2FwcGVuZCA9ICIgQ09NUEFOWV9DT01NT05fTElDRU5TRVMi
DQo+ID4gDQo+ID4gVGhlbiBhIHJlY2lwZSBjYW4gZ2V0IHRoZSAic3RhbmRhcmQiIHByb3ByaWV0
YXJ5IGxpY2Vuc2UgYnkgZG9pbmc6DQo+ID4gDQo+ID4gIExJQ19GSUxFU19DSEtTVU0gPQ0KPiA+
ICJmaWxlOi8vJHtDT01QQU5ZX0NPTU1PTl9MSUNFTlNFU30vY29tcGFueS50eHQ7bWQ1PTliMTEz
OWZhMWZjYjg2OTANCj4gPiA2OWRiDQo+ID4gZWVjY2E0NDM1MGE1Ig0KPiA+IA0KPiA+IEl0IHdv
cmtzIHByZXR0eSB3ZWxsIGFuZCBhbHNvIG1ha2UgaXQgY2xlYXIgd2hhdCBsaWNlbnNlIHRoZSBy
ZWNpcGUgDQo+ID4gaXMgdW5kZXIuIEkgYmVsaWV2ZSB0aGF0IHRoZSBCQl9IQVNIQkFTRV9XSElU
RUxJU1Qgd2FzIG5lY2Vzc2FyeSBhdCANCj4gPiB0aGUgdGltZSB0byBwcmV2ZW50IGNoYW5nZXMg
aW4gdGhlIHByb2plY3Qgd29ya2luZyBwYXRoIGZyb20gY2F1c2luZyANCj4gPiBhIGZ1bGwgcmVi
dWlsZCBvZiB0aGUgYWxsIHByb3ByaWV0YXJ5IHBhY2thZ2VzIGFuZCBzbyB0aGF0IHRoZSANCj4g
PiBzc3RhdGUgc2lnbmF0dXJlcyB3b3VsZCBtYXRjaCByZWdhcmRsZXNzLCBidXQgSSBtaWdodCBi
ZSB3cm9uZyBhYm91dCANCj4gPiBpdCBiZWluZyBuZWNlc3NhcnkuDQoNClRoYW5rIHlvdS4gIEFk
ZGluZyB0aGUgQ09NUEFOWV9DT01NT05fTElDRU5TRVMgYW5kIEJCX0hBU0hUQUJMRV9XSElURUxJ
U1RfYXBwZW5kIHdvcmtlZCBncmVhdCBmb3IgbWUuICANCg0KPiBpcyB0aGlzIHN0aWxsIHRoZSBj
YXNlIHdpdGggbGF0ZXN0IG1hc3RlciA/DQoNCkkgYWxzbyB0cmllZCBjb21tZW50aW5nIHRoZSAi
QkJfSEFTSFRBQkxFX1dISVRFTElTVF9hcHBlbmQgPSAiQ09NUEFOWV9DT01NT05fTElDRU5TRVMi
IiBsaW5lIGluIHRoZSBsYXllci5jb25mIGZpbGUgYW5kIGl0IGFsbCB3b3JrZWQgZmluZSBzdGls
bCB3aXRob3V0IGFueSB3YXJuaW5ncyBiZXNpZGVzIHRoZSBvbmUgZm9yIHVzaW5nIFVidW50dSAx
Ni4wNC4gIA0K

