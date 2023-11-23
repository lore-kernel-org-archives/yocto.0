Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B0D9C5AD4C
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 11:50:07 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.44])
 by mx.groups.io with SMTP id smtpd.web10.88996.1700740200385251994
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 03:50:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=J8BzmG9M;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=J8BzmG9M;
 spf=pass (domain: arm.com, ip: 40.107.21.44, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=drEPkFUNxClTM36QvVt09eZYycnTTEGyoVMO+SwxlMYyrNbZTJGfyNHV2F/h0Aq73KGKNTOnWrGGnpg3VVUKWAALL2IISQeoyHsR6SuYGjqLvSxdRRqv2XTOeaIuOWWT5W7GvfqcB8rB+SCefYvjDDTUGnf7cmJhrNBxzb05EMl1LnelnOrQu0Be1OlhYm1a8ubXUijrL6FzfLIyS2R5HLE0GFEEIoOgldt73qsC78vyTtSHHKYXvysrq0JQY7CALLifQNlU5vqucjAw/MuOMvE2bBrPM3ic5HdvT0D3fDf9H3pmQiqKq7RhHoWvKVCcKoid+w2NyK4GSarj6dxD3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2qezopkFLzmFtq8Ty1xGAyFnGYSJXGi+tCXrHB1eXo=;
 b=aK6IijSDyHa5za6QGB/rEZYTT/qkRy62197LgR2OA0auB/NCX0lbWU22MH88vt2s8+8+gUPEtGwq7wLzbvLQHm9No4sF66Bg/YEw27LVA9mGXhhDgWTXQOlJBuJ2UCjOfZ02JvghJSau7eMeUlISot69hcAVzExgqXjwQOs1gnKPsA1Wymj3gvUa21muoNtcULvsgoIYHCCvJjlhjoQAz1Hoh0p+0kNjZlkyTbwOxFQi/lKu2bibAgzJb8KBhK9A8N0eCtL4P/eYI0dTFYBNgRqjpv1oBsQNJ5WvSuS1F+QR5AMV+QqCxJ8mf9VcR5RNyJlZXRKTsPhcUvGKkKnsKw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2qezopkFLzmFtq8Ty1xGAyFnGYSJXGi+tCXrHB1eXo=;
 b=J8BzmG9M8XsMQN1nLHCBeKl8uUVYYtz58Jit04lY+xyKzLTr9e7KxwaR5hGoNKNtZlN2UZrjaH74AJdGYCpBW8+Eg5AuQBHGDQ1ZWmWuDofyHoIdnm9txjntewVaidfMUZL1jCc3bTQxb2sSsFobzV/ObrxgDRYLJ/aVUzXPXcY=
Received: from DUZP191CA0003.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:4f9::22)
 by DB9PR08MB8737.eurprd08.prod.outlook.com (2603:10a6:10:3d3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28; Thu, 23 Nov
 2023 11:49:56 +0000
Received: from DB1PEPF0003922F.eurprd03.prod.outlook.com
 (2603:10a6:10:4f9:cafe::1d) by DUZP191CA0003.outlook.office365.com
 (2603:10a6:10:4f9::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20 via Frontend
 Transport; Thu, 23 Nov 2023 11:49:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF0003922F.mail.protection.outlook.com (10.167.8.102) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.12 via Frontend Transport; Thu, 23 Nov 2023 11:49:56 +0000
Received: ("Tessian outbound 8289ea11ec17:v228"); Thu, 23 Nov 2023 11:49:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b83023156aaeb97b
X-CR-MTA-TID: 64aa7808
Received: from a496ebda632f.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 761D096E-5B20-4414-8BCC-D824C152CCE3.1;
	Thu, 23 Nov 2023 11:49:50 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a496ebda632f.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 23 Nov 2023 11:49:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c8KcRjjdYbJz3nHfaQRFoZKn9o/3sqoxv/28xBb8y1Hy7iiLnfQaxyYT891LeTWPeU6n+pL4lqXHxeNExHMwphyqW3CuHSZyqZYkX11U7/ZC+coQgFgwOfZa+4Ftz8LZejyo7KkdFcmTZO0Ljzot9vgu3S9TRBdKEORzJHmouXSgw+brc2AIIVzvv8R7hw0edjnENdNiCCnz8fEcAdDrKhA/Zvwv0IEcERgUTLbYG/2M41lqbVFjU4wjvHsFebFqzryw1og0F16raAkAQbhCGU9JpLPaK0wVUjEfh7SfLMdtmy/5ae5+pM3STfSlWsC/c05wRT9EYAMFY1Ir754bjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2qezopkFLzmFtq8Ty1xGAyFnGYSJXGi+tCXrHB1eXo=;
 b=PyZhgVqq+fK8Gr/O25Xhem/nqi2uMPI0wLYUsGUepTVBX7u2wZNGp90cyeRv3bVY6PA9dBeCwsxsXYuItrkvskzPmaqN59zTR/4I/hprzMfLjGfH3O82gpcK7MnIy3Hd0heJFahuBsKiBx65xrYnRMloB/49UFv2H/x2cBF1Y9ipAsW0TiumS5URJJpiYaOZKZUBn+p4okwOI+dIKtX0S4MOQvbm4k/gZphpEJPvhbFQUw/fb9olqmktIhtxhaeFG92NAcJ0kD9aRjyk2PCO5StJDfee3YZhjqIoCbLAQvtf/0tCqlSbXuB+8r0I7iFT4HyxC//AFH4aqKMOKUIIqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2qezopkFLzmFtq8Ty1xGAyFnGYSJXGi+tCXrHB1eXo=;
 b=J8BzmG9M8XsMQN1nLHCBeKl8uUVYYtz58Jit04lY+xyKzLTr9e7KxwaR5hGoNKNtZlN2UZrjaH74AJdGYCpBW8+Eg5AuQBHGDQ1ZWmWuDofyHoIdnm9txjntewVaidfMUZL1jCc3bTQxb2sSsFobzV/ObrxgDRYLJ/aVUzXPXcY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GVXPR08MB7822.eurprd08.prod.outlook.com (2603:10a6:150:3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20; Thu, 23 Nov
 2023 11:49:45 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7025.017; Thu, 23 Nov 2023
 11:49:45 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Index: AQHaHOYJS+jGppb1UUOxtF3z9OWfWLCHzHaA
Date: Thu, 23 Nov 2023 11:49:45 +0000
Message-ID: <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
References: <20231122014822.3871458-1-raj.khem@gmail.com>
In-Reply-To: <20231122014822.3871458-1-raj.khem@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GVXPR08MB7822:EE_|DB1PEPF0003922F:EE_|DB9PR08MB8737:EE_
X-MS-Office365-Filtering-Correlation-Id: c79171bb-24a7-40b8-ed33-08dbec1a5022
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 fn/hwvY0CFtoneWaAMKkqzjS8CtlnJ8eBFStD4ejd8ZLvaVG1PivFj+RWp+PDpvcB75YY6ho5Cr5L76hctdjMBwf7scqJbbSy2Q1QnqxTUZTsh6XmZdEVdML5jFmLYnRlycgXrPzC5+MBzZgGKR7na1loMkhrfBDggN6WxoPCZojahkoDn3DXElumd9cRurb0rmwqM564VkOcvqmLKqqEIsOqnBMD8tR+aaOIKb9NdE4pfzffTGFC6GaglLkoGcP+kIrgFX9PEinf0cWH4kx7/bvMizYjy6EbIevHJex7fW0RTYwp4BFGW9Kn0Lnew6O/kQXxK3SbUXgVUeYfdSiparrpkoZz3F/Y00HitNARPT5MPa8oaDMPkxXqFKX484tCOUcQYwf7fiDn0ezzMG69KqhsNTvekGIITvVVAX1HMRzkaF3xuUXoetSuJaw5C1roSB5+F3tbik7OYVufKPy4ithlf69n1DazamRcHXphvWSdAgf+qVzHYInkAW1n/HhI7nhYS1lg2HLSrknaZyzzewQodPCz32HDf79ojEovU3YxOBoavBVPR1M5Dn8bNoOO1z4oNQ1nxR4uI3fSSM1TgRtYFUz7pTbZ7V20/mimIrMxv7XKaEylGk9KZkFVwawgVx/eSHBMFIh07ivk68kGw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(346002)(396003)(39860400002)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(41300700001)(66899024)(8936002)(86362001)(71200400001)(66946007)(2906002)(5660300002)(83380400001)(38070700009)(4326008)(26005)(36756003)(66556008)(6916009)(316002)(64756008)(66446008)(66476007)(8676002)(91956017)(76116006)(33656002)(966005)(6486002)(2616005)(478600001)(6506007)(53546011)(6512007)(122000001)(38100700002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8778092FE5880D4199F113507FB4ABFE@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR08MB7822
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF0003922F.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	cf37f274-cec9-41b2-6b9d-08dbec1a49ec
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WQQSn2ZKDlAjO1b4Vs6BHD7sixkbL7iG/1i8jOkrderW4xUm0VP4wGXSiNx7BRy7XRVUnRg2N5CzA9F5hUFR6zaIgGhkAlEvqPbX3bLMfnzXosay29DUPD8WUJDYO8SjslsJPADKLyJE7jKrCnjKux3igRMu9C4FtEM5FRfK87xCbT/6NamPxl82Q/fNUdkV5K3wMda6bkB5YElLt1FDOS0e+SY0wPVb4rPMbTeNPoUUp+pIKB/WlJlgwU5FwgEYsguD7YBUQdVc0hRlUbMxP8e7FmRv9WoaB7pfst8LIusPT+AwLxQ5sG5vXV5tB7uLF5w73aBXgm8Ql9S7igiZeJI3yP7RGnhDBPdgUGZekdwH+wyD2I/l2KHcTt7Jb5DDVtuT4qphlfHxEP5dDMTpsXW9WIjmcmuy9TgL3d51wABfvmzS56sycURY4O6f9KNZodBYNqbbDT07FDFGIb0bnU8rFd+ToUV8MWxVqEIGRekDVgIXBSS3d2VU9685wInR84etaQehWpgGy1d1mdImbohp4QJx+0reXkre+LNX2yt0rN6bwpiThSHWJXq0jk00Z9XoFPWTQlqoV4/VDG6de1QAfA85Pm51FezIzlXuRekt4Ge1ga+30s+ZYIZf2GqJUD+A8NIwLtcSsXAnbQD91Nqzk1NZJcuBMjw4AQ2IKgD6W0LFSFy6n/aLd5BqDHyUmEB8SGupwXXs7NjMtrQM75Qy/HM6UP1mFviuhktgg6E=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(346002)(39860400002)(376002)(396003)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(82310400011)(40470700004)(46966006)(36840700001)(40480700001)(26005)(356005)(6512007)(81166007)(47076005)(336012)(4326008)(966005)(6862004)(70206006)(316002)(8676002)(36860700001)(8936002)(70586007)(6486002)(82740400003)(2616005)(53546011)(83380400001)(478600001)(6506007)(40460700003)(5660300002)(2906002)(33656002)(41300700001)(66899024)(86362001)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2023 11:49:56.0671
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c79171bb-24a7-40b8-ed33-08dbec1a5022
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF0003922F.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8737
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 11:50:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61738

Is this working around a failure on the autobuilder?  How does matchbox-ter=
minal pull in gtk4?

Ross
> On 22 Nov 2023, at 01:48, Khem Raj via lists.yoctoproject.org <raj.khem=
=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> This avoids an issue when a package that pulls in gtk4 into
> core-image-sato but not into multilib pieces results in different
> gschema compiled files as reported in [1]
>=20
> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15291
>=20
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
> config.json | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/config.json b/config.json
> index c5fca45..e95a292 100644
> --- a/config.json
> +++ b/config.json
> @@ -900,7 +900,7 @@
>                     "MULTILIBS =3D 'multilib:lib32'",
>                     "DEFAULTTUNE:virtclass-multilib-lib32 =3D 'x86'",
>                     "RPM_PREFER_ELF_ARCH =3D '1'",
> -                    "IMAGE_INSTALL:append =3D ' lib32-connman-gnome pang=
o-module-basic-fc lib32-pango-module-basic-fc'"
> +                    "IMAGE_INSTALL:append =3D ' lib32-connman-gnome lib3=
2-matchbox-terminal pango-module-basic-fc lib32-pango-module-basic-fc'"
>                 ]
>             },
>             "step4" : {
> @@ -915,7 +915,7 @@
>                     "MULTILIBS =3D 'multilib:lib32'",
>                     "DEFAULTTUNE:virtclass-multilib-lib32 =3D 'x86'",
>                     "RPM_PREFER_ELF_ARCH =3D '1'",
> -                    "IMAGE_INSTALL:append =3D ' lib32-connman-gnome pang=
o-module-basic-fc lib32-pango-module-basic-fc'"
> +                    "IMAGE_INSTALL:append =3D ' lib32-connman-gnome lib3=
2-matchbox-terminal pango-module-basic-fc lib32-pango-module-basic-fc'"
>                 ]
>             },
>             "step5" : {
> --=20
> 2.43.0
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61728): https://lists.yoctoproject.org/g/yocto/messag=
e/61728
> Mute This Topic: https://lists.yoctoproject.org/mt/102741765/6875888
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross.burton@ar=
m.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


