Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26497C7EE24
	for <webhook@archiver.kernel.org>; Tue,  6 Jun 2023 09:35:10 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.52])
 by mx.groups.io with SMTP id smtpd.web10.4617.1686044106244479912
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jun 2023 02:35:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Kga2I0l8;
 spf=pass (domain: arm.com, ip: 40.107.249.52, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Do8BifKMvR49U9RHKyA4F8IwFw0zitMu7ZMmzqF2GgQ=;
 b=Kga2I0l8cBY8tXzzDziCgKqmWN8A8OPVFIXWUJ6wvb7GyoM41ik9c5k3nQv39qUTpGNFY4laCkRbDZdQFJtM7FDDtYzI5v0elyVEmuoCidAS/TzgXOWGjmVWYwf6LPQQD17+8sKW+8ay78jwOnla0vVZxAJY6nRIoSBb4FyOcSs=
Received: from AS9PR06CA0270.eurprd06.prod.outlook.com (2603:10a6:20b:45f::31)
 by DU0PR08MB9901.eurprd08.prod.outlook.com (2603:10a6:10:479::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 09:35:03 +0000
Received: from AM7EUR03FT017.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:45f:cafe::11) by AS9PR06CA0270.outlook.office365.com
 (2603:10a6:20b:45f::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32 via Frontend
 Transport; Tue, 6 Jun 2023 09:35:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT017.mail.protection.outlook.com (100.127.140.184) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6477.19 via Frontend Transport; Tue, 6 Jun 2023 09:35:02 +0000
Received: ("Tessian outbound 99a3040377ca:v136"); Tue, 06 Jun 2023 09:35:02 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: df42e131d6f85090
X-CR-MTA-TID: 64aa7808
Received: from d7732adb626a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 2F6E726A-98EB-463B-ABFD-F770B30BF2E4.1;
	Tue, 06 Jun 2023 09:34:54 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d7732adb626a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 06 Jun 2023 09:34:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mXGxUBN3E1eJSXBsL5wCF3gt0zGgiRm2dg79/7PyjFYAoys8V0zTFGfnwGaKU5eWwI5Np606bDT5ipaQzn9a/pTzrOtL1SKKIovXg/gviartqgbo5teNMLXRVHFYFoQcJtvuHo+dWCMGZVrp1zshKTRUdTOqEC7H80kOqB01xe+y2n4MCDdsn2k2pMxd7LWc0R0SCUNJ7FxTHi2R10U4eTnWW+fAK7+KmrH2GiN6raALYqgVAWlzINfHThDK43NmGFXofRUx2D518c9g6wEmOSo8I7Yqak9/xXV7mIdu+jsHTbKep/jcmfJbp5ZQQxfIfTLmMKW3El3Z+6wx9Z9ehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Do8BifKMvR49U9RHKyA4F8IwFw0zitMu7ZMmzqF2GgQ=;
 b=cp6ssWQz1uGqQxhTvV7H3FXVJ19OrMSEIYaENjuNmJ6RIMuf4IUOq1CLYO1+j2Of9tAdYAtXFi6bstQvqZf5hVvCq6gzAlWHPaIkz6RnRzVfOy/e6s22WzXvresEJYnoZ2RC7uIrXsyih4qGUmYufFNR+P6HklTv+gplPUNdpaBqXDi24jbdHR6tSkOdh8buW8JrRTVFQEr8qRhBpdCJGeu5wl2iXKdScJLwX5+MyxX2s/ULBxbHGk/YpjCKwkaIS/o1u9cf9iK0fxRx9j3nwCxvNB4hxwroBlriPcrzT3RiFO+LYdzcFvltG+WSLucNdcFqs5mp2ZkvbLcfYhrFlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Do8BifKMvR49U9RHKyA4F8IwFw0zitMu7ZMmzqF2GgQ=;
 b=Kga2I0l8cBY8tXzzDziCgKqmWN8A8OPVFIXWUJ6wvb7GyoM41ik9c5k3nQv39qUTpGNFY4laCkRbDZdQFJtM7FDDtYzI5v0elyVEmuoCidAS/TzgXOWGjmVWYwf6LPQQD17+8sKW+8ay78jwOnla0vVZxAJY6nRIoSBb4FyOcSs=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB9223.eurprd08.prod.outlook.com (2603:10a6:20b:59d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 09:34:53 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 09:34:53 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "mahendrasondagar08@gmail.com" <mahendrasondagar08@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] new recipe file to extract the tar.gz in to root
 directory #hardknott
Thread-Topic: [yocto] new recipe file to extract the tar.gz in to root
 directory #hardknott
Thread-Index: AQHZl9XJlxfCnFLmy0C8iSQluSMv7q99hJIA
Date: Tue, 6 Jun 2023 09:34:52 +0000
Message-ID: <C576B802-6207-4CF1-B547-F02AC83748DD@arm.com>
References: <rC1u.1685987229179457557.GJiP@lists.yoctoproject.org>
In-Reply-To: <rC1u.1685987229179457557.GJiP@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB9223:EE_|AM7EUR03FT017:EE_|DU0PR08MB9901:EE_
X-MS-Office365-Filtering-Correlation-Id: eb44982d-50f0-4682-914f-08db66714dc7
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 vi+b+2jZxNvkJHe1URx43g8NwqOJtbgyoXig9KU18hL9qZGsbcs4DUJ80f/GE1wT+4hOZz7IW6julmBRcs4HHWGqHoJ1DCaXQaQ9VIzBzuVd5XQNd0zIqWwNH4phuj9reccRh5aGMD5bF0a5k/7UIfbWWy0YzZlbGGWB4U5uZ7BkpSoMh/aIISRWETXiEJa+tuHohpiss7ace2wx8RdMQ8/c+TQD5ir9mb3ox/pHKOxmUNm+9L86EI0E6ZCplz3VOEFcTyNuxnIIxEubmBSGm5xMvpyrK2X0OXGKGXCLpOGwsI36EQSFVKg8zjHfIsvRDuI/4jJBZKzzyf+yKTJbdrdR0BqdaPH+B99ttkxw7SyI43jRMPijACNHLJKB8R2j//Cm5Xc8tLWyzvabCu4AuPW9vnkxV12aA9DsLoYBQpYVWaPdHkIC5q1XGA0VGG4Sz4JO0atu+uMUXGCmFENvdtylE0OmVsujzg5NO8hYMojO8SdRSBJARHy2+tzycXEBybWziUQNI9kfyyznkkUKxFMMk97l38qEa99eSxY7r26ZUP1pPOYsx7dJdZ8R/lpwjZrBHbcfeUTQKseq2tJu2T7CkH8Bv2gw55iTSNjlsS3quOVQ35Bm9rTrxuynhOLZRcKfpwjrFLvUu0kzfK8OCQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199021)(71200400001)(478600001)(83380400001)(2616005)(33656002)(186003)(6506007)(36756003)(6512007)(53546011)(6486002)(316002)(38070700005)(41300700001)(91956017)(66946007)(76116006)(66556008)(66476007)(66446008)(6916009)(64756008)(86362001)(4326008)(2906002)(4744005)(5660300002)(8936002)(8676002)(66899021)(122000001)(38100700002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <40545A8D442DAD47BA8CF8CC95D35C13@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9223
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT017.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b233d851-e56e-4d1a-8334-08db6671481b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KZCBoKunhwRfuBIux+t0UR2meJuPKc1wlTwQKDYqIf6CXIADpxgzNxo6ym8iQCGyrqqijzcFuJHWNtM7ViCKO2aefbUN0CIgVawkO2biXJ4Uw3If66zj5P8V0sZfSWeMhHqEMtz0dOUMVVBfjVOlieoK482GS8rdBEI+7MxvZ+A+ClJkZ9UB5s4NcBcU/8VyavGSmuIlbzQblq9GNcZDbcGiv0261OmLIJ5NBWurOAJ0WfOhsGtST7bZMR/Selb5OZncepHW5SFjUsXTqtNUSv8ryGIy7TtEf69rpxAb9fD2BgzAk1aP3WeZMuym2MlVxLYUdhzUJCFVrrRIwlOTgr6gtenmM7V0nC3rHFIAvBLb9dL6G7rrf1oDKnUNUz7S/hyjG6DFnhRuMTdSrqjQ5LmXBWRUDNr5TgY8HA/IIFDrq4Xufcjh4SFcyB/674Alzkq+wIZGVIceUERVw5BHV71Dk0rPfFiKhQHmGGS7DFg4sC8ttadMXqjDqrkrsbAlTNLMWgSvh3RFoEnO8BrHA1aUYl9BSssrEx92et5CFbqoOLiouFMMAXhJ2xN8rxlytolOxphrleT0cflViHDsqKGt4sm1ONbmAmbpnm/ph5YD70QhCKfu01WHr4NhvydSdbP0YQ1bfkdH+TZXxRDG/U+61aW8uWM/iEqT7RrQy+QoLugFNJzLp9O2bKcXF49hLQapoaIAipa1+90rPSE9wAkS8vWbcwVW67AhzOCZrGENmP6eBX6l9VARdhmpC0q4
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(376002)(136003)(396003)(346002)(451199021)(40470700004)(46966006)(36840700001)(40460700003)(4744005)(47076005)(2906002)(336012)(83380400001)(2616005)(33656002)(82310400005)(86362001)(36756003)(356005)(81166007)(82740400003)(36860700001)(40480700001)(6486002)(41300700001)(316002)(5660300002)(6862004)(8936002)(8676002)(478600001)(70206006)(70586007)(4326008)(6512007)(66899021)(6506007)(26005)(186003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 09:35:02.4694
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb44982d-50f0-4682-914f-08db66714dc7
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT017.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9901
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Jun 2023 09:35:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60188

On 5 Jun 2023, at 18:47, Mahendra Sondagar via lists.yoctoproject.org <mahe=
ndrasondagar08=3Dgmail.com@lists.yoctoproject.org> wrote:
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

This is only needed in bbappends.

> LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0=
bcf8506ecda2f7b4f302"

Ideally this points at a license statement inside your tarballs.

> do_unpack() {
>     # Extract the tar.gz file
>     tar -xf ${WORKDIR}/eyesite.tar.gz -C ${WORKDIR}
> }

Why are you manually unpacking the tarball? Delete this and let the default=
 unpack handle this, setting S as appropriate depending on the content of t=
he tarball.

Ross=

