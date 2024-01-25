Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46850C47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 10:50:54 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.65])
 by mx.groups.io with SMTP id smtpd.web11.14719.1706179849951447060
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Jan 2024 02:50:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=L2cjRGJb;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=L2cjRGJb;
 spf=pass (domain: arm.com, ip: 40.107.6.65, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=hsHsd9YXFQvcFgT0KkNKMEg7zMmTPmbrelQfgzYzo314dInY/rZwsDEs6RHW/w/Iz4Z3gbDeFiUkMn8q7+TarAKdCtIBVjG60+RztcWw/6KWTPU4iYYanUbu3HEL5GTxmOwkkQDY3KNSNvNDnMe026x6Y3Mv+ODBFyuUJmFGxaeA+HngTVXZSYDSm27J/Nas7lex9Q+T7G4QKB0YQ5Sl44X+vZ0qDwyZg92WnCgCJFW/jesg2DUlLGSBRmMtNFNwg6T1ME9UID+VKL7BO88bt3vWdUWr162yD/XG2oOg6Sb4Hp4jTw10soPbO+xpZMSvLbEsWoKHSLu8XMtkFtdM8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=73IXtc7EWZn/FwUsCMPDhJCZfPaSpKllynS1z2T82CY=;
 b=GMjVij9dhEsYcF/djFxhUFVYSXbwjRHbM5rLEmIVqMkMzOePE65biBuTLy+btqy3Z5wFLT5439mmHrO9fFMAY47XJ8XWdEQCp8YFQT/NBKnu7vjObLBCsxl939E1UCSRlkTvmMjoOPIb0YqYsUGdLy+D4QPGH0XeY6lJRxRfPMOfx0VYR2NwLLTZx2PTXQkUrYvtOwROr01BRyRJ7pWccU9HSrjy2PrXmfv5oBjS8RqRxzoL9nHQ34jud+zv1kfYD3Iw53N3DU2OEwXziTX+NDREFKlIsGg/9Bg3YUwwTHQRBp5UZKiqpYQAFPgjib3PL4s6DfY/G0iwLPTGAYa0eA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=73IXtc7EWZn/FwUsCMPDhJCZfPaSpKllynS1z2T82CY=;
 b=L2cjRGJbznyfb3P+26ikAQbHnc6U3ZI6J8i7YT0ZU0biCmImmOQgMDCktSzZeEeIyAjETu6SCzr0Tx4x9/5Rwb0L+tQKu4F6ePxzCc21UD2VyIgXHOD/ssEGlMeAE9DHVnyxuY06HsTi/4zo0ySjZJMY8KKvYptZyQ71O1wWSoc=
Received: from DB7PR03CA0091.eurprd03.prod.outlook.com (2603:10a6:10:72::32)
 by DU2PR08MB10231.eurprd08.prod.outlook.com (2603:10a6:10:491::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.37; Thu, 25 Jan
 2024 10:50:44 +0000
Received: from DB5PEPF00014B91.eurprd02.prod.outlook.com
 (2603:10a6:10:72:cafe::5b) by DB7PR03CA0091.outlook.office365.com
 (2603:10a6:10:72::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22 via Frontend
 Transport; Thu, 25 Jan 2024 10:50:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B91.mail.protection.outlook.com (10.167.8.229) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7202.16 via Frontend Transport; Thu, 25 Jan 2024 10:50:41 +0000
Received: ("Tessian outbound 31df1b57f90c:v228"); Thu, 25 Jan 2024 10:50:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 05da5c25b04d3723
X-CR-MTA-TID: 64aa7808
Received: from b5da7133a28c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 067AB0AE-A12D-406B-8787-D208EDADDF9A.1;
	Thu, 25 Jan 2024 10:50:34 +0000
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b5da7133a28c.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 25 Jan 2024 10:50:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l4uyWdKhsi0+5XxXdPaIscDeH6eA7F+9lVV/09cHhPrP+pzVjfObWNbO7vv8idZiDT/ncNAj5ulx/SHGRGGMvlvuoXntVlZJUU5SgKvP/aKMc2O1Wje1Cla2Ff2HROz79bY+97EPkNbXBy7qaFcS3lFTLWx0Uih6G4DY8UCyyolHineF0ZnHSxF1pc/HiWrsXpib1id3tOAio/noVeAwWIOgJKisJ6v6k98WEI6cO5vsIr1rEbsWeCDSD33kINd4UN5qzEatnAitzwYXe5aqbgqSE/TDLx0ja3OOdAk8eOO3J5HWkis0LQTdf/mM6HmchsEzNJy/tgcgCAiwaq3b8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=73IXtc7EWZn/FwUsCMPDhJCZfPaSpKllynS1z2T82CY=;
 b=gTOGjYqH1sRLJCpT8DL9zPkCtHG5s61XrLUshszdAcc+LNn4Zu/Wcq7cjAL9LFihqw7+x3QA8jitBBSGLnH0KTEK7t6Ya5nzZYYc9WHw1Z1+f2zWkBzAradZfVx9j9tKT/wBr7LqWP6GWNp/rawOZqPFgMDopqIDABSdM4e0Nw7czLP9ZV8xaAjHUm8yFr7KJXTcBGCsHBgD0yzPhTAlnynZthsDwiVBfX46QEkzI7Dh0Q62UgbGM3PLbn1HGLs3Ax5CQcqjllsPCiQ6b/cP+aCwd57fWYubMkAcKmxuOjrQNI8AqalKzBLb7E9MEgvNNUhVNvxFwwE3W42Htoastg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=73IXtc7EWZn/FwUsCMPDhJCZfPaSpKllynS1z2T82CY=;
 b=L2cjRGJbznyfb3P+26ikAQbHnc6U3ZI6J8i7YT0ZU0biCmImmOQgMDCktSzZeEeIyAjETu6SCzr0Tx4x9/5Rwb0L+tQKu4F6ePxzCc21UD2VyIgXHOD/ssEGlMeAE9DHVnyxuY06HsTi/4zo0ySjZJMY8KKvYptZyQ71O1wWSoc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB9903.eurprd08.prod.outlook.com (2603:10a6:10:470::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Thu, 25 Jan
 2024 10:50:33 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7228.026; Thu, 25 Jan 2024
 10:50:33 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Daniele Lugli <daniele.lugli@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] etherlab
Thread-Topic: [yocto] etherlab
Thread-Index: 
 AQHaSZIq9dWGDz4VWEW/dwgaNylT+rDfHIaAgAD8nYCAAL6LAIAAPZ4AgAIY5YCAAoU+AIAAwg6AgALBOQCAABl1gIAAQzoAgADSDQA=
Date: Thu, 25 Jan 2024 10:50:33 +0000
Message-ID: <8427A41F-3094-415A-AFAA-461D1C660184@arm.com>
References: <7D668706-FF0F-437C-9F02-C77F0FA93B6B@arm.com>
 <9213.1706134714369365192@lists.yoctoproject.org>
In-Reply-To: <9213.1706134714369365192@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB9903:EE_|DB5PEPF00014B91:EE_|DU2PR08MB10231:EE_
X-MS-Office365-Filtering-Correlation-Id: dc2e18a6-a3aa-4f40-9fb0-08dc1d93798e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 g0oKr9Kz8ldtY05VcFyq7//z86O/PiC9SXd8td17RYj5ucrdo/fJdXyeh4zw4QpIEPX/OyBR78stlCo9M7h50dUabiOpshrxwolAZaUJjfeDNdeTVQYUsRAAAn67M7i2wERuVqKmX6SGUd+DSLIHcMBb/FiLsNAMRPMtKh0LY2LVg77X7bnjRWxEPW/hbxC51qe9Ou2hsHIbmXa31Xc7lpV6OtonzO2QWYhMXjjf8PHVAWjpyMzMoaQDJFAmgXMZ6Z7buHC7D1MeKt78rde9wEDUpnDu/3548W+YMwb1pXCdC3TUdb3kD6T7V5RLgM0ymqt2KTXvzDmFn3uEWl5UzSVrEIb4UL+yReQVaQlAFyDW5cKmz09JEaklj0iNYHFgQGKQUK9Z7IomvHJ73dMP20n03sRfUMlUtc0wWEjxj94P9rrTMnRZZmw4PE0V31o2KYjzbCOzllmiqaJkxw3s3tdRMihtxf1bfZv8bDouU17mOKWxmL2E/OquHJdHo9EuE4k0PL9MYkoFuRsjLo6+xvT40nOD/UDDynuXjoKZzC9J+QaKvfBYsRNbmfVNnV2GcrkMcNvqfs+MW7QaJDy8ZvgPXZb9XnknDNrInuMoWEX4gzZySHD6sauaBC4zubyr
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(366004)(376002)(346002)(136003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(8936002)(66446008)(64756008)(66946007)(66556008)(6916009)(8676002)(66476007)(76116006)(6506007)(316002)(53546011)(6512007)(41300700001)(26005)(6486002)(38100700002)(4326008)(4744005)(71200400001)(478600001)(2616005)(5660300002)(122000001)(2906002)(86362001)(33656002)(36756003)(38070700009)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B7042F296527F940928BC786F141E9EE@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9903
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B91.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	775b47ba-7935-4a54-1b75-08dc1d93748c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Yu7kHYd1+9VOFY6tl+4riYBU2LhnKRPOf+Fo3LbCIGCH0yvXkCA3cGQAxhWpXIvQ8AwkhosiNHTIBpQrjnkiUATIjQ2fsT5mDBxikLLDUODq4AcZU0ltbHBeBsv9xlaBKY0E2gSrEHzhqqlftPnwwT3Pup3UaP0+pxN52nvh3kfbBx5Yiy81rmFS2+870X5mp3NvwSSlSj6KNgJMi2G3SedycFaGspIYtLl/i/z4VxVK57W3CseO95B9cJagRlTpN17kY8eQ9rDsqDdHsb3oPUJfyrp4AGJz+MrqZMSMxwxogHOYNOTFiqNtBRVC6/N3Y8po1HEXBmdcji4vostVT7h1vWnXRL0j+YIBHLCKAsCfdyNh9m381CRIsS/O9Y7mXd6GVkHOJ1XvmiIa9cRLpG4kFzIzWqNUNSne3z72H0kjitgfuG+HdIlmQziuw6ntOIQtrKsAHHiOMjA2bOjicj5L51odZv8Vt+8pHES6MnoS9gR55gnNKQiBCcrd4yIXzfrtANAUK5CeEXwKJc4YuHfFikT+V1f8u8zyX/2dxV05Ln3tjA2+MUkb95+1o0AwmKu+Bad4xNYxpn4dOjvDHHBr1B9HeLpCx0r0UwVnN4Bpla197AxzwLmk279R7JQfn0bogkuWWr0NIFSHJ2vG+0GFKYfUwxLTTle9fRLWdFOd+BPmsQenZW66h2+IcmDHN6elDcMD3CM+NMVZSOoh9yEOjIDjv0v7Yggyprji57M=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(136003)(376002)(346002)(39860400002)(230922051799003)(186009)(64100799003)(82310400011)(451199024)(1800799012)(36840700001)(40470700004)(46966006)(82740400003)(47076005)(36756003)(41300700001)(70206006)(53546011)(316002)(40480700001)(40460700003)(356005)(6506007)(6486002)(33656002)(70586007)(5660300002)(2906002)(4744005)(8676002)(336012)(8936002)(4326008)(2616005)(478600001)(6862004)(36860700001)(6512007)(81166007)(26005)(86362001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2024 10:50:41.6555
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dc2e18a6-a3aa-4f40-9fb0-08dc1d93798e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B91.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR08MB10231
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 10:50:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62288

DQoNCj4gT24gMjQgSmFuIDIwMjQsIGF0IDIyOjE4LCBEYW5pZWxlIEx1Z2xpIHZpYSBMaXN0cy5Z
b2N0b3Byb2plY3QuT3JnIDxkYW5pZWxlLmx1Z2xpPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnPiB3cm90ZToNCj4gDQo+IEludGVyZXN0aW5nLiBJIHNlZSBmcm9tIHRoZSBkb2MgKGh0
dHBzOi8vZG9jcy55b2N0b3Byb2plY3Qub3JnL3JlZi1tYW51YWwvY2xhc3Nlcy5odG1sP2hpZ2hs
aWdodD1hdXRvdG9vbHMjYXV0b3Rvb2xzKSB0aGF0IHRoZSBhdXRvdG9vbHMgY2xhc3MgYWxzbyBy
dW5zLCAiYmVoaW5kIHRoZSBzY2VuZXMiLCBhIGRvX2NvbmZpZ3VyZSBhbmQgYSBkb19pbnN0YWxs
LiBUaGF0J3MgYWxsIG9yIGFyZSB0aGVyZSBhbnkgbW9yZT8gQ2FuIEkgYWxzbyByZXBsYWNlIHRo
ZXNlIGJ5IHdyaXRpbmcgbXkgb3duIGRvX2NvbmZpZ3VyZSBhbmQgZG9faW5zdGFsbD8NCg0KSWYg
eW91IGRvbuKAmXQgd2FudCB0byBydW4gdGhlIGF1dG90b29scyB0aGVuIGRvbuKAmXQgaW5oZXJp
dCBhdXRvdG9vbHMuICBNYXliZSBzaGFyaW5nIHlvdXIgV0lQIHJlY2lwZXMgd291bGQgYmUgdXNl
ZnVsPw0KDQpSb3Nz

