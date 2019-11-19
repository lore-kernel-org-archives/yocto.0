Return-Path: <ckalluri@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91FA5E00DE3; Mon, 18 Nov 2019 16:31:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.72.40 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr720040.outbound.protection.outlook.com [40.107.72.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96028E00E0B
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:30:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=l4GNPi5ZNWiaB/4SQq821WHmCNiDELNd0diNhxupcmACiGyZnPCBOigqmJIqjr0h1dnCEmZVpUi91tOBNYZF28btBJaVQ6XL9xhilGN7jiDSTk5yhDS187XWlcjHXN+sRAjPixx158M7bJdG/+zooHPLtefx6kin+4dvEWBZGcan82UHArIfkuPqcocPOcsmHqPlJ5ez3Hd+NMiEeQgOnAb9zlvpdspmdfWeKGHgsX33uRLm9SemYrOFv8zWu5SRibzYlDwXB3rJKcZGe9bPKYHwGXlnPwvE6+yGf7U/QYTdXWQp+N6TjrHkGpsnm67H/mzQGDkzmGLFFYUrimXl0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zfrcf+MAar6dZ8/KR9O+A/Un68mJQhQEyfu6wU3gv3c=;
	b=WdjMmTOAuIZveSrKfyWDKvb8sHVZuHvBP4B46+pXuiS462wp6rLLYxzQP3nJ3ab9KMgu27BV9AHViEqa5vSd53JjvK1Iu7RKCJU8nkGvyPAfk5REFFs0MObjggpW1VlSKhRfc5AbNqpmPkCZc654UxnCxyok3EM2MCM62K2puMJaBJPeKBfNCD+U48jfnx8vAV20Sv7KYmVkv3j/fXnZB7ToLEpKMN6p4UAItvXCd+k6tfiLNXgv67Sy9FKs5gR012EDjon1i+osdWceAVa5Eah+bdnnSUpM9cNU0S/ew3ZUIlydYIwJkt3EkALFNEdmvGlzaCjLvc/PKy40DzZpFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
	dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zfrcf+MAar6dZ8/KR9O+A/Un68mJQhQEyfu6wU3gv3c=;
	b=RUHb8qs8jQRNSXIPdoT94gKfyyy4SOjdzXU0PnZgZoAGZU613PQMneHBaFClJ4nvFWniR8oMFdHerTzdrWLx+UKJAcSS7wVyjp8/IWqNV9bDLLFi8R0kBkBjUqGPqpQyZYN4zx+4JWSJKZAWsAb5RZp0PFy7CHIpDrt80XVdQ8M=
Received: from MWHPR02MB2576.namprd02.prod.outlook.com (10.168.205.142) by
	MWHPR02MB2734.namprd02.prod.outlook.com (10.175.51.144) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2451.22; Tue, 19 Nov 2019 00:30:07 +0000
Received: from MWHPR02MB2576.namprd02.prod.outlook.com
	([fe80::a53f:6f7b:5915:e501]) by
	MWHPR02MB2576.namprd02.prod.outlook.com
	([fe80::a53f:6f7b:5915:e501%10]) with mapi id 15.20.2451.029;
	Tue, 19 Nov 2019 00:30:07 +0000
From: Chandana Kalluri <ckalluri@xilinx.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] patches to upgrade meta-jupyter layer packages
Thread-Index: AdWebmsfqM74QXjhTKSUYuEMeMExEAAANMcAAAA9meA=
Date: Tue, 19 Nov 2019 00:30:07 +0000
Message-ID: <MWHPR02MB257628FAF833EEEB2B4731CBB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
References: <MWHPR02MB2576FB71F9655C67BB76963EB04C0@MWHPR02MB2576.namprd02.prod.outlook.com>
	<CAMKF1srJOGaaL4dhrziKe8xuHvSyz18vycKj8mJ_zb5gWYCdog@mail.gmail.com>
In-Reply-To: <CAMKF1srJOGaaL4dhrziKe8xuHvSyz18vycKj8mJ_zb5gWYCdog@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=ckalluri@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b3f92e96-6ae9-4b22-e70f-08d76c87a0f6
x-ms-traffictypediagnostic: MWHPR02MB2734:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MWHPR02MB27349361B91FB1AA86D763ABB04C0@MWHPR02MB2734.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(136003)(346002)(39860400002)(396003)(366004)(376002)(13464003)(199004)(189003)(53754006)(71190400001)(6916009)(71200400001)(99286004)(74316002)(14454004)(33656002)(305945005)(7736002)(25786009)(55016002)(476003)(486006)(6436002)(3846002)(2906002)(66946007)(9686003)(6306002)(64756008)(66556008)(66446008)(966005)(478600001)(6116002)(4326008)(66066001)(5660300002)(76176011)(76116006)(86362001)(7696005)(26005)(53546011)(6506007)(102836004)(14444005)(256004)(81156014)(81166006)(186003)(8936002)(316002)(446003)(6246003)(11346002)(66476007)(8676002)(52536014)(229853002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2734;
	H:MWHPR02MB2576.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eWdRSNF4XLJqcVVxtf+vtdUVKFgiR1omC1rX18uB8NMbjz8HsC8CH1gwIbMSf536va+ls6oXD1EJSqNm1CLbPrFVwzyg4NTTR/ovelzYstiP9SfXo1FFPajJb63tuOy4wOtWbQh9rMgv6RM77smHzv4/8xLi15a5KUg3XWY1Mz++U4a2Zkw9C6JBjEHQnm21NsS1/Dgn3Id7ZtU2YZ93hCRUEOm1xXF4B7G0VDt0bxBBCY4NuiF51GO73STc7bie3NQkSiX29xfSujPg0d9JZPmjMLiWDQvmZ3b+8t5AsuNcJ1f2Bs/f6u60yvkB+6D1MoiEmkty1wVJ8FqMe4eLis87zXix3uFBqR9jStO8brnaXCunXfxqc9u74TaVp139ntApTe6DfpoVgPprFCo4QP77US9EQMXzWj9MKEDIgbSDDIXF29J+c4n6eqWkE5vWuchImeSK4PLgkwHhf2YJvLdgyjA8c0+jaIvWKER/LQ0=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3f92e96-6ae9-4b22-e70f-08d76c87a0f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 00:30:07.2513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 59kNWeaJgMdK2hK+lxAJd0j8ViZarPXhImMg2LeyC7octs/uZSike8HY1NFgWRdBkUw6dPaboTLvBNY4PTqxfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2734
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: patches to upgrade meta-jupyter layer packages
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
X-List-Received-Date: Tue, 19 Nov 2019 00:31:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEtoZW0gUmFqIDxyYWoua2hl
bUBnbWFpbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMTgsIDIwMTkgNDoyMSBQTQ0K
PiBUbzogQ2hhbmRhbmEgS2FsbHVyaSA8Y2thbGx1cmlAeGlsaW54LmNvbT4NCj4gQ2M6IHlvY3Rv
QHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gcGF0Y2hlcyB0byB1cGdy
YWRlIG1ldGEtanVweXRlciBsYXllciBwYWNrYWdlcw0KPiANCj4gT24gTW9uLCBOb3YgMTgsIDIw
MTkgYXQgNDoxNyBQTSBDaGFuZGFuYSBLYWxsdXJpIDxja2FsbHVyaUB4aWxpbnguY29tPg0KPiB3
cm90ZToNCj4gPg0KPiA+IEhlbGxvIGFsbCwNCj4gPg0KPiA+IEkgaGF2ZSB1cGdyYWRlZCBweXRo
b24gcGFja2FnZXMgZnJvbSBtZXRhLWp1cHl0ZXIgbGF5ZXIgdG8gd29yayB3aXRoIHRoZQ0KPiB6
ZXVzIGJyYW5jaC4NCj4gPiBJIGFtIHBsYW5uaW5nIHRvIHNlbmQgb3V0IHRoZSBwYXRjaGVzIHRv
IHRoaXMgeW9jdG8gcHJvamVjdCBtYWlsaW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9y
ZyBQbGVhc2UgbGV0IG1lIGtub3cgaWYgdGhpcyBpcyBhbHJpZ2h0IG9yIGlmIEkgbmVlZCB0bw0K
PiBzZW5kIHRoZW0gdG8gYSBkaWZmZXJlbnQgbWFpbGluZyBsaXN0Lg0KPiANCj4gaGF2ZSB5b3Ug
dXBncmFkZWQgdGhlIHJlY2lwZXMgaW4gbWV0YS1qdXB5dGVyID8gaWYgc28gdGhlbiBpdCBzaG91
bGQgYmUNCj4gcmV2aWV3ZWQgYXMgcGVyIHRoYXQgbGF5ZXJzIHBvbGljeSwgaWYgeW91IGFyZSBs
b29raW5nIGZvciBtaWdyYXRpbmcgdGhlIHJlY2lwZXMNCj4gZnJvbSBhYm92ZSBsYXllciBpbnRv
IG90aGVyIGxheWVycyB3aGljaCB1c2UgeW9jdG8gbWwgZm9yIHBhdGNoIHN1Ym1pc3Npb24NCj4g
dGhlbiBpdHMgb2sNCj4gDQpbQ0thbGx1cmldIEl2ZSB1cGdyYWRlZCByZWNpcGVzIGluIG1ldGEt
anVweXRlciBsYXllci4gVGhlcmUgaXMgbm8gbWFpbGluZyBsaXN0IHNwZWNpZmljIHRvIG1ldGEt
anVweXRlciBsYXllciBoZW5jZSB0aGUgcXVlc3Rpb24gd2hlcmUgdG8gc2VuZCB0aGUgcGF0Y2hl
cyBmb3IgdXBncmFkZS4gDQo+ID4NCj4gPiBUaGFua3MsDQo+ID4gQ2hhbmRhbmENCj4gPg0KPiA+
IC0tDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4g
aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo=

