Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A4B8C61D97
	for <webhook@archiver.kernel.org>; Fri, 24 Nov 2023 17:04:29 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.59])
 by mx.groups.io with SMTP id smtpd.web11.144428.1700845460942715259
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Nov 2023 09:04:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=N9hwgtDi;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=N9hwgtDi;
 spf=pass (domain: arm.com, ip: 40.107.249.59, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=QPtk+dsEjzd2N05Hg+89AOsdqcaH3Mxdibe2VKpLyZoYCNR2XcfIqG43Z3Skyl2VRMrul0vaPEaUh8BsjOcaJpLnNcG4cVBF7jDxATg+GqHlsfcwU0gVFipDELC+h4GymlRtct/VifAKu1FXobNMlx4VHGB62hqz5xhzkc6P5YBi8WNs2IU3JyYmQT6tQXrolx+YhPtfgxRqEOBzcJYL9XA9wgYxWVngaFbH12pbELnrn3f3oy0SvYyvrDqqxC13Dz05N8adv5bW+gBIdkuOZVrpI8UbaZXWdSiMEJmTX7m7ublfa+L/zgSbZgBKgtnCaU0QGF5qGpNzgzX1zyRpUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ioFLfQwS5WZpLz/gpCcfUFpYmoMcuMRouGt38Nv+4U=;
 b=XNmR8EuiCUB+R9lEOOcxdgkzKx4224/5oyI8rbLgxEEJztIk7ESCI5y8LEOzjU7/s4ab3hCZpHyR4oOXRe8jCk6cTUqcgO5dZg+2poP8acxEhAYDsj2CUE+TsWlXl+3Yv7hk6TOU3jLwkvBxFg4sbGxM6XeVewBjmQDd9tl/g1UBd0r8DvZQbBKff88EIXPwVKFM7TDNguMVAO7OLtuDo1sD0H3SRrx5tDjm9H+PpEDQjQvWNsepBbnYIeXgLHJ7XIkCtSZdP4sTnE1SsnYQjjVbBwTd0sViYI7GoFmss52ZkCTayX7Er7/tu2VzQDC0FwZ31EE+1aGFPF0BGVFm6Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ioFLfQwS5WZpLz/gpCcfUFpYmoMcuMRouGt38Nv+4U=;
 b=N9hwgtDiSgxoqo3dCHYT7HsEgyp0CV8YGwOWAWVWeft8/lMumtjJUT2F/LEaiTbY1YL4b1wNEKMOCoGc0D4MoBnqoH+xNAi91wcqGDBX6aG0zxsRHecEGSg/y1iPPsv22HjzAEfe5E/eHBE3jxF6/YBake6L//ixWHtOZSvsklM=
Received: from DUZPR01CA0028.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::7) by VI1PR08MB9959.eurprd08.prod.outlook.com
 (2603:10a6:800:1c1::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Fri, 24 Nov
 2023 17:04:15 +0000
Received: from DB5PEPF00014B92.eurprd02.prod.outlook.com
 (2603:10a6:10:46b:cafe::9a) by DUZPR01CA0028.outlook.office365.com
 (2603:10a6:10:46b::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28 via Frontend
 Transport; Fri, 24 Nov 2023 17:04:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B92.mail.protection.outlook.com (10.167.8.230) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.13 via Frontend Transport; Fri, 24 Nov 2023 17:04:14 +0000
Received: ("Tessian outbound 26ee1d40577c:v228"); Fri, 24 Nov 2023 17:04:14 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5562f40bb899c6b8
X-CR-MTA-TID: 64aa7808
Received: from 14d5f2e0310e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 89C7FA77-6FF5-4C09-9AB9-D9397C417A97.1;
	Fri, 24 Nov 2023 17:04:08 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 14d5f2e0310e.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 24 Nov 2023 17:04:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h9AnZhYeR8RiK/vU9cpeXE9oUvKB8MV083V8/pKd9sM8hQRFA95i+xfpG3qExgBQ56sAsKbkmD/nwqB9rtTHTX8kdG8KgHGbO3J3P5+0cu9W04+v3hx6MUzxQ1lIhfdf4BKR/6BA5MlfeVhj5izAwsaqE2fsrvg873c9moTbSgR3e7CT6Dv/XQwhHLmv4fPqyQ/4M1Ez1grmOeUGjsoKobSzp2BjzQxOgaac6hYXzItZrq2d1IiRqiEawJXkXFSaJUAdI22/VJ2hcf5m+sE/Vbqp1cLPDXnjgQoT5uDM4qwe0oYsVxgLvyBrUSIL8Ij/JM/biobLBBbd94l3zz710Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ioFLfQwS5WZpLz/gpCcfUFpYmoMcuMRouGt38Nv+4U=;
 b=X1FMGix94TA/SEe1woBc3o+k47EE7ypd3dF943vxQEc1dyACOBgbpkrZvo1uWeFyLR1wR2z+fBdqUHvRG5WPWDH/EKrlSX2GTT5KMFzEClkZTx9RwqfGD6jEpLbx12G0N0uktUyDPHJwLOSM/XIUT4ddA6GB0RraaKUhl+t9zZ+9rC75cSSg3Hzz5/RGMu+JaLzWTcYqtH8EcBWUzHZWYHgpMqNh1TLadQ7vwuJ6GzzSNTGvf4MDCXigRG7jbam2CoABm5mc8YznN8eBBbKsPudputKKpEZkirX1O7OPAns0bVCWpWhYUs3P05GIHDIvrYW483aRRxXmpXXcCJuOfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ioFLfQwS5WZpLz/gpCcfUFpYmoMcuMRouGt38Nv+4U=;
 b=N9hwgtDiSgxoqo3dCHYT7HsEgyp0CV8YGwOWAWVWeft8/lMumtjJUT2F/LEaiTbY1YL4b1wNEKMOCoGc0D4MoBnqoH+xNAi91wcqGDBX6aG0zxsRHecEGSg/y1iPPsv22HjzAEfe5E/eHBE3jxF6/YBake6L//ixWHtOZSvsklM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8504.eurprd08.prod.outlook.com (2603:10a6:20b:55f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.19; Fri, 24 Nov
 2023 17:04:06 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7025.021; Fri, 24 Nov 2023
 17:04:06 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Index: AQHaHOYJS+jGppb1UUOxtF3z9OWfWLCHzHaAgABQlQCAAUc1gIAAT3cAgAAC3YA=
Date: Fri, 24 Nov 2023 17:04:06 +0000
Message-ID: <B9666CC9-7A53-49E3-98F3-631F1C3595E2@arm.com>
References: <20231122014822.3871458-1-raj.khem@gmail.com>
 <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CAMKF1spmQVfXj6TMMgDRrneUeFBKjGfvfN5JT2USC3CkyvVB5g@mail.gmail.com>
 <750E6423-8371-46C6-96A0-DB901787BEC7@arm.com>
 <CAMKF1src_2+T=OOr2G2B+P=HmwXjTJGU+BGCn=bmrvHjaoCmAA@mail.gmail.com>
In-Reply-To: 
 <CAMKF1src_2+T=OOr2G2B+P=HmwXjTJGU+BGCn=bmrvHjaoCmAA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8504:EE_|DB5PEPF00014B92:EE_|VI1PR08MB9959:EE_
X-MS-Office365-Filtering-Correlation-Id: 496b0997-7473-4eb1-11a8-08dbed0f6347
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 coxm+sAjlpUhlFrGuFKb0zLkWWO3DeWFymi+3ToakY8//WKUzpFc42ZXVFC4AK1m5calbPyl2FDB4InVEf9pxOl0Sg/PS569nY+HsmbBNEZgwz4f0jrpwzVcYHfrY/0ryE3m8k7djymYY4cK33i+FsemSyYKXHMSr2DXf4lYX/9b7UErUL9n3Bm/iH+5JGQuWmfqYKLuWAh8ptSwXfOrrRyI7ejJHtvkmm6FXukE1peprsCLSomYhskZG9gNAxXYoSHlkdsweN2EpXYv7/7fWuKew7Pq9F+jxjAG+HRV4fLKtQagoPVLoN2OthjcWAMnTTWSoOaD5uGBTL78KOa/2al37vCIOWV7O/gV9QGWAnhnMbNioBizcXkOPv2Cj8LzauTjf34txB/ao/0efa2kCnDv4zOD/IbE5+5vafW+1wt5h2qGSMG6kxzGOKy/XIMU/bm+mazsNv+LvedtiHoZ98Sn+PrkjkZkwNL/uB/KfPbKTHkdRsPPz7w0vleu+7NtleSzMdRapu6VFyCNGt9rrGmHfwCbHPNVXMFZ4Sq6gA2naspLUZg8nRfPNL746SVEC7I7hdEV3Cy2YVVGRmJiF8tOvhxSGyd4VjjXQHUyFw1pWy7vQ/zVdcRnjohqoVJYtFa1DHnJNZTTY/vYyGdD1w==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(136003)(366004)(396003)(376002)(346002)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(38070700009)(66946007)(66446008)(66476007)(76116006)(66556008)(91956017)(64756008)(38100700002)(36756003)(122000001)(86362001)(71200400001)(6486002)(2616005)(33656002)(6506007)(53546011)(6512007)(4744005)(2906002)(26005)(6916009)(316002)(478600001)(4326008)(8936002)(8676002)(5660300002)(41300700001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <038A5FE5A0FAD34F8032C70BEA78BA11@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8504
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B92.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	1d199df1-0535-4821-f911-08dbed0f5e16
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YaR1sDCsrMyS7iUR+977LCTV2+UwJjFTSMb2Vv99AHTdmQIYiyc1cIjNMN7C0P9fLvpfe0ma1fdmvSh9bbf4ihBwJeXEguLblR3iAN78AOl9fbhLeFVmc7/WmqMdcGmUR/acHLAGNO6+tbx58sClXx+O/aTrj94q/TA7pFBRSMhXKqpdq46iu+B6lfVgOb69CU5u+pWNnfP8Htzm96aA5y2WtVu+rD0TWHay7gySr/vu5q6hf/8Xp0dOpPHeZHLWJeNmheI3f5AhESbSSuyWrz7aaLvPx/dEstWznTxc2hUcGc74v1WxJ6e34R4Ftz6TmT0IMJ1sXo/Pc4W/EYR6iwkmo4i+DfJk7n0rqqnf1DB+m5DLRGutA7e9flsjDRQnXda6raMQdg8a1WnTDR+uEcdZ20pffj/9AHycTBsPqu7XGjpLxb07LKohCOA0joj8N28iRsNNke2A5imuEhSyHW9G01c70if7aSEPVvBRwiGbq9rcIKrcUA5X4ENKp8cCtN80zrnbJHISk2aAkrJezhWyLvXozxfSez0cmTOpxHSfsZl0c8Cz6na7sBP+thq11lXiNwxNJUXxj4sLCDEbJghjlbBHaZVNzq9mzwX1DlnwFFejrQctASSR+Yt6ALqp24AnK2tN2BoFAQ9B2v8e3nMvC6bRl/7RtzQ8HPPfSHdFWIOKkEjYLJokcccJp1L6+IjGaliQK4kuyAMmwHbzpA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(346002)(39850400004)(396003)(136003)(230922051799003)(82310400011)(186009)(64100799003)(451199024)(1800799012)(36840700001)(46966006)(2906002)(6486002)(41300700001)(5660300002)(336012)(4744005)(6506007)(36756003)(36860700001)(6512007)(53546011)(33656002)(2616005)(47076005)(86362001)(26005)(478600001)(70206006)(70586007)(316002)(81166007)(8676002)(8936002)(40480700001)(356005)(6862004)(4326008)(82740400003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2023 17:04:14.8795
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 496b0997-7473-4eb1-11a8-08dbed0f6347
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B92.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB9959
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Nov 2023 17:04:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61754

DQoNCj4gT24gMjQgTm92IDIwMjMsIGF0IDE2OjUzLCBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwu
Y29tPiB3cm90ZToNCj4gU28gdGhlIHRyaWdnZXIgaXMgYmFkIHBhY2thZ2luZywgYXMgc3VyZWx5
IHRoZSB2dGUgcmVjaXBlIHNob3VsZCBzcGxpdCB0aGUgbGlicmFyaWVzIHVwIHNvIHRoYXQgaW5z
dGFsbGluZyBhIGd0ayozKiBiYXNlZCB0ZXJtaW5hbCBkb2VzbuKAmXQgcHVsbCBpbiBndGs0IGZv
ciBubyByZWFzb24uDQo+IA0KPiBOZXcgdnRlIGVuYWJsZXMgYm90aCBndGszIGFuZCBndGs0IHN1
cHBvcnQgSSBkb27igJl0IHRoaW5rIGl04oCZcyBiYWQgcGFja2FnaW5nLiBNdWx0aXBsZSB2ZXJz
aW9ucyBvZiBndGsgY2FuIGxpdmUgdG9nZXRoZXIgaW4gYSByb290ZnMgd2l0aG91dCBjb25mbGlj
dCANCg0KU3VyZSB0aGV5IF9jYW5fIGJ1dCBpdOKAmXMgYSB0ZXJyaWJsZSBpZGVhIHRvIHB1bGwg
aW4gYm90aCBpZiB0aGV54oCZcmUgbm90IG5lZWRlZC4NCg0KUm9zcw==

