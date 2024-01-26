Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D43B6C47DDF
	for <webhook@archiver.kernel.org>; Fri, 26 Jan 2024 20:41:37 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.61])
 by mx.groups.io with SMTP id smtpd.web11.339.1706301693408184704
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jan 2024 12:41:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=uHoqmrvp;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=uHoqmrvp;
 spf=pass (domain: arm.com, ip: 40.107.6.61, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=Fm+YVznnqvPD1oPbhX5Ccjdcsw4S8XIV5kGeyzwXF5LgmXuku8aO+17y54Xj4FTjcaM3lnM0kHMtZUlN1XNCQrzZCcFxwI2ZstmNUvGNu4AlIjIsiIgIdZIrkaMtRm/8qCtmqHPtRLvSkURGSzpdG/wR0F5aEdVWfXBw0bIwMAweC2hZj5S10/rjl5AQN9WwvuHCnwFJmMY2/jHQPWQ6lbZY5fL2JaLA5wCoWh7WkekCywXRuf9Z2OxjjNwj00bwQa8CrWSqMt3gI1ru1/icdA/siIJ+zEXQBtkRNNwbWO48jUX5sZwpEsBX3qC+cuHqR7CQfJ48Mt6jrYPZ+2wcPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0FkGnN9EZGMAVw3G5AXswh0hekauw5P7k2hkO3Dk5FM=;
 b=DlSlmlc9vzzwUE66r726b3gvtYxLPfy9uwzE5gH+MYY51YGqMYwCODk3XC5CnwdcF7lY+Z/+YE2XVC6sRjEdEqR7XY44JyeBM3I665j1/uMnhaPJKvc0ARquiNQNuRwbmoQ+BOqo3f1doKnyhAxU6+iYcSTCaCGEXI5PSwEDs71h8f544+QUThcuQeWUC2PxitameLxx+mTENio5O8w0/bCZfvxvbS3OaUajpNLfsrys6ptqR4zqIa9eDTrEpMlQjh1wa7la6FkyTMdkThfvkBz9lRp7sCIQ4kH3Y0cMOVIrB+dOfmQ261HuuqPTmIqyQ6UWtiNQ4PHaB8xCOJElRg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0FkGnN9EZGMAVw3G5AXswh0hekauw5P7k2hkO3Dk5FM=;
 b=uHoqmrvpb2kfbc+2MsXUS2K1WyWBsC8Nsvn8F91XwRjuCArR3Kd8cbCAvZnvKl83ttA52lXT5pMjBpf/lAuEyXFH8ZyNKzh6L4wLP7DO/c6G//KDl50lWPj8zsKJH8loiv04PN8Q78A23AXOSQi/hbKmUAc2j6fMyRyQh7ExeeY=
Received: from AM6P192CA0084.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:8d::25)
 by AM0PR08MB5425.eurprd08.prod.outlook.com (2603:10a6:208:17d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Fri, 26 Jan
 2024 20:41:27 +0000
Received: from AM2PEPF0001C70F.eurprd05.prod.outlook.com
 (2603:10a6:209:8d:cafe::2f) by AM6P192CA0084.outlook.office365.com
 (2603:10a6:209:8d::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.26 via Frontend
 Transport; Fri, 26 Jan 2024 20:41:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C70F.mail.protection.outlook.com (10.167.16.203) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7228.16 via Frontend Transport; Fri, 26 Jan 2024 20:41:27 +0000
Received: ("Tessian outbound a297577ee0df:v228"); Fri, 26 Jan 2024 20:41:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 0ae5fc178cab6960
X-CR-MTA-TID: 64aa7808
Received: from dead01a5432f.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id FB2079A2-CDE6-48A6-8DAB-C0EB284DECE7.1;
	Fri, 26 Jan 2024 20:41:20 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dead01a5432f.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 26 Jan 2024 20:41:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWGkcwYAhkJAucuTWctDISWPy0Qvw6E59gWIlgywUrsYoh11BVFss0Ps800dg73qDy6Rth2fCspQh/NXuaRxGoJsKLlQu9TUw2/eHhwckBCOS13QGp9IPaVCACHe6AS6i5OQHOXnkimLpPoLmDMH0NncYSjx6NJ5mpVTAk6Q3f8Ocb3rPvYP8j27HrznD8cdIXTBjDoOPgHFjk/kKETJ2qU3S9dmR8uLONVbWYqVx4Atna7YJDdnCzNodajTO3PueM5xgRKs9fsefL4BOYdIP6MfaGC0Z5AgYOeGRWwg5CCZueF+hkLVUgF5W6Hc6Q7JvI2G77x6gpypIw8f7h60HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0FkGnN9EZGMAVw3G5AXswh0hekauw5P7k2hkO3Dk5FM=;
 b=SFnoj6c4LvzsLhjeb4PvEgL6sPC6owmzJ65bHj4qJNn8CPf8iY39Zfyo6nBk5Dg4O76p/MDtVn2QkDx3IccJ9MowMaJtqeo9gYPjjrzxSgIBYRCce3r16M+4m8zFShSVUBrzC9cmhxWQ3P7R4c0s+gjY553SFO0MMSQbVT7ppFg5lvt+qzDG5Q62lEo3iyTfbtK4GLlQj34jGED9rFN0wSVW5NbRE3hPVHDGKgDl3VrHgdh1h8jjs33CPmRIEZSnVdY/CeMFJsiK0Go66JKpKCD7QEWyy1JQyBrM3f8aBw47Q1YWL6OS0ZSPw2irRnlAOU5u16u6SwgEabLLE7ny2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0FkGnN9EZGMAVw3G5AXswh0hekauw5P7k2hkO3Dk5FM=;
 b=uHoqmrvpb2kfbc+2MsXUS2K1WyWBsC8Nsvn8F91XwRjuCArR3Kd8cbCAvZnvKl83ttA52lXT5pMjBpf/lAuEyXFH8ZyNKzh6L4wLP7DO/c6G//KDl50lWPj8zsKJH8loiv04PN8Q78A23AXOSQi/hbKmUAc2j6fMyRyQh7ExeeY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM7PR08MB5317.eurprd08.prod.outlook.com (2603:10a6:20b:101::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.27; Fri, 26 Jan
 2024 20:41:18 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7228.026; Fri, 26 Jan 2024
 20:41:18 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: OE Core mailing list <openembedded-core@lists.openembedded.org>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Future package versions
Thread-Topic: Future package versions
Thread-Index: AQHaUJgDT7J74xZOYEuebvErsdqJlg==
Date: Fri, 26 Jan 2024 20:41:18 +0000
Message-ID: <618B0BCA-2E2C-422A-B554-421D533FB0BA@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM7PR08MB5317:EE_|AM2PEPF0001C70F:EE_|AM0PR08MB5425:EE_
X-MS-Office365-Filtering-Correlation-Id: 04c9aad3-1f6c-4012-7d0c-08dc1eaf2b50
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 aNq7jOXrznWs+q+scDys9UlfOJdlHkFQNAfTujA2psu8kbPiO5WUW7v3VJeeXaJc2NWviV1m/YSeV8GwfdIxLRWxxNytx7MxJ1B8k1tKwiCFQobdXzPuiGIefx3t6ckieUGPB59FANvCt/w0p88Uv4lrZ/lM7ipngApG+OBZBvWpqz1XOwozXx5WBD/imDoINH3s7v4Ndb3sJ5lLQn3fMaCT+Cqj9cVV393QSRokSUWPG+pC1FwdAZZJEkMSo+PaZ2BntAPIT+so+tDqD8guMiL3YazTFfxoiOwDc4Fm8+w+R/ZEopaW1OCcMfTp/bI+CLEFJiFEUh7fFU3Xco/jkjdxpcYoEndnawR24VqQJxFvMIDUTXSTJlFLosK3WCrLp0Ahh03u1QIFzrW0nk0nQCloZ72qkOHdfBhTSYhly9Pr/74/CiZgawSGSMK7+jxdIxXMmlf/BZvFnon65UpETyBOjFrgxU9XXhGnZa29Z5VBilPa/cbRnHq8UrTgJLCYSIyKgsrP0Jx0qDJoPNkQtwO2OFXfn4NMKjkL0DMrT79bjOpCTIEgLwI67+PmIwNP2q0I9pI8XbcYN0JP97MKFDanD0q1+f2nIX26yu8c3/5+DLUVceD8Zl/SVRgnaTb6LYO/crlpgqVHcoSSw+w2Dw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(136003)(39860400002)(396003)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(3480700007)(6512007)(8936002)(2616005)(26005)(6486002)(122000001)(38100700002)(7116003)(5660300002)(8676002)(64756008)(2906002)(478600001)(66946007)(4744005)(6506007)(71200400001)(66446008)(76116006)(316002)(66476007)(66556008)(41300700001)(110136005)(966005)(38070700009)(33656002)(86362001)(36756003)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <0C1BF307335F6E47ABA8E599719D5447@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5317
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C70F.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	29e925ae-5aff-4a8b-6dad-08dc1eaf25b6
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IQJ+8xNmfdAx81j28/0UdLgh+bGWDvahAdtS08rwK5zg5hU8dj/Zx1oElzEtTvvMlAomn130MQJhO0E1EM6UKkR4vjr7W5amqkQFVfSwy+8MNiSxWz2HcMPJjyCavnczeHIiafjYmetpKEeYy7u4r/9XDAsFdhzx6bw6JAPjyVS4WAbVz26UsCqTPULHTfJLAQhj6EqAheA6d6KVe+qlBjknEaji7Dr94H1OHq3kUwmOs9Et8SxStfi4RcL5awdrla0OrEmdP9lqkHpvryHfhTUPByAdHw1My3HxRu0Q1UvV7Grv+Rl2v4jvZZerSP6BXyYTJBzV/UC5UHcNm/rTHrBwQWljEvWC0eS2j/t0HSYbPTP850+GeWjzE24CNF2ixUhnMxuytEaNjsNl4HLL4DKjQLm46OGCX2P1oTplaJ8RUfwMyhQOeUlzVxnFM0yW6uZEh7O0e1JhiteP3FxkXDrS9/Zk8C+wJJ0sAN+6q9tn6zJQGmF4j++UO2YYHyfpqArhKYPVZ276WOIr03xG8er/q2s5Vx7zgUUKh2sCPscDufKyWgez5maKxxu1NgK46tGqlHBY5l4DFltotSW2q9d19gVhaXRelm04pWly34jpu6xPY9edQR2k2yRjEIRKrsUxX9L5HlJai0YZNuIUeF9p1UAHlrdgMG2fMP9aNgkd+vG1ALg8YixJGDV/uExV1tGShC1dZqI11aTH936x2qNvbGaTWXAnXR9xQqTAGMA=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(396003)(39860400002)(346002)(376002)(230922051799003)(451199024)(82310400011)(64100799003)(1800799012)(186009)(40470700004)(36840700001)(46966006)(6512007)(6506007)(40460700003)(40480700001)(336012)(86362001)(2616005)(3480700007)(8676002)(26005)(8936002)(36860700001)(6486002)(4744005)(82740400003)(966005)(2906002)(478600001)(36756003)(47076005)(33656002)(41300700001)(356005)(110136005)(70586007)(70206006)(5660300002)(316002)(81166007)(7116003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2024 20:41:27.4104
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 04c9aad3-1f6c-4012-7d0c-08dc1eaf2b50
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C70F.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5425
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jan 2024 20:41:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62307

SGksDQoNCkEgc29tZXdoYXQgcmVjdXJyaW5nIHRoZW1lIGFib3V0IHRoaXMgdGltZSBpbiB0aGUg
cmVsZWFzZSBjeWNsZSBpcyBwZW9wbGUgYXNraW5nIHdoYXQgdmVyc2lvbiBvZiBhIHJlY2lwZSB3
aWxsIGJlIGluIHRoZSBuZXh0IHJlbGVhc2UsIGVzcGVjaWFsbHkgbW9yZSBub3cgYmVjYXVzZSB0
aGUgbmV4dCByZWxlYXNlIGlzIGEgTFRTLg0KDQpTbyB0byBhdm9pZCB0aGUgcmVsZXZhbnQgcGVv
cGxlIHJlcGVhdGluZyB0aGVtc2VsdmVzLCBJ4oCZdmUgY3JlYXRlZCBhIHdpa2kgcGFnZToNCg0K
aHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9SZWNpcGVfVmVyc2lvbnMNCg0KVGhl
cmUgbWF5IHdlbGwgYmUgYSBtb3JlIHN1aXRhYmxlL2Rpc2NvdmVyYWJsZSBwbGFjZSBmb3IgdGhp
cyBwYWdlLCBidXQgdGhpcyBpcyBiZXR0ZXIgdGhhbiBub3RoaW5nLg0KDQpSb3Nz

