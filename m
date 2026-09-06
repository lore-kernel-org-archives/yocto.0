Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B42FC79F85
	for <webhook@archiver.kernel.org>; Sun,  6 Sep 2026 08:08:32 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8868.1788673127299892226
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Sep 2026 22:38:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@est.tech header.s=selector1 header.b=Wr4bBpJb;
 spf=pass (domain: est.tech, ip: 40.107.162.44, mailfrom: david.nystrom@est.tech)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mG6dZNT552F/0s8vUQfTmjlvnCvXTwqRYJXnsaz3kfKWUtL1eUyymnSss/uN6hGfD++QIMERLWGnoFGlNABx+S9p+YOGlrynskoRgJI41lVkWP7lvs6gZZt71oDN9eKQyJIGPcxcy0fZOJNDSfuouVIOthcdL26yhTjMPGa0OIj8fFxXgsZEaS1VhsGwj1gkChqWnAWU4RxsUYAGeY0Rd6qIDO6Q51Au1JQ4wD8ILgpUgh0Jjek7s7B/fAA13dBDkMJvt8UhtbHLh0ENtos+mLUoQhXLIwYRmoyMKgHGUT/ZIbV+PvxSUS0HKXYRXafJYZ/zR/pI1LmJ47WFCF7vXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T+RnKiy3NF0pZ/yFaaZ2kNqkdfvyFxHdjO18NOlHIpU=;
 b=dOIA0RBMxvYOO2Mp1YX93UyM5Byrdod1KGJpMFDZ7PNfnxFZR0ls13ORhs3gCKJFxLWeLRubnxlALVc7sIPyO3Jgn+oX2zS6weW6KSdpKRIGed8MjELReqq7G/6k5k9QQODZPbh+60dpNbyRht99aDszya9KHcbr353cKya1niiS97nCHPqrkpVmVYj56fbSE5WmhlDksjd7QYV+JKJj/+QhOANWVLRPUQ6QUKI2mt+1gG88L0aUhmCqRGmk0LIcQLGr5ejDsOMwTV1CNsTX/2mzJgBC4r7OE+kGHcdzvLANFnFL+xr7bscV8qk++toiI/ijzT4dGoz2EmqU3+FcKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=est.tech; dmarc=pass action=none header.from=est.tech;
 dkim=pass header.d=est.tech; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=est.tech; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T+RnKiy3NF0pZ/yFaaZ2kNqkdfvyFxHdjO18NOlHIpU=;
 b=Wr4bBpJbkc4RM5vG5IhzSvZ7aQDdSY/3t0eVqayfLnBDKM7ydaZ42Gdmm6bsS2RFLXjkOn/L2o9HwJeHHKtXp6VXDMEtN3C8W+d2BnPVXjumRtEuxgVTzwFa/t4qDOyMz6ZMBJf/yMpf4zkg/qET/HHCbQmTcog2dJLpplC7Wn2RJwtXR1g8SMmvKc4BjohnZPK4HVa394SCaCB/OkiZtsYsnHF2ztbp2utMEjp14TU/sKLV6ZnJSYftCUYgqpFN13fPi/60l7C2YEF17HBGSSpl/StYW0/p8FaMlgMCYRuzrTyYaFwfsFzOvMPTSPVz/yxG/+UcirR7HdMdDHzI+Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=est.tech;
Received: from VI0P189MB3589.EURP189.PROD.OUTLOOK.COM (2603:10a6:800:2db::9)
 by DB9P189MB3527.EURP189.PROD.OUTLOOK.COM (2603:10a6:10:5f6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.382.15; Sun, 6 Sep
 2026 05:38:41 +0000
Received: from VI0P189MB3589.EURP189.PROD.OUTLOOK.COM
 ([fe80::149:d9cc:d017:c9ec]) by VI0P189MB3589.EURP189.PROD.OUTLOOK.COM
 ([fe80::149:d9cc:d017:c9ec%5]) with mapi id 15.21.0382.007; Sun, 6 Sep 2026
 05:38:41 +0000
From: =?UTF-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.nystrom@est.tech>
To: yocto@lists.yoctoproject.org
CC: tgamblin@baylibre.com,
	=?UTF-8?q?David=20Nystr=C3=B6m?= <david.nystrom@est.tech>
Subject: [meta-patchtest][PATCH] linux-yocto: Update version to 7.x
Date: Sun,  6 Sep 2026 07:38:30 +0200
Message-ID: <20260906053830.1976312-1-david.nystrom@est.tech>
X-Mailer: git-send-email 2.53.0
X-ClientProxiedBy: DB8PR06CA0063.eurprd06.prod.outlook.com
 (2603:10a6:10:120::37) To VI0P189MB3589.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:800:2db::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI0P189MB3589:EE_|DB9P189MB3527:EE_
X-MS-Office365-Filtering-Correlation-Id: 40014a29-e4b0-4502-9706-08df0bd91c06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|23010399003|10070799003|366016|10067099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: 
	LqU/hjHTWcK1N9pxxf9/iFUxjcU6WAZtnjF1ZgKJOEO3CdECj7O4zpDgOa1k1CnES1EeTrchAjm8Td31b4jDtpSavZgwhbvxby7RLUbNemeFHKpSBDhi4/DKnw6ZUHaExyofkHNelLFoFMZE7VopwZMAS9v/A6+gZA3uHZYZxhVShyl+ZmLbB8Cvt7M+JeUZKgRFPE7E5b8eDRhUN06nRGiH0jmZizSVdceKzR6kacvcFt2nLBcOXHP77rKPlFZQKWlb9cyZSLUYIqjxkzS/LijPzs3mBPYDz6+B1a7Gx2IfST5SN1XePamOQNQd29zrtEY+RzeH7eoBQ9WoMB/qcC/59GB5yigAziOuZmE+dRRcNv1W9NMR4S0ASM2Cx/VUEs+N5R44P/Um7csHDkF4lo8pW1fQUv0X36eJr1ac7ngO1W/evXgl33SrVcDEjewXj0ioHwDGf+p6dQgETfqHJN2d9LJI6zKw7r5pmuPFEZSGM1JMfiAyljrVTFlJwQ1nlnTTNyx9gIvBsv1PkC5WIWkzL/xjzY9jMp9VaQNDTmGm/i63LJIy27qgaYQag0GhI+JaDUm213pGH+slc5wgXlp7F5j++6fi1WYADTd1s4s/R83Ej5gWkgcHR0op9zPZyqCSmMrXAkkufIyBbU8hZMVA3HfML1rPKDdY3qdOiDE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0P189MB3589.EURP189.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(23010399003)(10070799003)(366016)(10067099003)(56012099006)(11063799006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ozrXON9IbuEsZssqDnV1ifdwog7yEc+2z5sBNIG5UyBck1iMNX401p8v0ERQ?=
 =?us-ascii?Q?aoCqhpmP6JM0WbgUEj4VmYjsU7Hxy8erabhaLYY1PFNQoVdUyMA12ZyCpleq?=
 =?us-ascii?Q?88ZfIPDKoNRkIe3acb2Pexmm8M5KxvPLDlforhquZX3sRP+15LTNXaiWei6d?=
 =?us-ascii?Q?KONc0TwrkwdMFRlHntj6CX0UZTjyOl1FXysjMeWPuPmcEUz9r84CWPqsmqn8?=
 =?us-ascii?Q?eJr2UoEBLyXPKNIWDB82SuJdzt4mVUEagrTBMM4jE9uGOXTY7uc5ip4T81a0?=
 =?us-ascii?Q?0OzSJzpyUc11H3jGsXY1WoB2790mQEi5qU/BSidc8x7dGpSQy5RLucHMAopn?=
 =?us-ascii?Q?2dvuw7XVBq2/DUOZLSp4ZmsbeVpwriJ8RjZ8V8WmcaavZK/9xr1oEhFY7AM7?=
 =?us-ascii?Q?rLBsXl0USEFG4y2sId27Eeu8H/lEfrl+fdSnQaHhz3vvQstdD3kAOpLSGY+F?=
 =?us-ascii?Q?JbFQHlvAonVuQ9pf97IDa8GRYNW8p+ZGCw5KTK4SDsvl+k9ShAfOJI/C00CI?=
 =?us-ascii?Q?4nUL3BoNwbPcWylNS91dheZBJVz7v7ewP64hv6/97QELKD/vXcNO3gXUYyou?=
 =?us-ascii?Q?gfRRoelvdJYt1RJW/QQcldWJU/U3hKRKN5uwA8e4Fa5ezTgER1rZeKw+Man+?=
 =?us-ascii?Q?bNbBkAx+j8FHzHguWrBdPwFVSkd9OZ+/QaHbgqRBUmdqAb+4VNW2UkyAJe6N?=
 =?us-ascii?Q?xc6AaJms2l9wCa7g1epl7fgT+hpWrvEn7nquaGNVKpQG8DxmCxjb0Fz7h4Jh?=
 =?us-ascii?Q?Pmtb1SCl0UqH/ztHmpi68ERwzvpE/KQnQvGaQY7VCUn+JmnVeYhMMWaHGGKn?=
 =?us-ascii?Q?nnegszk7DLSLQmDhMwP8bfu6OB/qK0d8l6N/GFxPcI8+DQwo7MtsZwQlFqnw?=
 =?us-ascii?Q?BEh0ICJ+syw3S9vhtpEEDpMuauuci2dooI457XL7Bl+qkAu2pV6tVO/QKKtI?=
 =?us-ascii?Q?4U8lMzdaGaCfmpQYrHIzEw5SGzpe57xlLnQCtR4j+s0qLaMJ3e6Me1bejFAV?=
 =?us-ascii?Q?CigJaNvyvFhPz9SagG45ZOilKsdpUAXFCghTRK/NFf9r4ZWUY12Z7GzmH6a/?=
 =?us-ascii?Q?lfCtBzd1Z8YtT0l8ZbfiPhpJhIeNqH+tnlW2SqY8LXZtTWxvwvaZdzvOACgf?=
 =?us-ascii?Q?Jk6r7ztTETWWjYILOn39loKFT4Ucx5rafGolVcPgj8OJeimr3hDkUc3aTuHh?=
 =?us-ascii?Q?8TBiZHGCgMa3ZNGsu2mwpKUEKrdzBCKHItJuay/f3TuXBtIa0481j5KHQEjS?=
 =?us-ascii?Q?0EbgeIwvOv8R0JFgPvzlyVI552+NGfB5QtupIp9zcP6PMbfAWR9F9B0R1Y1G?=
 =?us-ascii?Q?uv58It4lW8uLeLI3uOCD4VYM7LhwuLzO4IbmifnsyI9i1Lve/BEWJ2B0cOQ5?=
 =?us-ascii?Q?/+/JIlK+JjKD45YJsKtzypJjNPTKj8DXEzLmomLEWg9U6No5fOKf66u8zuA/?=
 =?us-ascii?Q?nP07y7iTwisKBBmGqmCoajIlFQxq0SkyER5OoJOCJ3pzTKgALvCVJVccJUbB?=
 =?us-ascii?Q?fL3sDoG/tBolKOTTWzk/7X1NU32tTceoPmjNK8EBhftMM2vD6KXshlLUkXxr?=
 =?us-ascii?Q?EA6DGd3az5zP35Xryi+N2Ji9UCVGJvH0739eB2b/dmp8Ez88iRWJzHTPll+x?=
 =?us-ascii?Q?3D7/MYSpq9vtas5C8hDN/EFaS5ITqCZgIrXiR864V5Lu0WArhR34qZ7XWfK+?=
 =?us-ascii?Q?g8Y3azISAV9GQ3HmzKbz0O8fJEFQK0v3PN63MhqHEPjp7CbVV+5fCBh6M7fE?=
 =?us-ascii?Q?WTfh4+ZEJD/KdEj0NOpWWGAlW6Ycm4inDcj6Gq4jujmKwqUqlS17M/0H8yDQ?=
X-MS-Exchange-AntiSpam-MessageData-1: V7v6OPdT0CCjLw==
X-OriginatorOrg: est.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 40014a29-e4b0-4502-9706-08df0bd91c06
X-MS-Exchange-CrossTenant-AuthSource: VI0P189MB3589.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2026 05:38:41.7191
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d2585e63-66b9-44b6-a76e-4f4b217d97fd
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F+S9piUOGEJime70BF4kRotLiiNKf5QDtMC8NxJlJMF9UKFCcQ7bnJc7GPKmXFHk7+Mahoqh736AZgreFvVMfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P189MB3527
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Sep 2026 08:08:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66707

Signed-off-by: David Nystr=C3=B6m <david.nystrom@est.tech>
---
 .../linux/{linux-yocto_6.%.bbappend =3D> linux-yocto_7.%.bbappend}  | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-kernel/linux/{linux-yocto_6.%.bbappend =3D> linux-yocto_7.%=
.bbappend} (100%)

diff --git a/recipes-kernel/linux/linux-yocto_6.%.bbappend b/recipes-kernel=
/linux/linux-yocto_7.%.bbappend
similarity index 100%
rename from recipes-kernel/linux/linux-yocto_6.%.bbappend
rename to recipes-kernel/linux/linux-yocto_7.%.bbappend
--=20
2.53.0


