Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D518C47DAF
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 11:08:40 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.77])
 by mx.groups.io with SMTP id smtpd.web10.71082.1705921717826346847
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 03:08:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=sTz6nLZ8;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=sTz6nLZ8;
 spf=pass (domain: arm.com, ip: 40.107.7.77, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=PGb0JEZqTfuqAYo3BGXXglDB+mbrLEKEbWFXQG2JPCT2g76kb4aMitBjl/piQlcU81kUFKQrVnuyhMSLOpCAH9THgYEdywW0/oKLKy8ynDv66f50G7OMAWwMYxOT4yUS0vTLLdSnbR1bevf/0h627uyx2Z5htmD1w/8jTx1N7+KiM08a/IV7Vmilr5EVhb0ltLmUX2KK5LobyBAnYRaradDIw/EFv7XlhoRQ4unHr0ElxXf61A9tQ9KN+SKwAHyrRV5gEqZqqxabMQ6DsPXfbt16hNxDAy0ka5hTJJejLRr4WYBcjWTE+nl0uEhbLyviEU43juHkER4JXfgLMED2Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9IntbRPtsNSETD9+FuAsMdrdoiLF3CyhBz6ySQelO+s=;
 b=Z0W/fUKae5hfQSS/gkunvTzpoR+ymoSeNVWRA4XDV7dM7i+MMd0kpah3I4LAOx7dnDS7Yi/td0bGOYfm42kkoEkpGcQdDlQe4yIRlejvaGsfgkAR+6OQgr3rR3tG4XCKbsTgYVK4ZN68fNh/U6xmmHmKbpNRBgD60+mq3WzWJMjbUZRjOmoAKnQUlpy0lS0y08R7lm0dwCXtVZqQnXP/lDjoEUWaHJx/VAyrTxp8Z84i8ky9h4C6qaU2g2nSXxF4aai/l4HKN2PQsn99EeNsWfWTkWYCQta8WO2UGjfarpkyVfK4nDvRA9U36AK6M3RVe4CrktyDEP3RA/HOR5kV1Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9IntbRPtsNSETD9+FuAsMdrdoiLF3CyhBz6ySQelO+s=;
 b=sTz6nLZ80wCgTtfyujgqqgtTuLTIOnfbZR2qMKLqwko13zn09eV4luIBL8MzDZBz+EkRM4t6yXX0jiVzXPeHHfvjr+DwdO4Ysk/AjgqONmitSwJn1uteS/elg1Jp7Dm+Rhg1C9YKepv8UU/hq3gPhLc/I/Jiq+DoPgXUIvoWKZY=
Received: from DU6P191CA0042.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:53f::18)
 by PAWPR08MB9520.eurprd08.prod.outlook.com (2603:10a6:102:2f2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.30; Mon, 22 Jan
 2024 11:08:31 +0000
Received: from DU6PEPF0000B61E.eurprd02.prod.outlook.com
 (2603:10a6:10:53f:cafe::11) by DU6P191CA0042.outlook.office365.com
 (2603:10a6:10:53f::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.32 via Frontend
 Transport; Mon, 22 Jan 2024 11:08:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000B61E.mail.protection.outlook.com (10.167.8.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7202.16 via Frontend Transport; Mon, 22 Jan 2024 11:08:31 +0000
Received: ("Tessian outbound 94d82ba85b1d:v228"); Mon, 22 Jan 2024 11:08:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: deb990f8166929e5
X-CR-MTA-TID: 64aa7808
Received: from 6bafde0084c2.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 66B6428B-025B-4139-9A03-5738557D8AA8.1;
	Mon, 22 Jan 2024 11:08:25 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 6bafde0084c2.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 22 Jan 2024 11:08:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWXo7VJMaYcO3UZG9ULROaToPg47XIpKLOcZKtqh72GLGYKllq6Ujhaw4eIj+VDmdbs76Y5iLIzWWqo/MzG8MqgSv3NGqZZRl+irIWbxJn20odJlymvyknDL2Eb50fXOJwffgvcPkUixUdtqo5dlYetNlJzPytkKTuEuZgeDZiGuBq7K6iHdFq6pJfEWzXslMP4JZ7GOcSu6HJ6eehuoqiXBCzbrDON/t7KvBviurVSgKmTMuk2zmgIUEMHGz6Rw9VL6Qu/d6XLjwq+Hglaqb9ltMIegIQeV3c9rW0paJ7zntIXOuG2gI+hfmGeF6hmptMJEf8D5uExpJuBskqF6Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9IntbRPtsNSETD9+FuAsMdrdoiLF3CyhBz6ySQelO+s=;
 b=ZsrJUgVpB9F3tXYxrsbU/+IwCdPJO2ECldiSuRLlqZmU8NwdtTu7gW6eIn+pN19oNqJw7kxG1eBcXjsxYq5pqWHCrMKIC1BnAYdRAc+PmSHHX4H5QliXxyxW/NeVnVsXK4ajFTcApzMxf+ciSHX1vOT2lVIVoKboK8TAQCyGkAUlU7o37hg9m3wJb3lvi6mzmH1J7t9MIzTX5WmQlucqhBp6pK2UPmuGjmDJrkQ/7SbMeTairTmiFp/cSWc36ZgGOVfrDgpxQX0hsAmRaNF2YF2mK7tBdvBMAT2/sduTo/5f82WzgxLEdG8OYBn8YtWPhVNMO0Y01Zb75wM85pjpvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9IntbRPtsNSETD9+FuAsMdrdoiLF3CyhBz6ySQelO+s=;
 b=sTz6nLZ80wCgTtfyujgqqgtTuLTIOnfbZR2qMKLqwko13zn09eV4luIBL8MzDZBz+EkRM4t6yXX0jiVzXPeHHfvjr+DwdO4Ysk/AjgqONmitSwJn1uteS/elg1Jp7Dm+Rhg1C9YKepv8UU/hq3gPhLc/I/Jiq+DoPgXUIvoWKZY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBBPR08MB10409.eurprd08.prod.outlook.com (2603:10a6:10:52c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.31; Mon, 22 Jan
 2024 11:08:23 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7202.031; Mon, 22 Jan 2024
 11:08:22 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "daniele.lugli@gmail.com" <daniele.lugli@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] etherlab
Thread-Topic: [yocto] etherlab
Thread-Index: 
 AQHaSZIq9dWGDz4VWEW/dwgaNylT+rDfHIaAgAD8nYCAAL6LAIAAPZ4AgAIY5YCAAoU+AA==
Date: Mon, 22 Jan 2024 11:08:22 +0000
Message-ID: <54A04DD8-217F-4CD2-BAB1-0F8F1F6BEB44@arm.com>
References: <8585005B-41BF-42D5-9703-D40F12655E0B@arm.com>
 <23719.1705783127454182611@lists.yoctoproject.org>
In-Reply-To: <23719.1705783127454182611@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBBPR08MB10409:EE_|DU6PEPF0000B61E:EE_|PAWPR08MB9520:EE_
X-MS-Office365-Filtering-Correlation-Id: e80dc71c-40ee-4435-79b8-08dc1b3a77f0
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 cBMAmEDC4dpizBqlTNXXNhSd621CStFOG8o7fyPjxaKjIa811bNU2GajtcakT0L54Ci/sRAuzY2p+hMiFjX8UJf9h7dxG7UndSyedE1bR+1So2esBJTlkCPwAM0S83t8ohLFgNLNUyJ9TYneWOVSytwqbjjJwG6rhathV0Ox3iVOL6GIkkjN8B86e/hclqWmxi8eq3RYzl2O/LtqHjtq/Lk8fAffZXhLt/1p+kC9NByE6099DewGYqcYphHsHi//24FhGbcbhHVxyOWdkTQya/G29X52qNabjPer22+bqrdLRipjDp6bL+I3/cki4XweBsnlz4EU3FLnN+PYGb10fyi7eKn+spPHcIBQCLtYtkNQsUOOM4xfrAbyHAtlNJRFmKzPnJ39FQijHVearCkPGyzCJdaAwPGduAqTWoopr/Z2Z5/UMWPC4rNjSUXM+16hsbTiBplovdwM+i0u/+sVcR/oWHWH0qK7+8CDk+FZGIllViL9NO1ChCEIoa8EdXgzQwA4PKI04g7CwGajYfxEJt6b3a59qikKlv9fxgSaynDELVFjmgeoGpbWbfshHWN8LJ6Gy+G+0vPnxVGRdsuaulxDwrFjOfKmNAuaQ4Jf8KBWUWAFVyx16NDu8fdtlYkujR74vZ0UnpVb4gbVThTgKQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(376002)(366004)(396003)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(26005)(6506007)(53546011)(66574015)(71200400001)(36756003)(6512007)(2616005)(5660300002)(2906002)(66556008)(64756008)(66446008)(8676002)(66476007)(91956017)(6916009)(66946007)(316002)(6486002)(478600001)(8936002)(76116006)(4326008)(966005)(41300700001)(33656002)(86362001)(38100700002)(122000001)(38070700009)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <EDCD8195519DA54FBE993058CD3AF1C4@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10409
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ec5afd76-d804-4c00-78ab-08dc1b3a72e2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YVHZR7sbDGZn1E5CE6ptSN5OmI/vETx3zfSitXJ7ms9sLktwB0rY9unjW7VrpeVY1e5+OBioWtQepAoSTPzykqhwEyCRI+hEK/dP/HILUfCaoW41Bwg5XAJsi7eRoBFtfGdvFBNCMuqwEAPE3wuBaVdYpc0BjDGQT6WI2iEe377Sww+X1BM6gcppakPuUXIfqnM5HfdREUr4vqAKBEly7UFQzksYzXGToewKSYj7JY75TwnHBqHJQBOdZEzglnpcP7+U5ut1ovFcad9UjmmJ6pk1ibc1eAqybuBTxPTR9+Kk6rJ22RniAviwONmByU4oUkjswlH3zZM/WKKOLY6c+G0Q1uWRGLPhw1p++ozSwUQiLF6YmuL5mZCVbp1BZYWUwvBzBh3NCT1JZEqTdZkkO2zduSAvA9Hk/AAYrhA94uyGiPYruko4hKL9VQLAeAaspEdCQVoBTOYSe5q7tawVZtfP2fN6iP/LQY2jjrArbhR9R/vFxj8hYKs81w3pjlbaqe2poqMau++1AWe/9cVjp9ci5K6AH92cXQWYnFrRjwSqRwiHsRbWnmG6MjZ6xqUrkiJ4AD4NE1dJdDKW0nRGjsakkgd0dPFRvuMJrA/Q3EtBw2mDzsKhNMwM+czp2QXyvdxjY4cOOPKLAXEtdZ0uLwO86xBC2hs2GXRoRYLGHexVcqVH0L6XUhPk4rK8SlyZLWdhTfoA8h+WX10LD6ADbK4pU9lxwcq0l5Z+M8XKsIo=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(346002)(376002)(396003)(136003)(39860400002)(230922051799003)(64100799003)(451199024)(82310400011)(1800799012)(186009)(40470700004)(46966006)(36840700001)(966005)(316002)(47076005)(36756003)(36860700001)(41300700001)(33656002)(86362001)(82740400003)(356005)(81166007)(8936002)(478600001)(6506007)(8676002)(6862004)(4326008)(2906002)(66574015)(70586007)(5660300002)(26005)(70206006)(6486002)(336012)(6512007)(2616005)(53546011)(40460700003)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2024 11:08:31.4069
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e80dc71c-40ee-4435-79b8-08dc1b3a77f0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9520
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 11:08:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62218

T24gMjAgSmFuIDIwMjQsIGF0IDIwOjM4LCBEYW5pZWxlIEx1Z2xpIHZpYSBMaXN0cy5Zb2N0b3By
b2plY3QuT3JnIDxkYW5pZWxlLmx1Z2xpPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiB3cm90ZToNCj4gDQo+IFRoYW5rIHlvdSBNYXJlayBhbmQgUm9zcy4NCj4gICBAUm9zczogSSBo
YWQgYSBsb29rIGludG8gbG9nLmRvX2NvbmZpZ3VyZSBhbmQgZm91bmQNCj4gICBjaGVja2luZyBm
b3IgTGludXgga2VybmVsIHNvdXJjZXMuLi4gL3Vzci9zcmMvbGludXgtaGVhZGVycy02LjUuMC0x
NC1nZW5lcmljIChLZXJuZWwgNi41KQ0KPiAgIGJ1dCB0aGVzZSBhcmUgZnJvbSB0aGUgaG9zdCwg
bXkgdGFyZ2V0IGtlcm5lbCBpcyBhIDYuMSB3aXRoIFBSRUVNUFRfUlQgIQ0KDQpUaGF0IHdvdWxk
IGJlIGEgYmlnIHByb2JsZW0geWVzLg0KDQo+ICAgQW4gaW50ZXJuZXQgc2VhcmNoIHNob3dzIHRo
YXQgdGhlIGludGVsIGlnYiBkcml2ZXIgZmFpbGluZyB0byBidWlsZCB3aXRoIHNldmVyYWwgcmVj
ZW50IGtlcm5lbHMgNi54IHNlZW1zIGtub3duLCBhbmQgbm90IHJlbGF0ZWQgdG8geW9jdG8uIFNv
IEkgZ2F2ZSB1cCBpZ2IgYW5kIHNldHRsZWQgZm9yIHRoZSBnZW5lcmljIGRyaXZlciB3aXRoIHRo
ZSBmb2xsb3dpbmcgbW9kaWZpY2F0aW9uOg0KPiAgIEVYVFJBX09FQ09ORiA9ICItLWVuYWJsZS1n
ZW5lcmljIC0tZGlzYWJsZS1pZ2IgLS1kaXNhYmxlLTgxMzl0b28gLS13aXRoLWxpbnV4LWRpcj0k
e1NUQUdJTkdfS0VSTkVMX0JVSUxERElSfSINCg0KVGhhdCBzZWVtcyByaWdodC4NCg0KPiAgIFN0
YXJ0IEV0aGVyQ0FUIG1hc3RlciAxLjYuMC1yYzEgbW9kcHJvYmU6IEZBVEFMOiBNb2R1bGUgZWNf
bWFzdGVyIG5vdCBmb3VuZCBpbiBkaXJlY3RvcnkgL2xpYi9tb2R1bGVzLzYuMS41OS1ydDE2LWlu
dGVsLXBrLXByZWVtcHQtcnQgZmFpbGVkDQo+ICAgYW5kIGluIGZhY3QgdGhlcmUgaXMgbm8gZWNf
bWFzdGVyLmtvIGluIC9saWIvbW9kdWxlcyAobm9yIGFueXdoZXJlIGVsc2UpLg0KPiAgIElmIEkg
dW5kZXJzdGFuZCBjb3JyZWN0bHkgaHR0cHM6Ly9kb2NzLnlvY3RvcHJvamVjdC5vcmcvcmVmLW1h
bnVhbC9jbGFzc2VzLmh0bWwjYXV0b3Rvb2xzLCB0aGUgaW5oZXJpdGVkIGF1dG90b29scyBydW4g
Y29uZmlndXJlIGJlaGluZCB0aGUgc2NlbmVzLiBCdXQgdGhlIEV0aGVybGFiIGluc3RhbGxhdGlv
biBpbnN0cnVjdGlvbnMgYXJlOg0KPiAgIC4vYm9vdHN0cmFwDQo+IC4vY29uZmlndXJlIHsgd2l0
aCBhcmdzIGFzIG5lZWRlZCB9DQo+IG1ha2UgYWxsIG1vZHVsZXMNCj4gbWFrZSBtb2R1bGVzX2lu
c3RhbGwgaW5zdGFsbA0KPiBkZXBtb2QNCj4gICBib290c3RyYXAganVzdCBjb250YWlucyBhbiAi
YXV0b3JlY29uZiAtaSIgd2hpY2gsIGFjY29yZGluZyB0byB0aGUgZG9jLCBpcyBhbHNvIGF1dG9t
YXRpY2FsbHkgcnVuIGJlaGluZCB0aGUgc2NlbmVzLg0KPiBBcmd1bWVudHMgZm9yIGNvbmZpZ3Vy
ZSBhcmUgc3VwcGxpZWQgdGhyb3VnaCBFWFRSQV9PRUNPTkYgYW5kIGFyZSBPSw0KPiBtYWtlIG1v
ZHVsZXMgYW5kIG1ha2UgbW9kdWxlc19pbnN0YWxsIGFyZSBwcm9iYWJseSBub3QgcnVuLg0KPiAg
IEkgc2VlIGZyb20gdGhlIGRvYyB0aGF0IHRoZXJlIGlzIGFsc28gYW4gRVhUUkFfT0VNQUtFIHZh
cmlhYmxlIHdoaWNoIHNob3VsZCBwYXNzIGFkZGl0aW9uYWwgYXJndW1lbnRzIHRvIG1ha2UuIFNv
IEkgdHJ5Og0KPiAgIEVYVFJBX09FTUFLRSA9ICJhbGwgbW9kdWxlcyINCg0KVGhhdCBpcyB1c2Vk
IHRvIHBhc3MgdG8gX2V2ZXJ5XyBtYWtlIGludm9jYXRpb24sIHdoaWNoIGlzbuKAmXQgd2hhdCB5
b3Ugd2FudC4NCg0KPiAgIFRoZSBrZXJuZWwgd2FzIGJ1aWx0IGJ5OiB4ODZfNjQtcG9reS1saW51
eC1nY2MgKEdDQykgMTMuMi4wDQo+ICAgWW91IGFyZSB1c2luZzogICAgICAgICAgIGdjYyAoVWJ1
bnR1IDExLjQuMC0xdWJ1bnR1MX4yMi4wNCkgMTEuNC4wDQo+ICAgIFdoeSBpcyBpdCB1c2luZyB0
aGUgY29tcGlsZXIgZnJvbSB0aGUgaG9zdD8NCg0KQmVjYXVzZSBNYWtlZmlsZXMgYXJlIGhhcmQs
IGtlcm5lbCBtYWtlZmlsZXMgZXZlbiBoYXJkZXIuICBFc3BlY2lhbGx5IHdoZW4gc29tZW9uZSBp
cyB0cnlpbmcgdG8gYmUgY2xldmVyIGFuZCB3cmFwIHRoZSBrYnVpbGQgaW5mcmFzdHJ1Y3R1cmUg
aW5zaWRlIGF1dG90b29scy4NCg0KWW91IF9taWdodF8gZmluZCBpdCBlYXNpZXIgdG8gd3JpdGUg
dHdvIHJlY2lwZXM6IG9uZSB0aGF0IGJ1aWxkcyB0aGUgdXNlcnNwYWNlIGNvZGUgYW5kIG9uZSB0
aGF0IGJ1aWxkcyB0aGUga2VybmVsIG1vZHVsZS4NCg0KVGhlIHVzZXJzcGFjZSBvbmUgaXMgYmFz
aWNhbGx5IHdoYXQgeW914oCZdmUgYWxyZWFkeSB3cml0dGVuLCBidXQgY2hhbmdlIOKAlHdpdGgt
bGludXgtZGlyPeKApiB0byDigJRkaXNhYmxlLWtlcm5lbC4NCg0KVGhlbiBjcmVhdGUgYSBuZXcg
cmVjaXBlIHRoYXQgaGFzIHRoZSBzYW1lIFNSQ19VUkkgYnV0IGluaGVyaXRzIG1vZHVsZSBhbmQg
dGVsbHMgdGhhdCB3aGF0IG1ha2VmaWxlIHRvIHVzZSAoRVhUUkFfT0VNQUtFICs9IOKAnC1mIE1h
a2VmaWxlLmtidWlsZCkuICBUaGlzIG1pZ2h0IHRoZW4gYnVpbGQgdGhlIG1vZHVsZSB1c2luZyB0
aGUgc3RhbmRhcmQga2VybmVsIHRvb2xpbmcgZmluZSBhbmQgdGhhdCBzaG91bGQgZm9yY2UgaXQg
dG8gdXNlIHRoZSBjb3JyZWN0IGNvbXBpbGVyLg0KDQpSb3NzDQoNCg==

