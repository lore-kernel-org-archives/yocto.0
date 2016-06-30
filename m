Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 585E6E00E14; Wed, 29 Jun 2016 18:54:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.78 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0078.outbound.protection.outlook.com [157.55.234.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05D80E00E0B
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 18:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=l3JXDSpoAejDyuwo9GJorlz8NCVoYtQ1SaRCsMCTY0M=;
	b=P1mulq4nKgoQI65QWckeJKhPbOAE9Wkb2N3JHoT7aRTHOdQfFNlKH9icc9+e/XScg6FPRdR+u8CEclP2/GFlXcmMi+nnjyHUUzryPJhCFxtIlUn00nVxw9RmE4M1QcRxCamc5VqVSczX7hrLMZdLm5ExUs8rNrhGZbzqHhbeuhw=
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com (10.160.49.142) by
	DB3PR04MB0681.eurprd04.prod.outlook.com (10.160.49.139) with Microsoft
	SMTP Server (TLS) id 15.1.517.8; Thu, 30 Jun 2016 01:54:52 +0000
Received: from DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5]) by
	DB3PR04MB0684.eurprd04.prod.outlook.com
	([fe80::1d30:44c0:d745:ccc5%18]) with mapi id 15.01.0523.024;
	Thu, 30 Jun 2016 01:54:52 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Daniel. <danielhilst@gmail.com>
Thread-Topic: [yocto] Failed to cross compile kernel with Yocto toolchain
Thread-Index: AdHQTEHdkEKXnHfPRAm5aHur2N6VqwARb8SAABvUbbAAErRCEQAhKypAAAu1iIAAHJpIwA==
Date: Thu, 30 Jun 2016 01:54:52 +0000
Message-ID: <DB3PR04MB0684768D40AAEB43CF618EF0EE240@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
	<DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sr=7o2LnTtbgV=fEb+JMw2=vmvaN8b2iQSmZ1qJKd7SAw@mail.gmail.com>
	<CAMKF1sqSM_jtKm0BCzcpDCDFwQZe6jOA_AO+7acq2Yq-N731-w@mail.gmail.com>
	<CAMKF1soDAJ3hTV90UDTjwPc8U7G2x1m9jSLYnaaXGmJwbg7=FQ@mail.gmail.com>
	<DB3PR04MB06844D91E4A18CAAFDFD6194EE230@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAF3SDA7koAq8Z6fqmddTCrnbAsrbfjvTTVSFhRX43WD+xNRQTQ@mail.gmail.com>
In-Reply-To: <CAF3SDA7koAq8Z6fqmddTCrnbAsrbfjvTTVSFhRX43WD+xNRQTQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=zhenhua.luo@nxp.com; 
x-originating-ip: [192.158.241.86]
x-ms-office365-filtering-correlation-id: 3bf3011d-3e1f-45e7-9469-08d3a0898731
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0681;
	6:vvc620mxn6hnxPqifcP0kPbEaTLArRLzKP8pbeU8UTYR+PSCDJESnF80PXNmjdPC0XkSj0P+IhcjzoxtOXvfQN79/wrQVbVBkr9xQ8Fhgy8fyMuVmph7qp9DnPEp5UWHMZCtw2D+95eTbVWbs6pGkzNkZ4Qbw5lZ1/YomVS+OvFvRMdT/46DigvGbxlecC43LKzkN/zPay3gWfao/eWfsLbaw8vVjY419iuuFttbhist9T6IlNFHu54O+PfLo09KBsQZ42tkeeK2nrPjVImUHncu2S2xjtqwzW4XJusGOjP8yXg/BVmqYhMK+R1887Mwne4klZPmJKKjjW4E/8FLxA5Dcx77V4ovJ9TyASSsZqc=;
	5:Q1VuLye+OAe8zY67USBSCmJxZIqpwB+vX5KXh5EgXBjWrkmck/tizwdIqJEPXBzt/xts5S+1vWkftQ3l0PldwEfIVbaljhSzzLi8D2Ed3WZKYQIj6kuWhztLmrhGHLbdUDpInMfuG3CtzyDyGhGRcQ==;
	24:vl+UhSWOJpdx9cD+rU+iOZMOT7+oEx9kkCVEOnT03zY9o71cQaZBa6W28zvfYAr97bQu0uZaBumnSDI6zpbJcaKCoZFANe8IwxRKxEFqvvQ=;
	7:xwP6vf8op7JYt7QRcbUl2tLvXSknI6QpLJj/YiFfziT8st/QfPwohcXufhE/H2YE7eyaU6RvHXlDXvgVq1xlsPbb97chtSfj84gCT1aaub4lr1XA/Z8w9GTG9RsIKpJr7kwiSIpBqJ6GlFITAbl5Gx4amt/HtftW0QsNp08LpEJRRgvD2WYuYG7ETlrdKa5hEshaco+cRlCtf5kQHdyCyXghLBZrXlFFP7wFkLpb8pmwOIjQgCWpcOH6Lz8b89m5
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DB3PR04MB0681;
x-microsoft-antispam-prvs: <DB3PR04MB06815DEA22C5ECBF04BF72D4EE240@DB3PR04MB0681.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(185117386973197)(83566789882024);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6055026);
	SRVR:DB3PR04MB0681; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0681; 
x-forefront-prvs: 0989A7979C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(377454003)(24454002)(189002)(53754006)(13464003)(377424004)(33656002)(4326007)(11100500001)(1411001)(81156014)(106356001)(92566002)(2906002)(105586002)(81166006)(87936001)(19580405001)(74316001)(93886004)(19580395003)(8676002)(3280700002)(8936002)(86362001)(66066001)(101416001)(5250100002)(305945005)(7696003)(9686002)(2950100001)(3660700001)(2900100001)(1720100001)(68736007)(97736004)(7736002)(6116002)(3846002)(7846002)(102836003)(76176999)(5003600100003)(50986999)(76576001)(110136002)(5002640100001)(15975445007)(54356999)(586003)(189998001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR04MB0681;
	H:DB3PR04MB0684.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; CAT:NONE; LANG:en; CAT:NONE; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2016 01:54:52.5746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0681
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failed to cross compile kernel with Yocto toolchain
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
X-List-Received-Date: Thu, 30 Jun 2016 01:54:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB0aGluayB5b3UgbWVhbiAvdXNyL2xpYjY0L2NjYWNoZS9nY2MgaW5zdGVhZCBvZiAvdXNyL2xp
YjY0L2djYywgaXQgaXMgYSB2YWxpZCBsaW5rLiANCg0KJCBzb3VyY2UgL29wdC9wb2t5LzIuMStz
bmFwc2hvdC9lbnZpcm9ubWVudC1zZXR1cC1wcGNlNTAwbWMtcG9reS1saW51eCANCiQgd2hpY2gg
Z2NjDQovdXNyL2xpYjY0L2NjYWNoZS9nY2MNCiQgDQokIGxzIC1sIC91c3IvbGliNjQvY2NhY2hl
L2djYw0KbHJ3eHJ3eHJ3eCAxIHJvb3Qgcm9vdCAxNiBKdW4gMjkgMTg6MjIgL3Vzci9saWI2NC9j
Y2FjaGUvZ2NjIC0+IC4uLy4uL2Jpbi9jY2FjaGUNCiQgbHMgLWwgL3Vzci9iaW4vY2NhY2hlIA0K
LXJ3eHIteHIteCAxIHJvb3Qgcm9vdCAxMjg1ODQgSmFuIDI2IDE0OjU4IC91c3IvYmluL2NjYWNo
ZQ0KJCANCg0KDQpCZXN0IFJlZ2FyZHMsDQoNClpoZW5odWENCg0KPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiBGcm9tOiBEYW5pZWwuIFttYWlsdG86ZGFuaWVsaGlsc3RAZ21haWwuY29t
XQ0KPiBTZW50OiBXZWRuZXNkYXksIEp1bmUgMjksIDIwMTYgODoxNCBQTQ0KPiBUbzogWmhlbmh1
YSBMdW8gPHpoZW5odWEubHVvQG54cC5jb20+DQo+IENjOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21h
aWwuY29tPjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBG
YWlsZWQgdG8gY3Jvc3MgY29tcGlsZSBrZXJuZWwgd2l0aCBZb2N0byB0b29sY2hhaW4NCj4gDQo+
IElzIC91c3IvbGliNjQvZ2NjIGEgZmlsZSBvciBhIGxpbms/IElzIGl0IGEgdmFsaWQgbGluaz8N
Cj4gDQo+IDIwMTYtMDYtMjkgNTo1MiBHTVQtMDM6MDAgWmhlbmh1YSBMdW8gPHpoZW5odWEubHVv
QG54cC5jb20+Og0KPiA+IFRoZSAvdXNyL2xpYjY0L2NjYWNoZSBpcyBhZGRlZCBpbiBQQVRIIGJ5
IC9ldGMvcHJvZmlsZS5kL2NjYWNoZS5zaA0KPiA+IHdoZW4gY2NhY2hlIGlzIGluc3RhbGxlZCBv
biBGZWRvcmEgaG9zdCwgdGhlIGlzc3VlIGRpc2FwcGVhcnMgaWYgb25lDQo+ID4gb2YgdGhlIGZv
bGxvd2luZyBjaGFuZ2VzIGlzIGRvbmUuDQo+ID4NCj4gPiAxLiAgICAgICBSZW1vdmUgL3Vzci9s
aWI2NC9jY2FjaGUgZnJvbSBQQVRIDQo+ID4NCj4gPiAyLiAgICAgICBNb3ZlIC91c3IvbGliNjQv
Y2NhY2hlIGFmdGVyIC91c3IvYmluIGluIFBBVEgNCj4gPg0KPiA+IDMuICAgICAgIFNldCBDQ0FD
SEVfUEFUSCBlcXVhbHMgdG8gUEFUSA0KPiA+DQo+ID4gNC4gICAgICAgVW5zZXQgQ0NBQ0hFX1BB
VEgNCj4gPg0KPiA+DQo+ID4NCj4gPiBBbm90aGVyIG9ic2VydmF0aW9uLCBiZWZvcmUgc291cmNp
bmcNCj4gPiBlbnZpcm9ubWVudC1zZXR1cC08Y29yZT4tcG9reS1saW51eCwNCj4gPiBnY2MgY2Fu
IGJlIGZvdW5kIGV2ZW4gaWYgL3Vzci9saWI2NC9jY2FjaGUgaXMgaW4gcHJlcGVuZCB0byBQQVRI
LCBidXQNCj4gPiBhZnRlciBzb3VyY2luZyB0aGUgZW52aXJvbm1lbnQtc2V0dXAtPGNvcmU+LXBv
a3ktbGludXggc2NyaXB0LCB0aGUgZ2NjDQo+ID4gY2Fu4oCZdCBiZSBmb3VuZCwgdGhpcyBzaG91
bGQgYmUgYSBidWcgb2YgdGhlDQo+ID4gZW52aXJvbm1lbnQtc2V0dXAtPGNvcmU+LXBva3ktbGlu
dXgNCj4gPiBzY3JpcHQuIFNob3VsZCBJIG9wZW4gYSBCdWd6aWxsYSB0aWNrZXQgdG8gdHJhY2sg
aXQ/DQo+ID4NCj4gPg0KPiA+DQo+ID4gJCBlY2hvICRQQVRIDQo+ID4NCj4gPiAvdXNyL2xpYjY0
L3F0LTMuMy9iaW46L3Vzci9saWI2NC9jY2FjaGU6L3Vzci9sb2NhbC9iaW46L3Vzci9iaW46L3Vz
ci9sDQo+ID4gb2NhbC9zYmluOi91c3Ivc2JpbjovaG9tZS9ianNpbWljcy8ubG9jYWwvYmluOi9o
b21lL2Jqc2ltaWNzL2Jpbg0KPiA+DQo+ID4gd2hpY2ggZ2NjDQo+ID4NCj4gPiAvdXNyL2xpYjY0
L2NjYWNoZS9nY2MNCj4gPg0KPiA+ICQgZ2NjIC12DQo+ID4NCj4gPiBVc2luZyBidWlsdC1pbiBz
cGVjcy4NCj4gPg0KPiA+IENPTExFQ1RfR0NDPS91c3IvYmluL2djYw0KPiA+DQo+ID4gQ09MTEVD
VF9MVE9fV1JBUFBFUj0vdXNyL2xpYmV4ZWMvZ2NjL3g4Nl82NC1yZWRoYXQtbGludXgvNS4zLjEv
bHRvLQ0KPiB3cmENCj4gPiBwcGVyDQo+ID4NCj4gPiBUYXJnZXQ6IHg4Nl82NC1yZWRoYXQtbGlu
dXgNCj4gPg0KPiA+IENvbmZpZ3VyZWQgd2l0aDogLi4vY29uZmlndXJlIC0tZW5hYmxlLWJvb3Rz
dHJhcA0KPiA+IC0tZW5hYmxlLWxhbmd1YWdlcz1jLGMrKyxvYmpjLG9iai1jKyssZm9ydHJhbixh
ZGEsZ28sbHRvIC0tcHJlZml4PS91c3INCj4gPiAtLW1hbmRpcj0vdXNyL3NoYXJlL21hbiAtLWlu
Zm9kaXI9L3Vzci9zaGFyZS9pbmZvDQo+ID4gLS13aXRoLWJ1Z3VybD1odHRwOi8vYnVnemlsbGEu
cmVkaGF0LmNvbS9idWd6aWxsYSAtLWVuYWJsZS1zaGFyZWQNCj4gPiAtLWVuYWJsZS10aHJlYWRz
PXBvc2l4IC0tZW5hYmxlLWNoZWNraW5nPXJlbGVhc2UgLS1lbmFibGUtbXVsdGlsaWINCj4gPiAt
LXdpdGgtc3lzdGVtLXpsaWIgLS1lbmFibGUtX19jeGFfYXRleGl0DQo+ID4gLS1kaXNhYmxlLWxp
YnVud2luZC1leGNlcHRpb25zIC0tZW5hYmxlLWdudS11bmlxdWUtb2JqZWN0DQo+ID4gLS1lbmFi
bGUtbGlua2VyLWJ1aWxkLWlkIC0td2l0aC1saW5rZXItaGFzaC1zdHlsZT1nbnUgLS1lbmFibGUt
cGx1Z2luDQo+ID4gLS1lbmFibGUtaW5pdGZpbmktYXJyYXkgLS1kaXNhYmxlLWxpYmdjag0KPiA+
IC0td2l0aC1kZWZhdWx0LWxpYnN0ZGN4eC1hYmk9Z2NjNC1jb21wYXRpYmxlIC0td2l0aC1pc2wN
Cj4gPiAtLWVuYWJsZS1saWJtcHggLS1lbmFibGUtZ251LWluZGlyZWN0LWZ1bmN0aW9uIC0td2l0
aC10dW5lPWdlbmVyaWMNCj4gPiAtLXdpdGgtYXJjaF8zMj1pNjg2IC0tYnVpbGQ9eDg2XzY0LXJl
ZGhhdC1saW51eA0KPiA+DQo+ID4gVGhyZWFkIG1vZGVsOiBwb3NpeA0KPiA+DQo+ID4gZ2NjIHZl
cnNpb24gNS4zLjEgMjAxNjA0MDYgKFJlZCBIYXQgNS4zLjEtNikgKEdDQykNCj4gPg0KPiA+ICQN
Cj4gPg0KPiA+ICQgc291cmNlIC9vcHQvcG9reS8yLjErc25hcHNob3QvZW52aXJvbm1lbnQtc2V0
dXAtcHBjZTUwMG1jLXBva3ktDQo+IGxpbnV4DQo+ID4NCj4gPiAkDQo+ID4NCj4gPiAkIGVjaG8g
JFBBVEgNCj4gPg0KPiA+IC9vcHQvcG9reS8yLjErc25hcHNob3Qvc3lzcm9vdHMveDg2XzY0LXBv
a3lzZGstbGludXgvdXNyL2Jpbjovb3B0L3Bva3kNCj4gPiAvMi4xK3NuYXBzaG90L3N5c3Jvb3Rz
L3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9zYmluOi9vcHQvcG9reS8yLjErc25hDQo+ID4gcHNo
b3Qvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGludXgvYmluOi9vcHQvcG9reS8yLjErc25hcHNo
b3Qvc3lzcm9vdA0KPiA+IHMveDg2XzY0LXBva3lzZGstbGludXgvc2Jpbjovb3B0L3Bva3kvMi4x
K3NuYXBzaG90L3N5c3Jvb3RzL3g4Nl82NC1wb2sNCj4gPiB5c2RrLWxpbnV4L3Vzci9iaW4vLi4v
eDg2XzY0LXBva3lzZGstbGludXgvYmluOi9vcHQvcG9reS8yLjErc25hcHNob3QvDQo+ID4gc3lz
cm9vdHMveDg2XzY0LXBva3lzZGstbGludXgvdXNyL2Jpbi9wb3dlcnBjLXBva3ktbGludXg6L29w
dC9wb2t5LzIuMQ0KPiA+ICtzbmFwc2hvdC9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91
c3IvYmluL3Bvd2VycGMtcG9reS1saW51eC11Y2wNCj4gPiBpYmM6L29wdC9wb2t5LzIuMStzbmFw
c2hvdC9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91c3IvYmluL3Bvd2VyDQo+ID4gcGMt
cG9reS1saW51eC1tdXNsOi91c3IvbGliNjQvcXQtMy4zL2JpbjovdXNyL2xpYjY0L2NjYWNoZTov
dXNyL2xvY2FsLw0KPiA+IGJpbjovdXNyL2JpbjovdXNyL2xvY2FsL3NiaW46L3Vzci9zYmluOi9o
b21lL2Jqc2ltaWNzLy5sb2NhbC9iaW46L2hvbWUNCj4gPiAvYmpzaW1pY3MvYmluDQo+ID4NCj4g
PiAkDQo+ID4NCj4gPiAkIHdoaWNoIGdjYw0KPiA+DQo+ID4gL3Vzci9saWI2NC9jY2FjaGUvZ2Nj
DQo+ID4NCj4gPiAkIGdjYyAtdg0KPiA+DQo+ID4gY2NhY2hlOiBlcnJvcjogQ291bGQgbm90IGZp
bmQgY29tcGlsZXIgImdjYyIgaW4gUEFUSA0KPiA+DQo+ID4gJA0KPiA+DQo+ID4NCj4gPg0KPiA+
DQo+ID4NCj4gPiBCZXN0IFJlZ2FyZHMsDQo+ID4NCj4gPg0KPiA+DQo+ID4gWmhlbmh1YQ0KPiA+
DQo+ID4NCj4gPg0KPiA+IEZyb206IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29t
XQ0KPiA+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjgsIDIwMTYgMTA6NDggUE0NCj4gPiBUbzogWmhl
bmh1YSBMdW8gPHpoZW5odWEubHVvQG54cC5jb20+DQo+ID4gQ2M6IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcNCj4gPiBTdWJqZWN0OiBSRTogW3lvY3RvXSBGYWlsZWQgdG8gY3Jvc3MgY29tcGlsZSBr
ZXJuZWwgd2l0aCBZb2N0bw0KPiA+IHRvb2xjaGFpbg0KPiA+DQo+ID4NCj4gPg0KPiA+IC91c3Iv
bGliNjQvY2NhY2hlIGlzIHVudXN1YWwgd2h5IGRvIHlvdSBoYXZlIGl0IGluIHBhdGggYW5kIGlm
IHlvdQ0KPiA+IHJlYWxseSBuZWVkIGl0IGFkZCBpdCBhZnRlciBhbGwgb3RoZXIgcGF0aHMuIENo
ZWNrIHlvdXIgZW52IGZpcnN0DQo+ID4NCj4gPg0KPiA+DQo+ID4gT24gSnVuIDI3LCAyMDE2IDEw
OjU2IFBNLCAiWmhlbmh1YSBMdW8iIDx6aGVuaHVhLmx1b0BueHAuY29tPiB3cm90ZToNCj4gPg0K
PiA+IEhlbGxvIEtoZW0sDQo+ID4NCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiA+PiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0NCj4gPj4g
U2VudDogVHVlc2RheSwgSnVuZSAyOCwgMjAxNiAxMjozNiBBTQ0KPiA+PiBUbzogWmhlbmh1YSBM
dW8gPHpoZW5odWEubHVvQG54cC5jb20+DQo+ID4+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQo+ID4+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIEZhaWxlZCB0byBjcm9zcyBjb21waWxlIGtlcm5l
bCB3aXRoIFlvY3RvDQo+ID4+IHRvb2xjaGFpbg0KPiA+Pg0KPiA+PiBPbiBNb24sIEp1biAyNywg
MjAxNiBhdCAxOjE2IEFNLCBaaGVuaHVhIEx1byA8emhlbmh1YS5sdW9AbnhwLmNvbT4NCj4gPj4g
d3JvdGU6DQo+ID4+ID4gSGVsbG8gYWxsLA0KPiA+PiA+DQo+ID4+ID4NCj4gPj4gPg0KPiA+PiA+
IEkgZ2VuZXJhdGUgdGhlIFlvY3RvIHRvb2xjaGFpbiBieSDigJxiaXRiYWtlIG1ldGEtdG9vbGNo
YWlu4oCdLCBhbmQgdXNlDQo+ID4+ID4gdGhpcyB0b29sY2hhaW4gdG8gY3Jvc3MtY29tcGlsZSBr
ZXJuZWwsIEkgbWV0IHRoZSBmb2xsb3dpbmcgZXJyb3IuDQo+ID4+ID4gSXMgdGhpcyBhIGJ1ZyBv
ciBJIG1pc3NlZCBzb21ldGhpbmc/IE15IGhvc3QgTGludXggaXMgRmVkb3JhIDIyLg0KPiA+Pg0K
PiA+PiBpdHMgYmV0dGVyIHRvIHN0YXJ0IHVzaW5nIGJpdGJha2UgLWNwb3B1bGF0ZV9zZGsgPGlt
YWdlIG5hbWU+IHRvDQo+ID4+IGdlbmVyYXRlIFNES3MuDQo+ID4+DQo+ID4+DQo+ID4+ID4NCj4g
Pj4gPg0KPiA+PiA+DQo+ID4+ID4gJCBzb3VyY2UgL29wdC9wb2t5LzIuMStzbmFwc2hvdC9lbnZp
cm9ubWVudC1zZXR1cC1wcGNlNTAwbWMtcG9reS0NCj4gPj4gbGludXgNCj4gPj4gPg0KPiA+PiA+
ICQgY2QgbGludXgvDQo+ID4+ID4NCj4gPj4gPiAkIG1ha2UgY29yZW5ldDMyX3NtcF9kZWZjb25m
aWcNCj4gPj4gPg0KPiA+PiA+ICAgSE9TVENDICBzY3JpcHRzL2tjb25maWcvY29uZi5vDQo+ID4+
ID4NCj4gPj4gPiBjY2FjaGU6IGVycm9yOiBDb3VsZCBub3QgZmluZCBjb21waWxlciAiZ2NjIiBp
biBQQVRIDQo+ID4+DQo+ID4+IGRpZCB5b3Ugc2VlIGlmIGdjYyBpcyBpbiB5b3VyIHBhdGggYWZ0
ZXIgc291cmNpbmcgU0RLIGVudiBzY3JpcHQ/DQo+ID4NCj4gPiBbTHVvIFpoZW5odWEtQjE5NTM3
XSBnY2MgY2FuJ3QgYmUgZm91bmQgYWZ0ZXIgc291cmNpbmcgdGhlIFNESyBlbnYgc2NyaXB0Lg0K
PiA+IGJ1dCB0aGUgL3Vzci9iaW4gaXMgaW4gdGhlIFBBVEggZW52IHZhcmlhYmxlLg0KPiA+ICQg
c291cmNlIC9vcHQvcG9reS8yLjErc25hcHNob3QvZW52aXJvbm1lbnQtc2V0dXAtcHBjZTUwMG1j
LXBva3ktDQo+IGxpbnV4DQo+ID4gJCBlY2hvICRQQVRIDQo+ID4gL29wdC9wb2t5LzIuMStzbmFw
c2hvdC9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91c3IvYmluOi9vcHQvcG9reQ0KPiA+
IC8yLjErc25hcHNob3Qvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGludXgvdXNyL3NiaW46L29w
dC9wb2t5LzIuMStzbmENCj4gPiBwc2hvdC9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC9i
aW46L29wdC9wb2t5LzIuMStzbmFwc2hvdC9zeXNyb290DQo+ID4gcy94ODZfNjQtcG9reXNkay1s
aW51eC9zYmluOi9vcHQvcG9reS8yLjErc25hcHNob3Qvc3lzcm9vdHMveDg2XzY0LXBvaw0KPiA+
IHlzZGstbGludXgvdXNyL2Jpbi8uLi94ODZfNjQtcG9reXNkay1saW51eC9iaW46L29wdC9wb2t5
LzIuMStzbmFwc2hvdC8NCj4gPiBzeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91c3IvYmlu
L3Bvd2VycGMtcG9reS1saW51eDovb3B0L3Bva3kvMi4xDQo+ID4gK3NuYXBzaG90L3N5c3Jvb3Rz
L3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9iaW4vcG93ZXJwYy1wb2t5LWxpbnV4LXVjbA0KPiA+
IGliYzovb3B0L3Bva3kvMi4xK3NuYXBzaG90L3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4
L3Vzci9iaW4vcG93ZXINCj4gPiBwYy1wb2t5LWxpbnV4LW11c2w6L3Vzci9saWI2NC9xdC0zLjMv
YmluOi91c3IvbGliNjQvY2NhY2hlOi91c3IvbG9jYWwvDQo+ID4gYmluOi91c3IvYmluOi91c3Iv
bG9jYWwvc2JpbjovdXNyL3NiaW46L2hvbWUvYmpzaW1pY3MvLmxvY2FsL2JpbjovaG9tZQ0KPiA+
IC9ianNpbWljcy9iaW4NCj4gPiAkIGVjaG8gJENDQUNIRV9QQVRIDQo+ID4gL29wdC9wb2t5LzIu
MStzbmFwc2hvdC9zeXNyb290cy94ODZfNjQtcG9reXNkay0NCj4gbGludXgvdXNyL2Jpbjovb3B0
L3Bva3kvMi4xK3NuYXBzaG90L3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLQ0KPiBsaW51eC91c3Iv
YmluLy4uL3g4Nl82NC1wb2t5c2RrLQ0KPiBsaW51eC9iaW46L29wdC9wb2t5LzIuMStzbmFwc2hv
dC9zeXNyb290cy94ODZfNjQtcG9reXNkay0NCj4gbGludXgvdXNyL2Jpbi9wb3dlcnBjLXBva3kt
bGludXg6L29wdC9wb2t5LzIuMStzbmFwc2hvdC9zeXNyb290cy94ODZfNjQtDQo+IHBva3lzZGst
bGludXgvdXNyL2Jpbi9wb3dlcnBjLXBva3ktbGludXgtDQo+IHVjbGliYzovb3B0L3Bva3kvMi4x
K3NuYXBzaG90L3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLQ0KPiBsaW51eC91c3IvYmluL3Bvd2Vy
cGMtcG9reS1saW51eC1tdXNsOg0KPiA+ICQgd2hpY2ggZ2NjDQo+ID4gL3Vzci9saWI2NC9jY2Fj
aGUvZ2NjDQo+ID4gJCBnY2MgLXYNCj4gPg0KPiA+IGNjYWNoZTogZXJyb3I6IENvdWxkIG5vdCBm
aW5kIGNvbXBpbGVyICJnY2MiIGluIFBBVEgNCj4gPg0KPiA+IEJlc3QgUmVnYXJkcywNCj4gPg0K
PiA+IFpoZW5odWENCj4gPg0KPiA+DQo+ID4+ID4gc2NyaXB0cy9NYWtlZmlsZS5ob3N0OjEwODog
cmVjaXBlIGZvciB0YXJnZXQgJ3NjcmlwdHMva2NvbmZpZy9jb25mLm8nDQo+ID4+ID4gZmFpbGVk
DQo+ID4+ID4NCj4gPj4gPiBtYWtlWzFdOiAqKiogW3NjcmlwdHMva2NvbmZpZy9jb25mLm9dIEVy
cm9yIDENCj4gPj4gPg0KPiA+PiA+IE1ha2VmaWxlOjU0MTogcmVjaXBlIGZvciB0YXJnZXQgJ2Nv
cmVuZXQzMl9zbXBfZGVmY29uZmlnJyBmYWlsZWQNCj4gPj4gPg0KPiA+PiA+IG1ha2U6ICoqKiBb
Y29yZW5ldDMyX3NtcF9kZWZjb25maWddIEVycm9yIDINCj4gPj4gPg0KPiA+PiA+DQo+ID4+ID4N
Cj4gPj4gPg0KPiA+PiA+DQo+ID4+ID4gQmVzdCBSZWdhcmRzLA0KPiA+PiA+DQo+ID4+ID4NCj4g
Pj4gPg0KPiA+PiA+IFpoZW5odWENCj4gPj4gPg0KPiA+PiA+DQo+ID4+ID4gLS0NCj4gPj4gPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+PiA+IHlv
Y3RvIG1haWxpbmcgbGlzdA0KPiA+PiA+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPj4gPiBo
dHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4gPj4gPg0KPiA+
DQo+ID4NCj4gPg0KPiA+DQo+ID4gLS0NCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiA+IHlvY3RvIG1haWxpbmcgbGlzdA0KPiA+IHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmcNCj4gPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGlu
Zm8veW9jdG8NCj4gPg0KPiANCj4gDQo+IA0KPiAtLQ0KPiAiRG8gb3IgZG8gbm90LiBUaGVyZSBp
cyBubyB0cnkiDQo+ICAgWW9kYSBNYXN0ZXINCg==

