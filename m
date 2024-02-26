Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF4CC5478C
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 15:51:00 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.78])
 by mx.groups.io with SMTP id smtpd.web11.23596.1708962651712044867
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 07:50:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=3+/o/IWN;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=3+/o/IWN;
 spf=pass (domain: arm.com, ip: 40.107.104.78, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=oK0w90PTsrqBAJIbDH8uWea1vhvPir1LmyNPbD5kc+gBcgQBhJGN+Cy/fTCTSLyuDWuhtXnqaWCoX60F7kbM+t8zpzHsp7fMM/7Za0tch5TjQ6l9eGhOILz1wHc9V8VDzrzlpLt89zEXFcyGLrYbAi3XSD7ao+qijxgEmZsO5Bzafc2nlwHDbOmon2TbXw1OSH/jMYH0xRR26TIwsAmcQZ1QvjDakD4g0d+SCRVv/jxns77Q4ChmrdadFQTMboOTc7K64eFN2cXpPsdbdeirqtfdz6lAG12rssoqypx9GMRvhDJA81lVPsnO2s0C7lhI8FYh4d5WHKoDHf8gok8pmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+apl3HkxvCyVLUsAdfMBO5r1oi2A6IFUdoZG1vIRlo=;
 b=RaiZmJKzBO1czttKaLCM+ZZD47DONx6YZMV6vRd1YxwMOYMiQNqRe2E9ucD3G+mVUWklXMTuUZg3GvCX44YCJ1A5CJAirtoKXDiYjKfIqyp6Z3iIxJJVQn8HDKlzFq0C6Y40Z0z3AmOIvA2O6MAwHmoICwe58v0rinD995k+HqvLAZE6LFjytKrjF9Ge9TWF+8CV98G0rlq0PcIH9Jf+V83QG5yj77pwSYW2jj55R77u3Zc4RnN4EIilliRUfZXW5VNcWpFaSTIrUfv4BHpDc8iuBPuGXgYGHp+lxlz117l0TW0RPYSLxgYN/Bj25it0WZg5xoKFzvCYHksrtHC9tw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+apl3HkxvCyVLUsAdfMBO5r1oi2A6IFUdoZG1vIRlo=;
 b=3+/o/IWNrJPmyNLPMe9R1nudYyh6fHrGedtWofKxnU3PrPBTzkIdXorx6kCWA54UIUdaTamjvgXsNqmMOGuRzbVYIwNeIh4zCBSa4lSvt1EphYqExFu4gFI12AzRFZ/X/KercfjAvCRfGs8yOb/junrxrZSrsM3Xo8T6C/8gfZs=
Received: from AS9PR05CA0161.eurprd05.prod.outlook.com (2603:10a6:20b:496::9)
 by DU0PR08MB9001.eurprd08.prod.outlook.com (2603:10a6:10:466::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.34; Mon, 26 Feb
 2024 15:50:47 +0000
Received: from AMS0EPF000001B2.eurprd05.prod.outlook.com
 (2603:10a6:20b:496:cafe::5f) by AS9PR05CA0161.outlook.office365.com
 (2603:10a6:20b:496::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.49 via Frontend
 Transport; Mon, 26 Feb 2024 15:50:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001B2.mail.protection.outlook.com (10.167.16.166) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Mon, 26 Feb 2024 15:50:47 +0000
Received: ("Tessian outbound a6e56d06a0e4:v228"); Mon, 26 Feb 2024 15:50:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 674f039035a964fb
X-CR-MTA-TID: 64aa7808
Received: from bae77215d765.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id B2C48EE0-8613-44D0-9A9B-B9964D53192D.1;
	Mon, 26 Feb 2024 15:50:40 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id bae77215d765.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 26 Feb 2024 15:50:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oblpJd9VUpZ+YC7TthJso6p1uMlgjMox3CmA41jzZ5a1SoLEKv40zr2ff/buMHwWiSiQmEkOiIUgFyS7sGLqQlAIkEmHBhpATb1w6ywWjwyKb6ilMRllx0kJC1nBNyqdaI8T2D8Ew6QG9AzBZ02ijkZG8GhCrmUTkKelxuAFxO52i44BlTJ6LzJ9EF8VZZE1SVlsCRkU79aLLKemuUYXxFJLnOTR/wWHTsIgs4Jo3gYeMkBaNEVgGVNXRui4RZS2Ux8xe9+FCCmV9ZTVaL/Cp7jPpVBh+7u65aqdjaSFnmh9h0uX7dOrZxJpqTbat8ek1L5aa9fabu4ucysi/KYToQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+apl3HkxvCyVLUsAdfMBO5r1oi2A6IFUdoZG1vIRlo=;
 b=dqOSkv7JfsqOYjnUJ8kuEjBb9NwejTxil+QPvcvGFGAO/5SPZlB//uxpzYL/zgfF0yliGahPL0vD5yQ+PsHv0H65lC+BaWzUpxFoehUuV978EHqW2KqBgKzf/fv3GuRD7YQk7WBb2XDnXzZMURi+ONiSNsRan562LcuLrEuMhHhfaRV5GCjWL7P3X1qEbcrcxdVvXPkEgAUHpOK4pCCkjweteyBllo2eM7Psf4w4oKxX5KtsUrZH2a9glXYMdXOqpXyUrP2TLTxiZlSk0eQblCAOo51op6DDvUEP59oiu3F1dYavAQkC6YG99g+ExQOb1kEhs6WwBvmvbI0RJJGUKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+apl3HkxvCyVLUsAdfMBO5r1oi2A6IFUdoZG1vIRlo=;
 b=3+/o/IWNrJPmyNLPMe9R1nudYyh6fHrGedtWofKxnU3PrPBTzkIdXorx6kCWA54UIUdaTamjvgXsNqmMOGuRzbVYIwNeIh4zCBSa4lSvt1EphYqExFu4gFI12AzRFZ/X/KercfjAvCRfGs8yOb/junrxrZSrsM3Xo8T6C/8gfZs=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI0PR08MB10632.eurprd08.prod.outlook.com (2603:10a6:800:20a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.34; Mon, 26 Feb
 2024 15:50:36 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7316.034; Mon, 26 Feb 2024
 15:50:36 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"miriam.rico@enigmedia.es" <miriam.rico@enigmedia.es>
Subject: Re: [yocto] Yocto Kirkstone VPP compilation
Thread-Topic: [yocto] Yocto Kirkstone VPP compilation
Thread-Index: AQHaaKod/JTPIgFcmUetoRzOSc5CV7EcxbMA
Date: Mon, 26 Feb 2024 15:50:36 +0000
Message-ID: <1599BD52-3B26-4688-A82A-F1AC31369B67@arm.com>
References: <mGSp.1708948267221827405.tNvX@lists.yoctoproject.org>
In-Reply-To: <mGSp.1708948267221827405.tNvX@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI0PR08MB10632:EE_|AMS0EPF000001B2:EE_|DU0PR08MB9001:EE_
X-MS-Office365-Filtering-Correlation-Id: d03de2f2-8243-436f-8ded-08dc36e2b2f1
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 dIlKpJIX7OhBC/VKGjF2DwaEhf4pv6ruZe8CsIpWAOlm8KA+K0fPkobjCgR55+fXGUxHsrbk75MS6QVr/WtNqx24JeuzsqdzwDTiY4Ex1CiSccngsv0n9ywo8N0o3LL37ZMqd6KBf9DneJnB53wLNMZBn/R4gn457TN3JkEEkMB6UwOoNVDxNbUG8KOI/4jVFt9ICbb+obK70CElsQda2dZcZr/ufjMX21JAhy/1N7sBjJlsxpqA1iJImkMyeQEczBz/YHMT89dSZoqxS8Sl2nj7WSlyJPhrtfnFZevkUdrgfFOPp4WVAd14ZUPIH/QT5FtpgzT88H1QNJj6aKvMBJ9RWKBSVNEy/E0YE7O13P3KZrUEbxdP0DTBqOnTH8rdnXpsdrlR4o7n3a4fOwJ6gMr+3R7i5imL4bHQqa3KDbcfey17l6n/MKrV96M5Q1o7amjk0QxXb57/lHEKjZQtwwi6IE9WbCxcpxAa90JQMeHaTPf2u2HDoR1kGYRwDhXtjDdlDti4GYDBA43b9CEOJbUWYABVFCriV/fk0M6WWnzSnLQYaJ4BjM6jfHqurN7450ro1WO/mN8SobwEKqs/F4jy34XFrVDgSCt/RcfZiFbRtvNbEgbDUMAXBvEAUQ802u0l644lddgmB32SGA666B6wyXiUDySEVMr5zwA3BYclla/ejwuFwcELzLLDePpj+WAEIMSDktqAjSmLoPxOrg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(230273577357003)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <7AC449E27666A94A8010E7D7105EECE1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10632
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001B2.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	435880c6-1cc9-4435-9ec0-08dc36e2acc0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	K6FwEqcJ4ephzjcZIasu+jGBTgC8yzr/QUmTUokM2rhHzUCeNaL1tgSrPZfnOLtHC9WUEz3uLpUjybd7WVHTqIN4baagaUphsPCH+i3MwSOIVGbpsRAlSaNq/f0NEGuCV2l38kIWTYadg2lmlk4g1fW+ZKLiwZ4bAgibCFxiSYASLI6VjfEX0qbhLEIuiPgMqqAtYlmxU5TbKv9NzmdKa+0mCPMLwnc95ef0RElkg2CHcEy4uxJOKaZJo1GxBF2yOKSkR6/fICvV5OSKuLDF56yMLilS3cr5cx2IScY4JAUG7vgzsh/KIJ3n1jglRcCmdzoPYAup20QCW4be8Yo42dvoI2Ca/tCjozr4oBAycidqrWsVFme0yJ4o5DxD+in/yYp1wX2HGa0Y853+O+yKDFlh9dkvz01KPuy8ydT4uTgLjvspW8+itu2Ru/JIwcEgd+zmr9x54SNeX/R9vJe9h0YFfkX9hfaW0uk28t2OOn1RYIzsyOhXCZca9MhjqAHUkIvKqM+ANjgcbds7Q799RPlmzfvbUjM5F+9WV6AE/ZlBAGRIO1QPySlWmIIVckxonBLOK84TILqF7K02RH/aTH9Vxw0zSskixuXHCLOI7x17oKOZtTiCVUWc62ZsPitRjxaRKWWE8UQ8A4gGPfyMNg25VRBJm+DU8MOMpMdA4z2L6LtsRvK53K1f3NYEvrCsXBo9DNShPZ6AdWkfWJZTIt9zAKhQZIc9b/ILiwGiDUEc/shJZ7xItWpkBqyWKfoC
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(230273577357003)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 15:50:47.1826
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d03de2f2-8243-436f-8ded-08dc36e2b2f1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001B2.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9001
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 15:51:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62613

T24gMjYgRmViIDIwMjQsIGF0IDExOjUxLCBtaXJpYW0ucmljbyB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8bWlyaWFtLnJpY289ZW5pZ21lZGlhLmVzQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPiANCj4gSGksDQo+IA0KPiBJJ20gcmVsYXRpdmVseSBuZXcgdG8gWW9jdG8gYW5k
IEknbSB0cnlpbmcgdG8gY29tcGlsZSB0aGUgVlBQIGNvZGUuIEkgaGF2ZSBhIHJlY2lwZSB0aGF0
IGFsbCBpdCBkb2VzIGlzIGRvd25sb2FkIHRoZSBjb2RlIGZyb20gdGhlIG9mZmljaWFsIHJlcG9z
aXRvcnkgYW5kIHRyaWVzIHRvIGNvbXBpbGUgaXQgKGknbSB0cnlpbmcgdG8gY29tcGlsZSAyMy4x
MCBzdGFibGUgdmVyc2lvbikuIFRoaXMgY29kZSBoYXMgYSBsb3Qgb2YgZGVwZW5kZW5jaWVzLCBh
bW9uZyB0aGVtIGRwZGsuIFRoZSBjb2RlIGRvd25sb2FkcyB0aGVzZSBkZXBlbmRlbmNpZXMgaW4g
dGFyLmd6IGZpbGVzIGFuZCB0aGVuIGNvbXBpbGVzIHRoZSBjb2RlIGZvciBlYWNoIG9mIHRoZW0u
IEJ1dCB3aGVuIGl0IGdldHMgdG8gdGhlIGRwZGsgZGVwZW5kZW5jeSwgSSBnZXQgdGhlIHNhbWUg
ZXJyb3IgZXZlcnkgdGltZS4gSGVyZSBpcyB0aGUgZXJyb3I6DQo+IA0KPiAvaG9tZS91c2VyL1lv
Y3RvL2J1aWxkL3RtcC93b3JrL2NvcmUyLTY0LXBva3ktbGludXgvdnBwLXRlc3QvMjMuMTAtcjAv
Z2l0L2J1aWxkL2V4dGVybmFsL2Rvd25sb2Fkcy9tZXNvbi0wLjU1LjMudGFyLmd6DQo+IHwgVHJh
Y2ViYWNrIChtb3N0IHJlY2VudCBjYWxsIGxhc3QpOg0KPiB8ICAgRmlsZSAiL2hvbWUvZW5pZ21l
ZGlhL1lvY3RvL2J1aWxkL3RtcC93b3JrL2NvcmUyLTY0LXBva3ktbGludXgvdnBwLXRlc3QvMjMu
MTAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4vcGlwMyIsIGxpbmUgNywgaW4gPG1v
ZHVsZT4NCj4gfCAgICAgZnJvbSBwaXAuX2ludGVybmFsLmNsaS5tYWluIGltcG9ydCBtYWluDQo+
IHwgTW9kdWxlTm90Rm91bmRFcnJvcjogTm8gbW9kdWxlIG5hbWVkICdwaXAnDQo+IA0KPiBGcm9t
IHdoYXQgSSBoYXZlIGJlZW4gYWJsZSB0byBmaW5kIG91dCwgdGhlIGRwZGsgZGVwZW5kZW5jeSBn
ZW5lcmF0ZXMgYSBweXRob24gdmlydHVhbCBlbnZpcm9ubWVudCBhbmQgZXhlY3V0ZXMgYSBzZXJp
ZXMgb2YgY29tbWFuZHMuIEkgaGF2ZSB0cmllZCB0byBsYXVuY2ggdGhlc2VzIGNvbW1hbmRzIG1h
bnVhbGx5IGFuZCB0aGVyZSBoYXMgYmVlbiBubyBwcm9ibGVtLCBob3dldmVyLCB3aGVuIEkgdHJ5
IHRvIGxhdW5jaCB0aGUgcmVjaXBlIHZpYSBiaXRiYWtlLCBJIGdldCB0aGUgYWJvdmUgZXJyb3Iu
DQo+IA0KPiBIZXJlIGlzIHRoZSB2cHAuYmIgcmVjaXBlOg0KDQpSZXNwZWN0ZnVsbHksIHRoaXMg
cmVjaXBlIGlzIGNvbmZ1c2VkLg0KDQo+ICAgQVVUT1RPT0xTX1NDUklQVF9QQVRIID0gIiR7U30v
c3JjIg0KDQpUaGlzIGRpcmVjdG9yeSBkb2VzbuKAmXQgY29udGFpbiBhbnkgYXV0b3Rvb2xzIGZp
bGVzOiBodHRwczovL2dpdGh1Yi5jb20vRkRpby92cHAvdHJlZS9zdGFibGUvMjMxMC9zcmMNCg0K
PiAgIERFUEVORFMgKz0gIm9wZW5zc2wgbnVtYWN0bCBjdXJsLW5hdGl2ZSBjbWFrZS1uYXRpdmUg
bmFzbS1uYXRpdmUgcHl0aG9uMy1uYXRpdmUgcHl0aG9uMy1waXAgcHl0aG9uMy1wbHktbmF0aXZl
IG5pbmphLW5hdGl2ZSBtNC1uYXRpdmUgemxpYi1uYXRpdmUgYmludXRpbHMtbmF0aXZlIGVsZnV0
aWxzLW5hdGl2ZSBsaWJwY2FwIGxpYmJwZiBhcHQgc3lzdGVtZCBicGZ0cmFjZSB1dGlsLWxpbnV4
Ig0KDQo+ICAgaW5oZXJpdCBhdXRvdG9vbHMgcGtnY29uZmlnIHB5dGhvbjMtZGlyIHB5dGhvbjNu
YXRpdmUNCg0KVGhlcmXigJlzIGEg4oCcY29uZmlndXJl4oCdIHNjcmlwdCBidXQgdGhhdCBpcyBu
b3QgYXV0b3Rvb2xzLCBzbyBkb27igJl0IGluaGVyaXQgYXV0b3Rvb2xzLiBUaGF0IGNvbmZpZ3Vy
ZSBzY3JpcHQgc2VlbXMgdG8gYmUgYSB3cmFwcGVyIGFyb3VuZCBjYWxsaW5nIGNtYWtlLCB3aGlj
aCB3ZSBhbHJlYWR5IGhhdmUgYSBjbGFzcyBmb3IuDQoNCj4gICBkb19jb21waWxlICgpIHsNCj4g
ICAgICAgICBjZCAke1N9DQo+ICAgICAgICAgb2VfcnVubWFrZSBidWlsZC1yZWxlYXNlDQo+IH0N
Cg0KSSBzdWdnZXN0IGlnbm9yaW5nIHRoYXQgTWFrZWZpbGUgZW50aXJlbHksIGFzIGl04oCZcyB0
cnlpbmcgdG8gaW5zdGFsbCBkZXBlbmRlbmNpZXMgb24gdGhlIHN5c3RlbSB3aGljaCBpcyBlbnRp
cmVseSB0aGUgd3JvbmcgdGhpbmcgdG8gZG8gaW4gYSBtYW5hZ2VkIGJ1aWxkLiAgSeKAmWQgdHJ5
IHNlZWluZyBpZiBpdCBpcyBwb3NzaWJsZSB0byBqdXN0IGluaGVyaXQgY21ha2UgYW5kIHNldCBP
RUNNQUtFX1NPVVJDRVBBVEg9JHtTfS9zcmMuDQoNClJvc3M=

