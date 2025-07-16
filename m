Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41386C83F1B
	for <webhook@archiver.kernel.org>; Wed, 16 Jul 2025 10:22:45 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.6])
 by mx.groups.io with SMTP id smtpd.web10.18857.1752661351165238525
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jul 2025 03:22:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=USXb8kCQ;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=USXb8kCQ;
 spf=pass (domain: arm.com, ip: 40.107.162.6, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=a4VesvSHGvZy+i6OjXG/QDFAhed8UZXnoLqc4F6b8b6gLjSmkkzIWAsuAHUxgSGlIFdlYsmjLp8i23uM+BJoFQhkIgVqsFnu7GOdqu5ILWcsVKKxqf8j57zG3tCnemt6qZrDXOUrGT6QiEJIxwJRvpSZIKJBDMf91hR/FTxYgAIusCVIhV1uI/V5x4/vl+ES6b+nrllORwcaFNnOsTY/fpV4GE0bmIA7UMKrMwio6JIoip+9vXxb55CGWNVNoSK5ENIAiaznRb+oCLDIFO4X2ZAwKzgFA/WCVK43K9MW8qUCPWKL1IseAUI0/o3V/uv8WTnhx3ec3dqWFK5HCB2iUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y1Vl7jpLsvmCqZ1QpxERzsZRwqz7+E7DyYhSjbPrlOY=;
 b=aa1RhM1RybmtTjB39IQTUZHsgKATjwkQeYhhje6Lf01BCYAzohVjogW3C5xgsQn6Ktdx3h7kHWdsMhEFy+7IDuKs6jmmbY62v99oh3XSAdbtAwqda7QGKE2EqzA9LdKIzbzGNALhMQ+RBvPnH6t5yR+mcFaJVuGb7h35aPH+jlMXXG0ap+mWsMtXSucLzs5bPdoe9DBGqZ5FCsTwiC9CiGk7ioqJDS+r6flzY9T3ZJxCRpoUV7t944L19t3YJWKlziR77yP3XomcydmZH0rlHIor4P7GzSxl0uTnK6zJ8Ut7j8bdrEOaZMhvvxb/atd5mRB9/s/ZGmC2jvgdi+qxeA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1Vl7jpLsvmCqZ1QpxERzsZRwqz7+E7DyYhSjbPrlOY=;
 b=USXb8kCQgC1SIrXAy7OPIx4WSwC72OLiqmZnw9nWkixCg6ybmmVHrV6Hb1+TAhmtLSaVVibvbKAqnZG5kgULp/i6n6eMUHf8l6sQfu1IuxV4wMXKj/2vo6O39FPLns+W59hSpmx6NXBhsLYlt+RrgSVaRgM6tvfdj7hqDw9evFk=
Received: from PR1P264CA0098.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:2cf::7)
 by DBBPR08MB10746.eurprd08.prod.outlook.com (2603:10a6:10:52b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 10:22:27 +0000
Received: from AM3PEPF0000A794.eurprd04.prod.outlook.com
 (2603:10a6:102:2cf:cafe::fc) by PR1P264CA0098.outlook.office365.com
 (2603:10a6:102:2cf::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8943.20 via Frontend Transport; Wed,
 16 Jul 2025 10:22:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM3PEPF0000A794.mail.protection.outlook.com (10.167.16.123) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8922.22
 via Frontend Transport; Wed, 16 Jul 2025 10:22:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Thn4WaeLC/xH6CshLjAv5yHAkyNoSQJo5rHzqXZrWC5m3XnmLkOQzmTDqfQitytMT28W4iqOnCwA4Z8ZXf/M4twVV1qwa3CovYOSF/sPZVeXemRjJbbdCV3Ujr9B2y+cAfn+IXfMJwNmTcFrs27tUDn/wNXhRxnuvpAkW92u+25GWQ/ko4d6BWQ7RmKarc2KGHQvWr1H+U9U7INCjS5RmgcC5R5wmaUMg4zmB1bzOzMZC13+L/BFB8bRW1+d3vEzdHrxflAQ0lkw0C+Y8vzgdLv9kVyHJV5AQCcorBRdsOxUSugzm6LHmYIRqi8wyrPrGp7aZy+xh1X0IfYtyUwy/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y1Vl7jpLsvmCqZ1QpxERzsZRwqz7+E7DyYhSjbPrlOY=;
 b=hRqWOR6hGTPpLwv2uDM7G43mkQusACZl8EHrbzdI59dXTbBUlUXm83FvFP23Hrh+rjkssbZtuLZMMYyuXcLj0gcbge9jgLGyYimLputbuegEH0RJAKfNps1ZKRgffaJvgdTMpwKcTbofLlgzftTvW3yVyWeZqlUrD24XGpnZaQ+oW/vJiYZW0lLSt7wa4GFXnSMBThrhcV5Em3ZxN+LkXMF44dVWakfxPcTwj6OzeilicYEfwwX9ZG8gROEcbaru3crHzpyCqUHJAY9mPoC8ogysDoAZNi4QOLSM8rAWHVy4Dne96YCFxAi6AVmvDoHyAaW/hD4x6FgV0Q8ySoyjYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1Vl7jpLsvmCqZ1QpxERzsZRwqz7+E7DyYhSjbPrlOY=;
 b=USXb8kCQgC1SIrXAy7OPIx4WSwC72OLiqmZnw9nWkixCg6ybmmVHrV6Hb1+TAhmtLSaVVibvbKAqnZG5kgULp/i6n6eMUHf8l6sQfu1IuxV4wMXKj/2vo6O39FPLns+W59hSpmx6NXBhsLYlt+RrgSVaRgM6tvfdj7hqDw9evFk=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8694.eurprd08.prod.outlook.com (2603:10a6:20b:55d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Wed, 16 Jul
 2025 10:21:51 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8922.028; Wed, 16 Jul 2025
 10:21:51 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"jairo.mejiaaponte@belden.com" <jairo.mejiaaponte@belden.com>
Subject: Re: [yocto] [scarthgap] Setting image feature dev-pkgs bring ptest
 package of libgpiod
Thread-Topic: [yocto] [scarthgap] Setting image feature dev-pkgs bring ptest
 package of libgpiod
Thread-Index: AQHb9jn87hm3Fc9vZUKmNztiu4duY7Q0imOA
Date: Wed, 16 Jul 2025 10:21:51 +0000
Message-ID: <3D1121B6-3BEE-4AD5-810B-4A9553AC7926@arm.com>
References: <OU7o.1752660677577093318.K0lx@lists.yoctoproject.org>
In-Reply-To: <OU7o.1752660677577093318.K0lx@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8694:EE_|AM3PEPF0000A794:EE_|DBBPR08MB10746:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c9d8b2f-1165-434e-99a2-08ddc452a8a9
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?OkMWNWUmG8oVRhvjMcb6Fen0Qua2ro339gtyRdbC5Ft1axiz5I114fbJ0Tkm?=
 =?us-ascii?Q?ET+GHEqE7ZpAjz/sGpxy/EE5qO1j6TSdXmw/jCdHIsAKzKtj5UuMReKcBCVu?=
 =?us-ascii?Q?NFIU0WHVceF9b+tUw38BCEARofqO030goObcCdYHUCwxcs5txhJqcO6UjrqG?=
 =?us-ascii?Q?3nuJACdBM8WkgxS0gkjB/Ui7c/Z4LfKon2RJ3zMnayjcmjRIyraVOsUOa03B?=
 =?us-ascii?Q?lNt6gP0iD85P58qRHZViLkwMTuf4TZk3PZwSURLkR6NgWrBMd3xp5mE9+bVO?=
 =?us-ascii?Q?jU2U1EfaZ/EwEXTtiY2YYyCmn9s+t0pVUwPaEScfHRSuH/lAHCjQFLgCt3bw?=
 =?us-ascii?Q?AyiER8HTB1+NE7bzHTsc70tthW1uKI4Nx91WCRLHARZ3N6pa12Fz2u1nRo4S?=
 =?us-ascii?Q?9t0/y7J6RqYwWBv2S8qr0c/rgSqv61yFEXXXgqadzuZw7EUHnUoudniCzDZc?=
 =?us-ascii?Q?Ss959C+OBjjOjsBR6YVoxegvADjqgMZEkEZ3jhI25b62cXfRQcL7foCZrXPX?=
 =?us-ascii?Q?N6h3TsassCcsgZiiIyMVlFRCkP8M2G6n67saZwpIxVB4hfW+vjFtk4vEbWKR?=
 =?us-ascii?Q?IKEyKriF49NWGsgJlEyBmY9GgoW6+zTu4kBxi5VCWX3HrFe6lw9hwdljEHTF?=
 =?us-ascii?Q?W0x8lxA4hWUfWly+KBuGrChogABkg0+GUC89MVI1U2WyD8jvhOSSOH5/y9u2?=
 =?us-ascii?Q?bT4LYMpGgYAZ7vuamFCe6Bwl9WcWmzHa/C8QbYUIY0eFy0uxRpYEEEfY4GIU?=
 =?us-ascii?Q?jk0QKMDvdMs9NaaRLysqxptwSqRPNXWQNrfFkuGJaxNCX9VUQJQpwwKu7r/W?=
 =?us-ascii?Q?SSVxFzeDSX1EAY4rqJJPEn1TpB7CPdFE/a1W3MPeCJJSbrb3W06FqB5s2iMz?=
 =?us-ascii?Q?l4PuCM7Kj8Brql+ZX2A7ZK3KUyapI/Z7Cvij4Ynl/UFPb7SdYnoQklzhu7rd?=
 =?us-ascii?Q?bHe8Xe6HOuSgQOeohHOJnjl1P7kNoYb6ifikTHKZg0Q3rbFBD3aMoTpyXNF6?=
 =?us-ascii?Q?zN5/Fhg2OZ86fgQ37jVZgUgt7ABaIOSjowyg0juuZ+dZMkgqE8ixSgerP7ai?=
 =?us-ascii?Q?Z+HlBA8J5onJR6KoHERfqWwyHrU4BlZoM7/qnyov7QWJr+kbT+PRicvckhNH?=
 =?us-ascii?Q?Iu3Xbhzx7hc6BgCJfd9ieGqWTMR/2PGYBm46hxD91QWY3zRgF+JakkPMAv+O?=
 =?us-ascii?Q?ZJ+9MqiTN6OPzBxfUcwUV5La5XhsHJsA4hvwmAba3d54y+rpVxP2I5bQr2IG?=
 =?us-ascii?Q?qpRlkqJf8IwpYYhwwxWckEqmDBSZ8kXaNFrFieKbyT3N8jHrW6rFLM8s8b3D?=
 =?us-ascii?Q?GP7SoX5laXSZq6U8t2HoBSaRyZWDW/xUnmvWbwMF8tpC917uGaYmY6j7BGZ9?=
 =?us-ascii?Q?xpxTlEdI61xldvv56dUAxoCtHT7Fnx7MDclw5dX+r0vb/J3rL/Rp5jks8hrb?=
 =?us-ascii?Q?0FamIyIyY+c6nZizDjdteADwqh2AHCAQPbzEngmriBvATW9gszAzqw=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <91483C8ED537E041AC366665D1A31909@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8694
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A794.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a88b1230-6216-4322-ad34-08ddc45294a7
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|14060799003|35042699022|36860700013|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?mpvhPwR6fcodQpvz72QWsJwEuvV7q7XiBAw2n1hca+CNwS604n7lsXqPWGCZ?=
 =?us-ascii?Q?VRjmOMbAi8S78UYAoSFTItEgCNdqWwdMpP2rWivTikEr6xllMDi1J20yO8QD?=
 =?us-ascii?Q?9EyEIdKFHFjvd2/QsINigCo0nho4s941nJ4VG4LnUXBsMNFiAnl0Cx+FMifJ?=
 =?us-ascii?Q?XC5zGbsnnTLoApLgEGBP+EdzD5dwjpDANkw+AQhwBwQLdKYiHMLbNhOET0lD?=
 =?us-ascii?Q?gdzADubiPdfUNiLddXotzpU9ptcRv481LqlEnM/hzQET2Tsq6pQicAN5UFlW?=
 =?us-ascii?Q?285YczS7L+w+xE7vt1oABngiYitwcI2F35cG/j0VlSq3wfNLP0osBoJENrhE?=
 =?us-ascii?Q?A0VaR+BwhCNgNc5GiYkbzGarNXBlq98WpFKcBiurO7P/sojQGCEweCajzKuz?=
 =?us-ascii?Q?wPfBYpdrYAeH4datyHB04m0ka4d0VLvJgnbvwyrGrYu1yQBKHIrHitEJrfJ6?=
 =?us-ascii?Q?u598loGPejgcJemCyt2KctLuvEK1Yly8A+Z03roWz7I2633Ks1OdevZn1gxp?=
 =?us-ascii?Q?FruuVVwhbq+JTnHgYzAdtfoCniBDuirNmtyOzetMwtkpQMbNmcwmNezIqIbh?=
 =?us-ascii?Q?1dhQEyw72UWCZSXSX1rPkg9It0sgi0Jj6VBbZkvk5umUg4fq0SWb7KnqKVqJ?=
 =?us-ascii?Q?UXpXuH/Z9aE+pNhniJ7U9IOIqxT/YFgY+i9Rqr+y/f50c11Z8mSwmX2lDWSA?=
 =?us-ascii?Q?qAvMlb3DWVuARV3PNKGqZ+dqTKoGy/Jp1s5eLT+RLCgM6+jwmfZTE4Ro/XbU?=
 =?us-ascii?Q?RcUTUrpHibluYspzUv7pokdn44uQXDPuCM3MalD4EOi1IcEmXgfQoLx0WFQz?=
 =?us-ascii?Q?vfDG+t2mGWvLn3WCIuZrDWJgGoo+ygeFRx5u4509pJC7mmRNApkOueU4fAqj?=
 =?us-ascii?Q?qvX5Z1tzy4tN+5Rm/3/bHSoi/Tv+DFCSkIRhmJwWwMKXhd243KMugJFicG1c?=
 =?us-ascii?Q?0blvkAZ1giqpLopJKTMbHOKEATavXKh/H8HHvU63aUNwB8c/aicisbuKHZix?=
 =?us-ascii?Q?QdG4QRylU2KCX8SNtHHVbDLgEDri8ANKU29WfhJZv7AKlyr4SzC1ysUhnl+m?=
 =?us-ascii?Q?cgcUi4fnvWuABuZbfphpwkP15ceH4VZQLFl5wdl/c1NbPNUfCNChdu9X1MzA?=
 =?us-ascii?Q?XDHqOaRIIFG4PfzQ3tkdiDcu7A6pJ6VHFYCZO46AopqLDhh5yj9UbWTRfBhB?=
 =?us-ascii?Q?KBZvG6CeHYqKDsFZKCwdNEkW2I5bsDng40yVSn5CM+j0MOK23DuQkEgmjccb?=
 =?us-ascii?Q?DT4wcDho74HupDiOlKGGYNhzlhmRo7Axk/XNyb0KwdvW8ayHgRAu9XL8PwOZ?=
 =?us-ascii?Q?daojVZTeUEagn3nTCErOcSGHgOnUbhZDHacOokhxR6LwF7fMrcbjY5GHtqzz?=
 =?us-ascii?Q?1piEjrKqgClagkRPVdedH9UStbR7IHBT3nvD4DwwGtBRMhVyuplDRAgpSYU1?=
 =?us-ascii?Q?aqYl6crzTPsX9blT4PwpyoAOklMlzE+8/PqR1FUVfy8zTqmnOyVwJrKM4gY6?=
 =?us-ascii?Q?UXqjc3NoIh/dRgJOY7rNxbkZ1O0AkGAhz871?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(35042699022)(36860700013)(1800799024)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 10:22:25.2108
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c9d8b2f-1165-434e-99a2-08ddc452a8a9
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A794.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10746
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Jul 2025 10:22:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65663

On 16 Jul 2025, at 11:11, Jairo Mejia Aponte via lists.yoctoproject.org <ja=
iro.mejiaaponte=3Dbelden.com@lists.yoctoproject.org> wrote:
>=20
> Hi all,=20
>   I have found while using libgpiod package from meta-oe that you get the=
 ptest package when the IMAGE_FEATURE option dev-pkgs is enabled. This look=
s for me as a bug because it should only bring the normal and dev package o=
f the libgpiod. I check if the dev package came with the ptest folder from =
do_install, but the packages split of the recipe looks fine to me.=20
>   I could not find in the recipe anything that could tell me why this is =
happening. I would like to know if someone has an idea how to disable this =
thing. I want to control which ptest packages are in my dev machine to redu=
ce the time execution of the ptests.=20

The easiest way to figure this out is to use the package manager to remove =
libgpiod-ptest package in the image. That should fail and tell you what the=
 dependency is.

Ross=

