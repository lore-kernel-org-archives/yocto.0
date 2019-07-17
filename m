Return-Path: <jeffrey.siegel@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B44EE00D7E; Wed, 17 Jul 2019 15:19:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.15.90 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr150090.outbound.protection.outlook.com [40.107.15.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E54F3E00D55
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 15:19:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=T/IdygY63Anv8XL+a38ucGC1Lz2LJ8RWmT2Zm2bEiQFRCo+LT7LB4KsAXFX32MSm3jqfXllOzB0RI+QbZJDLktCijBaTaQuKswbFkTSamXSMAKJc8vcTpScijTo8erviN+vqk+7ASUtbv6H8aJmWO/VBD3yYdoaOnCmnxkntQ86odqxhlS4hkRxx4Zg4ab+lkSrz1IIiaw3JGgxj8c2lLKfBf1fut/+6L/L3KlXzT8bhY34ohpa5YQUZQCT23wI29W6D+ST+zpOynXlWyCd2m9nllDUEjEPTU/TDwTdrLHDNZSYhlTEj06qbHKTCQch3njwFlTfXDNbLyt4V0vde5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=/Q8ELCjwfhSYpMbivn8iljaCw/Uv7/qr3FWPc0LfMEo=;
	b=T4s1+XNK+FfbCxtF2Ant52H+Kdyz0sr8HBB/GvUCFzVKDbGGL8Y1HwQ5w0cn9yB+sFqEz1pCdKhao81maAyH9HAfwWdy0hu53acd5i82ZUone3LkW2E7T9sqszhrB9nlP/J+DaRJwedG9s1CwIY/WlqOo3a+3aJVzTcGLLkaPFKcWVScG8QRMD3HWiIJuPJsqRqTqWU7N0t6lnIxC3TxOmAcUOne3SIXHJ3YXJm4JNHLSQ3T8LPVteRcN2868HzOlWbJ3C7eBndwexI9pQ4J30LfQI0zFR0wK0KtWsOwaYSrt+368bwDgEvRcwnrsfeSTubTheBJVBI1a5NtY4jaEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=nokia.com;dmarc=pass action=none
	header.from=nokia.com;dkim=pass header.d=nokia.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=/Q8ELCjwfhSYpMbivn8iljaCw/Uv7/qr3FWPc0LfMEo=;
	b=f/0L08B3KD3qU1COolEG+ZxAKHVAQn2AJpSVBEGtfNfb01gml+nYSBlXfxPtLKNytM7uq+3cVORJyVv+/VgraimR+/lE3L2V05pp2OT0sQ3V6lCat6LKjDKpNJE1YYn6mDTiffDhV2fPDoys0CltMD7TZlKY/LlTeY2NqySYgR0=
Received: from DB7PR07MB3868.eurprd07.prod.outlook.com (52.134.96.151) by
	DB7PR07MB6170.eurprd07.prod.outlook.com (20.178.43.138) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2094.9; Wed, 17 Jul 2019 22:18:59 +0000
Received: from DB7PR07MB3868.eurprd07.prod.outlook.com
	([fe80::28be:481:544c:d163]) by DB7PR07MB3868.eurprd07.prod.outlook.com
	([fe80::28be:481:544c:d163%6]) with mapi id 15.20.2115.003;
	Wed, 17 Jul 2019 22:18:59 +0000
From: "Siegel, Jeffrey (Nokia - US/Murray Hill)" <jeffrey.siegel@nokia.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Patching a file in $WORKDIR
Thread-Index: AdU79JIhVFWSJI/zROiORfF4+b2aPwAkgB0AABmz3dA=
Date: Wed, 17 Jul 2019 22:18:59 +0000
Message-ID: <DB7PR07MB3868C6D1A22BFDB10427625789C90@DB7PR07MB3868.eurprd07.prod.outlook.com>
References: <DB7PR07MB386841A804D548629B676B8F89CE0@DB7PR07MB3868.eurprd07.prod.outlook.com>
	<CAJTo0Lbm7Kuh3a+zd2_bPL==zUw_umt8Q8qv0tkRHRv227A=dA@mail.gmail.com>
In-Reply-To: <CAJTo0Lbm7Kuh3a+zd2_bPL==zUw_umt8Q8qv0tkRHRv227A=dA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=jeffrey.siegel@nokia.com; 
x-originating-ip: [135.245.20.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dbd002ab-1ed7-4303-4352-08d70b04c40f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
	SRVR:DB7PR07MB6170; 
x-ms-traffictypediagnostic: DB7PR07MB6170:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB7PR07MB6170EB503D1BB95A9F417D9E89C90@DB7PR07MB6170.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(136003)(39860400002)(376002)(366004)(396003)(346002)(13464003)(51914003)(189003)(199004)(7696005)(6506007)(8676002)(86362001)(53546011)(14454004)(76176011)(33656002)(316002)(66556008)(476003)(446003)(81166006)(81156014)(7736002)(486006)(71200400001)(229853002)(71190400001)(305945005)(74316002)(66066001)(102836004)(99286004)(4326008)(11346002)(186003)(53936002)(6436002)(26005)(25786009)(55016002)(52536014)(5660300002)(9686003)(76116006)(8936002)(66946007)(478600001)(6306002)(6916009)(966005)(6116002)(6246003)(64756008)(68736007)(66446008)(256004)(2906002)(66476007)(3846002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB7PR07MB6170;
	H:DB7PR07MB3868.eurprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IS3UUHJMgcZ5u/XsBzosklkGifFLLJzSXBem9J8/u1n+1T3AkLvAeyCa7XjPYYnpCFY9HXYgCSUYTLCS/y+VQ0JTaecyhqRJ/AKgq5bw42crBx6RTRM3QfX1I9IewvapGaNo9WISaLppodxLrG+B/lPAiu8cFUMEpSWjUus9et/ASYtggCkzsL6JUSq87r+Ii6IA6jCn1tAiXLrqyV85Uq0h7AZrWyTkfo9z5LhlMF+Y6sh1Rux4HPfGOOBO91kgJXETreUpm06zyV+Xg2o0wbJJ6QX3a/n73yBta4SUeg7DQkhQoOJe7vCsJdk7AbKaqsB/ahAZal9wfn5i+/sn4rzQW85Qp7Zw4Fey9uxZqmTXRJvu3ONKptwYF7jBuoys0yk+kwUqwv2TosJfwc9Q1C4Fd/gRFDFsdMfOeUHTa3Y=
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbd002ab-1ed7-4303-4352-08d70b04c40f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 22:18:59.1734 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jeffrey.siegel@nokia.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR07MB6170
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Patching a file in $WORKDIR
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
X-List-Received-Date: Wed, 17 Jul 2019 22:19:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgaGVscC4gSSBnb3QgaXQgdG8gd29yayB1c2luZyAncGF0Y2hkaXInIGFz
IFJvc3MgcmVjb21tZW5kZWQ6DQoNCnJlYWRsaW5lXzcuMC5iYmFwcGVuZDoNCiMgV2UgZG8gdGhp
cyB0byBlbmFibGUgdGhlICJIb21lIiBhbmQgIkVuZCIga2V5cw0KRklMRVNFWFRSQVBBVEhTX3By
ZXBlbmQgOj0gIiR7VEhJU0RJUn0vZmlsZXM6Ig0KU1JDX1VSSSs9ImZpbGU6Ly9pbnB1dHJjLnBh
dGNoO3BhdGNoZGlyPSR7V09SS0RJUn0iDQoNClJlZ2FyZHMsDQpKZWZmDQoNCi0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBp
bnRlbC5jb21dIA0KU2VudDogV2VkbmVzZGF5LCBKdWx5IDE3LCAyMDE5IDY6MDEgQU0NClRvOiBT
aWVnZWwsIEplZmZyZXkgKE5va2lhIC0gVVMvTXVycmF5IEhpbGwpIDxqZWZmcmV5LnNpZWdlbEBu
b2tpYS5jb20+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0
b10gUGF0Y2hpbmcgYSBmaWxlIGluICRXT1JLRElSDQoNCk9uIFR1ZSwgMTYgSnVsIDIwMTkgYXQg
MTc6NDUsIFNpZWdlbCwgSmVmZnJleSAoTm9raWEgLSBVUy9NdXJyYXkgSGlsbCkgPGplZmZyZXku
c2llZ2VsQG5va2lhLmNvbT4gd3JvdGU6DQo+IEkgYW0gdHJ5aW5nIHRvIHVzZSBhIGJiYXBwZW5k
IGZpbGUgdG8gcGF0Y2ggYSBmaWxlIGluICRXT1JLRElSLiBUbyBteSB1bmRlcnN0YW5kaW5nLCB0
aGUgbmF0aXZlIFlvY3RvIHBhdGNoaW5nIHByb2Nlc3Mgb25seSB3b3JrcyBmb3IgcGF0Y2hpbmcg
ZmlsZXMgaW4gJFMuDQoNCk5vLCB0aGUgZGVmYXVsdCBkaXJlY3RvcnkgZm9yIHBhdGNoIGFwcGxp
Y2F0aW9uIGlzICRTIChmb3Igb2J2aW91cyByZWFzb25zKS4gIFlvdSBjYW4gY2hhbmdlIHRoZSBw
YXRoIHRoYXQgaXMgcGF0Y2hlZCBieSB1c2luZyB0aGUgYHBhdGNoZGlyYCBwYXJhbWV0ZXI6DQoN
Cmh0dHBzOi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy9sYXRlc3QvcmVmLW1hbnVhbC9yZWYt
bWFudWFsLmh0bWwjdmFyLVNSQ19VUkkNCg0KQWxzbyBhcyBHYWJyaWVsZSBzYWlkLCBvbmx5IC5w
YXRjaCBhbmQgLmRpZmYgZmlsZXMgYXJlIGFwcGxpZWQgYXV0b21hdGljYWxseS4gIEJlc3QgdG8g
cmVuYW1lIHRvIGlucHV0cmMucGF0Y2guDQoNCj4gVXNpbmcgZGV2c2hlbGwsIEkgaGF2ZSBjb25m
aXJtZWQgdGhhdCB0aGUg4oCccGF0Y2jigJ0gcHJvZ3JhbSBiZWluZyBleGVjdXRlZCBpcyB0aGUg
b25lIGZyb20gdGhlIFlvY3RvIGVudmlyb25tZW50ICgkQlVJTERESVIvdG1wLWdsaWJjL2hvc3R0
b29scyksIG5vdCB0aGUgYnVpbGQgaG9zdC4NCg0KSGF2ZSBhIGxvb2sgYXQgd2hhdCBob3N0dG9v
bHMvcGF0Y2ggYWN0dWFsbHkgaXM6IHlvdSdsbCBzZWUgaXQncyBqdXN0IGEgc3ltbGluayB0byAv
dXNyL2Jpbi9wYXRjaC4NCg0KUm9zcw0K

