Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9112.1579278985537364087
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2020 08:36:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="crypto/rsa: verification error" header.i=@nio365.onmicrosoft.com header.s=selector2-nio365-onmicrosoft-com header.b=EBmF/ZHP;
 spf=permerror, err=parse error for token &{10 18 spf.qualtrics.com}: permanent DNS error (domain: ni.com, ip: 140.211.169.56, mailfrom: prvs=42850c2538=alejandro.delcastillo@ni.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DE5FE01588; Fri, 17 Jan 2020 08:36:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [148.163.158.57 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 1890 seconds by postgrey-1.32 at yocto-www; Fri, 17 Jan 2020 08:36:21 PST
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE21DE01584
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2020 08:36:21 -0800 (PST)
Received: from pps.filterd (m0098778.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 00HG4W64025062;
	Fri, 17 Jan 2020 10:04:49 -0600
Received: from nam02-cy1-obe.outbound.protection.outlook.com (mail-cys01nam02lp2056.outbound.protection.outlook.com [104.47.37.56])
	by mx0b-00010702.pphosted.com with ESMTP id 2xk0udt4gu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Jan 2020 10:04:48 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5qniorUm0tdzTIesvWAlUsV/nOceDghrULt3+AIrEUwSawBuD/fSOfymg8PSUYXo28TApyMGwXpkOMusKGLqLzyHk2sAaix6vO4pMDEltcfiZDWQ7fYXH148UN5liJFKlb+u3sC5b75rXnV6FtjDrvmAq/IinMVH2vrs16MzN2ic63w2j3lAhifjfi4v+0Kpg6rTuaytDQG7IgW/GXWbdnTY9UG60VxCUz0xz2VcpKkG74UQ1PR39vCPkUI1eDWyRDmqE5GMgn0sMYL5Wy4uu3r8cytjDpOmGfbUmt5LHdF8vS2noPhzEjv2VbZmXu9NDsVY1NHsEXVk757MG695Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fUDWmBizQwm0xjUBa5IXkrGf7Lqe6oqkqMpNX1qDqss=;
 b=Mvfx44520sIQNYQqzWXb14Pnu6LIHfhTcXBU7YvMgTGr3/XnhopI3f48CW2Sms+0ESUrDEOSk9Clo0d3hhsDv/gzY5aY9QkkrYF7RatjqMoyzq1AHEAQrn+cpUC6gW7j7buVHt/9rXY2HxeE5n1iBW4eSFEYZW2r6ixIpBO6wc5jsk34K/H8+EpQ3H1yaUSDZZ+uiN/tKWnTqxYqUvxG8k1qYGMOZikBceHicMbtSYQE327L4Z2WngmlbhxRe9AnKZulkY5A/fFPOfw0D96zu6pj8ZwQfJDjInPTKFGTTpz27eMameam+MDL2sjFggGoH1YGHE9jJw5mnV8PEusU6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fUDWmBizQwm0xjUBa5IXkrGf7Lqe6oqkqMpNX1qDqss=;
 b=EBmF/ZHPDNOGYzoydUc5+vgvMclJaEEwKG4ebRQy4HKxKxxy6CGOu66Tr+Zig0LOXJHmit4hWMhfD9t6/epqykeQd82jhd9XDLfnMD6Itiw74f6HVeOe11xvUqFakLrQttV6faoqONzPZzCy1lYI7JcP5xq7LEEKTLm/KX6Z/Tc=
Received: from MWHPR0401MB3658.namprd04.prod.outlook.com (10.167.162.143) by
 MWHPR0401MB3596.namprd04.prod.outlook.com (10.167.238.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Fri, 17 Jan 2020 16:04:42 +0000
Received: from MWHPR0401MB3658.namprd04.prod.outlook.com
 ([fe80::94ef:2844:8df3:3e97]) by MWHPR0401MB3658.namprd04.prod.outlook.com
 ([fe80::94ef:2844:8df3:3e97%5]) with mapi id 15.20.2644.023; Fri, 17 Jan 2020
 16:04:42 +0000
Received: from [10.0.39.171] (130.164.62.221) by DM6PR18CA0012.namprd18.prod.outlook.com (2603:10b6:5:15b::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19 via Frontend Transport; Fri, 17 Jan 2020 16:04:41 +0000
From: "Alejandro del Castillo" <alejandro.delcastillo@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>,
        Christian
 Hermann <mail@hermannch.dev>,
        "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [EXTERNAL] [opkg-devel] [opkg-utils PATCH] opkg-unbuild: convert
 to shell
Thread-Index: AQHVyjsk/zG+rKZahUerrnUXAD24WqfvCy6A
Date: Fri, 17 Jan 2020 16:04:42 +0000
Message-ID: <0e4ca627-f0af-6ea4-4cec-26f2b60555e8@ni.com>
References: <20200113175838.22158-1-mail@hermannch.dev>
In-Reply-To: <20200113175838.22158-1-mail@hermannch.dev>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DM6PR18CA0012.namprd18.prod.outlook.com
 (2603:10b6:5:15b::25) To MWHPR0401MB3658.namprd04.prod.outlook.com
 (2603:10b6:301:78::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [130.164.62.221]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83c52708-ff40-4546-6411-08d79b66f65b
x-ms-traffictypediagnostic: MWHPR0401MB3596:
x-microsoft-antispam-prvs: 
 <MWHPR0401MB3596D237D921AB429A5B0CF586310@MWHPR0401MB3596.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(376002)(366004)(346002)(136003)(396003)(39860400002)(199004)(189003)(478600001)(6486002)(86362001)(36756003)(2906002)(8936002)(53546011)(110136005)(16576012)(66556008)(8676002)(81156014)(316002)(81166006)(66476007)(5660300002)(66446008)(64756008)(31696002)(26005)(31686004)(186003)(71200400001)(2616005)(956004)(16526019)(52116002)(66946007);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR0401MB3596;H:MWHPR0401MB3658.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: ni.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oTH9+5GnVxwlxb8NmXIzTCMSnLpJe9Se8dlz1ukx9cXd+MHhp88IIKwzb+FwvY+RcUFLXcEUou2FwYR2GAposQaO8PGSEWLeVe1iajiC25ivKdbegnb9kqqBRCm/rRD/N9B0DJ2agjd6fs0Rb0TUnI2NyS6ZriPqD7QVwcMnqA8iq4N5Y80c0yleLLhOTU4LSzQUfoj40SOlx98bmxlWMAvhXz4SJdvSwmgTs25V76vUSX4tQbpgefpa42FL5tULnrJCmPET2mfSEcptqNQPAQPlzYHiYxST2CuqONX33uCmsb00kfSyTpOvtjAmn9bLHnFDE6QyRY8/x5RxuoRaq2GlQqHAS8LACpyETE582JnBYipujzLxaWmLqm6mpmYfmjULjkwiHcoES0wKD+7DpKEj2tVG6NsXCWM0wQ7TPqeB0lyLmWx5+wk6255qs8bu
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83c52708-ff40-4546-6411-08d79b66f65b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 16:04:42.0717
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rIh9BgOFRxwt0+BCy/QofNMzzL2sMv/jf2zhqjDnMRnun0jqoHvb0AePJcI94p/Gd115DUck6EKzRajivoFJWKq0Z1A9S4NNcnxUlDbPrOc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0401MB3596
Subject: Re: [opkg-devel] [opkg-utils PATCH] opkg-unbuild: convert to shell
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-01-17_04:2020-01-16,2020-01-17 signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy score=30
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 mlxlogscore=999
 impostorscore=0 clxscore=1011 adultscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxscore=0 bulkscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-1910280000 definitions=main-2001170123
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <6E1C8B7D8CCC2148AC58EFED48DAB794@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciBmaXhpbmcgdGhpcyENCg0KU29tZSBvZiB0aGUgc2NyaXB0cyBvbiBvcGtnLXV0
aWxzIGhhdmVuJ3Qgc2VlbiBhIGNoYW5nZSBpbiBhIGxvbmcgdGltZSANCmFuZCBuZWVkIHJlZnJl
c2guDQoNCkxHVE0sIG1lcmdlZCBpbnRvIG1hc3Rlcg0KDQoNCk9uIDEvMTMvMjAgMTE6NTggQU0s
IENocmlzdGlhbiBIZXJtYW5uIHdyb3RlOg0KPiBUaGUgcHJldmlvdXMgaW1wbGVtZW50YXRpb24g
cmVsaWVkIG9uIHB5dGhvbiwgaXQgc2hlbGxlZCBvdXQgYW55d2F5DQo+ICh1c2luZyBiYXNoaXNt
cykgdG8gY2FsbCBhci90YXIgYW5kIGNvdWxkbid0IGhhbmRsZSBwYXRocyAhPSBjd2QuDQo+IA0K
PiBUaGlzIHJld3JpdGUNCj4gKiBjYW4gaGFuZGxlIHBhY2thZ2VzIGVsc2V3aGVyZSB0aGFuIGN3
ZA0KPiAqIHByaW50cyBhIHN1bW1hcnkgbGlrZSBvcGtnLWJ1aWxkIGRvZXMgKCJVbmJ1aWx0IDxJ
UEs+IGludG8gPERFU1Q+IikNCj4gKiBpcyB3cml0dGVuIGluIHZhbGlkIFBPU0lYIHNoZWxsIHN5
bnRheA0KPiAqIGlzIGNvbXBhdGlibGUgd2l0aCBvcGtnLWJ1aWxkJ3Mgbm9uLWVzb3RlcmljIG9w
dGlvbnMNCj4gKiBpcyBsaW50ZWQgd2l0aCBzaGVsbGNoZWNrLg0KPiANCj4gVGVzdGVkIHdpdGgN
Cj4gKiBkaWZmZXJlbnQgdGFyDQo+ICAgICAgKiBnbnUgdGFyIDEuMzINCj4gICAgICAqIGJzZHRh
ciAzLjQuMQ0KPiAgICAgICogYnVzeWJveC10YXIgMS4zMS4xDQo+ICAgICAgKiB0b3lib3gtdGFy
IDAuOC4yIChidXQgcHJpbnRzIGEgd2FybmluZzogdGFyOiAnLi8nIG5vdCB1bmRlciAnL3RtcC9k
ZXN0L2ZvbycpDQo+ICogc29tZSBvcGtnLWJ1aWxkIGFyZ3VtZW50cywgYXMgb2YgYG9wa2ctYnVp
bGQgLW8gcm9vdCAtZyByb290ICRhcmdzYCwgd2l0aA0KPiAgICAgICogYXJncz0NCj4gICAgICAq
IGFyZ3M9Ii1aIHh6Ig0KPiAgICAgICogYXJncz0iLWMiDQo+ICAgICAgKiBhcmdzPSItYyAtWiB4
eiINCj4gDQo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBIZXJtYW5uIDxtYWlsQGhlcm1hbm5j
aC5kZXY+DQo+IC0tLQ0KPiAgIG9wa2ctdW5idWlsZCB8IDkzICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgNzMg
aW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvb3BrZy11
bmJ1aWxkIGIvb3BrZy11bmJ1aWxkDQo+IGluZGV4IDMxODk1MjcuLjI3MDk2YTEgMTAwNzU1DQo+
IC0tLSBhL29wa2ctdW5idWlsZA0KPiArKysgYi9vcGtnLXVuYnVpbGQNCj4gQEAgLTEsMjcgKzEs
ODAgQEANCj4gLSMhL3Vzci9iaW4vZW52IHB5dGhvbjMNCj4gKyMhL2Jpbi9zaCAtZQ0KPiArIyBv
cGtnLXVuYnVpbGQgUEtHLi4uIC0gZXh0cmFjdCBwYWNrYWdlcyB0byB0aGUgY3VycmVudCBkaXJl
Y3RvcnkNCj4gKw0KPiAgICMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQ0K
PiAtZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCBhYnNvbHV0ZV9pbXBvcnQNCj4gLWZyb20gX19mdXR1
cmVfXyBpbXBvcnQgcHJpbnRfZnVuY3Rpb24NCj4gKyMgQXV0aG9yOiBDaHJpc3RpYW4gSGVybWFu
biA8bWFpbEBoZXJtYW5uY2guZGV2Pg0KPiArDQo+ICtmYWlsKCkgeyBwcmludGYgLS0gJ0ZBSUw6
ICVzXG4nICIkMSIgPiYyIDsgZXhpdCAiJHsyOi0xfSIgOyB9DQo+ICt1c2FnZSgpIHsNCj4gKwlw
cmludGYgJyVzXG4nICJVc2FnZTogJChiYXNlbmFtZSAiJDAiKSBQS0cuLi4iDQo+ICsJcHJpbnRm
ICclc1xuJyAiICAgIEV4dHJhY3QgZGViaWFuIGNvbXBhdGlibGUgcGFja2FnZXMgdG8gdGhlIGN1
cnJlbnQgZGlyZWN0b3J5Ig0KPiArfQ0KPiArDQo+ICsjIG1hcCBmaWxlIHN1ZmZpeCB0byB0YXIg
Y29tcHJlc3Npb24gZmxhZw0KPiArZ2V0X3Rhcl9jb21wX2ZsYWcoKSB7DQo+ICsJY2FzZSAiJDEi
IGluDQo+ICsJCSMgYXZvaWQgLWEsIHdoaWNoIGhhcyBhIGRpZmZlcmVudCBtZWFuaW5nIGluIGJ1
c3lib3gtdGFyDQo+ICsJCSp0YXIuZ3p8KnRneikgcHJpbnRmIC0tICcteicgOzsNCj4gKwkJKnRh
ci54enwqdHh6KSBwcmludGYgLS0gJy1KJyA7Ow0KPiArCQkqdGFyLmJ6MnwqdGJ6fCp0YnoyKSBw
cmludGYgLS0gJy1qJyA7Ow0KPiArCQkqdGFyLmx6bWF8KnRseikgcHJpbnRmIC0tICctLWF1dG8t
Y29tcHJlc3MnIDs7DQo+ICsJCSopIHByaW50ZiAtLSAnLS1hdXRvLWNvbXByZXNzJyA7Ow0KPiAr
CWVzYWMNCj4gK30NCj4gKw0KPiArDQo+ICtpZiBbICIkIyIgLWx0IDEgXSA7IHRoZW4NCj4gKwl1
c2FnZSA+JjINCj4gKwlleGl0IDENCj4gK2ZpDQo+ICtpZiBbICIkMSIgPSAiLWgiIF0gfHwgWyAi
JDEiID0gIi0taGVscCIgXSA7IHRoZW4NCj4gKwl1c2FnZQ0KPiArCWV4aXQgMA0KPiArZmkNCj4g
Kw0KPiArd2hpbGUgWyAtbiAiJDEiIF0gOyBkbw0KPiArCWZpbGVuYW1lPSIkMSINCj4gKwlzaGlm
dA0KPiArDQo+ICsJWyAhIC1yICIkZmlsZW5hbWUiIF0gJiYgZmFpbCAiQ2Fubm90IHJlYWQgZmls
ZTogJGZpbGVuYW1lIg0KPiAgIA0KPiAtaW1wb3J0IHN5cywgb3MsIHJlDQo+ICsJIyBQcmVwYXJl
IGRpcmVjdG9yeSBuYW1lIChzdHJpcCBzdWZmaXgpDQo+ICsJcGtnbmFtZT0iJChiYXNlbmFtZSAi
JGZpbGVuYW1lIikiDQo+ICsJcGtnZGlyPSIuLyQocHJpbnRmICclcycgIiRwa2duYW1lIiB8IHNl
ZCAtRSAncy9cLigoaXBrKXwob3BrKXwoZGViKSkvLycpLyINCj4gICANCj4gLWlmIChsZW4oc3lz
LmFyZ3YpID09IDApOg0KPiAtICAgIHByaW50KCd1c2FnZTogJXM6IHBhY2thZ2Uub3BrJyAlIHN5
cy5hcmd2WzBdKQ0KPiAtICAgIHN5cy5leGl0KDEpDQo+ICsJIyBTa2lwIHRoaXMgcGFja2FnZSBp
ZiB0aGVyZSdzIGEgbmFtaW5nIGNsYXNoIHdpdGggdGhlIHRhcmdldCBkaXINCj4gKwlpZiBbIC1k
ICIkcGtnZGlyIiBdOyB0aGVuDQo+ICsJCXByaW50ZiAnJXNcbicgIkRlc3RpbmF0aW9uIGFscmVh
ZHkgZXhpc3RzOiAkcGtnZGlyIChza2lwcGluZykiID4mMg0KPiArCQljb250aW51ZQ0KPiArCWZp
DQo+ICAgDQo+IC1mb3IgZmlsZW5hbWUgaW4gc3lzLmFyZ3ZbMTpdOg0KPiAtICAgIG0gPSByZS5t
YXRjaCgnKCguKi8pKikoLiopJywgZmlsZW5hbWUpDQo+IC0gICAgcGtnID0gbS5ncm91cCgzKQ0K
PiAtICAgIG0gPSByZS5tYXRjaCgnKC4qKSgoLm9wayl8KC5kZWIpfCguaXBrKSknLCBmaWxlbmFt
ZSkNCj4gLSAgICBpZiBtOg0KPiAtICAgICAgICBwa2cgPSBtLmdyb3VwKDEpDQo+ICsJIyBBbmFs
eXplIG91dGVyIGxheWVyLCBwcmVmZXIgYXIgb3ZlciB0YXINCj4gKwlvdXRlcl9leHRfY21kPQ0K
PiArCXRhYmxlPQ0KPiArCWlmIGFyIHQgIiRmaWxlbmFtZSIgPi9kZXYvbnVsbCAyPiYxIDsgdGhl
bg0KPiArCQlvdXRlcl9leHRfY21kPSJhciBwICINCj4gKwkJdGFibGU9IiQoYXIgdCAiJGZpbGVu
YW1lIiAyPi9kZXYvbnVsbCkiDQo+ICsJZWxpZiB0YXIgdCAtZiAiJGZpbGVuYW1lIiA+L2Rldi9u
dWxsIDI+JjEgOyB0aGVuDQo+ICsJCW91dGVyX2V4dF9jbWQ9InRhciAteCAtLXRvLXN0ZG91dCAt
LWZpbGUgIg0KPiArCQl0YWJsZT0iJCh0YXIgLXQgLWYgIiRmaWxlbmFtZSIpIg0KPiArCWZpDQo+
ICsJWyAteiAiJHRhYmxlIiBdICYmIGZhaWwgIkNvdWxkIG5vdCByZWFkIGZpbGUgdGFibGU6ICRm
aWxlbmFtZSINCj4gICANCj4gLSAgICBvcy5zeXN0ZW0oJ3JtIC1mciAlcycgJSBwa2cpDQo+IC0g
ICAgb3MubWtkaXIocGtnKQ0KPiAtICAgIG9zLm1rZGlyKHBrZyArICcvQ09OVFJPTCcpDQo+ICsJ
IyBBbmFseXplIGlubmVyIGxheWVyLiAgQ2hvb3NlIGRlY29tcHJlc3Npb24gYWxnbyBmb3IgaW5u
ZXIgYXJjaGl2ZXMgYXMNCj4gKwkjIGluZGljYXRlZCBieSB0aGVpciBzdWZmaXguICBRdWVyeSB0
aGUgcmVhbCBwYXRocyBmcm9tIHRoZSBvdXRlciBhcmNoaXZlJ3MNCj4gKwkjIHRhYmxlLCBzaW5j
ZSB0YXIncyB0YWJsZSBwcmVmaXhlcyB0aGVtIHdpdGggLi8gd2hpbGUgYXIncyBkb2VzIG5vdC4N
Cj4gKwljb250cm9sX3BhdGg9IiQocHJpbnRmICclcycgIiR0YWJsZSIgfCBncmVwIGNvbnRyb2wp
Ig0KPiArCWRhdGFfcGF0aD0iJChwcmludGYgJyVzJyAiJHRhYmxlIiB8IGdyZXAgZGF0YSkiDQo+
ICsJWyAteiAiJGNvbnRyb2xfcGF0aCIgXSAmJiBmYWlsICJBcmNoaXZlIGhhcyBubyBjb250cm9s
LnRhci5nejogJGZpbGVuYW1lIg0KPiArCVsgLXogIiRkYXRhX3BhdGgiIF0gJiYgZmFpbCAiQXJj
aGl2ZSBoYXMgbm8gZGF0YS50YXIuZ3o6ICRmaWxlbmFtZSINCj4gKwlpbm5lcl9jb21wX2NvbnRy
b2w9IiQoZ2V0X3Rhcl9jb21wX2ZsYWcgIiRjb250cm9sX3BhdGgiKSINCj4gKwlpbm5lcl9jb21w
X2RhdGE9IiQoZ2V0X3Rhcl9jb21wX2ZsYWcgIiRkYXRhX3BhdGgiKSINCj4gICANCj4gLSAgICBv
cy5zeXN0ZW0oJ2NkICVzOyAoYXIgeCAuLi8lcyB8fCB0YXIgenhmIC4uLyVzKSA+JiAvZGV2L251
bGwnICUgKHBrZywgZmlsZW5hbWUsIGZpbGVuYW1lKSkNCj4gKwkjIEV4dHJhY3QNCj4gKwlta2Rp
ciAtcCAiJHBrZ2Rpci9DT05UUk9MIg0KPiArCSRvdXRlcl9leHRfY21kICIkZmlsZW5hbWUiICIk
Y29udHJvbF9wYXRoIiB8IHRhciAtLWV4dHJhY3QgLWYgLSAiJGlubmVyX2NvbXBfY29udHJvbCIg
LUMgIiRwa2dkaXIvQ09OVFJPTCINCj4gKwkkb3V0ZXJfZXh0X2NtZCAiJGZpbGVuYW1lIiAiJGRh
dGFfcGF0aCIgfCB0YXIgLS1leHRyYWN0IC1mIC0gIiRpbm5lcl9jb21wX2RhdGEiIC1DICIkcGtn
ZGlyLyINCj4gICANCj4gLSAgICBvcy5zeXN0ZW0oJ3RhciB4emYgJXMvZGF0YS50YXIuZ3ogLUMg
JXMnICUgKHBrZywgcGtnKSkNCj4gLSAgICBvcy5zeXN0ZW0oJ3RhciB4emYgJXMvY29udHJvbC50
YXIuZ3ogLUMgJXMvQ09OVFJPTCcgJSAocGtnLCBwa2cpKQ0KPiAtICAgIG9zLnN5c3RlbSgncm0g
LWYgJXMvY29udHJvbC50YXIuZ3ogJXMvZGF0YS50YXIuZ3ogJXMvZGViaWFuLWJpbmFyeScgJSAo
cGtnLCBwa2csIHBrZykpDQo+ICsJIyBTdW1tYXJ5DQo+ICsJcHJpbnRmICdVbmJ1aWx0ICVzIGlu
dG8gJXNcbicgIiRmaWxlbmFtZSIgIiRwa2dkaXIiDQo+ICtkb25lDQo+IA0KDQotLSANCkNoZWVy
cywNCg0KQWxlamFuZHJvDQo=
