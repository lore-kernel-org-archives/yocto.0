Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6CDC54E5D
	for <webhook@archiver.kernel.org>; Tue, 19 Mar 2024 10:48:09 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.67])
 by mx.groups.io with SMTP id smtpd.web10.12272.1710845281526469113
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Mar 2024 03:48:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=SyjUeew9;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=SyjUeew9;
 spf=pass (domain: arm.com, ip: 40.107.22.67, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=W21kAv3bP+V0dQfK1xKVzeQjrNVkgr/kir60Nei2atW3DsrovwdYo1ON4O9WJ4hkNtACqiIbB+38B4pRIjKdaK4YrPZr858L+OgUXs/G6NOtvRl9Xbb/vyMv+C5LwXQhyl4GRElFiILg5RO/RHfBhM0uxoyk1qlZ4ewV21kE8Y/u6JBNjxezhjAuYCTAG25/Zt6KLkZSt5Ikdw+S5cqVbEgR9Qcf/sp1x3YIBD554AsKHWNqqpQzx7Yi8f2IQy7zlUhD2CZX/9ag5wCFjh+L8RBqHs8aok93D9ECAh8jY4XnpRK9kRXkPqJN5m3WZdk/LXbjNM9+3MWZb7MMBj4/EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zr8utlTg8OtuyJVkHdmR2nAt65TPP+DwapSRulEK9NE=;
 b=fkxbvbKoojs1xkXmvoacUhw3vs84AhiNr8EiZtQRCi/z9yBOukyTJve0UYNQTujdc6Zt53Wj5e5bV6BYPFHQ7YR88oKz2sGNzn9mPgKEqB25VY/iRVnmpSKh0U/TmPfQy1t2tmQfkqm8g6c1BDKWziYWzafAdRcL80JvfZ4QN/tdrjZ8GYaSdP4uDAH1xni5lYb8xW8e0k2Iz9ZI1gGyjVX0KQroYLVnzFmctvMUfHP87X/qXgWrBTQWoDObq+F393WRaJ9Ba43No1EP8hHsE9H8QT9E6nsK5XbqcyvNfThvxoVYvTokHFq7clsGE4pmdM0362tKH6Hrrx23WeZ3uQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zr8utlTg8OtuyJVkHdmR2nAt65TPP+DwapSRulEK9NE=;
 b=SyjUeew9OX2TUkAtKYLeMJmviX4781gjLfIiLYmeIQmqMk/AQQqGNJlhECvJ7gQrYCmx7i3P2F0CVN1f4TRX1r4HR7T4TPG2mv8PMLPHBuRXtVgcDkAFl95gJsBb3dOOTpEG9jKTmEmb14yv7MbYPMtXapm+wNTnh93tT2JH6mA=
Received: from DUZPR01CA0148.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::15) by GV1PR08MB8715.eurprd08.prod.outlook.com
 (2603:10a6:150:85::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Tue, 19 Mar
 2024 10:47:55 +0000
Received: from DB5PEPF00014B98.eurprd02.prod.outlook.com
 (2603:10a6:10:4bd:cafe::3f) by DUZPR01CA0148.outlook.office365.com
 (2603:10a6:10:4bd::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.27 via Frontend
 Transport; Tue, 19 Mar 2024 10:47:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B98.mail.protection.outlook.com (10.167.8.165) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Tue, 19 Mar 2024 10:47:54 +0000
Received: ("Tessian outbound 9b7417e2a8eb:v300"); Tue, 19 Mar 2024 10:47:54 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: dfc05eec20bb6ca7
X-CR-MTA-TID: 64aa7808
Received: from c5dc97ebdb41.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 4995844D-4581-4B8E-89F5-3E423AE674C7.1;
	Tue, 19 Mar 2024 10:47:48 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c5dc97ebdb41.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 19 Mar 2024 10:47:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NjujYB3PUYRcjOhHQgwKpyTQ/QuaXevuaGF1bAYNpfEACTY6gm+gcqo0xk4LzPQzbE6hvCSFMmcCxAqBDepJvUff/nHcRtdwbAxoBCttKSXa1Dd+NPQa7d/KYhG0eRqwlW4pcuS2lWyVHkAqKvx1Nc53ilLj8ItXVShXLJsZmI2OJnkS/VIz1ucdnBM2NpVTUdZK4fgWMiG1/HHsnZFP0ynFD4Jj5XBdWKQlgwyp2E1QtRmAW2v+ajpqozRfBv5PxA/Fw5J9TMQ2wFWe84q6spNhxCvoNrp5BfmWSAlPpFtbXQ9MU2UzX4npS+MhgfxFv69ksVbUUAvftKe5JTVUtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zr8utlTg8OtuyJVkHdmR2nAt65TPP+DwapSRulEK9NE=;
 b=aQP9QePIC6vPtHtoiOZCGN9UzFOf7X7WmPBqMVAUj0YQjWj4Ck/2p34IKOl3iKzUrhX0WIy782a08WqaoM2TFdby0sp8K8xjnKwsksAtvcQjRJAhtNSOiGk8HI/Y4yNogmm0VrSs9KECfYfzV6jf5Y6arLPGExhrK1VH7bePjkCVVqcXDIsdcHibqZqw1HG+caYGvAGaAJae2uFaeZghso8bnb2ZGnbwOX9e0mNAZg+v5L6sxfzRBgJ1gdTeCRvvXY+TxPTFI4FIfgGmdNLXKlwf2ibbu/JGUSrAWbhZmaM5quWbwwqIUkZgjtaP0vuXp9bZEYSt5PkQ4m8cOhm/yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zr8utlTg8OtuyJVkHdmR2nAt65TPP+DwapSRulEK9NE=;
 b=SyjUeew9OX2TUkAtKYLeMJmviX4781gjLfIiLYmeIQmqMk/AQQqGNJlhECvJ7gQrYCmx7i3P2F0CVN1f4TRX1r4HR7T4TPG2mv8PMLPHBuRXtVgcDkAFl95gJsBb3dOOTpEG9jKTmEmb14yv7MbYPMtXapm+wNTnh93tT2JH6mA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PA4PR08MB6285.eurprd08.prod.outlook.com (2603:10a6:102:e0::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.22; Tue, 19 Mar
 2024 10:47:46 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 10:47:46 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"bratiranjan12@gmail.com" <bratiranjan12@gmail.com>
Subject: Re: [yocto] install-vs-shipped
Thread-Topic: [yocto] install-vs-shipped
Thread-Index: AQHaeV70Yyua3NjSREKRdBxpEW/mwLE+4vcA
Date: Tue, 19 Mar 2024 10:47:46 +0000
Message-ID: <E8642BEB-E07A-458D-BD67-B738A2C8321A@arm.com>
References: 
 <CALSmAY73Erq8=dHXVh2c-8Q78ztm_iAXwOBbM1HXmCcgDV0mwA@mail.gmail.com>
In-Reply-To: 
 <CALSmAY73Erq8=dHXVh2c-8Q78ztm_iAXwOBbM1HXmCcgDV0mwA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PA4PR08MB6285:EE_|DB5PEPF00014B98:EE_|GV1PR08MB8715:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Sa/chEo9tUgYKG/Jv0HJDYMekH8cjdVZb2HclDJyiQ9xXrokVP6BRBssNmuc53IJYDXEHrXM1nP8/eCxWeEDoQUbcAgfUu02c8MYObGVAd1WwL/x5WZDEUnYf//y+doRIX7ku+y8DGSFukW2y08cMviPOE75WHcOGssdwEJmYfvv6JUg7o4U1a9eM5b5mWTne2eBPS1MjwDAFtwc5f1BOk20ON39B8pjZIjQrFeamWGjNrJHD/KNlNfLLNxkEOo4v+zkmQkJWXyZFtLxuvNJhBJ74DFsmXL9J8443Hkl1tVYWFLD+Oc0v8+XceZml0fJTOaQ7lzB4RCWP1GCPgNNKZSF4nZKKnYraf2K0EL+zclQ6/GiL15i1t3IYBDZHvlq3HL5Ktu9CpIm1Wvn8Cwy4lJ1XFJJ7SuGd2J27aEfR4IDmS4ezIuDghQAklZCn0heyTyM+Xkd480LKL42Edva2ea3lLayylr1B1bYfyBvTbPY8uTpQWaJiRk1aAA1sWjv6YqkDpZz9nDoGGl7hEdnFCoWSXaKLcYaHhUvrqpHOVQJM6wD5WgT01tbcSW/2OPh9brIRqwakPwoekQk6OiHvJCBX4OXxe4HIZ2DNWiA0zx6R91QZyuYZRFmH85TFdLt
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1102;
Content-Type: text/plain; charset="utf-8"
Content-ID: <21D6EA15CFFC4147894AD81B061B9D9A@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB6285
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B98.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 504caf53-4475-47e4-de80-08dc4802084a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KGLqb47FoZ1CNINbx+bEZ1PKUHjV+3JVHWne4xmS8Y9IaEh2QuRn+dGvZHhsQP5l8n5fziKS0ueRnKfCZtSi4OZVhqWqwl5Xl1UtNWgf0ASx20L2pb+/Vq10n6d5Z9oWM00B0/OkDO8M1Xef8BeeDYJrGFTNkNaQ04ooV+ZrITeeeh+7dGobEdjEctphjnGbJa+SmH4gh4OR/WUoX9n5FFkPv3+YMldpG6rfg6GoBMxn+hwIbcJ1XjX0AfFvY8metWicXvPqPAxccuO9pqW3OojLHlbLi9s5gBiuVq76xxwRKiYrR0vTYioySXCAiqZAPQKRlu5Fy26b5S+o/LHTorcKnRcR1Y9jHLL9pOjmN72CN06mcsVb3OFGSEUz3B3E2JPMUMzdLB43Jm+t5n9DE/WsP7B45XH9TGWtSTzbu1CptOIgXdRW1HXKVFV1S9BFzEpfFIDwZzoeg0wtgDRNrenkryBiSml99iraYjy8fbRbITWZVnVMaRcKKebHaNlsh9hKyrLc8qRL35QMUr9EaauOrdyp2dx+CIpA4q009ijb6FGe5Jm7UOfJPJeSMRMByG2AXDHVBGTs5tV/f44QbSwFXbwORPO+bUKzZcPZUE54rIdXmtCKk7v21UQ6ZdJxtEIbw9X5RUqYUlaLEu9X/lPHFTrr6Bodc04PlPae81A9nFlJTsJCO9nBBYMk61Ae7d4Jf5rML6r56TgvZUcy+g==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(376005)(1800799015)(82310400014)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 10:47:54.6026
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 504caf53-4475-47e4-de80-08dc4802084a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B98.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8715
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 10:48:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62793

T24gMTggTWFyIDIwMjQsIGF0IDE3OjE3LCBCcmF0aXJhbmphbiBBY2hhcnlhIHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIDxicmF0aXJhbmphbjEyPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnPiB3cm90ZToNCj4gRVJST1I6IGVhc3lsb2dnaW5ncHAtMS4wK2dpdEFVVE9JTkMrZjFm
NmQ5OGM0Yy1yMCBkb19wYWNrYWdlOiBRQSBJc3N1ZTogZWFzeWxvZ2dpbmdwcDogRmlsZXMvZGly
ZWN0b3JpZXMgd2VyZSBpbnN0YWxsZWQgYnV0IG5vdCBzaGlwcGVkIGluIGFueSBwYWNrYWdlOg0K
PiAgIC91c3IvbGliDQo+ICAgL3Vzci9saWIvbGliZWFzeWxvZ2dpbmdwcC5hDQoNClRoZSBkZWZh
dWx0IHBhY2thZ2luZyBydWxlcyBwdXQgJGxpYmRpci8qLmEgaW50byAkUE4tc3RhdGljZGV2LCBz
byB5b3Ugc2hvdWxkIGhhdmUgbm90aGluZyBsZWZ0IHRvIGRvLg0KDQpCdXQgdGhhdCByZWxpZXMg
b24gdGhlIGZpbGVzIGJlaW5nIHB1dCBpbiB0aGUgY29ycmVjdCBsb2NhdGlvbiBpbiB0aGUgZmly
c3QgcGxhY2UuICBJIHN1c3BlY3QgdGhpcyBwYWNrYWdl4oCZcyBDTWFrZUxpc3RzLnR4dCBpcyBi
cm9rZW4sIHJ1biB0aGUgZm9sbG93aW5nIGNvbW1hbmQ6DQoNCiQgYml0YmFrZS1nZXR2YXIgLXIg
ZWFzeWxvZ2dpbmdwcCBsaWJkaXINCg0KSSBleHBlY3QgdGhlIHZhbHVlIGl0IHByaW50cyBpcyBf
bm90XyAvdXNyL2xpYiwgd2hpY2ggaXMgd2hlcmUgZWFzeWxvZ2dpbmdwcCBpcyBpbnN0YWxsaW5n
IGZpbGVzLiAgVGhpcyBpcyBiZWNhdXNlIHRoZSBDTWFrZUxpc3RzLnR4dCBoYXJkY29kZXMgdGhl
IGxvY2F0aW9uIG9mIHRoZSBsaWJyYXJ5LCBhbmQgaXTigJlzIHdyb25nLg0KDQpUaGVyZeKAmXMg
YW4gdXBzdHJlYW0gZml4IHN1Ym1pdHRlZCBhdCBodHRwczovL2dpdGh1Yi5jb20vYWJ1bXEvZWFz
eWxvZ2dpbmdwcC9wdWxsLzgxNSBidXQgdXBzdHJlYW0gYXBwZWFycyB0byBoYXZlIGlnbm9yZWQg
aXQgZm9yIHR3byB5ZWFycy4gIEnigJlkIHRyeSBncmFiYmluZyBodHRwczovL2dpdGh1Yi5jb20v
YWJ1bXEvZWFzeWxvZ2dpbmdwcC9wdWxsLzgxNS9jb21taXRzL2FmZTAxMDQzNWQwNTExMzYzZDAy
NTViM2FkM2FmYmQ0MjMyNTFlNDQgYW5kIGFwcGx5aW5nIHRoYXQgcGF0Y2guDQoNClJvc3M=

