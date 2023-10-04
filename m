Return-Path: <rasmus.villemoes@prevas.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3711E936E7
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 20:51:40 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.107])
 by mx.groups.io with SMTP id smtpd.web11.5902.1696452686020847680
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 13:51:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@prevas.dk header.s=selector1 header.b=dgRm+jdY;
 spf=pass (domain: prevas.dk, ip: 40.107.7.107, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WhnH0DcUVkR+EpG8hIjra6PlS1ngnAWpR40o1p1zMGEOD7j+IVx/FxnXt3T6u7zdkxcgOgTA5AYpS+lyOzpk1n+AwJ4/leGM4elRcfuX1RWa3noeVUSLVu3IgPm/sT5cq7pUubbnyyXPQQtn3QAQHYvlg9opKIIWKcEwAKxOB2TKDWwrN79G1ptM5p2WWisabJGBBZlHRa6khwF0+F4629WLdq4T6hhDvTWs1IB1a84ol2WQkcMd3G1VPbMUpJnRWFdd3RhXONotogUG0cJD0XuX3Zia2EpHnh1r0fVzS9Dmx8ULOZcgOb2fMQfZ8NKOHueHEo8DUomtTTwbgW/9PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hzyZnFUB5Q33Qybbx8tLhe6mAC/tN8RgIV84YgbgeMQ=;
 b=Eue9IY1w4dzyouMRmkoc198rzOXyaCHiyQqST76byaG8UvUfbBg1yoS/UfOF2jG91aErnHIIRL2eA0j5JEG0wQrcaCCHYN2oeoKLPq9rMbqNfpwkn9pvD79liRuSNcrMzOPs9t0kH641hB1riKqzttVW8bC5BScMM7IK6o8E8rCOUUKjygCTpjLkzdNAlI2YPuISPAP3WvE9uihiANY0JwL6slEkJk6Wxg9gKB5AMPP853u1sQB18zYCpCHHvzZVfb3uPxeiOTYXG2+GhS1ZiI4LmbxuGrhdSDgxU3uttcB2HPhC6WtHAQW0ShoaZBTXKYMwQGC5ziig4JqYN0bcWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hzyZnFUB5Q33Qybbx8tLhe6mAC/tN8RgIV84YgbgeMQ=;
 b=dgRm+jdYuODen1cBPLWxIKIN9hPGfyl7Tqel6YCZi0/1RSSElL/8BQM1hKH2l+KoeNudIDhInAC2nbsXUAIly4BF1P9Tg2CIh6c+jIqQcBwzoucxVypnHlJaOToralN01JbHnjp9dPzqjB+Lqbyv2svBwAlOKkTojc/+YZDTTYo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=prevas.dk;
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:45a::14)
 by DU0PR10MB7566.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:402::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.33; Wed, 4 Oct
 2023 20:51:22 +0000
Received: from DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::52ba:4d74:6ab:aa5]) by DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::52ba:4d74:6ab:aa5%7]) with mapi id 15.20.6838.033; Wed, 4 Oct 2023
 20:51:22 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
CC: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Subject: [meta-security][PATCH 3/3] fail2ban: add useful recommendations
Date: Wed,  4 Oct 2023 22:51:11 +0200
Message-ID: <20231004205111.443943-4-rasmus.villemoes@prevas.dk>
X-Mailer: git-send-email 2.40.1.1.g1c60b9335d
In-Reply-To: <20231004205111.443943-1-rasmus.villemoes@prevas.dk>
References: <20231004205111.443943-1-rasmus.villemoes@prevas.dk>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: MM0P280CA0019.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:a::11) To DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:10:45a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR10MB7100:EE_|DU0PR10MB7566:EE_
X-MS-Office365-Filtering-Correlation-Id: 82537a34-59bf-40c0-463d-08dbc51baabc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lumf845umCqEX/rFN1UhYB5saG7xedIWng+SU83SWIJg7cZvCcqKwFzh+c6fBqpgTj1gBjXmvQsnfbAVWKLYcvHSyEJRho9gl7pxpJay5NiZuyDAbuzGGjfmWMDZ5Fkay9tSFcObFlkP0xCjzsOY/zXt6p6giicFicCk7nFls5zXSxEQpSElfS4tSGEbRGZjNsxrmoTgcLlxZejIso4xwajFLFGU97u0r+E9DeJp5OtoUa0RWWVNY404PPnqqT1CPTypR//p1/HoSdgC2Hyag+HD+KjIWegxB9SoLCeQO+rI3Mzdbl0cvV4f/XKZcO6wdcPvxUMguWhXaZeKtxGm+77xG/M5VRDrzq2jVrhY0HC14ekJ10udA5taPAjtyuSt6fySPDuAQ1E4fHX5llvvpaEw8cehnuiZU0wOLIu0QUlOyjYT9iYcEHlVK+Na0xElzMETbhSkTgqw/ik14zO6gjN/pyxff2WBO13xMo6Af6au4wWzSocrHwfcXV9Hf+a4Eif6r7i0Sscb4PApmNEpltkHFBvkbS2dvLvctrs9Ppjy5kDNGhBen3c4rODdVh0pgKYafqab9PcH0BG6OAFp7GpqQUqqfsFozkV6EyJbIv0ccm+T1Y206kbKZoFk6Jza
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(346002)(39850400004)(366004)(396003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(26005)(2616005)(1076003)(2906002)(107886003)(38100700002)(38350700002)(8976002)(52116002)(8936002)(4326008)(8676002)(41300700001)(6512007)(478600001)(316002)(6506007)(86362001)(6486002)(5660300002)(44832011)(66946007)(66476007)(15650500001)(36756003)(83380400001)(66556008)(6666004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?TULujLpoF+DIseDuCpQJZtkDkh0i+ZW6FL6OtLJrNOCWQpEEtd8LglSaJIbr?=
 =?us-ascii?Q?m+wNgFG+sqHtuaRa37hnQGQ3nityP9a/rNaCP2Xo1pyEe0ZcqrP+Vmms9Sm/?=
 =?us-ascii?Q?zUwhj/9Cw2JoVhbjzl9pC1+0+zDuoaO/7HA0EEQLZHwsy03XfAQbzM2focfH?=
 =?us-ascii?Q?vafpqPT9gRseEASKwVgNKF1yZfWIe93jtUfKJk3IggdQqsTIBgdhB0l8oBdh?=
 =?us-ascii?Q?MnDuBNH8pBglzVxCr+gFl2N3nOKPaFgM2FR42+R2UNOMIXPm80/tcdIYV+ms?=
 =?us-ascii?Q?zixTfdjKnTmBxUKjnEKOGmIcpM8rNRjYL/PnHRpThg3pd+jwu8kfd1ODtyKL?=
 =?us-ascii?Q?AqwmnfmFH97IlMl96dISMjsSEiArRuqHwDWu3habRhI3DzUNouPI6/IcvHhZ?=
 =?us-ascii?Q?DDQRWRPSnRXrIWOOzD5H96JMBjt7+zz2eTUWAUavhzbOXcYrtvK/1Q4pxJWa?=
 =?us-ascii?Q?mQF/Wna0GMyJNY1wP7U6xHoebLGYr/xxo8NQxdfbjFJn4pXL0VDWe+Eg+5Ew?=
 =?us-ascii?Q?il4aaIzlGObn4adFXqXVq3CMA5Uv5bGICKhxLIxK3td262Im+OXXiwP44UMK?=
 =?us-ascii?Q?P/j2nCLn+uKXh/Dpw3sMNpW+TFxOZauaHf5OrcRCbnQ94ezJgkZTnb9Yuyqj?=
 =?us-ascii?Q?aJwIgb37hxlTt5V1dkQ+hCgmGljmw1fEQiP2eXvoQmKIVkLlSxYejJ892YGR?=
 =?us-ascii?Q?VvGaUDLQf9PqsxqxK5X6QviaJ7p0h3X4SYbuEX4aNKea/JdI9ymlrC/M/rQT?=
 =?us-ascii?Q?qgf5pyIUoaz1V8aFHhVV0N30qgsubMYAran+MD1z15a/Otr6g21TDziucTO4?=
 =?us-ascii?Q?LRV15vk/EEtjP155pBOcCyA3wMDOTHEI3CtJK35XB2kZzjbgEAmQabaRa08c?=
 =?us-ascii?Q?GdwDFMxRRaNZn2GQ0A4DRKqM+VYDRbLZssLTzrM6Yuq/gPxt2WwmH6CLEzvf?=
 =?us-ascii?Q?xVRih6VWIZn5VJ/eZ6NXb6lrGsDiNrBZimixGXVZimCrOB0/gpZFFNfSgzro?=
 =?us-ascii?Q?pD8P+3tnEmJUVELhoTiXOPYQ78Kl4IDzVE/zfSFtThrcCbMfiE902ZIUWgj3?=
 =?us-ascii?Q?AO1ph19/IM/8NsLO0UlHpZTV3duMI+BB5zTjtJUYSoAlBj7QYSkttL1/oKWf?=
 =?us-ascii?Q?IdytDCpmsW3arYbK026FsuWrhi3fyfYge9LRRaUF4Y05heggzeKtViNVLWcX?=
 =?us-ascii?Q?OcguMJhXxBY4ZauHiHiwNzpq7iA5kizuyaBu5vMxBQa7q1Y+icCwwx7yKlCu?=
 =?us-ascii?Q?/ZUiscjHCvV8mKMsrMziDaNdytBKURDiNZJT+2d5MZjGBA9/h2cmQ58f3xm2?=
 =?us-ascii?Q?E2LM41xQgug94bfqpIFI24At7H+6aCvPfavpMNaL4HWSdCSw2V6wOT/jgJoA?=
 =?us-ascii?Q?XgH0heuWR1Zkvaumewh2HAzKtLK8DbzJsptuS4fYAdtEiG7YI087NcMKiAI0?=
 =?us-ascii?Q?cQSlBW5g9mm8QzX6QsTxjBCWg5eY9MCukAdkfD+U9A7sRsAP7IXBK8PLhds3?=
 =?us-ascii?Q?yM483LIgcFi3ohyupd354j/GstnM6sCo8gL8WGYKkHHRt1/j1N2bhkuZf8NT?=
 =?us-ascii?Q?vgOLVr52XlguBWFm+cMBn/uvncrASuG0Oy+3zQdn1qCIsOGCwaxpLXYBACay?=
 =?us-ascii?Q?4Q=3D=3D?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 82537a34-59bf-40c0-463d-08dbc51baabc
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 20:51:22.3647
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rN/LJE9hkEIPy9T48fN7PDPyqz0FQqayHIDYmqqykofQiYeMO7+wESmbO/mH8qH8voh1tyGCXSaNxGtpuxQkIyleoYIoqfWioGD92TlWmKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB7566
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 20:51:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61245

From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>

On a systemd-based system, one is likely to make use of
'backend=3Dsystemd', which requires the systemd module.

Both the pyinotify and systemd backends require the distutils module.

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 .../recipes-security/fail2ban/python3-fail2ban_1.0.2.bb         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-f=
ail2ban_1.0.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/pyt=
hon3-fail2ban_1.0.2.bb
index d64108a..68695f2 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban=
_1.0.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban=
_1.0.2.bb
@@ -71,3 +71,5 @@ RDEPENDS:${PN} +=3D "python3-sqlite3"
 RDEPENDS:${PN} +=3D " python3-logging python3-fcntl python3-json"
 RDEPENDS:${PN}-ptest =3D "python3-core python3-io python3-modules python3-=
fail2ban"
=20
+RRECOMMENDS:${PN} +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'systemd',=
 'python3-systemd', '', d)}"
+RRECOMMENDS:${PN} +=3D "python3-distutils"
--=20
2.40.1.1.g1c60b9335d


