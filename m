Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CFDACD343F
	for <webhook@archiver.kernel.org>; Fri, 15 May 2026 15:15:43 +0000 (UTC)
Received: from GVXPR05CU001.outbound.protection.outlook.com (GVXPR05CU001.outbound.protection.outlook.com [52.101.83.62])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.37299.1778858140299345980
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 May 2026 08:15:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=gKogWTfO;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=gKogWTfO;
 spf=pass (domain: arm.com, ip: 52.101.83.62, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=bFzTYJ+hnOd5UQwHff1fsuwPmKC6W4CVEX5RpQ+jRqiXvVt36VU1309KAxNP3JQfiBjKHIbhJvwwjlVnlBW2phctHbSBKG9WPnYEmrm8LCP5WLVrkuLHNTopL4f3Jv8nmizYZ4zj1Jw817KFCZCnK2tCSQXH0pPFhkjuRc9aVtmHLhinnYJ07beNqioMfrJq2WgNBOYnoiWtv+XJqhl1og1DLNF4OXzn6XtpA5G2glVq1M8SZC3Nr8NpKmsWHmoopW5NUwucW7pdZj7jxSNK7sPk8eYqhhbi7m3to84e4CxgG1sEWYU4aWiq7kb4+6ZpSWmJ/yHeE8SpnpuFWqfoHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cR/EzA9tPU3LWTvL3BHozTgFxN/8A65B+tRGeVWETK4=;
 b=Dc6tQ0UY8beC5Do2+ihLx2T7Qhl7BWaD2syCiosTQKdexag/FGZWXHNNppmZtBDabqixAo+kbGeSIFt5TwgUlv+2a19cQ2weLliYzHszGUCLta6Dk+dyq+7l7YGGPkH3rJajyCMLnKnTQnSk1fRWz9jXul4ZPO9Rrmb+tEsgCj1/fuVvzdcFKA2xAVu7Ad0HEs3ln1rTsNJ+3PttNyvtRtP5W0OHDULmOE25wk2FyCa7iBdvxi4ewOXD/eoEgsPH89RzX/+FZy8Qwd1ikFuOlDRBTQqdnF+dV7awvMrRZM7aUlzUWseZ74x2dF5zOXtIT5DFT4QpND4HDJxzeb8Vog==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cR/EzA9tPU3LWTvL3BHozTgFxN/8A65B+tRGeVWETK4=;
 b=gKogWTfOFpm+Mx+jidIuwB9JL4DDJg4CVqnc3qglOo2p2Fl62XZ7qHQN0kbGob1Ue39HNTNT4xRIG6sh2yXEJ3SrmU2FpqZArOkcZAn2XzNwcqJ64AxL8Bh6wkRsYeM+zdvfkg90kU3rT7z0VJEYkUZu4ZyW7ONCmZSlCiFMcao=
Received: from CWLP123CA0248.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:19e::19)
 by AS2PR08MB8621.eurprd08.prod.outlook.com (2603:10a6:20b:55c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Fri, 15 May
 2026 15:15:34 +0000
Received: from AM1PEPF000252DA.eurprd07.prod.outlook.com
 (2603:10a6:400:19e:cafe::8) by CWLP123CA0248.outlook.office365.com
 (2603:10a6:400:19e::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.25.20 via Frontend Transport; Fri, 15
 May 2026 15:15:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM1PEPF000252DA.mail.protection.outlook.com (10.167.16.52) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.21.25.13
 via Frontend Transport; Fri, 15 May 2026 15:15:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f4vEdFhNgC8fDsQZF+r0AM0u9myBKt1LdBY6LFdORzKgS5n0NHOXtOWzXAl8iS+M3YQrQfluWbwpXaIp/hTGZBxP2VoeW6MgOo8owkRVlsgfp5rpkpPZB3Qh+m5H2/Bl6dNVLNrkWlwqsv334ow9O3NC7GsI5ZrVXICHTWzAnKNiWieiLDygQx64ZQKDiydRk/n/oJ+poa7GThPUcAWyl/3MBD71SttUkK8+qHsHqpRYMhWPGWvx4Oug79iF2u7V25MJX+Ov1AGIAAcznCvr/cUuWZVfs7qV1cr/oE8o5uyP38WjwZ1TV2KTHv3iH/2Q/+jcqOdgdIuh3krPlSh7TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cR/EzA9tPU3LWTvL3BHozTgFxN/8A65B+tRGeVWETK4=;
 b=N10zC0qBb+xHxLsDZWC12z2TyfNYHEg9yXVakbbdo+/FTfYF/Z689bZG4QDzG/xwV6MyYwlXtRLLO0sVD5DBwa4v6f/OpSVpa4FmGeUEWZYTxFFMkamF1S89W5k6eOqxaw9Bz7uECbLK4rYPpHFxgj8mjvc+w94OUkliHHbQv99V4/PrgW9qz/cs2Wobu6HXHHeheDngoPegVXrrTuYe706/ictYA2JUXRPGkHUtF5RVNt5DViXgIK2FJz/trjY8RJlMNdHCgROV62JfML5/aKPIdVW6D0yX5SiMpQN8KCLPQajYai9mW7h7B8UA4tmaJQgb23KPVfJdhQcnYKJtTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cR/EzA9tPU3LWTvL3BHozTgFxN/8A65B+tRGeVWETK4=;
 b=gKogWTfOFpm+Mx+jidIuwB9JL4DDJg4CVqnc3qglOo2p2Fl62XZ7qHQN0kbGob1Ue39HNTNT4xRIG6sh2yXEJ3SrmU2FpqZArOkcZAn2XzNwcqJ64AxL8Bh6wkRsYeM+zdvfkg90kU3rT7z0VJEYkUZu4ZyW7ONCmZSlCiFMcao=
Received: from AM9PR08MB6258.eurprd08.prod.outlook.com (2603:10a6:20b:287::19)
 by GV2PR08MB10382.eurprd08.prod.outlook.com (2603:10a6:150:b9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.19; Fri, 15 May
 2026 15:14:29 +0000
Received: from AM9PR08MB6258.eurprd08.prod.outlook.com
 ([fe80::171d:1f8b:720d:7a1b]) by AM9PR08MB6258.eurprd08.prod.outlook.com
 ([fe80::171d:1f8b:720d:7a1b%6]) with mapi id 15.21.0025.016; Fri, 15 May 2026
 15:14:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"mail2uvijay@gmail.com" <mail2uvijay@gmail.com>
Subject: Re: [yocto] imx93 yocto build failing due to parsec fetcherror
Thread-Topic: [yocto] imx93 yocto build failing due to parsec fetcherror
Thread-Index: AQHc5HqxlENqIMZzEkqSKz4Q3rxkvbYPMgcA
Date: Fri, 15 May 2026 15:14:28 +0000
Message-ID: <36BA4F6B-9434-462E-A2A8-BB5CD88CB7A0@arm.com>
References: <QxVD.1778856846043312542.8F3H@lists.yoctoproject.org>
In-Reply-To: <QxVD.1778856846043312542.8F3H@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.700.81.1.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AM9PR08MB6258:EE_|GV2PR08MB10382:EE_|AM1PEPF000252DA:EE_|AS2PR08MB8621:EE_
X-MS-Office365-Filtering-Correlation-Id: c0ecaf75-a3f5-4d69-fd87-08deb294cfbc
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700021|22082099003|56012099003|18002099003|11063799003;
X-Microsoft-Antispam-Message-Info-Original: 
 rkaf4APF97pZBOFph5ZMElfznpbfLSRq57p2QV21EFiH4Pt1Q5YjXMrKLoAfv4KKWMwKkZrr2EOfV+KYISM8G/tlzMNz48Jle8nOlYsGuXCohzsOr4CThb9qOzy4ZFIcSwY4aPMLhgKeX/nEkjI5GjV39+zVJ1/7AEZ1+mch3WnUoMeOsOmtY64rd/+qnQRp4ExL4KMH/4Nw3ipFaWR4Rmtm+JKWIc/KuRv2ogd/K3Qnao15uh/iPFzuj1EkGR8KBiBiHCNwLpayyCz27MnjjEQEpSbphywmKI3TW4C2bznwpYfhcrLWcpYYUH+4/JZTmq3qsCMwkiYYVGuH67YbzhWxZDFpQjoOmNNFBRg1bprEymCxvxKJFbuc/VZcYLeycY6ZksQ0rJsm8UfDtWHa+CuAOG1tw5DPzloBTv4g5ZKoANhacf1E3gEMl0zHabdKKWnAPEtTfALs8YxSKOPk2w+/IArsL86CJY8xEDRCoQYniuj/prJDA9RQd9cb7b2sziphK/4z4zqODSJ8LumnQN9OuHbYEZft/obntINpjkLKWjWU3ktnfyeV0dqlEruyVaOIF/HZ1nxz3M0P8czPiOOdScjQZu4Y1bxJdthjTeXf4FjFJjxdr8buAaXGMAkgOkRfUwgciV6thy9fjtqa+n/9k30QZwLYYsViCJ+JAsxjdFLKYwk8xYbtMNnmEP62myz4RqbK+U2yJnNLp0ibTw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR08MB6258.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(22082099003)(56012099003)(18002099003)(11063799003);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1274B6CE9952BD4F969E29B7263153BB@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
 cPnQajw/5iARTOsy2/dCj/6i/vQinPhHQisl5xf26CU6jDm43Ny+LFRZXNLOl8vigZTuDG8Vd4eynKW2snltGt/gI6Zux86c/Xs9G51yAA4dsGMJvkQ//M1q2b4TQkECrwr0V3LVyPgwRwoQliQOVLDd4lrUxGfGoxd7gUVF61cDLe3GNOZClJkBFNPiyMPwAgidoTxrizUFs2snchLr9T6dPJX236fXd50hFwpaxfX6n10MttRfOvWMTxUWMWiY5Vla+qJZ2aAhaufRA5d66vsYdpga685s1ZF95I/bVwRCG63hAuHGeK+LW17R+oTH5hl8MSslihKm0LAlyd1rfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB10382
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM1PEPF000252DA.eurprd07.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9e7141c1-6a69-4fa1-aa71-08deb294a8ab
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700016|35042699022|82310400026|1800799024|14060799003|376014|11063799003|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	k2b9m6M3U4kFMjJMX+j97K+R0bcr4n0uRvzt2KSDV7hII5fhR5K4dI/DyXDrhH2V1cJ+ekM4zKMilAk4OZtohLbwqhMLgi5wbAM9aQkNCDuUeHapStljafdUKnwZAACyjAvZe69nc5WP7tWexVaqEnDORkYsAjEZW9N53ofPIBTfm2T/if/+D+Mbm0PsUZEIJTxGCULN5aOJ9XLookXygdF2UW24Hr88Q3hN7x0gXPkKdNZ3nELRgYr/KRC3TiTZ38Z9JKMjPgyxsrxSTTdrEiIvxUn6Z+mXE8OZWV3mhozCxKVOx9KIbQ1lpaorShqbYtq8qtrxGLDw2GpXKGnzuanejI+SaBUER6JXJ2bgHqZSIC37hcixFj9S9WDft++FA5BQV3fvCxG3LxXKWDj9W2LhlPcFfo5N95IA4TXzxoPllFN3aX8owUhx90Mcb08YNhl+/0tuLXMmdMdQC9zWgKyYxxeIDKVEFyXsVjf+Rmb48N6aBFyaD/JJgZb138GRd60xwaQPGolae3QmJw8iw0eKHnnKtqp4lMy+gl3UbpUj1afyAsfhaAW6LHV4Hv1bB9CZJJzzC9d4k0WGBuMjEY9MTHRFU0Un2k8X+9xWt4H4r7GHbaJnKRivi2x8vBI2a2ORv2YxYBdAyA9QDD7U86jpjJ+x5pPnBFUitZ9fpCAXuTFDaKjTpjiWXtyeWe4Y
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(35042699022)(82310400026)(1800799024)(14060799003)(376014)(11063799003)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	cb6udxRu39fbzWbsdYMMcidRGBp+f7RiKQVtOhiFqAQCh3Y8vUfIUbjbKK362MC5FRzO6wRDZ6HjcNWIy8+Ituep6Qwn8jyK4vjvv4Rxgbtj9DasTzfRwPfcCkuytsOF/pOifDclUyRdctjDD7M7NjqoaXHSrCLFc+5bILePQle/zVGqCBxkfsB0k79pIfpZlJfKGGG+yiVH9+fkkV6Lkhl+OeLErvsLhJsvasNCXo9jtXBwe2DJ4aDqvCtU+wW01WCzjU9tof+QDSiCKjPR7o6V4xvZcUcO5G7dfOrig/nf12kFveWLtOGtux+84rrEqEQpqYKJm6PhKgFbFM/8U60qHcgGFedJ1hHkordJXnKWH0Lcm7fhv3+gHmkrSA70hhPpGqOHXGj/yOolnptn+BDjO6cKcQ83MpTVrI+iAU2pVOBkIbfePrRr9uVoUTDR
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 15:15:34.2932
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c0ecaf75-a3f5-4d69-fd87-08deb294cfbc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM1PEPF000252DA.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8621
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 May 2026 15:15:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66563

On 15 May 2026, at 15:54, mail2uvijay via lists.yoctoproject.org <mail2uvij=
ay=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> i am building osm-imx93 board image from scarthgap branch. getting parsec=
 fetch error.
>   Summary: 2 tasks failed:
>  /home/ubuntu/imx93-yocto-bsp/sources/meta-security/meta-parsec/recipes-p=
arsec/parsec-tool/parsec-tool_0.7.0.bb:do_fetch
>  /home/ubuntu/imx93-yocto-bsp/sources/meta-security/meta-parsec/recipes-p=
arsec/parsec-service/parsec-service_1.3.0.bb:do_fetch
> Summary: There were 10 WARNING messages.
> Summary: There were 4 ERROR messages, returning a non-zero exit code.
>   $bitbake -c fetch parsec-tool
> ERROR: parsec-tool-0.7.0-r0 do_fetch: Bitbake Fetcher Error: FetchError('=
Unable to fetch URL from any source.', 'crate://crates.io/parsec-tool/0.7.0=
')
>   Please suggest how to resolve this fetch errors.

This is due to a change in the crates.io <http://crates.io/> server.  Updat=
e your bitbake to the latest commit on the 2.8 branch to get the fix.

Ross=

