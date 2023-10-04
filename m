Return-Path: <rasmus.villemoes@prevas.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8BE3E936E8
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 20:51:30 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.107])
 by mx.groups.io with SMTP id smtpd.web11.5902.1696452686020847680
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 13:51:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@prevas.dk header.s=selector1 header.b=M07eo91B;
 spf=pass (domain: prevas.dk, ip: 40.107.7.107, mailfrom: rasmus.villemoes@prevas.dk)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fRkhU2wH/Djr55HuqvmMzhZ/d9rXGftG1KpYCqGqBEA/NEJxaZaRyankOXmdOof18/T5mwV4bjTbwPYA5mOUWhmFsDQxDuM+FUyNG4U2FHQI2SNi5smR/1fbYl3GX+2XNasc1M9opdOMyFK6Lj1DHVrE/ctrS1cAH/XF0MoWe9kphTNOD1GUJLcercsYZd2KMYlfbtlka75Z1saEE4Scu5z5D01PD3VHlfS2a1Ps/8o+87Qef5ybZf4d0wDKYh5NAi8V/fsENbW58wC2u5pPzl+Aea6IBJeSaLespFupkNFvaVU9lN3Vg59kjH/58e9a1o4DJcdyFhk4G0x33RUhrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hbRzsv36OWbkWzXWvozIstNthh3ok9p9W9hskvkxI+U=;
 b=XwEpUxFYxegwDojThs9GG/rGwUAeiNJZVOhk9WWTdCuIU3pK/DEpBVEhjSiIOw/+y92agtUGX2Hi7Mg4FxTOyfb8YnXPt5RisKtj7jlJsYv0pwvt24FHo0hfA7Hw/Zv6QVgZdDpiy61spqp+kccQZ7N7dhtxBl9hsbRTtH2XJeqHQDwBCyMzVARkVeanGDz9QHgt/N1sxFIJDM0qZc8ic0SV893MIVVtLp+3NfGrA9/k2Gc39QkX43FXtVU5Fj6B3RSvI1Iuv6uT9VAoZxogXz1gOuPENdlKM3nqtz7dyesu6By5sTjOsXUqU5fh3kyaX8Ixxhuk7BUGUYs7s9ci3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=prevas.dk; dmarc=pass action=none header.from=prevas.dk;
 dkim=pass header.d=prevas.dk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=prevas.dk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hbRzsv36OWbkWzXWvozIstNthh3ok9p9W9hskvkxI+U=;
 b=M07eo91BLX9eoup6Dbx3fnuQvUazWSYd31JCIJ7hDFfvTmScm3ntVU8WZshxj3fMfQ8OaQ+U2hOGtpn9HFzg+VB6j0CP3ZFNfchH1aQNJR1AUd7STXk6JnXbW68r9/aiowEDFd7ckvJgZJHjK8Fr9k+Y7PH48zcp2gwerHbArWE=
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
 20:51:21 +0000
From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
CC: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Subject: [meta-security][PATCH 2/3] fail2ban: change sqlite3 dependency to python3-sqlite3
Date: Wed,  4 Oct 2023 22:51:10 +0200
Message-ID: <20231004205111.443943-3-rasmus.villemoes@prevas.dk>
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
X-MS-Office365-Filtering-Correlation-Id: 672bbcb9-949d-415c-4758-08dbc51baa7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zCK9OWXYi/mbbqTtLDfpgH4jS79A85XoxZ4THhjwHj/fzlZJBYb0Bf0GuJ4nFTvcU/ZcD+P5OhGstGitvzLBHHVLa7YYDcbfcYjmjFb45JSZ0dL8Xc4BzHCwmP178TXRqdsleYx/MrpgzHLDbpsBoVlP06nV+UheRAKj78GqmrvJuPbuGrMLihQLQl+ug8L8BimDVbE0Iig94XMOPZa8BYcOmm6Yoy1tRC6AjGraTe7KJjCXimuvvgahNbBhzLnwOxYsXX8Or8Pr2XjXqp7mSQt1UyF+6HET6ZZd9ghJq664VJZPqZlad4w1TcpAI7Muk+00mCeSFlk8SsAjV5TSrRZOQNp80YmF4T3xiUvQ9ogr/g1iFrwztCbVzWAFo5WW8i4ZR5x+D/3Ip3+0jXnToRtGyn+/KR6dI283ZlSskm+8P9A48j0jtg97B7VyZfdRBTJYru9gr5E/obEcy78npAdYpBiBdravnLJerCCYGWRbW5xnVAwGlz/i0+HpFMqUCm6hgeURufncroGqKrqVtwwNKkj6KJOxmOXiPLsjwoOliBvzWvuJ3b0UU6oOCf2fCn09Wz/3cK6o7ij0P/kWpVBs5SlX8ZOSlVjmTw2C2Jllo6/GfIsPvrOlFbD1odup
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(136003)(376002)(346002)(39850400004)(366004)(396003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(26005)(2616005)(1076003)(2906002)(107886003)(38100700002)(38350700002)(8976002)(52116002)(8936002)(4326008)(8676002)(41300700001)(6512007)(478600001)(316002)(6506007)(86362001)(6486002)(5660300002)(44832011)(66946007)(66476007)(15650500001)(36756003)(83380400001)(66556008)(6666004);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?6wryNGD0uw1ENI9Oq/Vny7NE3buPzGrMgDuYGZwjpExK2JUyaESJms+NUHYk?=
 =?us-ascii?Q?f7yUHf99mklRNDFHPlHpoLpLW0mFo6UKrcFxf+Sp8nGI22yf3RYuJYdqdyTe?=
 =?us-ascii?Q?otBtpn51VzMRWonE/WADJieVYcAdqL0CmxBz5OtFxeUa4yNDpXnfmFxE8j7L?=
 =?us-ascii?Q?zBZL2oV0xpTYNB1G3Rl9iKrYm3/MCaUSSIHKYPOz586ZPZGV0WcryJHu0f76?=
 =?us-ascii?Q?cMetXrlsCKnDJpVWMHQFgvKH6z9ukcrGoAMm6JMRL6I5DN+X8g/64+zmfAii?=
 =?us-ascii?Q?QwjGjHoVKcJgMH8I8QEEJ9KqCELe0M0nJLfU5EwUKnAi3fdWndIhpZXclNGe?=
 =?us-ascii?Q?v74HDlAZcBtVR1C6jJISlYnqlcN3AX1BX93gDFftMUydeC2AyPm7M01p1OxE?=
 =?us-ascii?Q?XNrdmlo0gRFRbMODVlamSfiB4sn6V+Fm2jyYMG/+f31Fs7rxeFgv0jwQzVwN?=
 =?us-ascii?Q?5UQhl6uYDRnnfVE/FI+DG+d/6H+FMlzQ4M+bjXzuXZ0swkC8H5JvUvX/IQ3X?=
 =?us-ascii?Q?vzogNyzk+Ee++bz4X/SnzkF8ySSsn2F0sj0HmmHmd4vXoBtPnb0jsgDMsjLK?=
 =?us-ascii?Q?XRbXnGQCXtkAdjSQ0fhZMybKurEhHNSdKbsqKHOieMe6z3VFOQLP+LSAfotn?=
 =?us-ascii?Q?s0k+7uOlpjGI7+9WdV2mrcWdudN/t52mtR7hfpZKKAUd5pdvIEbZEFUy76Bq?=
 =?us-ascii?Q?nN5knk+fNAoX/YpAyc/PRvVv15Bm7f0T9nMdfsANKBfd2oNEDFVOM/GELHPc?=
 =?us-ascii?Q?YbW58mx6wyxaPzVwWYrlYeV2sXHDwy5GAZrvS1TeNbONyFmWkKsuo+1eE9tI?=
 =?us-ascii?Q?MzU993IHC+62ys5tUEzhnsxWS9X9abx4jF40i3n2wb7kI1NOU8fqvAF9wKME?=
 =?us-ascii?Q?p7NmeKP4NqQn9VXg5WZgk1uqJnH5pS54BUCwVGWNVLew4aYILH1A5kYjeKOi?=
 =?us-ascii?Q?FfWIuHfSQCemmOEVNLKB6/mWk0MwVwyj2ryRoz9uKHR+pNm7TGc8iCGnQr7W?=
 =?us-ascii?Q?eFne6551WfLC4k9Hy644xoZqLZ9BWq0FeXZFK1i+JJYZdnLasJ7Ny1mQ/8qq?=
 =?us-ascii?Q?mGQO3bOmme/+9e48/eTPCeljlyVIqvyx//vyGnP0ArxF/IziunOL7+5gAAKx?=
 =?us-ascii?Q?UmPAqlF8Zj3E/3E2v1F59XnrFiNBnITO15Q7mjauVyKNc6CioLY3Kx5SAVft?=
 =?us-ascii?Q?DLUCmgCYImww+8bjxnxzeotsg0b4+NUr78KYxJ6Ms9UOugupt9+g9gtl7NSn?=
 =?us-ascii?Q?q3nALaAcXUhnN7UJlLCCW/ywjkb2yGoioiGkIo2KQYM8PvmlEZ1uc8zXI1RC?=
 =?us-ascii?Q?UgRZar8nWNmX1dalyeHzqs9k3Llk3hig/joMdieJdJVVkt/uxEL+w7z0PbZ3?=
 =?us-ascii?Q?SkbUy3FBx8kta7Ujoj775YGAhOdkKs0+8mXdhJ782XMb7KeQQ1vAz+2qGENQ?=
 =?us-ascii?Q?vmdEv13ZNNdA6qGIGVn8Z/oounBY7/YhcdBkfXeh6MeMr6AIhslPhoP8p4Jm?=
 =?us-ascii?Q?9C/QomV4T43XGInlTOHyy4infB1vVn3ZWvLN/VhoapnL7fIF6yhTY+J41PZf?=
 =?us-ascii?Q?dwXFX5kulaFbmQ16LmcshhCXtjPbklrU/B5vhVJe2xeFZ5xu/iz5f6/I9IiC?=
 =?us-ascii?Q?1w=3D=3D?=
X-OriginatorOrg: prevas.dk
X-MS-Exchange-CrossTenant-Network-Message-Id: 672bbcb9-949d-415c-4758-08dbc51baa7e
X-MS-Exchange-CrossTenant-AuthSource: DB9PR10MB7100.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 20:51:21.8915
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: d350cf71-778d-4780-88f5-071a4cb1ed61
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ea03acXmhH/eN+6BdTBIVTBFSG1ZFpiHDafuBuJw74sTH3hipVALfouNjz50+sv146ewwScRiGv9i78WqTBGFmTkWHGmn83S76Dgri94etQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB7566
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 20:51:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61243

From: Rasmus Villemoes <rasmus.villemoes@prevas.dk>

Currently, one gets

  Unable to import fail2ban database module as sqlite is not available

So we need to ensure the sqlite3 python module is available. That will
automatically pull in libsqlite3.

Since fail2ban does not actually depend on the the CLI which the
sqlite3 package provides, drop that dependency.

Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
---
 .../recipes-security/fail2ban/python3-fail2ban_1.0.2.bb        | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-f=
ail2ban_1.0.2.bb b/dynamic-layers/meta-python/recipes-security/fail2ban/pyt=
hon3-fail2ban_1.0.2.bb
index 81fa00d..d64108a 100644
--- a/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban=
_1.0.2.bb
+++ b/dynamic-layers/meta-python/recipes-security/fail2ban/python3-fail2ban=
_1.0.2.bb
@@ -66,7 +66,8 @@ INITSCRIPT_PARAMS =3D "defaults 25"
=20
 INSANE_SKIP:${PN}:append =3D "already-stripped"
=20
-RDEPENDS:${PN} =3D "${VIRTUAL-RUNTIME_base-utils-syslog} iptables sqlite3 =
python3-core python3-pyinotify"
+RDEPENDS:${PN} =3D "${VIRTUAL-RUNTIME_base-utils-syslog} iptables python3-=
core python3-pyinotify"
+RDEPENDS:${PN} +=3D "python3-sqlite3"
 RDEPENDS:${PN} +=3D " python3-logging python3-fcntl python3-json"
 RDEPENDS:${PN}-ptest =3D "python3-core python3-io python3-modules python3-=
fail2ban"
=20
--=20
2.40.1.1.g1c60b9335d


