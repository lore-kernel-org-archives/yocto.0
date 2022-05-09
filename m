Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE102C433F5
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 15:58:16 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.74])
 by mx.groups.io with SMTP id smtpd.web12.111.1652111888457795683
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 08:58:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=3e11TP+X;
 spf=pass (domain: arm.com, ip: 40.107.6.74, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=DS670JOT0ORj+kKk3h1FmVjiX4oK6FXmy3sndMBaYIn1T4c7d21aPdKmwfrau4MP4OtcNDK0LY1+vblmLm/QBewYHf/e9lqPfrOjqF79Xo2/SNK7vgeMecjVhSNiuglDbBUTfDNx1xg13kDl3Alutuqq6fABBcpKpc9/p+2PAJma19MZs3rRJuWXc1ZbqmHXo23+9AFvY4EN7cZDrLBShB3aUbgKKKZuDO3o41x387j2F5CckTATETRitIvEXhcUaCj/W8+s5T04Pe1oMzp8mUcO0f4IEc/Eh0WsZf9IR3cfqg9T1FkULiuIEggRBxKg7fNi7hrAp0jzTY4vYB2KBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OLvEhBXmNEDKh23Uix+xQfGJ5YuQm9skrk4EwY12Ylc=;
 b=ATnmzvfUX3HY2zR3P4jERw0ZJ7/Z/xiJ2jXUy2E09xvwi8JxJBF7ajA2oh6romycNV/SIn2KfpnkXSb91PXjx2tJZTw7DXrh3nx1lbilHS0H1JngjjN8tPNwBjy8oEgaA2m1hhC2t1mnGjRLfxJYclmjIRBPc8maB31Dl06MQ0hSEpPLu6d2usjxFUdoWxhm9A4l94Co+0sWtLE06SGQS5Acg3De/E5MwBPMs8B50JHL8xoEqmAYgPxYrFiam6TgzIaJpRtIGNlYUWh8O0AcNc9O1VXghYg2da8KswlAL5dnjRRwu4yrKgrnraVbRgliByrtBhAKye3Rw4h9IA3ROw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OLvEhBXmNEDKh23Uix+xQfGJ5YuQm9skrk4EwY12Ylc=;
 b=3e11TP+XIqitSuuRwh3LCfMW3GO0hvnl7rjblNMsUkRmDy9HqFulxsKNJuz1ZNbfjA3hL+K4DxebWCjvrXPU2E1hOGCCy3iKPqB1TfHy9HgKGu2r+pKckpKJHMsCIdJCoAAZsRFDCEFSVLMCezvOYu+Z6UN3M1FcVZXZfNGHdlw=
Received: from DU2PR04CA0277.eurprd04.prod.outlook.com (2603:10a6:10:28c::12)
 by VI1PR08MB3646.eurprd08.prod.outlook.com (2603:10a6:803:89::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.21; Mon, 9 May
 2022 15:58:04 +0000
Received: from DBAEUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:28c:cafe::bb) by DU2PR04CA0277.outlook.office365.com
 (2603:10a6:10:28c::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23 via Frontend
 Transport; Mon, 9 May 2022 15:58:04 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT018.mail.protection.outlook.com (100.127.142.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.15 via Frontend Transport; Mon, 9 May 2022 15:58:04 +0000
Received: ("Tessian outbound 9613c00560a5:v118");
 Mon, 09 May 2022 15:58:04 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a2437b098fc6c2a2
X-CR-MTA-TID: 64aa7808
Received: from 86dc324ab948.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 EC56636D-5DA1-4A56-827B-D63DBA3AC2D8.1;
	Mon, 09 May 2022 15:57:57 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 86dc324ab948.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 09 May 2022 15:57:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DfULSpX1BcZZWzRvP8ynmC8ZsL/GZ5jdDJAS2COaeaXUecH45o3L5icofnf9ndBpLSgZKSV16kjwl8rSFECm3gAdG9UT7arghiMZpq/pPgZTgBlEbON79tEq1P9pO5zKSJzO3NnnDjFvRZSZtA5ifO7wBKGh3wzB1HlOel2+FDtQWa8Jg8qSBPRKOrl4HulGkQaW52urEoqRGh0RvuO+9pf3QhEfE3ic/w3t2hnUmC4sEOvXbtwXt9LwqLMOo42lOpbf1cVgWiJnfYMMh2p/b7BiEvP8svK6wZ2yUELOnxTuCUAvnh1CUjj9X5Wj8j9X3z/W7Hv5jQ52WwNnkwUtgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OLvEhBXmNEDKh23Uix+xQfGJ5YuQm9skrk4EwY12Ylc=;
 b=O/AVy2R7MnPzAtZH+ZY32BwcQIZmMxIJBuA4ngD4TiTDxzQXY33g6qRfsCErZsYFDyLnSpkk0uNacE2/rvry8TFAjjJv9EvWX306zabmvL7754Ekg++8jlCtoJvEWs5wPtVUHCKTBbDfOsKlLGVzxgsDgV86mMly4ksEl16toTqRfmCe71V0bOvWPO9dRAuEf5E8KhkCy+OcYgAE+QJAC2BTwB9whe1z89pFijj3BPzWfLMKJEOjbh5BNiB1Q4y/TwqosUv9nBL7hh0Xmp/XegcYOLu3NAwRMMHOFmbjjJuTDjEYaSbMyc7ewDUST/03ttDpr1bfkxMDJ2FCsBPSlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OLvEhBXmNEDKh23Uix+xQfGJ5YuQm9skrk4EwY12Ylc=;
 b=3e11TP+XIqitSuuRwh3LCfMW3GO0hvnl7rjblNMsUkRmDy9HqFulxsKNJuz1ZNbfjA3hL+K4DxebWCjvrXPU2E1hOGCCy3iKPqB1TfHy9HgKGu2r+pKckpKJHMsCIdJCoAAZsRFDCEFSVLMCezvOYu+Z6UN3M1FcVZXZfNGHdlw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by HE1PR0802MB2460.eurprd08.prod.outlook.com (2603:10a6:3:dd::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.24; Mon, 9 May
 2022 15:57:47 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d%7]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 15:57:47 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: nd <nd@arm.com>, "elizabeth.flanagan@huawei.com"
	<elizabeth.flanagan@huawei.com>
Subject: Re: [yocto] [meta-zephyr][PATCH 1/6]
 meta-zephyr-core/python3-pygments: remove, duplicate of oe-core recipe
Thread-Topic: [yocto] [meta-zephyr][PATCH 1/6]
 meta-zephyr-core/python3-pygments: remove, duplicate of oe-core recipe
Thread-Index: AQHYY71UsOkrlS7KHECegSePogesx60Ws0Qa
Date: Mon, 9 May 2022 15:57:47 +0000
Message-ID: 
 <PA4PR08MB7411BA75706585F25225B2E6E8C69@PA4PR08MB7411.eurprd08.prod.outlook.com>
References: <16ED7AE5F85B847B.1832@lists.yoctoproject.org>
In-Reply-To: <16ED7AE5F85B847B.1832@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 7e5a9982-1d38-42c9-cbbe-08da31d4b3c4
x-ms-traffictypediagnostic: 
	HE1PR0802MB2460:EE_|DBAEUR03FT018:EE_|VI1PR08MB3646:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR08MB36464F864C6C54D32E9D1B2EE8C69@VI1PR08MB3646.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 vn6CZLsWqvbEdMj1/DWLNuwvfynOlSsZD0FN/Dcnnkej7w3X/dWCSckV6R+R/SJw4fMXQq2qhIy9+wt/AupU4mEAxhRMayMY4zCdl/oCHql2AFgeaO0rExZVqeopNuQVqiZq2yBaF3/Edo13pC46Gfir8t0aKWcQFJxwlOg6b0q+bctaFn+oY2XLgbZnA7XJWIoi4ujDSfPEVdE+EJ1PM8SDtwUiWxgXe5EG4h7Sl9nbrOjUNP3Zf+s1TnuEriuzsU9eBiRzXGlo4Dordi4ZDfZkhqoA6FrdqWYIPMunAgYikY49bScR3XFLQkOQ5ioUkvdYwqOsjlSeCYdbU26nWT+wfmGpxvGYhv7brhbvLK2dUs9S7xGKFe6VwV75bgoR8GVrO3tUrTuM62CHtwyMhRYrcyQCteFVEVF8RWudId2zBX2EvwQcUroesgwqomQe/hDJhw1ss7dPp9A4UPeduPox61sda6uQ3zCUMuDU9grFE9Q8YUxxXhlfQsrosDQDg23tqoc3igJdPzHNCs0BYMp2+7ePerCBww6imR7mwDqBj7yTpWT4lifgHjrmshGmUcBeIx65a/LlEpMrtMzEsih/+FcHiqgmSNJsqoP+azH0gB++GyQ9n6VDGsivuS/TovT4pIAurJgK/Vf8sw1MGJCw8OHYQV9RrKGhDK9JJkKxX76Pnf3Ul9cm9BHDS7KFt4PvQ9D7VNws4tobUtjthCPuKFs/Rky4kaSrBP8Di0ia+azcsOXKKweISR4nSWlQw/Y7+VWFeXziBiNFoUVfMXL6ZoaVNm/eN1Nmv/gqoNUZUC0noXFU74FNSouXwW6/dxRoYBibMOBuGVaVh1/kKw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(38100700002)(166002)(52536014)(122000001)(83380400001)(316002)(8936002)(2906002)(7696005)(66446008)(76116006)(64756008)(4326008)(66556008)(66476007)(6506007)(8676002)(508600001)(66946007)(33656002)(91956017)(38070700005)(6916009)(5660300002)(26005)(55016003)(9686003)(54906003)(186003)(71200400001);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_PA4PR08MB7411BA75706585F25225B2E6E8C69PA4PR08MB7411eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2460
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT018.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f4bfeca7-9272-456a-e83c-08da31d4a973
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5KTqXenn7TjFsqOEDljsTMeB36RdrMgShBKbFYa3ZDB1A0InDJa9cq6p35/3vwvuYHGBsqVIBoVtVaoUgEPZsNF/aIiXaRSOXT1WaQAHbZz1aHnMzYatTf7RKOe0vLOViDzITjYM1M3g9Lf/9KG6Des3fRFNcZ9vY6WW2TZPBtQuBdSd7RhS4hc+DxyXOMMSOdXtYTwr21aYwvTwNUEmpWXUffXW3e41eXXpnAHnZudM4z/Lv3Vk6Ko0OOa89nKT629Qeh97IOJyNcFOpT0PLbeBcQKQYYR93l3x/vBbRJ6ENxqgv+VZ2aKswpNrMcsCF97ZbSTKxzLgMUI/VNL5yJYuFE54TEQ2LP+VdMw5DrMkXFA039cm55D16aBUpEFhFDuBaljQa1k8v9yqgRByw/lH5/Q6XYLJmetx1SQkSDoDRevZzXpFLRB70uSnD8roZkEnBNuHWuIiV/XC1wrY7ijgIv6akA9uKxpZl3eeMGkAixV9929LhHaZygU6MqTh0RwsCR7kaKJaVoZ3MfIBPBuytwHWBLh/kHZFYHsTssJsJUag9nQh497lYquvPrbKT/S9lCcuRLv5bts10v2yTAV3K7n9lB3Qw91PldMDxxGJLwGOEv+2NmiI43RjYYAKrskiuYPZkEP7RaWVhJ/ER7Qz1FRr5VlUfVdJi2GDSegBmgPmN2JlsZCFGkUZ47rz6FngG0etfJNfBbloLPAsMj3KH0QwoVmSUwlfBusSUQbGcvJ60mvSBDocGkN03UIrWsqSAUvlf4F6w2x/3ygVx/i8sFjwsrUXjSvE+2OcJLLrQjkOEngXhj6ISzBGGDwe
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(40470700004)(36840700001)(46966006)(52536014)(36860700001)(55016003)(508600001)(81166007)(8936002)(6506007)(166002)(186003)(9686003)(8676002)(70206006)(70586007)(33656002)(2906002)(7696005)(6916009)(54906003)(356005)(83380400001)(316002)(107886003)(86362001)(40460700003)(5660300002)(336012)(82310400005)(26005)(47076005)(4326008);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2022 15:58:04.5193
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7e5a9982-1d38-42c9-cbbe-08da31d4b3c4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT018.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3646
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 15:58:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57038

--_000_PA4PR08MB7411BA75706585F25225B2E6E8C69PA4PR08MB7411eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Copying in Beth as she added these recipes in de73bdbabaa012fa4dbe87e4de25f=
ca3f2db1129.

Ross

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Ross Burton via lists.yoctoproject.org <ross.burton=3Darm.com@lists.yoc=
toproject.org>
Date: Monday, 9 May 2022 at 16:56
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Cc: nd <nd@arm.com>, naveen.kumar.saini@intel.com <naveen.kumar.saini@intel=
.com>
Subject: [yocto] [meta-zephyr][PATCH 1/6] meta-zephyr-core/python3-pygments=
: remove, duplicate of oe-core recipe
python3-pygments has been in oe-core since Dunfell (5c0d4e59).

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../python/python3-pygments_2.10.0.bb             | 15 ---------------
 1 file changed, 15 deletions(-)
 delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-pygmen=
ts_2.10.0.bb

diff --git a/meta-zephyr-core/recipes-devtools/python/python3-pygments_2.10=
.0.bb b/meta-zephyr-core/recipes-devtools/python/python3-pygments_2.10.0.bb
deleted file mode 100644
index c4b63c1..0000000
--- a/meta-zephyr-core/recipes-devtools/python/python3-pygments_2.10.0.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-# SPDX-FileCopyrightText: Huawei Inc.
-# SPDX-License-Identifier: Apache-2.0
-
-SUMMARY =3D "Python pygments"
-HOMEPAGE =3D "https://pypi.org/project/Pygments/"
-DESCRIPTION =3D "Pygments is a syntax highlighting package written in Pyth=
on."
-LICENSE =3D "BSD-2-Clause"
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3De3fc50a88d0a364313df4b21ef20c29=
e<file:///LICENSE;md5=3De3fc50a88d0a364313df4b21ef20c29e>"
-SRC_URI =3D "https://files.pythonhosted.org/packages/b7/b3/5cba26637fe4350=
0d4568d0ee7b7362de1fb29c0e158d50b4b69e9a40422/Pygments-2.10.0.tar.gz"
-
-inherit pypi setuptools3
-
-PYPI_PACKAGE =3D "Pygments"
-SRC_URI[md5sum] =3D "87369a4e15019caf9cf056ab2c5858b3"
-BBCLASSEXTEND =3D "native nativesdk"
--
2.25.1

--_000_PA4PR08MB7411BA75706585F25225B2E6E8C69PA4PR08MB7411eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Copying in Beth as she added these recipes in de73bdbabaa012fa4dbe8=
7e4de25fca3f2db1129.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Ross<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><b><span style=3D"fon=
t-size:12.0pt;color:black">From:
</span></b><span style=3D"font-size:12.0pt;color:black">yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Ross Burton via=
 lists.yoctoproject.org &lt;ross.burton=3Darm.com@lists.yoctoproject.org&gt=
;<br>
<b>Date: </b>Monday, 9 May 2022 at 16:56<br>
<b>To: </b>yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Cc: </b>nd &lt;nd@arm.com&gt;, naveen.kumar.saini@intel.com &lt;naveen.k=
umar.saini@intel.com&gt;<br>
<b>Subject: </b>[yocto] [meta-zephyr][PATCH 1/6] meta-zephyr-core/python3-p=
ygments: remove, duplicate of oe-core recipe<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:11.0pt">python3-pygments has been in oe-core since Dunfell (5c0d4e59).<=
br>
<br>
Signed-off-by: Ross Burton &lt;ross.burton@arm.com&gt;<br>
---<br>
&nbsp;.../python/python3-pygments_2.10.0.bb&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 15 ---------------<br>
&nbsp;1 file changed, 15 deletions(-)<br>
&nbsp;delete mode 100644 meta-zephyr-core/recipes-devtools/python/python3-p=
ygments_2.10.0.bb<br>
<br>
diff --git a/meta-zephyr-core/recipes-devtools/python/python3-pygments_2.10=
.0.bb b/meta-zephyr-core/recipes-devtools/python/python3-pygments_2.10.0.bb=
<br>
deleted file mode 100644<br>
index c4b63c1..0000000<br>
--- a/meta-zephyr-core/recipes-devtools/python/python3-pygments_2.10.0.bb<b=
r>
+++ /dev/null<br>
@@ -1,15 +0,0 @@<br>
-# SPDX-FileCopyrightText: Huawei Inc.<br>
-# SPDX-License-Identifier: Apache-2.0<br>
-<br>
-SUMMARY =3D &quot;Python pygments&quot;<br>
-HOMEPAGE =3D &quot;<a href=3D"https://pypi.org/project/Pygments/">https://=
pypi.org/project/Pygments/</a>&quot;<br>
-DESCRIPTION =3D &quot;Pygments is a syntax highlighting package written in=
 Python.&quot;<br>
-LICENSE =3D &quot;BSD-2-Clause&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;<a href=3D"file:///LICENSE;md5=3De3fc50a88d0a36=
4313df4b21ef20c29e">file://LICENSE;md5=3De3fc50a88d0a364313df4b21ef20c29e</=
a>&quot;<br>
-SRC_URI =3D &quot;<a href=3D"https://files.pythonhosted.org/packages/b7/b3=
/5cba26637fe43500d4568d0ee7b7362de1fb29c0e158d50b4b69e9a40422/Pygments-2.10=
.0.tar.gz">https://files.pythonhosted.org/packages/b7/b3/5cba26637fe43500d4=
568d0ee7b7362de1fb29c0e158d50b4b69e9a40422/Pygments-2.10.0.tar.gz</a>&quot;=
<br>
-<br>
-inherit pypi setuptools3<br>
-<br>
-PYPI_PACKAGE =3D &quot;Pygments&quot;<br>
-SRC_URI[md5sum] =3D &quot;87369a4e15019caf9cf056ab2c5858b3&quot;<br>
-BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
-- <br>
2.25.1<o:p></o:p></span></p>
</div>
</div>
</body>
</html>

--_000_PA4PR08MB7411BA75706585F25225B2E6E8C69PA4PR08MB7411eurp_--

