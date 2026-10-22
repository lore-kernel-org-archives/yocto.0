Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.34])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.169.1792677826417817735
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2026 07:03:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=OY3O1w83;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=OY3O1w83;
 spf=pass (domain: arm.com, ip: 40.107.162.34, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=MIV/KqR4uQfQmtsRp3uGQt0YaW4cZpfDahj7/Tl/qnIQXutAN8dscGskfjoUZyIj0jCkzAitAGitZP7CwT1Z/TqGKuDuuJSZTztH1/9SXNUkVGnT7yUvktao9DVii6ocDXBECihVJBXBWwUJhKnVeRRwi01RwI+xLaXocDB8pSzA7DLNcBAXC4DIWg4KsjFT6pznPsHxMxdHkBXtl52mXD+Sbkd5nqRcjFOYHQycE2CtjKucA576rXamibeoYqH1GyUMfEqQ1uqvCOcMgoFs6B6lsvmhUCjKU/hD5nQY8DFlmiaI282FSFEWO3giQj6faThPp0Nuoz/wO3umZc5TZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8SgD/qf25h8WIweZoGUyn5AS2FzQaQ4Y2RWWr5oqFo=;
 b=m3W69Bom9VRvMb6MxEl2eFdDbzIoiOPYT79FrxJY+u7y0Wv9oCybGiSFbIxspElSvgDCKhC7RmQSy9wjwU01w8/O6zb+sWDjTpc35QoqJiDcj5mh/kSgf49lSGs9hZXI190eP2lNOffU/3FxJhwYn5tozR2aw0E/SZSaYMlgoGzgRcZvyJqxOd+eqorVwodefkAK5MFkBpqzGhe6JfFWtzXOb6SMxEzM+c+XgHljhx+cSatA0WtO34pV/ggRZR2YHzYfKzQiCJGX7xJINBnsUx/EOPYmaXD1KsHluYXDAcQGPK0jToccIx5QDlxlXIZCbTN/ES8qB0f1JgfT94ajRQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=balister.org smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X8SgD/qf25h8WIweZoGUyn5AS2FzQaQ4Y2RWWr5oqFo=;
 b=OY3O1w835a/u5+N04oMeAZq3Pss7zZefY1OdHkK6e0CMPXHuO/Daaxn5Md85HOwLbv1ZTpGHKEcRbdNHzeqCdkAYXAz5+FGaNhkvL/5XxP8Bfv+1RrURnhkMBRKiPPFigUy/nJ+WFvBvtA6rA9Nsiom14BO1MVRG5EYDODQorZs=
Received: from DU7P190CA0014.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:550::12)
 by DB9PR08MB6683.eurprd08.prod.outlook.com (2603:10a6:10:2ad::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.546.15; Thu, 22 Oct
 2026 14:03:39 +0000
Received: from DB1PEPF000509FF.eurprd03.prod.outlook.com
 (2603:10a6:10:550:cafe::8) by DU7P190CA0014.outlook.office365.com
 (2603:10a6:10:550::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.546.17 via Frontend Transport; Thu,
 22 Oct 2026 14:03:39 +0000
X-MS-Exchange-Authentication-Results: mx.microsoft.com 1; spf=pass (sender IP
 is 4.158.2.129) smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DB1PEPF000509FF.mail.protection.outlook.com (10.167.242.41) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.21.546.15
 via Frontend Transport; Thu, 22 Oct 2026 14:03:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k7EZqo0glNTNk4AXeKEaShwHchvZC0WpWZu0/TPODA3Dm4+v3DiiAIMTiFJyRKtRbtBqaaVy5wEe5nsUvRW0GGDc+oIHPXUol1FCDS1TY88w9IDARwRMy5b762Cor4Wyfc1jFktusfr5bjS29OrF4QEqjkq3VT2TFvSTvyVWGJ0hE8MVd5QsELA8j2TgfCrno8M9NIWlL0ksiLGg6xljNtqkclVggkK0wRq4o+PI06pATfzF0iLQxQLv3/QF7HSOjLMEXE+d2ZawgFdGfD1Lvj9QxKAhsnIK9Cp2osXwMm6Th7XgP1J13bVvTseNTfEgE7mBE7X0KvNuvtpzBKtjEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8SgD/qf25h8WIweZoGUyn5AS2FzQaQ4Y2RWWr5oqFo=;
 b=SuMGz24dNNl198lyMN00ywELC8qdpL8Lo6LhkiQsKi93W99l4bl0u12Rca3WnSVBxedtTvuEvMOUkyge6BAwqwQmArlfwfSGg95glsktAHRXtTmNeC3TduTR7gOFihFuVa/EJ51CQQDSNvJWkLmKiRucU0DOn1OhQwEIJiJNS/0ODT1TdWj4xd6L+IGKjeqBM8MsntOKZ6vdDaqWXSozGPnLuNDG/s/uCBOYA5LTSNmXYBAN8Zfm7WiJuutwUwDvOI//LGkSNt1kYoWs7010KwPTJD9of7tuOjHnw1ivYxlCXIhiOd4goBN420v+nquEWF72PKNMaF3rL9oxBbZbXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X8SgD/qf25h8WIweZoGUyn5AS2FzQaQ4Y2RWWr5oqFo=;
 b=OY3O1w835a/u5+N04oMeAZq3Pss7zZefY1OdHkK6e0CMPXHuO/Daaxn5Md85HOwLbv1ZTpGHKEcRbdNHzeqCdkAYXAz5+FGaNhkvL/5XxP8Bfv+1RrURnhkMBRKiPPFigUy/nJ+WFvBvtA6rA9Nsiom14BO1MVRG5EYDODQorZs=
Received: from AS8PR08MB9410.eurprd08.prod.outlook.com (2603:10a6:20b:5a9::13)
 by GVUPR08MB11932.eurprd08.prod.outlook.com (2603:10a6:150:349::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.546.14; Thu, 22 Oct
 2026 14:03:06 +0000
Received: from AS8PR08MB9410.eurprd08.prod.outlook.com
 ([fe80::1f2c:bae7:a4d3:fefb]) by AS8PR08MB9410.eurprd08.prod.outlook.com
 ([fe80::1f2c:bae7:a4d3:fefb%5]) with mapi id 15.21.0546.006; Thu, 22 Oct 2026
 14:03:06 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Philip Balister <philip@balister.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"mhalstead@linuxfoundation.org" <mhalstead@linuxfoundation.org>,
	yocto-infrastructure <yocto-infrastructure@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto Project wiki replaced with a a read-only snapshot
Thread-Topic: [yocto] Yocto Project wiki replaced with a a read-only snapshot
Thread-Index: AQHdYX83jt4/bUvo30q+f6IGUtrpd7cJkyYAgAAFiYCAAABkgA==
Date: Thu, 22 Oct 2026 14:03:06 +0000
Message-ID: <F25E22D1-27F1-4140-99FF-91B69FB0DCC6@arm.com>
References: <CADfgfoY-e_Dwh=sEYzREf16iTHynr+2HVeTMLJfJdthUNjj=fw@mail.gmail.com>
 <9B005854-190F-4DE0-A2A5-7F17E4816B1A@arm.com>
 <2f242967-754e-4eaa-9f1d-f1cbddc29bbc@balister.org>
In-Reply-To: <2f242967-754e-4eaa-9f1d-f1cbddc29bbc@balister.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3864.700.51.1.3)
Authentication-Results-Original: mx.microsoft.com 1; dkim=none (message not
 signed) header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: AS8PR08MB9410:EE_|GVUPR08MB11932:EE_|DB1PEPF000509FF:EE_|DB9PR08MB6683:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bef7813-3397-4934-889f-08df30454596
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|23010399003|1800799024|376014|366016|22082099003|18002099003|4143699003|11063799006|10067099003|38070700021|56012099006;
X-Microsoft-Antispam-Message-Info-Original: 5niKHCkWKmdv493qpPKnlxwqGw+ajmhjlNvOQJyij4hojnL9/vpbqI9lz8Kuqlu9II+nLaf2lSvEo6HIxXZM9F0gVPO4DDH40YH2G5/6HLJd38OJiwvhtiNxonqwQxKVIko9b/AD5hxKSyNFd4+o/e1j0Q0LqqZMaqTnp1n2JIlU5VYOBiUTgcUxPsobGNKFJTIiSyNqby2lE3/Dcez0ZX+fOxckPNl9O+6ffbzJO0rH6K56Mz7ssV0MI1diNvx+eOMNpmid4XjNVghHH63Yf6oQ1nh25p5GaDzvZbxt3Di6SmoCndvq9rEioSNceGXYDaj509iCkwzsZGW0/tkpjsGJt05AnEic8hd0WDniHSXIRvqYqlr/U7DMkF+fiIIdM96tGggRg9YkQ4jOXEpI0GnbNty8MPZjCYu37SfgKpfwomHfWSSGyIzEEiTuQlyq2TbWNnoiPmDpcWsWKQauaOJjxhVe6OlHh3Dut70b/NS13ttlpoGwOx9FXuUEn0WASPTEQkf/82sHs+gsCmvkZyKgqO2cZjAJoW+Q68TsSHU933jAFIlmoa+Ma6pApe2QNlEICOdhAxhxt0lF3jVSYyTiKcK1q5DuEvkllGWEtdpJY7FqgRMJrdTZepykiqDXtGwpm0lpH3ZH2Z2qG7JD2af/ebNW/xttZNFQ1COSg9w52Yr8k77AfFBZAzR3NWExpFflB08MZUnD+zuJd2bupQ==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB9410.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(376014)(366016)(22082099003)(18002099003)(4143699003)(11063799006)(10067099003)(38070700021)(56012099006);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <E81414AF511F5A4AAE7E516514BB286E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UfImZn2B5SYRzZhCDp5M6vMr/9k3IuBi9uY0hraJ4GMO/mvekierpfIkbesgw16aiWN0iO5wpQifZaTUY9y9gOJJ/maHXAMr+xtklOmvTHy927LNspqfpDLxq9WOW9BbRqa+Uk9fevRFRD/hi8u2SUYSHb1B4i08ro6sXQGYFN+/w+0cXhf4ZiSkd1sDhZh5Dm6YYZyC1Sfq+ej3NVKJN47CDRNDJZyYdGwUJPCbxyDy7ZVh1azy9J5S7QlXTTV8EIfUg2HRPUUwc4NurI5tCoRzbavNLw9wsER8L4lzf/NtaE5Dob8e3j3uPQK8Xpr1BEfcBUyUEzz7jUTx6XDrkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVUPR08MB11932
Return-Path: Ross.Burton@arm.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB1PEPF000509FF.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: ea29f1b1-9d37-4a99-59f4-08df30453219
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|14060799003|36860700016|35042699022|376014|1800799024|23010399003|10067099003|56012099006|18002099003|22082099003|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: YIa/qjYNOWaaPFNjUArkrAX/4BZXF458GZH75x8z9kLjl6j3jue8USu1zLJwUcx1w9kUCYyJaIQnr9tI6y+f/SmrpFT8JMJ5TtOM0g7ndq/b40iebVNwiHyRhGq8sKrSxodk6oLMRou5GVC2bTcuhMJIdMQ8rzZ5krMDgFtBNVYWY9y3H32llblJS2ie8QdmhIXQeyesd2Suzg4wm6FcIgJ7BgXTlet2bmjta3C+1NX/M5mkBAOPoEjndx/ZrBdMuV4lXeV5y79yKchH8EEoVzR2dT8BmDZt60kOKeAazy3VHVHKv+Xh6dJO+KXucJoJ4wdl4v7BbI1/K8P3xLknOLoXeQZEJ3zOxrZOH688LCjyyBgvMGO3FTWetNpJeEWl+7P+bQQHUCTSbHk2VRCv/tLOxI3xrl+nNlcm0f8SCHkzBoOdnulQ41R/EDymSWmCwclV1cVbLVq3t8DL0lgJoR3uZEzal7ENyfdCZJ7sTVVuvQecgz1vFzcTfdoZbZ/N/Mxl3ufTSB0pH5R/IFpS/KcxZZq8A+kvxfwzX2+0Fj4PX66x4bDQZTtFxDa9pnzhf2GqtcCNmSvOgIlzMLgVU/SZn15O2OqrOQmel59+sdu6Xvh83vrSFbSAxufOPj9Q3URJ1kIaE0/j/Zdgd85b9EBr5JhR5l7IcqvY1HXEXlPopf0+yTyOssQTSHGW68mgvbU5Il+TlgYvr7KfM4epBA==
X-Forefront-Antispam-Report: CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(36860700016)(35042699022)(376014)(1800799024)(23010399003)(10067099003)(56012099006)(18002099003)(22082099003)(4143699003)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: gRC5Doi3QvTLsbkgUnoD70zLYZfMUVKxu22d2o2ypzms6yoq9isKaokIQrllc8UOrn/l02+PlApQpaecH2EkIm41xVlpOgPiWyklpVHbu9TcUj5BF13aGwJId6Jz1MlEgBK3khI6sHngR4fs/xEJNV+toB12UVCl+hwf22Qz6qE4I5cEjM+O7NRZH4Tp0l+wfIeB4Zxb2QOcOSZFy6Slgct0CKLndUQ37Ph5L2Qir9v8RWKhALAu6xTs+vao52+bFICwqKoZG1DjMVLOsyX5M0g5kPVlg9pDP/h4V72Q1DkaafNGeUduINe6MxS62EkEUherm9QrIwF80oqO/N6zqPrK3LnSMUdqUAM9k6A8vjnaU1KTA8fAdHf+vnsjjqb+gsInxVXr1Xb72E/3vxPLMc8cNiesjUe+r0HgLV1NkUDmQ2oLoG/jqLC6QQS7x025
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2026 14:03:38.7293
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bef7813-3397-4934-889f-08df30454596
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FF.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6683
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2026 14:03:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66783

T24gMjIgT2N0IDIwMjYsIGF0IDE1OjAxLCBQaGlsaXAgQmFsaXN0ZXIgPHBoaWxpcEBiYWxpc3Rl
ci5vcmc+IHdyb3RlOg0KPiANCj4gRG8gd2UgaGF2ZSBhbnkgYW5hbHl0aWNzIG9uIHRoZSB3aWtp
IHBhZ2VzPw0KDQpJ4oCZbGwgbGV0IE1pY2hhZWwgY29tbWVudCBvbiB0aGF0LCBidXQgSSBkbyBo
YXZlIHRoZSBSZWNlbnQgQ2hhbmdlcyBwYWdlIGluIG15IHJzcyBmZWVkLiAgSXTigJlzIDk5JSB0
aGUgd2Vla2x5IHN0YXR1cywgb2NjYXNpb25hbGx5IHRoZSBSZWxlYXNlcyBhbmQgUHJvamVjdCBV
c2VycyBwYWdlcy4gIFN0cnVnZ2xpbmcgdG8gcmVtZW1iZXIgYW55IG90aGVyIHBhZ2VzIHRoYXQg
Y2hhbmdlZCByZWNlbnRseS4NCg0KUm9zcw==
