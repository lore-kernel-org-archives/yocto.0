Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4101EB64DD
	for <webhook@archiver.kernel.org>; Fri, 11 Aug 2023 07:47:51 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.57])
 by mx.groups.io with SMTP id smtpd.web11.38024.1691740061306767319
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Aug 2023 00:47:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=PFhL6Jbp;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=PFhL6Jbp;
 spf=pass (domain: arm.com, ip: 40.107.22.57, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1mRk5gEkVFkjWy9ksOSkwVnGXkpyjBkn/uzChxEVfZE=;
 b=PFhL6Jbp1lX9lbF4pqMq7RFhfXfgKGXG0xPyeRyrNM/avyNP8KJ45A51soAXk92/eA7VUzphP4Of1imu2+vLpXhj+etRfOLQ1EMeARnZCAUmqkt0EHNzBE3yZsLyQKmnzhnTpomwHegdAsmsbHVTV7JpcZSUGK/epAxSdbr9p2A=
Received: from AS4P251CA0003.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:5d2::9)
 by AS8PR08MB7837.eurprd08.prod.outlook.com (2603:10a6:20b:528::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.20; Fri, 11 Aug
 2023 07:47:36 +0000
Received: from AM7EUR03FT028.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:5d2:cafe::b5) by AS4P251CA0003.outlook.office365.com
 (2603:10a6:20b:5d2::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.31 via Frontend
 Transport; Fri, 11 Aug 2023 07:47:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT028.mail.protection.outlook.com (100.127.140.192) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.44 via Frontend Transport; Fri, 11 Aug 2023 07:47:36 +0000
Received: ("Tessian outbound 1eb4e931b055:v175"); Fri, 11 Aug 2023 07:47:36 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 831040fb87e5226a
X-CR-MTA-TID: 64aa7808
Received: from 4f5ebb4f0818.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id FAA46327-6E2C-432C-A030-9C14FF05701F.1;
	Fri, 11 Aug 2023 07:47:30 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4f5ebb4f0818.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 11 Aug 2023 07:47:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sr3cFtSfrNqX1KkuAvNNUkf+RTQrzj+smj2zXE38hWD7rbAmgsXvjemjj+vLESzz3vx8LUp/CZPte4zFJFzmMup6NZhlHftmbULlMg9gTWhG5dyA++QwfdkFzTekhuLJwEC7DslwadslJnN9+sh4OdkonzxZbNucqUh2ZL+EQUjygrV6ZFnO2Ua7xfyN4X3SqfxUtg6q+BM421J+HkwD+Jp/2nbyxumvFtlOc5FKKtVajIJ3pdUEIJN58Z+gPgggKrwmEnImwxSgJmxK32L5cuDZmBauw3qJ7P70lqrkzHs5rKLqNvrPW2hlkKw+RbIeQsVz2EEoSvtCegZr+zopZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1mRk5gEkVFkjWy9ksOSkwVnGXkpyjBkn/uzChxEVfZE=;
 b=iGz0qBiDZI2oWpM5xkNyvsvXVs15IqjVzFr09L6GwVG0MjVOzHNjw5PeUDWGTDqJ5HGDDBdIsKFVzCkXfUkmGbxLAB0AE/ABaapbmUZBa2MvphfcZeWkko4hcsKzne5ni8LPNN8aa03r2QTRKs9U6PT2CgeGEd/luc6AiGZdyKYymgRrFEqifaN4sgpa+9j5r7SfOe69VZRQ8TzQO5qSwprnj95MzU44wga66JZ9mfzK9gcQMREiXP2JvpbV3fHk+xRFNMxT/VYl/dqup/xARiYp18ECjZjOiS+CqKqYnShkaiIeNKzulDPW4grJq4dOJLftbNpIDS7jvM8MVqZj+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1mRk5gEkVFkjWy9ksOSkwVnGXkpyjBkn/uzChxEVfZE=;
 b=PFhL6Jbp1lX9lbF4pqMq7RFhfXfgKGXG0xPyeRyrNM/avyNP8KJ45A51soAXk92/eA7VUzphP4Of1imu2+vLpXhj+etRfOLQ1EMeARnZCAUmqkt0EHNzBE3yZsLyQKmnzhnTpomwHegdAsmsbHVTV7JpcZSUGK/epAxSdbr9p2A=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB10184.eurprd08.prod.outlook.com (2603:10a6:102:364::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Fri, 11 Aug
 2023 07:47:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727%7]) with mapi id 15.20.6652.029; Fri, 11 Aug 2023
 07:47:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "tyrocjl@gmail.com" <tyrocjl@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to build a specified recipe every bitbake
Thread-Topic: [yocto] How to build a specified recipe every bitbake
Thread-Index: AQHZy/p/UyDV8MMB/UmJUZ6r22JbsK/kuCSA
Date: Fri, 11 Aug 2023 07:47:28 +0000
Message-ID: <256B8647-FC14-49FD-87A5-661B60162FF8@arm.com>
References: 
 <CANzPQ-D2W=G1nUbnaH67iiz7ZNyEHXFZxepsH+8uJQX0Nsv17w@mail.gmail.com>
In-Reply-To: 
 <CANzPQ-D2W=G1nUbnaH67iiz7ZNyEHXFZxepsH+8uJQX0Nsv17w@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB10184:EE_|AM7EUR03FT028:EE_|AS8PR08MB7837:EE_
X-MS-Office365-Filtering-Correlation-Id: 061f3639-f602-4742-aaa1-08db9a3f3ac9
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /YdVpEWqY2X1tOEAGctwQAizPVjlBYZ5Iof0OyBHTzcfLZxDSaWHRJzFQW+Xy1APHxVL7V7M3v2zpQcggaqtEZYKGK1xRECZ67wV7FbelseIhk0ZPj5HwnzMT8Pdi4s2zOxsGyg7ckKdyrxeyVSfU/Rp/WnQg8tslVnK5dWDhQU03g2zdam0/r+fmMzTXBaqbt2fBoWKRhoc57WasYh/VDpi5iLvl8ezMYfD0OJgVG3BFDZBd1lVrfBGq4Sz4bVQdSKS7/s+vRP/aGj4t47Tf1rARFF8u/Vea6xbviX6aYnOQxsUyiXHz8Qxpirl9l/gYHXJV8H2W6ys6FadSJIghmeJQmMOZtnUu83JPrFrKZNkulXkuGz9T/kq2Iwm/BuRZpDaNazXuL4iWX+4PGnA68XGuCdIYrgmUJRRPjRf8iEzWXRotAq88DgwTKLk3odpCo9ZvGVM1FxOHcNOArd1ktjJcEcWknLhgbfcRFB2oMYHLHhVwGLbK3uW1pcp4evWCL0nl2ZqwatWg8wPo812STNy/yIuyxKXF9yhj23NZfuJ79UxIKJX9Rro6wJLgORugdDG96aNyEJjMAsfbl+8mHym/KEgmT/M80/P5Ku+PuLGXiAtQD3yo/cx6A6tFhSJY+S5rN6RvvYuYoJ1gaN7iA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(39860400002)(346002)(396003)(366004)(136003)(376002)(1800799006)(186006)(451199021)(36756003)(66446008)(122000001)(478600001)(6916009)(66946007)(66476007)(66556008)(64756008)(76116006)(5660300002)(91956017)(71200400001)(38100700002)(6486002)(4326008)(38070700005)(316002)(6512007)(86362001)(8676002)(8936002)(41300700001)(53546011)(6506007)(26005)(33656002)(4744005)(2616005)(2906002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <60E48CC1AFFF724FB28ACB231174D6F8@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB10184
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9f2b0b4c-3673-49ee-83f8-08db9a3f35f0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	d9o0i2NxJ63vubTGuJ8dlr3TlZQUkEt5eaFcrwJF2Y+t6qUnRJ28EuiSJQ5SvLGfbKkfm0A9SgfWY7wiXiND6ypGQ5iMYgHz14EtCWi9JUPWkXDHVBmZWNeNyxPGGnOalp/7vr0wMbttTZMMjBiFCXXtUc1nXQpCjwZS/1iOlNjYpa8twM1KbLK/nTWsEVU9Eu5CXmwAO3Ef9rs23EbfMJpr03jDlM3ka4GGk1aMqqWsOzqr40lI/fpXCj00K4FTOVvIewAMF8k1jzDKxEH6K/vmk4XD45gl5ckjcScMPY+aXPKbVVqthe6pG1aNU9M8jG48YvU1w5s0nJpK2op4G7rGMXt8UOBuAl2PtgeN+xUPNQRs8+RXbcnCZTQEfDabJfV79A0CYENKzMnNewVDc5+XciKN+QMt2o1evTWqKhzGH9qRRjx1qP8XZejRE147VdJBDyZ0db0IcCY43dKvdJGDPHtr4g/B46gd+iz41R5ICZUOOuZHYS1cWqoG/UVETl9CycSIImxBeKRjyVGbmT3HUrmvPNiEFJmL615OBi3mzMdSeNca4vU4Ss10dFlVXLnOsPotnZsCXJxNr1eu0STzrFfG3mfumHj3z+P52P9YHp6FqI3e0QT+IloR1ATm6G/bXAMWhjmCRiKccnwnxafsAbuIFaeMW/c0fAaaGcbjlfbI1VKLnIOiMa+ged+hc88VqRuL+/AugpYYkyo+ZBl8yqEZOI4XK8V4goi9uW9DKkVyw2/K+0/Z1Qr/MgKS
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(39860400002)(396003)(136003)(346002)(82310400008)(186006)(1800799006)(451199021)(46966006)(36840700001)(40470700004)(6512007)(478600001)(47076005)(6506007)(53546011)(26005)(336012)(2616005)(6486002)(2906002)(5660300002)(70586007)(70206006)(4326008)(8936002)(6862004)(8676002)(316002)(41300700001)(33656002)(36756003)(86362001)(40480700001)(40460700003)(36860700001)(356005)(82740400003)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2023 07:47:36.2344
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 061f3639-f602-4742-aaa1-08db9a3f3ac9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT028.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB7837
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 07:47:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60779

T24gMTEgQXVnIDIwMjMsIGF0IDAzOjIxLCBKaWxpYW5nIENhaSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8dHlyb2NqbD1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6
DQo+IA0KPiBJIGhhdmUgYSByZWNpcGUgYWJjXzEuMC5iYi4gSXQgZ2VuZXJhdGVzIGEgdHh0IGNv
bnRhaW5zIGFsbCBsYXllcnMgZ2l0IGNvbW1pdA0KPiBJRCBpbnRvIC9ldGMuIEl0IGlzIGluc3Rh
bGxlZCBpbnRvIGltYWdlIGJ5IElNQUdFX0lOU1RBTEw6YXBwZW5kID0gIiBhYmMiLg0KDQpJZiB5
b3Ugd2FudCBhIGxpc3Qgb2YgbGF5ZXJzL1NIQXMgaW4geW91ciBpbWFnZSwgbG9vayBhdCB0aGUg
aW1hZ2UtYnVpbGRpbmZvIGNsYXNzLg0KDQo+IEkgd2FudCB0byByZWJ1aWxkIGFiYyBldmVyeSB0
aW1lIEkgZXhlY3V0ZSBiaXRiYWtlIDxpbWFnZT4uIFNvIEkgc2V0IG5vc3RhbXAgdG8NCj4gMSBp
biBhYmNfMS4wLmJiLg0KPiANCj4gSXQgc2VydmVkIG15IHB1cnBvc2UuIFdoZW4gSSBleGVjdXRl
IGJpdGJha2UgY29yZS1pbWFnZS1taW5pbWFsLCBhYmNfMS4wIGlzDQo+IGFsd2F5cyByZWJ1aWx0
LCBldmVuIGlmIGl0IHdhcyBidWlsdCBsYXN0IHRpbWUgd2l0aG91dCBhbnkgY2hhbmdlcy4NCj4g
DQo+IEJ1dCwgaXQgbGVhZHMgdG8gcmUtZG9fcm9vdGZzIGV2ZXJ5IHRpbWUsIGFuZCByZXBhY2th
Z2VzIGltYWdlcyBpbiBmb3JtYXRzIHN1Y2gNCj4gYXMgdGFyLg0KPiANCj4gSSBleHBlY3QgdGhh
dCB3aGVuIHRoZSB0eHQgZ2VuZXJhdGVkIGJ5IGFiY18xLjAgaGFzIG5vdCBjaGFuZ2VkLCBkb19y
b290ZnMNCj4gc2hvdWxkIG5vdCBiZSByZS1leGVjdXRlZCwgd2hhdCBzaG91bGQgSSBkbz8NCg0K
T2YgY291cnNlIGl0IGRvZXM6IHlvdSBleHBsaWNpdGx5IHRvbGQgYml0YmFrZSB0aGF0IHRoaXMg
cmVjaXBlIF9tdXN0XyBiZSByZS1ydW4gYW5kIGRvZXNu4oCZdCBoYXZlIHN0YW1wcyB0byBpZGVu
dGlmeSBpZiBpdCBjYW4gYmUgcmV1c2VkIG9yIG5vdC4gIFVzZSB0aGUgaW1hZ2UtYnVpbGRpbmZv
IGNsYXNzLg0KDQpSb3Nz

