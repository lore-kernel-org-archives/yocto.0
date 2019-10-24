Return-Path: <Oliver.Westermann@cognex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF3C3E00D47; Thu, 24 Oct 2019 03:03:07 -0700 (PDT)
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
	*      [40.107.81.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr810133.outbound.protection.outlook.com [40.107.81.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A86AE00839
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 03:03:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=ZanMXqdOItwlqwhchcwpwYLxmaAXQ8A5fDypgF1pRhXC7wH5u18cvGPvY8AFb5uVaXPQeKUMPKITMQhjYA0Up5sjkf3N0Cj+VXG+tvfn3Olaj8QL0PfrjDVZSxLrbY0P96VO2laaGhlHM7Rhc0YrD/7whyxBfToOOkC3Qga3oVW+YiLf6LmcwgEU1V2SRcbS7K6c6HQqi/LpPtMPdSSqQ5HtSm8/o56SUJIRyoDeRP06b6sSeYuEFlhl4vCVleR2oHCY5jcLpGcFUNmUZtAKJaRX3kCPCJX8cTHzYewKDhNY2epPpru/iCw03CGtt0jB9nyUN7RrI2qCzmq8mz7wjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=N+iNgwEM2+tpya1nejDvzWCA8rQ1kOpyQUEy1zEzbVw=;
	b=ODS9QGjtbRtYfpAHA9x8vTNPCWM7k6Omrawk5AOfeBf3v+nK/NWvqoW28hWA6zV2iViemr9NNb8mXFcA3Y36vwHFWkius8+JPl37DMZUn55pbZ3KDnmKtNkX+My6Nd6l3frB+hZsGRTdZnEo2+siNZ88PraPmovueCb/uHQg9J3c2tMdWki9NtDEF2EWzI068IFIymhWXghdGTm8wTJ5WQBMr+7h/L6z2211auIWdiJCVIj1rX/jv4NAJqxvhGdotoFTLcQ+uVGfdpkplZWMYNw8EtG/+ssedg89qY5/0BPvU6YXoCCfQSnnDs/YbGy13fi0BTRioOxJyt+gBRaNeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
	dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cognexcorporation.onmicrosoft.com;
	s=selector2-cognexcorporation-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=N+iNgwEM2+tpya1nejDvzWCA8rQ1kOpyQUEy1zEzbVw=;
	b=R9KOVtR5sn9NSEwakgJaCjpScrmrlXqXnA0xVQHBDf68lQx0ZuRdMHIDBCIWV7lCpGNWPC7c9AIp4OwVibmpx1qK3g9GFqs6cH2RkKC6TIo+xxTtgYcEG0M1rh7FJVOW1dj2KEWDES858CZkoWm+olht16tt0ZG4kXhxhaNPezA=
Received: from BN6PR06MB3138.namprd06.prod.outlook.com (10.174.95.141) by
	BN6PR06MB3249.namprd06.prod.outlook.com (10.174.233.33) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.16; Thu, 24 Oct 2019 10:03:03 +0000
Received: from BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791]) by
	BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791%5]) with mapi id 15.20.2387.023;
	Thu, 24 Oct 2019 10:03:03 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [EXTERNAL]  Re: [yocto] Issues adding bare meta toolchain to
	yocto build
Thread-Index: AdWJkytSWiHXV7scTf2QfBcvtaFxMwAXs34AABgPDQA=
Date: Thu, 24 Oct 2019 10:03:03 +0000
Message-ID: <BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
In-Reply-To: <9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Oliver.Westermann@cognex.com; 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6cd82cef-b9c0-414c-8944-08d758695c39
x-ms-traffictypediagnostic: BN6PR06MB3249:
x-microsoft-antispam-prvs: <BN6PR06MB32499AA051C4B7A3A6D60E5B866A0@BN6PR06MB3249.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(376002)(396003)(346002)(39860400002)(136003)(366004)(51914003)(189003)(199004)(102836004)(256004)(71200400001)(52536014)(186003)(71190400001)(2501003)(446003)(11346002)(476003)(486006)(7696005)(86362001)(5660300002)(2906002)(8676002)(81156014)(81166006)(478600001)(110136005)(316002)(14454004)(8936002)(26005)(3846002)(6116002)(9686003)(25786009)(33656002)(7736002)(305945005)(74316002)(6436002)(4001150100001)(99286004)(76176011)(66946007)(76116006)(55016002)(66476007)(66066001)(6506007)(66446008)(66556008)(64756008);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR06MB3249;
	H:BN6PR06MB3138.namprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cognex.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6oaTRoE7MpsjbzC6O4HG0x/p7SP9xCDuRWi0tBTs4a+d30RHI/ShagHElRg25KPjdoub97kx/u6GscO1qhtreX03iJxrPuP7WHf/+goVGOWzDtgelM/wCNC2Ej/cfBGO3JLIaxnJWHzWqey2n35O/4f6VsQcBXKNDOOEp4iUulOuaQGbomxqagGwYthgvNfHUlaDgGbcndjh40neFiVtVKiw1xC6sse5JR4qNvcw66vabevhH/ulhZv80G8AhfS5JeiIhQwsHpEuAi14df6ARoMv0uBy+ULNJUPIF5NoQ6fmabI0VKXnkaPHGX3pWNwUpD2rqiVTMl/9is9v5HlBSu6yTCpHNuUenE7t/ikZOXLRQ0PRVJ7ykhenX8Z1TfbJ8s+BJgojjha0mbCwHkkosEtlIoetw4FagqcH3yArrZ8hNNKDBUyBJfMPr2gP1G50
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cd82cef-b9c0-414c-8944-08d758695c39
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 10:03:03.6470 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gnlXCaWwr/nlCQLyDNlFxFtLYGdURF5DGOJUPMXJQCOYrtLAIi3eW0ErCPfBZv6tqn2lzaYMZLt2GwVghJk2vgQvU1tBl6n6cvwhAA0fPEE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB3249
Subject: Re: [EXTERNAL] Re: Issues adding bare meta toolchain to yocto build
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
X-List-Received-Date: Thu, 24 Oct 2019 10:03:07 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Pk9uIFdlZCwgMjAxOS0xMC0yMyBhdCAxNTozNCArMDAwMCwgUmljaGFyZCBQdXJkaWUgd3JvdGU6
DQo+Pk9uIFdlZCwgMjAxOS0xMC0yMyBhdCAxMToyMyArMDAwMCwgV2VzdGVybWFubiwgT2xpdmVy
IHdyb3RlOg0KPj4gSGV5LA0KPj4gWy4uLl0NCj4+IEFueSBzdWdnZXN0aW9ucyBvbiB3aGF0IEkn
bSBkb2luZyB3cm9uZyBvciBob3cgdG8gZGVidWcgdGhpcyBmdXJ0aGVyPw0KPlNvdW5kcyBsaWtl
IHRoZSBzeXNyb290IGZpbHRlcmluZyBjb2RlIGRvZXNuJ3Qga25vdyBhYm91dCB0aGlzDQo+ZGly
ZWN0b3J5IGFuZCB0aGVyZWZvcmUgZG9lc24ndCBwYXNzIGl0IHRocm91Z2ggdG8gdGhlIHJlY2lw
ZSBzeXNyb290Pw0KDQpTb3JyeSB0byBhc2sgZHVtYiBxdWVzdGlvbnMsIGJ1dCB3aGF0IGRvIHlv
dSBtZWFuIGJ5ICJ0aGlzIGRpcmVjdG9yeSI/DQpUaGUgdG9vbGNoYWluIGRpcmVjdG9yeSBjcmVh
dGVkIGJ5IHRoZSBUSSByZWNpcGU/IFNob3VsZG4ndCB0aGF0IGJlIGhhbmRsZWQNCmJ5IEZJTEVT
XyR7UE59Pw0KDQo+VGhlIHJlY2lwZSB5b3UgbGluayB0byBpcyBmb3IgYW4gb24gdGFyZ2V0IGNv
bXBpbGVyLCBub3Qgb25lIGluIHRoZQ0KPnN5c3Jvb3QuDQoNCkFnYWluLCBtaWdodCBiZSBhIHN0
dXBpZCBtaXNzdW5kZXJzdGFuZGluZyBvbiBteSBzaWRlOiBUaGUgcmVjaXBlIEkgbGlua2VkDQpl
eHRyYWN0cyBhIHByZWNvbXBpbGVkIHRvb2xjaGFpbiB0aGF0IGlzIHN1aXRhYmxlIG9ubHkgZm9y
IHg4Nl82NCBzeXN0ZW1zIGFuZCANCmFsbG93cyBhICJuYXRpdmUiIHBhY2thZ2UuIEZyb20gbXkg
Y3VycmVudCB1bmRlcnN0YW5kaW5nLCBhIG5hdGl2ZSBwYWNrYWdlIGlzDQp0byBiZSB1c2VkIG9u
IHRoZSBidWlsZCBob3N0LCB3aGljaCBpcyB3aGF0IEknbSBpbnRlbmRpbmcgdG8gZG8gaGVyZS4N
Cg0KSSBtYW5hZ2VkIHRvIHN1Y2Vzc2Z1bGx5IGFkZCBhIG5hdGl2ZSByZWNpcGUgZm9yIHRoZSBO
WFAgY29kZSBzaWduaW5nIHRvb2wNCih3aGljaCBpcyBvbmx5IHByb3ZpZGVkIGFzIGEgcHJlY29t
cGlsZWQgYmluYXJ5IGFzIHdlbGwpIHdoaWNoIHdvcmtzIGFzIGV4cGVjdGVkLg0KDQo+SSdtIGFj
dHVhbGx5IGEgbGl0dGxlIHN1cnByaXNlZCB5b3UgY2FuJ3QgdXNlIG91ciBzdGFuZGFyZCBjcm9z
cw0KPmNvbXBpbGVyIGFzc3VtaW5nIHRoaXMgTTQgY29yZSBpcyBvbiBhbiBBUk0gY2hpcD8gSXQg
c2hvdWxkIGJlIGEgY2FzZQ0KPm9mIHBhc3NpbmcgdGhlIHJpZ2h0IG9wdGlvbnMgdG8gdGhlIGNv
bXBpbGVyIHRvIHRhcmdldCB0aGUgTTQ/DQoNCkknbSB0b3RhbGx5IHVwIGZvciBhbnkgaW5mb3Mg
b24gaG93IHRvIGRvIHRoaXMhIEkgZGlkIGdvb2dsZSBhcm91bmQgZm9yIHJlY2lwZXMNCm9yIGV4
YW1wbGVzIHRoYXQgYnVpbGQgYSBub24tbGludXggYmluYXJ5IHVzaW5nIHlvY3RvLCBidXQgSSBj
b3VsZG4ndCByZWFsbHkgZmluZA0KYW55dGhpbmcgb3IgYW55IGRvY3VtZW50YXRpb24uIEJ1dCBt
YXliZSBteSBzZWFyY2h0ZXJtcyAoYWxvbmcgImJ1aWxkIGJhcmVtZXRhbCANCmFybSBiaW5hcnkg
dXNpbmcgeW9jdG8iKSB3ZXJlIG9mZiB0YXJnZXQuIENhbiB5b3UgcG9pbnQgbWUgYXQgZG9jdW1l
bnRhdGlvbiwgZXhhbXBsZXMsDQpzZWFyY2h0ZXJtcy4uPw0KDQo+Q2hlZXJzLA0KPg0KPlJpY2hh
cmQNCg0KVGhhbmtzIGZvciB0aGUgaGVscCENCg==

