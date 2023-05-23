Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3542C77B75
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 12:57:19 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.44])
 by mx.groups.io with SMTP id smtpd.web11.21495.1684846633937122526
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 May 2023 05:57:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=IgsTwv72;
 spf=pass (domain: arm.com, ip: 40.107.241.44, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BJlP4/8w+MZakhmnS4ipUVnhtvysPMLbTM1AKC0F7Vw=;
 b=IgsTwv72B+rv+h9QbYaXJ6c8pGSBxglXO2ZBsIzQuR0pL3675PCkNfUTZ6W10r7EQVHl6BYGlKlO2qtE4SbJ0slGjjFr7bDVjo2mEJoN+k6WKBQst8Xdr4C6AKq9HR++U0dTJaPfpYPQJHUZLuQKTF2t21FHQUmkNEOHeLOvd4A=
Received: from DB6P192CA0020.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::30) by
 AS8PR08MB8491.eurprd08.prod.outlook.com (2603:10a6:20b:566::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 12:57:10 +0000
Received: from DBAEUR03FT012.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:b8:cafe::64) by DB6P192CA0020.outlook.office365.com
 (2603:10a6:4:b8::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.29 via Frontend
 Transport; Tue, 23 May 2023 12:57:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT012.mail.protection.outlook.com (100.127.142.126) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.14 via Frontend Transport; Tue, 23 May 2023 12:57:10 +0000
Received: ("Tessian outbound 99a3040377ca:v136"); Tue, 23 May 2023 12:57:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8a02b7161bdb91a9
X-CR-MTA-TID: 64aa7808
Received: from afa74225b04b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 334A5725-F860-496A-80DC-465899C68BB6.1;
	Tue, 23 May 2023 12:57:03 +0000
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id afa74225b04b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 23 May 2023 12:57:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Maxq7gacSpv6JJWSizoJ0+nF0hhQ93RtkhO/PY4LX/5K7You3zujNh8YtlM7HKu0KTf+UvyFDM9i5F4LZquoyEecbXhPOsdruX2D57299AOOmhsaUjXA4hs06YZGqXNL/vBNFjYzIDe+uiVMbMXvVsOZhoRNkBSU/xjgyYooqK785lkzhYhV9VWWqKV+h5Wo4RYdG8yhzBOGo9XOyYP/d/zcRMhQZq7YYZJqObdJlEj9BUSPijk5o/ypQt7bMOsev0NVanJwACgkrwMitBxZMQP/FM0/zWD2NGJUbQXtRvnr0edRG84PT0OfJGH79btEdxxL38eoKMlouUo4wOn2qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BJlP4/8w+MZakhmnS4ipUVnhtvysPMLbTM1AKC0F7Vw=;
 b=dtwuQ6jKHdCJN50eCHD6aH8HVS0TlCEhpOwWxsAp6602hVeAvupHL5eNwoTI/EPSBu58WlJ1OfwiHOFkLahSFYMieF2OOq2HThm/HbP5oOiq7qYHIFcQDalHetru7E5EsC0owF0/SozQmF8kQxypO2ZHtoeR2gbe0ALGiOn+96SqqC4qrwrQE0icjXu144Oa0YfioNsTzPQXNQodKPNNQkU/EfPWSpXSpFs38NKpkl0Jxb/ysH5ltz+juzCZKrPWW1rorAqmqfmpb67fXu3ppWxZSPVmfEy1rXUByFREnLlprx9slaHaRYICfYdyjFCk/eXcXWfJwTbgCJcrJMYAFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BJlP4/8w+MZakhmnS4ipUVnhtvysPMLbTM1AKC0F7Vw=;
 b=IgsTwv72B+rv+h9QbYaXJ6c8pGSBxglXO2ZBsIzQuR0pL3675PCkNfUTZ6W10r7EQVHl6BYGlKlO2qtE4SbJ0slGjjFr7bDVjo2mEJoN+k6WKBQst8Xdr4C6AKq9HR++U0dTJaPfpYPQJHUZLuQKTF2t21FHQUmkNEOHeLOvd4A=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB7729.eurprd08.prod.outlook.com (2603:10a6:150:50::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Tue, 23 May
 2023 12:57:00 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 12:57:00 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "cheerala.rohith@spacelabs.com" <cheerala.rohith@spacelabs.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Inquiry Regarding License Compatibility in OpenEmbedded
 Meta-Security Layer #selinux #yocto #qt5 #kernel #hardknott #bitbake #dunfell
 #gplv3 #imx8 #linux
Thread-Topic: [yocto] Inquiry Regarding License Compatibility in OpenEmbedded
 Meta-Security Layer #selinux #yocto #qt5 #kernel #hardknott #bitbake #dunfell
 #gplv3 #imx8 #linux
Thread-Index: AQHZjWoHCg4n7yrgFE2KEulZqqT8EK9n0UAA
Date: Tue, 23 May 2023 12:57:00 +0000
Message-ID: <5D90CECC-A141-46F4-B483-A831F59A8E67@arm.com>
References: <gwM8.1684841437492329746.Wdf3@lists.yoctoproject.org>
In-Reply-To: <gwM8.1684841437492329746.Wdf3@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB7729:EE_|DBAEUR03FT012:EE_|AS8PR08MB8491:EE_
X-MS-Office365-Filtering-Correlation-Id: 82f1b430-a559-43ea-3dcd-08db5b8d3898
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 Xq2qZNwHnHM4o332isrTq/Km2UzrZ8sV7qqKtExot3DMixgi0AqGLOpb7C/hhghnMhTG0WVlsN6LZsH0G+dV3y4JpYKt86tu71CJQjSsaw34sEwwHN72s9TXnVAop9BcPWT9kaMEm22jffh7jn2tzLeZQ3GVFbxXmT1qWLKJqMytWN7x4xEvGOmcvjWnfz7PgYeX5sCQAWQo0vaQ1G0Zo789w64vTqd1vBmvXkOBwOv/PX7rGHCo/404HXYoqDw7uJskvKzyzd27fojwTWYiwIW+dzfbhc0yu62XkYlB+yeuIxtrf1zlQhPYtXbcj6YCfohO7oW4wGGXYS3LJGjlc4+Btx6Gzb+0d/KHC9H7ePIEXWXK81Wm/S/akL4UsrMk+zNRgPPGJhC+knSkWYtG7R/xJ1jw2bE1yBk8Gh9Zm6zlbi4o8anCEbn3l/eR9iGt/72yi93KAOI3zvUJ6UGqjUHpWd0OklHzxtVdduusPNrkvZYXIY0EU3C02LgRemb0Urqfq2SugI2MIaNtfpNU+9xfYBM7iibHAIAvOcfk/T+6G3mqxFBQ+IjnCdaubH7HhLcMVqExnDXuF+++Nv4SV4ZQMVib5ZEMPAbv2XZZTCqGsdWcIx+kmqKf4b9yviRGszkbqGWLSPu+H0GfOgWNDw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(376002)(396003)(346002)(39860400002)(136003)(451199021)(2906002)(71200400001)(41300700001)(6486002)(38100700002)(26005)(6506007)(6512007)(53546011)(36756003)(5660300002)(2616005)(4744005)(86362001)(33656002)(186003)(122000001)(38070700005)(8676002)(8936002)(478600001)(66446008)(4326008)(76116006)(66946007)(6916009)(64756008)(66556008)(66476007)(91956017)(316002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <53F375ACF5CF7A48B0AAED761B7588B8@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7729
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT012.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	be8a5bbd-4b70-4f38-5331-08db5b8d3319
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TviYrENzRQ+Y79ibDrZeZNh56nVJSG0ihTvEIsp4qRsWs55ii70qcd/u0x/9sEdxi5LLBhneM6ElVmwqm3E78NyrBOazXw9BRULByQlFYh7F+m1nHXnR9AWuZCo0DrEQy/XhQWWoW0MzY/Qw3VNLdv2WhR5LHbz7aLj0ir9BLLxry3/wIJT0lFefwuNpyQ9ZDs4dET6zfL35DP6ZqhMOex8ixC4WNddvdzvsTffAFOKsEQCQ8bCcYxUnJJ+xpqywrYYBz3+Ua3IPB6ekA6fMFOT77Vt8Ved7mcDVxaHFkWOqgNSs9lyd27en4ZBqtPUbkNWgzGfr6ku0fMqNbKCcZYCva0eP2YUqD1hxPNShdo067rtSbr9A6sTLTR1HCWHS3k4ePLmlzZ+RhBROugPlpe8Oamn7ucZlHoA8saI2CsGhcykxJfPGYzpJY9Q/1ru4XFOF74OHilBvdHdCETsIXxJPnEsatut7QMXEhvQ7OWvKiwXISLT57MziPM+qFcURzfjkZDo1oABs3NGXca7uKCzn1dWljlmCJE3diTa9Bq/hCpDy4dtoXASO2VpX9VSbi85vX8WDlxo1LPyDS9J+TjwfW29zu9DSEx9YbsRT6CQ3LkG22qZ875+ocyX50HspukeQb/h4TXDd/j6o7LMzlx4DLQj1b7tuCyn/Yt9Va4k8jZrUe54SF/Uw/FF+fJRJDitMx1QkB025V3fOMEw2HiBdM+o20CEEofv38tIAKrpGaqVJCNDS1DFYxVf0vBHX
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(396003)(39860400002)(136003)(451199021)(40470700004)(46966006)(36840700001)(5660300002)(40460700003)(6862004)(8936002)(8676002)(86362001)(33656002)(26005)(6506007)(6512007)(2906002)(2616005)(47076005)(4744005)(336012)(36860700001)(36756003)(186003)(40480700001)(4326008)(70586007)(81166007)(356005)(82740400003)(70206006)(316002)(478600001)(6486002)(41300700001)(82310400005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2023 12:57:10.1074
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 82f1b430-a559-43ea-3dcd-08db5b8d3898
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT012.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8491
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 12:57:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60099

QWxleCByZXBsaWVkIHRvIG1vc3Qgb2YgdGhlIHBvaW50cyBhbHJlYWR5IGJ1dCBJIHdhbnQgdG8g
bWFrZSB0aGlzIHZlcnkgY2xlYXIuDQoNCk9uIDIzIE1heSAyMDIzLCBhdCAxMjozMCwgY2hlZXJh
bGEucm9oaXRoIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxjaGVlcmFsYS5yb2hpdGg9c3Bh
Y2VsYWJzLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gMi4gV2hpY2ggbGlj
ZW5zZSB3aWxsIGFwcGx5IHRvIHRoZSBJbWFnZSB0aGF0IGlzIGJpdGJha2VkIHdpdGggb3BlbmVt
YmVkZGVkIHJlY2lwZXM/IHdpbGwgdGhlIGxpY2Vuc2UgYmUgTUlUIGFzIFlvY3RvIHByb2plY3Qu
DQoNCllvY3RvL09wZW5FbWJlZGRlZOKAmXMgYmFzZSBsaWNlbnNlIG9mIE1JVCByZWZlcnMgdG8g
KnRoZSBsaWNlbnNlIG9mIHRoZSByZWNpcGVzIHRoZW1zZWx2ZXMqLiBJdCBoYXMgbm8gaW1wYWN0
IG9uIHRoZSBidWlsdCBpbWFnZXMsIHRoYXQgaXMgZW50aXJlbHkgZG93biB0byB0aGUgbGljZW5z
ZXMgb2YgdGhlIGNvbXBvbmVudHMuDQoNClJvc3M=

