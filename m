Return-Path: <christian.lohr.ext@zeiss.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4E20E00D98; Mon, 28 Oct 2019 02:16:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from msgsrv7.wbnsvc.com (msgsrv7.wbnsvc.com [194.8.120.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 905C3E00AAA
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 02:16:30 -0700 (PDT)
Received: from julia-mo2.my-it-solutions.net (HELO
	julia-mo2.ccsn.de.ao-srv.com) ([194.8.124.179])
	by msgsrv-out1.atosorigin.de with ESMTP; 28 Oct 2019 10:16:28 +0100
Received: from julia-mo2.ccsn.de.ao-srv.com (unknown [194.8.124.179]) by
	MCS02-MA1.atosorigin.de with smtp
	id 1397_05ed_6650efd2_4d86_4d78_a3a9_b6d880619ee2;
	Mon, 28 Oct 2019 10:16:28 +0100
Received: from julia-mo2 (localhost [127.0.0.1])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id 8C77C12011CE;
	Mon, 28 Oct 2019 10:16:28 +0100 (CET)
Received: from ADEERL01IMS011.zeiss.org (ADEERL01IMS011.zeiss.org
	[10.193.156.178])
	by julia-mo2.ccsn.de.ao-srv.com (Postfix) with ESMTP id 5016612011CE;
	Mon, 28 Oct 2019 10:16:28 +0100 (CET)
Received: from ADEERL01IMS011 (localhost [127.0.0.1])
	by ADEERL01IMS011.zeiss.org (Postfix) with ESMTP id 435052A2006;
	Mon, 28 Oct 2019 09:16:28 +0000 (GMT)
Received: from ADEFUE01SMS004.cznet.zeiss.org (adefue01sms004.zeiss.org
	[10.167.4.49])
	by ADEERL01IMS011.zeiss.org (Postfix) with ESMTP id 383972A2003;
	Mon, 28 Oct 2019 09:16:28 +0000 (GMT)
Received: from ADEERL01IUCC23.zeiss.org (10.167.12.169) by
	adefue01sms004.cznet.zeiss.org (10.167.4.49) with Microsoft SMTP Server
	(TLS) id 14.3.468.0; Mon, 28 Oct 2019 10:16:26 +0100
Received: from EUR02-HE1-obe.outbound.protection.outlook.com (104.47.5.55) by
	hybrid.ext.smtp.zeiss.com (217.115.69.79) with Microsoft SMTP Server
	(version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.845.34; Mon, 28 Oct 2019 10:16:26 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=Znyx//pcgkdCRqzTnfwlhjduz+jD5eOs+Y/p8wBMGuzwcd+OHxCxNCdf7UPs43UAjdvgyPCRefKlw040rULOoG59CbtSCZvypQVcwl5AcQSaThwkIQ2H982FHX38zreBLRyrxPAW0XNO9Jchw1R3xeqcj+eYNl5S45+H1e04VWF22vyJJ9DDGoPnmpfyOAsouxclh+XDuA/6l/YRom4nDehpHEJCAqb+wSTwYFj9eCfYPdkPqFGssHDFgsq5J3VVueRTGgt8mmaRguX9mabGbugpgtWPU0Wxj+qPPrQIqKD4QO4SrLck7K1L8Ep4JUNX4W6oMrT7aqfn4QeEl6IoIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=GeSCsPYuXTKX90om8GzvvacSAGcl8uH6feXNCl2gjdY=;
	b=N0+H2676QuWurGKhBusNFd8NwB2+PY48VU0g4qnvC57W+QOd92HaMHBIfy0i7QT6Jc7ep0XvYb/ryiizP1MYUc7n7wzhcAg87JqPMl8SWHXjnaSNY5pbHgz1VIIAIVOKkJ91vOz4bm/i0/3dPyfhotE24EVgi0HEt7wWXbGYVpqAfqNKhA6fuRMK+wTO0dgb89ICEXZdblc5rrERLZ1JKLem0xJspYWFDmNpbAKUCyqYWQrghJAWFBMolkK+RGE6n7kveQviBSlzAqEm/CtVKAuHIe8X4ePNAeBcpGpi0bDLnwyDS5IpRlf511PcV5aTvT0xhj1eDKX5OjqqBks51g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=zeiss.com; dmarc=pass action=none header.from=zeiss.com; 
	dkim=pass header.d=zeiss.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zeiss.onmicrosoft.com; 
	s=selector2-zeiss-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=GeSCsPYuXTKX90om8GzvvacSAGcl8uH6feXNCl2gjdY=;
	b=elMcXddDPIFCdmwHChxJU62BYDN2oug71yWLxUDbN2t4nfWy5+diVyvills8pgd1tm53DzmVUTeOZyX4ox2SMh+6qAlFI3XqLp55xmEPicB+OHhzAV5R4ZQ13lALO9hXBa1obYMMQKKs1YdixmfB2XBONp1LenmGvT/DUV58Im0=
Received: from VI1P190MB0799.EURP190.PROD.OUTLOOK.COM (10.141.34.9) by
	VI1P190MB0495.EURP190.PROD.OUTLOOK.COM (10.165.195.142) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.24; Mon, 28 Oct 2019 09:16:25 +0000
Received: from VI1P190MB0799.EURP190.PROD.OUTLOOK.COM
	([fe80::fc21:c0c1:1868:e61e]) by VI1P190MB0799.EURP190.PROD.OUTLOOK.COM
	([fe80::fc21:c0c1:1868:e61e%6]) with mapi id 15.20.2387.023;
	Mon, 28 Oct 2019 09:16:25 +0000
From: "Lohr, Christian [ext]" <christian.lohr.ext@zeiss.com>
To: Randy MacLeod <randy.macleod@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] TFS Urls with Git in Recipes
Thread-Index: AdWJcfsFXK9EtXrKREuYUA6hsP/MZQB+QZ0AAIDElKA=
Date: Mon, 28 Oct 2019 09:16:24 +0000
Message-ID: <VI1P190MB0799755BBB47A4BEC1FFDD4EC2660@VI1P190MB0799.EURP190.PROD.OUTLOOK.COM>
References: <AM7P190MB079129F3F34E6A01826C34EFC26B0@AM7P190MB0791.EURP190.PROD.OUTLOOK.COM>
	<05b0fed8-9252-dc02-1eaa-aaff8cf69602@windriver.com>
In-Reply-To: <05b0fed8-9252-dc02-1eaa-aaff8cf69602@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=christian.lohr.ext@zeiss.com; 
x-originating-ip: [165.225.73.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3acfdf5-1c14-4971-5ee8-08d75b8781bc
x-ms-traffictypediagnostic: VI1P190MB0495:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <VI1P190MB04958CC08BC91E941A411877C2660@VI1P190MB0495.EURP190.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0204F0BDE2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(136003)(346002)(396003)(39860400002)(376002)(52024003)(199004)(189003)(6116002)(3846002)(486006)(53546011)(5660300002)(102836004)(26005)(110136005)(71200400001)(316002)(76176011)(186003)(11346002)(446003)(52536014)(7696005)(25786009)(6436002)(66066001)(9686003)(6306002)(55016002)(8936002)(2906002)(99286004)(76116006)(81156014)(66946007)(81166006)(45080400002)(478600001)(256004)(64756008)(66446008)(14454004)(66556008)(8676002)(66476007)(2501003)(966005)(19627235002)(305945005)(7736002)(33656002)(74316002)(86362001)(55236004)(6506007)(476003)(71190400001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1P190MB0495;
	H:VI1P190MB0799.EURP190.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: zeiss.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9LirwktNlX3/gArZ7hlullV16NonrmUb7Ax1zeNbyaS9LXYGMrNDSU0XjSNjtvrSVNEj2aeN/BypIS3tF58Wgs1HFckUAw3eSVuauY6qYKHAkuAoNRn7aUbzp5GaSRHlwuDPNg0TENbLgwC4jDM7QPo1vK6wSKqTypJr43QL9YjAyWMrifcvsvHH03mkDHPpHlFbw8sTuVyQuSMWSpDspGghVeret7zqkN01mTKyFil5+awpUYTE8E0KoFBIk4tRXd4yV4bs3Q9hLHn0GxWq0Fd3HDuBY41M4qeeek01v7+qIK0oPg75PYgMIlUCEDRZ8c9YOpJODDqG7RVsItEo/kvOXWN2Y37JzyVNkYTyrmMNBhjClnBW40Z6sQcdQEgHi9KqAqq8LywggAyJA2VYkZi7KPzPWfcaIR+wgxoN+8/SSbs5v/AHRXsoPAKCgE799LRR6C+Ug4GO50r9PZM3aDGp6OBNuKO9CLMOWmxpNSE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f3acfdf5-1c14-4971-5ee8-08d75b8781bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2019 09:16:25.0049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 28042244-bb51-4cd6-8034-7776fa3703e8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pdH3oWQv9nGlmBLFHrHHSZ0MzyL/gHho4WGFqAsr1qKot4dKRm16QrCtXS3B6nOk7P8/BABh2/yMxWv6QKxb8yKPn/kfQbfMeqg7URbEj68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P190MB0495
X-OriginatorOrg: zeiss.com
X-NAI-Spam-Flag: NO
X-NAI-Spam-Level: 
X-NAI-Spam-Threshold: 8
X-NAI-Spam-Score: 0.2
X-NAI-Spam-Version: 2.3.0.9418 : core <6663> : inlines <7155> : streams
	<1836921> : uri <2929035>
Subject: Re: TFS Urls with Git in Recipes
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
X-List-Received-Date: Mon, 28 Oct 2019 09:16:33 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gUmFuZHksDQoNClRoYW5rcyBmb3IgeW91ciByZXBseSBhbmQgeW91ciBlZmZvcnRzLg0K
SSBhbHJlYWR5IHNvbHZlZCBteSBpc3N1ZSBhbmQgcmVuYW1lZCB0aGUgcHJvamVjdCBmcm9tICJG
b29CYXIgNTAwIiB0byAiRm9vQmFyXzUwMCIuIFRoaXMgd2FzIHRoZSBlYXNpZXN0IGFuZCBmYXN0
ZXN0IHNvbHV0aW9uLiBBbmQgbHVja2lseSBub2JvZHkgY29tcGxhaW5lZCBhZnRlciB0aGUgcmVu
YW1pbmcuDQoNCkJlZm9yZSB0aGF0IEkgYWxzbyB0cmllZCB0aGF0IG9uZSAoYm90aCBvZiB0aGVt
KSwgYnV0IGl0IGRpZG4ndCB3b3JrOg0KDQo+IEl0J3MgcG9zc2libGUgdGhhdDoNCj4gICAgIFBS
T0pFQ1RfTkFNRSA9ICJGb29CYXIgNTAwIg0KPiBvcg0KPiAgICAgUFJPSkVDVF9OQU1FID0gIkZv
b0JhclwgNTAwIg0KPiB3b3VsZCB3b3JrLg0KDQoNCi0tLS0tVXJzcHLDvG5nbGljaGUgTmFjaHJp
Y2h0LS0tLS0NClZvbjogUmFuZHkgTWFjTGVvZCA8cmFuZHkubWFjbGVvZEB3aW5kcml2ZXIuY29t
PiANCkdlc2VuZGV0OiBGcmVpdGFnLCAyNS4gT2t0b2JlciAyMDE5IDIxOjMzDQpBbjogTG9ociwg
Q2hyaXN0aWFuIFtleHRdIDxjaHJpc3RpYW4ubG9oci5leHRAemVpc3MuY29tPjsgeW9jdG9AeW9j
dG9wcm9qZWN0Lm9yZw0KQmV0cmVmZjogUmU6IFt5b2N0b10gVEZTIFVybHMgd2l0aCBHaXQgaW4g
UmVjaXBlcw0KDQpIZWxsbyBDaHJpc3RpYW4sDQoNClRoYW5rcyBmb3IgcmVwb3J0aW5nIHRoZSBw
cm9ibGVtLiBDb21tZW50cyBhbmQgcXVlc3Rpb25zIGJlbG93Lg0KDQpPbiAxMC8yMy8xOSAzOjM2
IEFNLCBMb2hyLCBDaHJpc3RpYW4gW2V4dF0gd3JvdGU6DQo+IEhlbGxvLA0KPiANCj4gSeKAmG0g
dXNpbmcgdGhlIGZvbGxvd2luZzoNCj4gDQo+IFlvY3RvIFJlbGVhc2UgMi40IChSb2NrbyksIGFu
ZCBCaXRiYWtlIDEuOS54DQoNCkNhbiB5b3UgY2hlY2sgaWYgdGhlIHByb2JsZW0gaXMgc3RpbGwg
cHJlc2VudCBvbiB0aGUgbWFzdGVyIGJyYW5jaD8NCg0KPiANCj4gTXkgcHJvYmxlbSBpcyB0aGUg
Zm9sbG93aW5nIHVybCAoYWN0dWFsbHkgdGhlIOKAnCUyMOKAnSBpcyB0aGUgcHJvYmxlbSBpbg0K
PiBiaXRiYWtlKToNCj4gDQo+IHNzaDovL3Rmcy1teS1jb21wYW55Lm9yZzoyMi90ZnMvT1dOX1By
b2plY3RzL0Zvb0JhciUyMDUwMC9fZ2l0L0R1bW15QXANCj4gcGxpY2F0aW9uRm9yWW9jdG8NCj4g
DQo+IEkgY2FuIGRvIGEg4oCcZ2l0IGNsb25lIDx1cmw+4oCdIHdpdGhvdXQgYW55IHByb2JsZW1z
LiBOb3cgSSB3YW50ZWQgdG8gDQo+IGNyZWF0ZSBhIFlvY3RvIHJlY2lwZSBzaW1pbGFyIHRvIHRo
aXM6DQo+IA0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiBTVU1NQVJZID0g
IkEgZGVtbyBhcHBsaWNhdGlvbiINCj4gDQo+IERFU0NSSVBUSU9OID0gIlRoaXMgYXBwbGljYXRp
b24gaXMganVzdCBmb3IgZGVtbyBwdXJwb3NlIGFuZCBzaG91bGQgYmUgDQo+IHNlZW4gYXMgSGVs
bG8gV29ybGQiDQo+IA0KPiBMSUNFTlNFID0gIkNMT1NFRCINCj4gDQo+ICNMSUNfRklMRVNfQ0hL
U1VNID0gIiINCj4gDQo+IFBST0pFQ1RfVVJMID0gInRmcy1teS1jb21wYW55Lm9yZzoyMi90ZnMv
T1dOX1Byb2plY3RzIg0KPiANCj4gUFJPSkVDVF9OQU1FID0gIkZvb0JhciUyMDUwMCINCg0KSXQn
cyBwb3NzaWJsZSB0aGF0Og0KICAgICBQUk9KRUNUX05BTUUgPSAiRm9vQmFyIDUwMCINCm9yDQog
ICAgIFBST0pFQ1RfTkFNRSA9ICJGb29CYXJcIDUwMCINCndvdWxkIHdvcmsuIEhhdmUgeW91IHRy
aWVkIHRoYXQgYWxyZWFkeT8gSSBoYXZlbid0IHdvcmtlZCBvbiB0aGUgYml0YmFrZSBmZXRjaGVy
IGNvZGUgc28gSSBtYXkgYmUgbWFraW5nIG5haXZlIHN1Z2dlc3Rpb25zLg0KDQpBbHNvLCBJIGV4
cGVjdCB0aGF0IHlvdSBhcmUgd29ya2luZyBhcm91bmQgdGhlIGlzc3VlIGJ5IGp1c3QgcmVtb3Zp
bmcgdGhlIHNwYWNlIGluIHRoZSBwYXRoLCByaWdodD8NCg0KPiANCj4gU1JDX1VSSSA9DQo+ICJn
aXQ6Ly8ke1BST0pFQ1RfVVJMfS8ke1BST0pFQ1RfTkFNRX0vX2dpdC9EdW1teUFwcGxpY2F0aW9u
Rm9yWW9jdG87cHJvdG9jb2w9c3NoIg0KPiANCj4gU1JDUkVWID0gIiR7QVVUT1JFVn0iDQo+IA0K
PiBQViA9ICIxLjArZ2l0JHtTUkNQVn0iDQo+IA0KPiBERVBFTkRTID0gInF0YmFzZSINCj4gDQo+
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gVGhlIOKAniUyMOKAnCBzaWdu
IHdpbGwgYmUgcmVwbGFjZWQgd2l0aCBhIHNwYWNlIOKAnCDigJwgaW4gc29tZSBjYXNlczoNCj4g
DQo+IFdoZW4gSSB0cnkgdG8gcnVuIOKAnGJpdGJha2UgZHVtbXlhcHDigJ0sIHRoZSBmb2xsb3dp
bmcgaGFwcGVuczoNCj4gDQo+IOKAnEZvb0JhciUyMDUwMOKAnSB3aWxsIGJlIHRyYW5zZm9ybWVk
IHRvIOKAnEZvb0JhciA1MDDigJ0NCj4gDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KPiANCj4gZ2l0IC1jIGNvcmUuZnN5bmNvYmplY3RmaWxlcz0wIGxzLXJlbW90ZSANCj4gc3No
Oi8vdGZzLW15LWNvbXBhbnkub3JnOjIyL3Rmcy9PV05fUHJvamVjdHMvRm9vQmFyDQo+IDUwMC9f
Z2l0L0R1bW15QXBwbGljYXRpb25Gb3JZb2N0b8KgIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAxMjgs
IG91dHB1dDoNCj4gDQo+IHJlbW90ZTogQ29tbWFuZCBnaXQtdXBsb2FkLXBhY2sgJy90ZnMvT1dO
X1Byb2plY3RzL0Zvb0JhcicgaXMgbm90IGluIA0KPiBleHBlY3RlZCBmb3JtYXQuDQo+IA0KPiBm
YXRhbDogQ291bGQgbm90IHJlYWQgZnJvbSByZW1vdGUgcmVwb3NpdG9yeS4NCj4gDQo+IElzIGl0
IHBvc3NpYmxlIHRvIHByZXZlbnQgdGhpcyBiZWNhdXNlIGlmIGl0IHdvdWxkIGxlYXZlIHRoZSDi
gJwlMjDigJ0gdGhlIA0KPiBjb21tYW5kIHdvdWxkIHdvcmsuDQoNCg0KVGhlIFlQIGRvZXMgaGF2
ZSBwcm9ibGVtcyBkZWFsaW5nIHdpdGggc3BhY2VzIGluIHBhdGggbmFtZXMgYXMgeW91IGhhdmUg
c2Vlbi4gSSB0aGluayB0aGlzIHByZXZlbnRzIHRoZSBNYWNPUyBwb3J0IGZvciBleGFtcGxlLg0K
DQpDb3VsZCB5b3Ugb3BlbiBhIGRlZmVjdCBpbiB0aGUgWW9jdG8gYnVnemlsbGE/DQogICBodHRw
czovL2V1cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0El
MkYlMkZidWd6aWxsYS55b2N0b3Byb2plY3Qub3JnJTJGJmFtcDtkYXRhPTAyJTdDMDElN0MlN0M3
M2U1ZDlkNjU1MWE0Y2E4NzFmZTA4ZDc1OTgyMzBmYiU3QzI4MDQyMjQ0YmI1MTRjZDY4MDM0Nzc3
NmZhMzcwM2U4JTdDMSU3QzAlN0M2MzcwNzYyODgwMTc1NzM3NjQmYW1wO3NkYXRhPTNPZ0tRRFhu
enAyRDZ3S1pkWnVoZ1ZNR2tNVnYlMkI3cGpDR2ZXV1NrMUFJcyUzRCZhbXA7cmVzZXJ2ZWQ9MA0K
ICAgaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0
dHBzJTNBJTJGJTJGd2lraS55b2N0b3Byb2plY3Qub3JnJTJGd2lraSUyRkJ1Z19yZXBvcnRpbmdf
YW5kX0luZm9ybWF0aW9uX2xldmVscyZhbXA7ZGF0YT0wMiU3QzAxJTdDJTdDNzNlNWQ5ZDY1NTFh
NGNhODcxZmUwOGQ3NTk4MjMwZmIlN0MyODA0MjI0NGJiNTE0Y2Q2ODAzNDc3NzZmYTM3MDNlOCU3
QzElN0MwJTdDNjM3MDc2Mjg4MDE3NTczNzY0JmFtcDtzZGF0YT1hUVclMkZ6YzdNOFpTVTR5dlBp
aUF4aGV2OFAlMkJhdGRtaVY1WGdHZ1c4S3ZpTSUzRCZhbXA7cmVzZXJ2ZWQ9MA0KDQpJZGVhbGx5
LCBpdCB3b3VsZCBiZSBncmVhdCBpZiB5b3UgY291bGQgc3VibWl0IGEgcGF0Y2ggYnV0IEkgdW5k
ZXJzdGFuZCB0aGF0IHlvdSBtYXkgbm90IGhhdmUgdGhlIHRpbWUsIGludGVyZXN0IG9yIHRoZSBl
eHBlcnRpc2UgdG8gZG8gc28uDQpJZiB5b3UgYXJlIG5vdCBhYmxlIHRvIGRvIHRoYXQgdGhlbiB0
aGUgZGVmZWN0IHdpbGwgYmUgdHJpYWdlZCBkdXJpbmcgdGhlIHdlZWtseSByZXZpZXcgKG5leHQg
d2VlaydzIG1lZXRpbmcgaXMgYWN0dWFsbHkgY2FuY2VsbGVkIGRvIHRvIHRoZSBFbWJlZGRlZCBM
aW51eCBDb25mZXJlbmNlIC0gRXVyb3BlKSBhbmQgc29tZW9uZSB3aWxsIHdvcmsgb24gdGhlIGRl
ZmVjdCBiYXNlZCBvbiBpdCdzIGltcG9ydGFuY2UgYW5kIHRoZWlyIGludGVyZXN0IGFuZCB3b3Jr
bG9hZC4NCg0KSWYgeW91IHdhbnQgYSBmaXggc29vbmVyIHRoYW4gdGhhdCwgdGhlcmUgYXJlIGNv
bXBhbmllcyBhbmQgY29uc3VsdGFudHMgbGlzdGVkIG9uIHRoZSB5b2N0byBwcm9qZWN0IGhvbWVw
YWdlOg0KICAgIGh0dHBzOi8vZXVyMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20v
P3VybD1odHRwcyUzQSUyRiUyRnd3dy55b2N0b3Byb2plY3Qub3JnJTJGZWNvc3lzdGVtJTJGbWVt
YmVycyUyRiZhbXA7ZGF0YT0wMiU3QzAxJTdDJTdDNzNlNWQ5ZDY1NTFhNGNhODcxZmUwOGQ3NTk4
MjMwZmIlN0MyODA0MjI0NGJiNTE0Y2Q2ODAzNDc3NzZmYTM3MDNlOCU3QzElN0MwJTdDNjM3MDc2
Mjg4MDE3NTczNzY0JmFtcDtzZGF0YT0lMkYlMkJoT1VpdFJRUlV2d3Bqazk1NEJsT1F0YjNkNVdJ
enNncndqQXNkQWowYyUzRCZhbXA7cmVzZXJ2ZWQ9MA0KICAgIGh0dHBzOi8vZXVyMDEuc2FmZWxp
bmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnd3dy55b2N0b3By
b2plY3Qub3JnJTJGY29tbXVuaXR5JTJGY29uc3VsdGFudHMlMkYmYW1wO2RhdGE9MDIlN0MwMSU3
QyU3QzczZTVkOWQ2NTUxYTRjYTg3MWZlMDhkNzU5ODIzMGZiJTdDMjgwNDIyNDRiYjUxNGNkNjgw
MzQ3Nzc2ZmEzNzAzZTglN0MxJTdDMCU3QzYzNzA3NjI4ODAxNzU3Mzc2NCZhbXA7c2RhdGE9JTJG
T0xodklkaGYlMkZIJTJCSWZlMDl0YU9qaHlEaURmYVBCbU8lMkJQcTBUREpiendRJTNEJmFtcDty
ZXNlcnZlZD0wDQoNClRoYW5rcyBhZ2FpbiBmb3IgdGhlIHJlcG9ydCBhbmQNCkknbSBzb3JyeSB0
aGF0IEknbSBub3QgYWJsZSB0byBiZSBvZiBtb3JlIGhlbHAgaW1tZWRpYXRlbHkuDQoNCi4uL1Jh
bmR5DQoNCg0KDQo+IA0KPiBLaW5kIHJlZ2FyZHMsDQo+IA0KPiBDaHJpc3RpYW4gTG9ocg0KPiAN
Cj4gDQoNCg0KLS0NCiMgUmFuZHkgTWFjTGVvZA0KIyBXaW5kIFJpdmVyIExpbnV4DQo=

