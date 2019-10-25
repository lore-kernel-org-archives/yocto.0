Return-Path: <Oliver.Westermann@cognex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E2AFE00E00; Fri, 25 Oct 2019 01:10:05 -0700 (PDT)
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
	*      [40.107.70.124 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr700124.outbound.protection.outlook.com [40.107.70.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77AACE00E0A
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2019 01:08:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=L75nO2q23+tj/tQtkviX7cROpWOPj6N33CRqBhJwK5FeUMnLgC+5qPfSzLOviomNXB323kQkF07pKtTJanR7wXl3k5s7VY2/YET2yKeUBTwN4JKY6YkaxMBTEbr/QGsU7VAo23H/lQsNHyG0QU0AvhP+MlpF0JTTx5JbDqP8v8X8RUnzGZaQPldOWc3GfV3/gdvPXYu2gnT/mVORR6ci+AsGKolQFsS/MC4YV5YG6gtcJ7zTcblUs+y47e+oDD8tTlfP0S58TB38KnuMRGcZ3fgeJPtolULqOnxoWbb0hwgLlij7tSrx9HvfW57LxfFXISY8dIPpwpBQpVKktM2YTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=t0GjLgM8LJr+7J/9DWms1jQTPAGKk4sccD2ZCfU/gGU=;
	b=BDYG0z8m0R3OPBQ0bcLYky0PmlNMII+gS0EIIYBqVrmZDq9l/PMEE5eaLrBS4guwPYdJwRvIqwcv3fVGp+vFQPik5u6ZaBAPasRIAx0d9x7gk/NDTdbWXSk897CnUHaP/4OHC71EqgjaDn4x4dsHhP1SBAwrm4hsxk7Vbs7R3NmrWGLt3EXwnzu/vyASCYzLjLJ6YWegIHlm1DcAjEs6uUGQOqfJBYw44KaRqjel+qXk6UUk2KmYij4VZ4XsNSCrzvx+pMA8+QVhAaDlpy2hvimby+yfCw4gahnFFjLkmKIuJ6zgxNDU5QpZYqnS0XAAE5F2hjgmfh8rBZagIPtdHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
	dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cognexcorporation.onmicrosoft.com;
	s=selector2-cognexcorporation-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=t0GjLgM8LJr+7J/9DWms1jQTPAGKk4sccD2ZCfU/gGU=;
	b=o+O0obVBfVZhlv8ELlVpW0j/B8Z+vFsAotA7GL8mCsNuxdvOXRr2stxZK/46FVwTIMV7hmrS9uGu1lBnElcC1w5Ae74NfD0sP4RJH0wC3PtuG3Nzhi7QIncmKKVtiJviNJ18suSzgWb4dQZX3YWMNYvJ4Uxn7cTIb+w+KmMKo2c=
Received: from BN6PR06MB3138.namprd06.prod.outlook.com (10.174.95.141) by
	BN6PR06MB3185.namprd06.prod.outlook.com (10.174.232.147) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.23; Fri, 25 Oct 2019 08:08:25 +0000
Received: from BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791]) by
	BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791%5]) with mapi id 15.20.2387.023;
	Fri, 25 Oct 2019 08:08:24 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	William Mills <wmills@ti.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Dmytriyenko, Denys" <denys@ti.com>
Thread-Topic: AW: [yocto] [EXTERNAL] Re: Issues adding bare meta toolchain to
	yocto build
Thread-Index: AQHVinD5Nw1A+K9BrU6fnqAAex3tJqdp0o6AgAAHwACAABKqIIAABTSAgAEPqsA=
Date: Fri, 25 Oct 2019 08:08:24 +0000
Message-ID: <BN6PR06MB3138CA8D95DA07517CEFDC6B86650@BN6PR06MB3138.namprd06.prod.outlook.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
	<BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<e0e504f3013981d9dfb31ef0428cdf8f1aabb22b.camel@linuxfoundation.org>
	<95316727-6a1c-42fa-5cb3-f6d79ee4edf6@ti.com>
	<f95fb29cf51372495e0a604b5e830a0152dbdd13.camel@linuxfoundation.org>
	<03c8c0c5-c897-acd7-4236-00cd384c9162@ti.com>
	<BN6PR06MB3138924730BC280E950B0549866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<65bf32790a18301a58e7d5f515e5e1320bb162f4.camel@linuxfoundation.org>
In-Reply-To: <65bf32790a18301a58e7d5f515e5e1320bb162f4.camel@linuxfoundation.org>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Oliver.Westermann@cognex.com; 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c152acc5-6757-4ea7-f1c6-08d759228271
x-ms-traffictypediagnostic: BN6PR06MB3185:
x-microsoft-antispam-prvs: <BN6PR06MB31853D0684657D2E49D59E4686650@BN6PR06MB3185.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(376002)(396003)(346002)(366004)(136003)(39860400002)(199004)(189003)(99286004)(71190400001)(76116006)(86362001)(6506007)(71200400001)(2906002)(476003)(74316002)(256004)(5660300002)(7696005)(486006)(66066001)(8936002)(4001150100001)(76176011)(8676002)(52536014)(81166006)(102836004)(81156014)(186003)(4326008)(66946007)(2501003)(66446008)(26005)(6436002)(446003)(55016002)(66556008)(66476007)(64756008)(316002)(110136005)(305945005)(7736002)(25786009)(478600001)(3846002)(11346002)(6116002)(14454004)(33656002)(9686003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR06MB3185;
	H:BN6PR06MB3138.namprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cognex.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 48+PxT5eTkTT4I032tpUCGPou7p50gb2R2UVgZ/DwB5hqbdcJ+q/nj9NvLOlmrx/D00Sd3sjfKtDA9fBWz8RQrj2+dd+8LXoH8lkjmD2OsVNlk3ek4LiBXU710lXUoof29qDPuzOJeCwe2wYR0KeQyPWrjsZ7lHxzNj/kBuChGdn1vtf3hnNPqgZYW9XeN507T2GoZJtsUPiPgJeQ9V4rEl6v+EOzGgcEbF6m2HWrCRmZoxTqEfnSNuxTooijwQ/xYGyIBDN4nQzm6PvCldspPxKHimsj5M3x9lz2UeU7fc+L4G9NNCxCqGfSYN1iWjmfq3PLpWJ+kKK0M2VwCZzra0k8eNRuZ5t4vlM/VIlp5D6JJ6jF2J5z8PfrdVMEAOPMS//wDg9+yehlH2X9WqYkaiz4mu3aRmwpOVmdSWfJioJiITYQP+rMOw2HbElRIhc
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c152acc5-6757-4ea7-f1c6-08d759228271
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 08:08:24.6021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QJ8qq4fyBcXGdZCZ6e461YU7M1CQkwM5BxCTuKjyymIg+wSiDIYCeKiKFX5JGkdrgMekMD5dK4xTm+T7PQmZ7RcWAo8AnLq6EepcaDxrQBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB3185
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
X-List-Received-Date: Fri, 25 Oct 2019 08:10:07 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciBhbGwgdGhlIGhlbHAgc28gZmFyLCBJIGhhdmUgYSB3b3JraW5nIHJlY2lwZSB3
aGljaCBpbnN0YWxscyB0aGUgd2hvbGUNCnRvb2xjaGFpbiB0byAvdXNyL2JpbiBhbmQgdXNlcyB0
aGF0IGZyb20gYW5vdGhlciByZWNpcGUgOikNCg0KPiBPbiBUaHUsIDIwMTktMTAtMjQgYXQgMDg6
NTUgKzAwMDAsIFJpY2hhcmQgUHVyZGllIHdyb3RlOg0KPiBZb3UgY2FuIHByb2JhYmx5IGRvIHRo
YXQgYnkgZXh0ZW5kaW5nIFNZU1JPT1RfRElSUyBpbiB0aGUgcmVjaXBlLg0KDQpJJ20gc3RpbGwg
aGF2aW5nIGlzc3VlcyBoZXJlOiBJJ3ZlIHRyaWVkIHRvIGV4dGVuZCBTWVNST09PVF9ESVJTIGFu
ZCBldmVuIHVzZWQgYQ0KcGF0aCByZWxhdGl2ZSB0byB0aGUgZXhpc3RpbmcgZW50cnlzIChzbyBJ
IGRvbid0IGdldCBjYXVnaHQgYnkgc29tZSBoaWRkZW4NCmV4dGVuc2lvbiBtZWNoYW5pc20pLCBi
dXQgbXkgZmlsZXMgc3RpbGwgZG9uJ3QgZW5kIHVwIGluIHRoZSBzeXNyb290Lg0KSSd2ZSBhbHNv
IHRyaWVkIGJvdGgsIFNZU1JPT09UX0RJUlMgYW5kIFNZU1JPT1RfRElSU19OQVRJVkUsIHdpdGgg
dGhlIHNhbWUgcmVzdWx0Lg0KDQpBIChob3BlZnVsbHkpIGxhc3QgdGlwIHdvdWxkIGJlIGFwcHJl
Y2lhdGVkIHRvIG1ha2UgYSBuaWNlIHJlY2lwZSBmcm9tIGEgd29ya2luZyBvbmUuDQoNCkdDQ19B
Uk1fTk9ORV9FWFRSQV9QQVRIPSIvJHtQTn0iDQpTWVNST09PVF9ESVJTICs9ICIke2JpbmRpcn0v
Li4vb3B0Ig0KDQpkb19pbnN0YWxsKCkgew0KICAgICMgb2xkIGFuZCB3b3JraW5nIHRvIGluc3Rh
bGwgdG8gL3Vzci9iaW4vDQogICAgIyBpbnN0YWxsIC1kICR7RH0ke2JpbmRpcn0ke0dDQ19BUk1f
Tk9ORV9FWFRSQV9QQVRIfQ0KICAgICMgY3AgLXIgJHtTfS8qICR7RH0ke2JpbmRpcn0ke0dDQ19B
Uk1fTk9ORV9FWFRSQV9QQVRIfQ0KICAgIA0KICAgICMgbmV3LCBidXQgbm8gZmlsZXMgaW4gdGhl
IHN5c3Jvb3RzIG9mIHJlY2lwZXMgdXNpbmcgdGhlIHRvb2xjaGFpbg0KICAgIGluc3RhbGwgLWQg
JHtEfSR7YmluZGlyfS8uLi9vcHQke0dDQ19BUk1fTk9ORV9FWFRSQV9QQVRIfQ0KICAgIGNwIC1y
ICR7U30vKiAke0R9JHtiaW5kaXJ9Ly4uL29wdCR7R0NDX0FSTV9OT05FX0VYVFJBX1BBVEh9DQp9
DQoNCkJlc3QgcmVnYXJkcywgT2xsaQ0K

