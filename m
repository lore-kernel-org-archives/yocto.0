Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C323EC54E5D
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 18:21:51 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.87])
 by mx.groups.io with SMTP id smtpd.web10.131.1710440506558227164
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Mar 2024 11:21:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=44ydJYLR;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=44ydJYLR;
 spf=pass (domain: arm.com, ip: 40.107.6.87, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=SK59/vqSzLYiL4IfpGFTYmAidgGv9XGryErN04ZvW1AQwxRrJ92pRbHd8k27yS671Ce67bWKH+rJBNpPq1Tn76+tFOIO2p72Bujvwu2pdQ0VNzaINf9mHLFR4fSP1xxS0zuVMXIbiu7nT1bpwy578EAel//p6FqUzVbiaJjlTX/45raOtMw4uxzLw86/9PQTSTLWpkfrongkz13QAxFDWZI/EJhakE/YDh85mpHCPet1PlMm0ZXsduCFq3OtKTIy+I3r1uQLuGveYabl34N1UpEtRwrOaN6zxHJNHF+msotaILQUG9wshy+yqB+cZ/Rvg3qcXNc4tZvpjOgYLnNxVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PNndEX0gzmMtFGygWlenseovgHShwV6F9Q8wv15CtsM=;
 b=QKSZ6nVv2zz/O2yr5Cxww+5x0L+T7P765Rl6QpeldjrP9C0psvJd90bEItWunOhodk+LnTdxde5RIAjoFg71jz09HUS8AsJ9Ai3+SGrR6MisFIbic5ynHAeHF0ed5eoLPu0ZdFUQgKZZZFOMobpaLJYan+B557xCK6PUtg7cjk/22akSIt8A3yB5KPPvdnWnN6IgNq7kKjdHily6qEqANMOdXPZX10GxaWIfvrGQReE8GEcHGez21xQJib9kZkzHd46d2kcYfu+SCxT1et4oxvaSw5t63kYTfDp+cPRaQyqYHpA1Lqlip7/4+M7awELwxbzQTV+o0MrUWGyr02/4WA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PNndEX0gzmMtFGygWlenseovgHShwV6F9Q8wv15CtsM=;
 b=44ydJYLRXdD0dKX/EyUqfMRImOQw2HWLBbjik3o4dF2/0ja1jjMjfQ4/BlAWpx8S7OaXSKsC/BvErmm1mbEwO1+bfIH0iJhyM5QbXYgZvvAyK9BGFWqWzkrULCZLq/DAyjRFqGtSQpwymnH/aYd7vH3quD7hyDYuDpC+FUfcCys=
Received: from DUZP191CA0001.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:4f9::24)
 by DBBPR08MB6204.eurprd08.prod.outlook.com (2603:10a6:10:1f5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Thu, 14 Mar
 2024 18:21:42 +0000
Received: from DB5PEPF00014B8E.eurprd02.prod.outlook.com
 (2603:10a6:10:4f9:cafe::e0) by DUZP191CA0001.outlook.office365.com
 (2603:10a6:10:4f9::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.20 via Frontend
 Transport; Thu, 14 Mar 2024 18:21:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B8E.mail.protection.outlook.com (10.167.8.202) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.12 via Frontend Transport; Thu, 14 Mar 2024 18:21:42 +0000
Received: ("Tessian outbound 5fdc1e2b2c35:v276"); Thu, 14 Mar 2024 18:21:42 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c69714813af6ae01
X-CR-MTA-TID: 64aa7808
Received: from d45888354e0b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id D17DD2C1-4BA7-4B19-BF98-915AD50014A6.1;
	Thu, 14 Mar 2024 18:16:28 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d45888354e0b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 14 Mar 2024 18:16:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LiDT7ibsqCeo1s1MSjSHTD8lfMMPa4TnghdtRdvU3RXCZxp/9GJ+lFeW9KQxm2SPhe/rFuq6iKgITOSB7xXTKj2vI1AzxrOM3+KvCGvWWRa6nQA3D3NYn9znVuXGfnmxz39BktjImfcRwXmAC20KvjCxxEp7pKNaA2wiRAo2RZZvln2niKTpboI20tUtE0rrMqfdSQIolWLALuPp0XKXQBW6qXh89TTuDmKxqVONok1ahdyq4UdG8xJGAqIJjviflRF0ixsBUzNwjYNOloIRufw0fSgKj8ODs/KCYaPVyBGKrmeb6tfcTtJgF+0/jfSAfRUXGGNxPuDVZZyJ3hpksA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PNndEX0gzmMtFGygWlenseovgHShwV6F9Q8wv15CtsM=;
 b=FLIMXnFaL5nUKQmoNnPJJV89VBeBO8xQbNT/x1AUe4OcW/PZqX0nm7ODcLZi8WeTTxbi+VFbD4t93iTdfdRD5tFtHA7c+dk7v8XXlOWcHDuvLHObU/n83WGsQL7CxvK3Kxha4gLJ9NKzK3EogTRLlV/gOOw/6Vjhhnu5myrp+GGhhxd8EiVHoJ4/PJuSZqm30V0fcIrM92UFNRKKYzuvacqcfG0NGNBGdYx6C8E5hTo0dvhli8akrzb9aqWOlw02tfMt9oPNpBR9FmIlZuVVDKe2lw+JDDbRfhTo4uxtYURQydcTnkSlvNk/5nPzdM9uGUtsmduUdO83WG8AWU+A2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PNndEX0gzmMtFGygWlenseovgHShwV6F9Q8wv15CtsM=;
 b=44ydJYLRXdD0dKX/EyUqfMRImOQw2HWLBbjik3o4dF2/0ja1jjMjfQ4/BlAWpx8S7OaXSKsC/BvErmm1mbEwO1+bfIH0iJhyM5QbXYgZvvAyK9BGFWqWzkrULCZLq/DAyjRFqGtSQpwymnH/aYd7vH3quD7hyDYuDpC+FUfcCys=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB8827.eurprd08.prod.outlook.com (2603:10a6:20b:5ba::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.39; Thu, 14 Mar
 2024 18:16:26 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7386.020; Thu, 14 Mar 2024
 18:16:26 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"ashujoshi35@gmail.com" <ashujoshi35@gmail.com>
Subject: Re: [yocto] No module named pkgconfig
Thread-Topic: [yocto] No module named pkgconfig
Thread-Index: AQHadh2okc2nrOjyi0eA+JzyJ3lgp7E3iyuA
Date: Thu, 14 Mar 2024 18:16:26 +0000
Message-ID: <1AFA0CDE-F51C-4A2A-BD90-3E186C243D4C@arm.com>
References: <Iba3.1710427257769217823.m2lU@lists.yoctoproject.org>
In-Reply-To: <Iba3.1710427257769217823.m2lU@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB8827:EE_|DB5PEPF00014B8E:EE_|DBBPR08MB6204:EE_
X-MS-Office365-Filtering-Correlation-Id: 73e8910d-41c0-4f19-6e04-08dc4453992c
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 cGnxZeUWESOFJMauzcuu3Pt+OSmZg3O6+LEahWiTShrHeIdeZClBbEjoKI6lB6R3QTSP83ZRiDzIEYjg0HfA/jYhXvRqbB5m2FWlu+hkKMWt/PyfdV5MM8ObDunhPoijUD9yJjTJnYEkrjJsTrl7+R352eveV2HjJKfiSN2sotCYVinyLxMWoM/nQj4MNkmfWQMeMxVPZQKQtLzMhGqKmGe0U2jEok1jQIqBwhY1h1fKYmiSwACAueff3mx7q8yKeXhTA74JYp/78tLODS+mc3KE8x1Oex5upgY2CfU3Sl6kcu7bNxYHXKWGWslZCLjD3m+2eXRpzvuFDBQSxOMelfyPdqP33LylmVDOgIetSUUIgS734nxfCSGjeKciXvBfrX1AM2zO13RYhPvJv9MNyHWuu6wP2pNUfcIC+guYdqdHAgsLDfhgV0acbowkM/N26bMBGGoou4UcYJAvJsCIWPaqV3hIEKN0hYB4cBKfbHSkXJ7lktOh/EKjlRVD/dZiBcyvczGLqpOst0hDHTsa8+aZQrbT5uNfuwSQXeqEkTNmpCJhT1B5PxyGr1ALZTCDRDnwATpi7Ni1/3Y4X+4stMl8BVAEHiZB8AHhEOfuQ1PIbHml4h/AZ9DPRVH9wQWBMWdlFsRy58bBrIAxDFx2h9d3Xf0DwIQgRi8gPD88L9UiVQ4k13Gxcw4q2+UnBoRqFCAVR5qN+RygxDI9UabxO0XMCWHOwehYwKGHhAdNrGA=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D58E82FFE3877645B7B46DD5585F529F@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8827
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B8E.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	071228e0-de5c-4473-f588-08dc4452dcd3
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	blWEIswJ/JpADENfouoz+rNV8paGCQ7UaLIy1djg5EFHmvmbUDDdHwJ5DD6eBHcD8UcIEVC+rrhWZMLTVew5J169h/SRwAoa9G6pkBbRvSs95Pc6ZdaI/vcA07mzmRro3tE9WKC3AkgDdelPDfk35pNAJAJQd97LcteG0s2wtYMF/erABHynfeD4OZoJK/XKIy70/QMHVrcjIbF2S6W083uERfZsYrOTDpdiqfkEUIrDdL7bIJezR3fUs+I43V2qYjch8wfR3MS5+S43ZgkKTfg6s3cJbZVhm9LQJhdvPAFpaPaO3qL/zc1DWrWrI+LM865kz3Rc8TbYhi7pECDnpOZvKXwq9ZH7gKGlNMOw6PvIXW9EZ1Ad2iPj7JAqAr1e9w/eBPtaQkhVkeRepoUS5GJV1jTxctl8J0oJthTqKmerDHhUs3ssC1FAtwIBg7+PtVMehq/azYCR0kmF6LyUXJO5dFkvMAzI90I2/k36cI9JwhL3dM7fGA0Q/5A7BnuBF2CB9sa+VqjbJEn1BLKKCp9ZuiEWkijQ3UZSG9kUwSI+a/k8TWNmjyK12ZZ0eAko9Veq5x/PIZBCfJOG6rEAd2xbmIu8cbpD1bpv42V1/6cK0Ov7zINd6rbtaHX3OgCD8KSHrPFhOFbEpXiKqkoy+/fOLQZ9xiqMi8eoO38LUEpwkqBQOgZfKd0wkITjZgwphZ+roqIKH6yFiVFCGHAowzNgBPi8G1HxdHg2F2kbR5Ytd5aOgAdRHdUbnyGypreA
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(1800799015)(376005)(36860700004)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 18:21:42.2567
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 73e8910d-41c0-4f19-6e04-08dc4453992c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B8E.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6204
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 18:21:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62763

T24gMTQgTWFyIDIwMjQsIGF0IDE0OjQwLCBhc2h1am9zaGkzNSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8YXNodWpvc2hpMzU9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPiANCj4gVHJ5aW5nIHRvIGluc3RhbGwgd2lyZXBhc19nYXRld2F5IHBhY2thZ2UgZnJv
bSBweXBpLiBJdCBmYWlscyB3aXRoIGVycm9yIG5vIG1vZHVsZSBuYW1lZCBwa2djb25maWcuIEJl
bG93IGlzIHRoZSBlcnJvcg0KPiANCj4gRmlsZSAic2V0dXAucHkiLCBsaW5lIDE3LCBpbiA8bW9k
dWxlPg0KPiB8ICAgICBpbXBvcnQgcGtnY29uZmlnDQo+IHwgTW9kdWxlTm90Rm91bmRFcnJvcjog
Tm8gbW9kdWxlIG5hbWVkICdwa2djb25maWcnDQo+IA0KPiBTVU1NQVJZID0gIlJlY2lwZSB0byBp
bnN0YWxsIFB5dGhvbiBQaVAgUGFja2FnZSB3aXJlcGFzX2dhdGV3YXkiDQo+IExJQ0VOU0UgPSAi
QXBhY2hlLTIuMCINCj4gTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vTElDRU5TRTttZDU9Y2I2
YmIxN2IwZDBjY2ExODgzMzkwNzQyMDdlOWY0ZDgiDQo+ICAgaW5oZXJpdCBweXBpIHNldHVwdG9v
bHMzDQo+IFBZUElfUEFDS0FHRSA9ICJ3aXJlcGFzX2dhdGV3YXkiDQo+IFNSQ19VUklbbWQ1c3Vt
XSA9ICI5NDFhNDQwNzUxMzQ0NWM2NGYxNmI1N2ExNDc0ZmM0MyINCj4gDQo+IEl0IGlzIG5vdCBh
YmxlIHRvIGxvY2F0ZSBwa2djb25maWcuIHRyaWVkIHRvIGV4cG9ydCB0aGUgcGF0aCBhcyBmb3Vu
ZCBpbiBvbmUgb2YgdGhlIGxpbmsgdXNpbmcgYmVsb3csIGV2ZW4gdGhhdCBkaWRuJ3Qgd29ya2Vk
IG91dDoNCj4gZXhwb3J0IFBLR19DT05GSUcgPSAiJHtTVEFHSU5HX0JJTkRJUl9OQVRJVkV9L3Br
Zy1jb25maWciDQo+IA0KPiBBbnkgaWRlYSBob3cgdG8gbWFrZSBwa2djb25maWcgYXZhaWxhYmxl
IHRvIHRoZSBzZXR1cC5weSBmaWxlDQo+ICANCg0KVGhhdOKAmXMgcHl0aG9uIGNvZGUgdHJ5aW5n
IHRvIGltcG9ydCBwa2djb25maWcsIHNvIHlvdeKAmWxsIG5lZWQgdG8gREVQRU5EIG9uIHB5dGhv
bjMtcGtnY29uZmlnICh0aGVyZeKAmXMgYSByZWNpcGUgZm9yIHRoYXQgaW4gbWV0YS1weXRob24p
Lg0KDQpSb3Nz

