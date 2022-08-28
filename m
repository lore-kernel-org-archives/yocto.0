Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83E05ECAAD1
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:06 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.55467.1661653796539414344
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:29:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=KnkULoyt;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2TtaE011348;
	Sun, 28 Aug 2022 02:29:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=h4yOXSdoJlkUbU+Pk0V+Miq2YvRuceSdZIOdZlGBI7M=;
 b=KnkULoytg2NEGUKCdhV947P3yrJcbzHKcgiB8avSIntuHGZlAVZJ5R7bTsErEukdgqsf
 CS+hpodOPNjF3LcKCSN1Gl+lGwFh1CGHX0qWrSDXWRW/b0tzA+G4FsjtTcfvd57DMK5g
 w6/4UIh8OQqEiYs487xP/7ZGbxN3IHdG7y4TgAbm5wqDRewICXBQHnPu0HPwPZL0xgL9
 ngawpEXMJ/+D4ocfOguVl6nMHvTr3QPwJzVccDFHDuhzfgIsNpCwjszOnos2z2g6Ettd
 556x7Fo2KqzmUrbMFB/zakeSPDjEogXtGoX7oTTl5pKWxs7z/EfXGSvk4fTrnlpXaigt lg==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j78g2gq48-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 28 Aug 2022 02:29:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y0x3nOLM66SJirqNl+Hv83xlJExX0tXdR0/o+V5KgywdB/kpKzlOp+X9ZTyrCGG8QgHZ5FWPsb1i5zYQxHThJ7javyaKZhaEZygrq9VlhS4pMzXYawQsjzSTaEcZnA9qaPFo5plsZyZoU2loR1xFkuDz5E41VK7870dCZb0mp58MAjEtrzp3lAL22Qk9oBOs8CtqwxkchIp/aJNAWo19CfVZC+sPfhalayhJRD/k7aBWhXzfCfxbcmbQgQOB+WL+f0KBmkjPd0vn0fDNW11Wgrmq/IWsbggphjzEl27rFu5O5Z7ggiKN1FBIPccVprPUZgbMvPp8/2DdBcDByB0ynw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h4yOXSdoJlkUbU+Pk0V+Miq2YvRuceSdZIOdZlGBI7M=;
 b=OY984aeXHUZyVCDQq9SYMmr0GQAeo6n50A6VAq2ZWFu7PEPcsw40Dn9tiCTYCnHtXdYgx1iKRzV1SXCXvTYUjVG20sON9gRmFQ8XTpT74CfojJXe9uOJ27dJrGYW//FznPa8pxN9vL45Byrh5p/W9t/B1x6ETJ9t69yFB40f9LwxaF91tAdZQ/Z2xKyd4bhcNHKSe1BWx+8ZxykuuHr3PH5imgEPDbZT4wP140Y57H+DpNg4wcWw7m3bmDfeHVzr0RrtuzxqAVX4Au8L/JqsG719lmU8yUENMhH0aiXkmMXdpjhkGz8HUc818SVEKaqQcLHhsVVsbjXhhE1WampxnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:29:53 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:29:53 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 05/16] libsemanage: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:23 +0800
Message-Id: <20220828022934.47592-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220828022934.47592-1-yi.zhao@windriver.com>
References: <20220828022934.47592-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65c2654a-25d5-4d09-b010-08da889d30be
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wyExsnBKr4feHq79b9lDSBOr8VIuvUHQ4n2Z9WD3iAN/6McuRz3z8NDrArEzY08DKf1vy3Fu2A2bddKeAuCLv9JkmcGj7++8KIbQVakgJGdFe/6CkN1QwDS86eof/goWfY6g5m6w4Da+N+6TiKQ4ohnyCZTA0+1icu1xKIG1Uy387Kz3c7TxXbDya3hlcHcZ5UW1vNo1MLxU+cnZGeatv7kEQU/kYlt7IDTGaggOXI2S+nYNikIDx0br9pWh/g64TgLYX4NNzHZIgtav0NJ+tN/KlMKyedxIJAmLTgc8/Z1nInuqalcnOzqogeZAxkcxI2vsvci9OUPqzOHjZqoS/HUUHAvKW9Z5Od1TCsAMbFcV4QFKdmDHtW0k2a4iWjQoMCDmJWjjIRD3GeVd3/Sh0Weq3/KdKuL1Y7Prt9BoRU5ExvGIvO6WmZYBJi+NI8T0JofQEO7cdFNp+EIvRpam0fulWoT4h6hta5p7W1xcDtfjSW46vkeZLRGgmMuB2cIXicWdGLwTPW3kFaJa8vnmCDKXAvgmBXAnAZlVSX7fUp85jqxgd14Pc/HUz4Gr6fiQF+129LzfVcS+Cb8ngfm11517KCGIVoyOzi1qvnUf8cjQ6AJGiP4rtuitcPwmVF+6tFvBHjRHPuDu+GZgAxb7GV6uTDVBwI2qVzvZ3SvWIPnabWxLE3vuwaAqCkVKJ9Na/n+W8gTNFOjGK6XyJUTStq2m/9KDW54/CmZk4tgFS/2sViy65b8fBLukQxIZPGLIMX4O60BPw7SeszOjXBayU8kDcluldHMf6jj6cz96XiU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(53546011)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(966005)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?TZd894dzQPakYnb4xya1xJHtnfhnIqmL0VOu74J0yVrurAfUI2rXV1BFdZ2m?=
 =?us-ascii?Q?4KhnZeJVlM6LO3aK/20ip7oxxjuRRwN7ElVBN2AGAATQimgGoKnKCQOTqR2Q?=
 =?us-ascii?Q?r67mToanS6JM4DV0qb/jnYNhxI0NqxwkWX1p/NNAMwGcLiOwvEXLRRjysHea?=
 =?us-ascii?Q?FTGn0udwSoWN1cvk8qgByCt3/T472om2M5TehYKd2IRsEL5MyFnBmH7gn2I/?=
 =?us-ascii?Q?s7QZQmF5DzF/faLxfu81MR75fWdeI9xLCUyfe3GG+TDovo8l/X4Gz0Xl3Zj5?=
 =?us-ascii?Q?J+dr21k/Q9SYw+Utm+noYx9gUVS/2K70f8KiXIuPdh07BrA3xLLj2Lms8J7R?=
 =?us-ascii?Q?qhaVi/QgdQgk9RRd4HSVKn7oQ6uDiCwhKQrvDea1v1arom8TZy62+feqoVVB?=
 =?us-ascii?Q?nmiL/Rj9cphVMrIP7GqaJHz2IJ5AD5P12IO9hlnZ0+icoQGanMDmxnef37fJ?=
 =?us-ascii?Q?OlHJ/mrAIaomU4QY46aPRBvfA1agDyKhweEBRWhWBckjt7BgbLMogt+j73bV?=
 =?us-ascii?Q?g+RxfoCHh3xY1IPRvJXRrZ6NpvIOoN9oFFTpKVx5mYVW/Kuzp/IKtlFQmzl+?=
 =?us-ascii?Q?MXnvRBdoTUBYEh+KxSNx1o9pdHqgeHFLnX5X7pwdo7Btg796mx65k3K0yvEg?=
 =?us-ascii?Q?u6PVTQtQey4FT47a+Ub8BInA1ZT+y4D2ViVznnoK3SFGrwoNiEJ62qXs5icZ?=
 =?us-ascii?Q?WcFmD3AxSCnvTe3f4tAx1EXA0wzJetJ2JB6qkYbhRPxvugj5EnG30EFC6qUk?=
 =?us-ascii?Q?hWfJTyHjPlO2y6GMPbCjY0JUiLgwGpEWiHqY38Xta+DZhkol5wqQuA+OFhE2?=
 =?us-ascii?Q?BYxnGvsbaXbgoOXwyLKzAI2o4sx9G8ODjSJjF9KfZm5IDNH0Im5b/kzpgyH9?=
 =?us-ascii?Q?m/nFvKaRbmwExEvtn64W0Z5aY6IJagnVnZdnbl7pLa2UZX9xQ4hN6dbKuRtv?=
 =?us-ascii?Q?+6S6DMor8JOJd6cGjIGaTRRtJ/5F2CjnX1nQ1QUfRBhstjQRtZIKq570HBXI?=
 =?us-ascii?Q?2iXpSvMhhch+PNi+ulNSM+62E9/UDQVaCYedafT04xX39Utm509YDicZ8z6B?=
 =?us-ascii?Q?nK7sW1hUOgdsZaJrvZSf3BBrYKgtFxN64TzI6J8ouKBSyKWgfmU6N6+c+x3J?=
 =?us-ascii?Q?o4iM1mGqHKHGrnx5aDjOQkx9jjAEG6mstHHZy5GmMktSHNQyymo62gLQKYCb?=
 =?us-ascii?Q?EOE+aSsuTcconYwxHoCX7Wz2GF56mu4qtgfpIwes0T3bJMR/1jz64nhEumdS?=
 =?us-ascii?Q?i8Oa9o/G3mTRS7R1DWlh1LOEhD/yOSDsG3vHj+1YotMoVDzsUZdTuMbY92Mi?=
 =?us-ascii?Q?5RgaZ2PrMwcFO3aso6hzCWFAjV0tCLznT5tptkFYgZPu5NuRJrN+6YbwZpt8?=
 =?us-ascii?Q?B0YqF0A5a1nlV1wgxQKKa0nuqpahI1P/vOs7/3cXy/lpRuhFF74ILLetThCF?=
 =?us-ascii?Q?ctDt7BvvwZQIIrNdDFLNY5WIr1JvY4tgLJipkXn3R4Mi/ENeY0uqG9KhAiiL?=
 =?us-ascii?Q?/wy7YjYsWikVVi3oVy8bXcWhs35qmPCl9Hes1WIB5Ej8FWVtyiI+8oZFGeFQ?=
 =?us-ascii?Q?ClW8Xdj2MgClyfpwnXZmq4auTKkwJtwhp9JWV8tp?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 65c2654a-25d5-4d09-b010-08da889d30be
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:29:53.6642
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 niSZDya9QXgM5CvQLhMMkFziJUTWQntwysnihxPVdhVL6CRXTuj1ugAdNCpOsBk/2HAc/Z2mpGl0CB3JM/gTtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: 1fOanAWhahCW2HW4PerFNrjcjXWYnXBJ
X-Proofpoint-GUID: 1fOanAWhahCW2HW4PerFNrjcjXWYnXBJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 mlxscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57920

Refresh patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../libsemanage-Fix-execve-segfaults-on-Ubuntu.patch   | 10 +++++-----
 .../libsemanage-allow-to-disable-audit-support.patch   |  8 ++++----
 ...bsemanage-disable-expand-check-on-policy-load.patch |  8 ++++----
 .../selinux/{libsemanage_3.3.bb => libsemanage_3.4.bb} |  9 +++++----
 4 files changed, 18 insertions(+), 17 deletions(-)
 rename recipes-security/selinux/{libsemanage_3.3.bb => libsemanage_3.4.bb} (91%)

diff --git a/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch b/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
index 0b1f3d8..5a03d30 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-Fix-execve-segfaults-on-Ubuntu.patch
@@ -1,4 +1,4 @@
-From 01a37b94a1f5605a395e8b45ee9ec653ce716c06 Mon Sep 17 00:00:00 2001
+From 2111f86dce8defd9bebd9b43008339e3b5af0aa7 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 26 Mar 2012 15:15:16 +0800
 Subject: [PATCH] libsemanage: Fix execve segfaults on Ubuntu.
@@ -9,7 +9,7 @@ Such as "make load" while building refpolicy.
 
 http://oss.tresys.com/pipermail/refpolicy/2011-December/004859.html
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
@@ -17,10 +17,10 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/src/semanage_store.c b/src/semanage_store.c
-index 58dded6..1a94545 100644
+index 14a0957..0a9200e 100644
 --- a/src/semanage_store.c
 +++ b/src/semanage_store.c
-@@ -1441,7 +1441,7 @@ static int semanage_exec_prog(semanage_handle_t * sh,
+@@ -1470,7 +1470,7 @@ static int semanage_exec_prog(semanage_handle_t * sh,
  	if (forkval == 0) {
  		/* child process.  file descriptors will be closed
  		 * because they were set as close-on-exec. */
@@ -30,5 +30,5 @@ index 58dded6..1a94545 100644
  	}
  
 -- 
-2.7.4
+2.25.1
 
diff --git a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
index ff5cb00..19263d8 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-audit-support.patch
@@ -1,9 +1,9 @@
-From e76867515be3bc296174aeb26c7996a0939a2a8c Mon Sep 17 00:00:00 2001
+From 5718384543ff06ad4032e90291f9e4398a2749c4 Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 20 Jan 2014 03:53:48 -0500
 Subject: [PATCH] libsemanage: allow to disable audit support
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
 ---
@@ -13,7 +13,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  3 files changed, 31 insertions(+), 2 deletions(-)
 
 diff --git a/src/Makefile b/src/Makefile
-index a0eb374..afc4437 100644
+index 71c2a1d..52f335e 100644
 --- a/src/Makefile
 +++ b/src/Makefile
 @@ -26,6 +26,14 @@ ifeq ($(DEBUG),1)
@@ -122,5 +122,5 @@ index 69f49a3..f914492 100644
  OBJECTS = $(SOURCES:.c=.o)
  POLICIES = $(CILS:.cil=.policy)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
index d1e5720..6e0faeb 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
@@ -1,4 +1,4 @@
-From 35196d58cd37fec89fcf95e3d43b41de7008f0be Mon Sep 17 00:00:00 2001
+From dd52bfb66d710473aeb75c5fe92d5cf0a66b637e Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe@deserted.net>
 Date: Wed, 7 May 2014 11:36:27 -0400
 Subject: [PATCH] libsemanage: disable expand-check on policy load
@@ -17,10 +17,10 @@ Signed-off-by: Joe MacDonald <joe@deserted.net>
  1 file changed, 4 insertions(+)
 
 diff --git a/src/semanage.conf b/src/semanage.conf
-index dc8d46b..254f156 100644
+index 98d769b..708fa8c 100644
 --- a/src/semanage.conf
 +++ b/src/semanage.conf
-@@ -39,3 +39,7 @@ module-store = direct
+@@ -40,3 +40,7 @@ module-store = direct
  # By default, semanage will generate policies for the SELinux target.
  # To build policies for Xen, uncomment the following line.
  #target-platform = xen
@@ -29,5 +29,5 @@ index dc8d46b..254f156 100644
 +# module.  This results in a significant speed-up in policy loading.
 +expand-check=0
 -- 
-2.7.4
+2.25.1
 
diff --git a/recipes-security/selinux/libsemanage_3.3.bb b/recipes-security/selinux/libsemanage_3.4.bb
similarity index 91%
rename from recipes-security/selinux/libsemanage_3.3.bb
rename to recipes-security/selinux/libsemanage_3.4.bb
index b17eb68..08d2c9c 100644
--- a/recipes-security/selinux/libsemanage_3.3.bb
+++ b/recipes-security/selinux/libsemanage_3.4.bb
@@ -16,23 +16,24 @@ SRC_URI += "file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
             file://libsemanage-disable-expand-check-on-policy-load.patch \
            "
 
-DEPENDS += "libsepol libselinux bzip2 python3 bison-native flex-native swig-native"
+DEPENDS = "libsepol libselinux bison-native swig-native"
+
 DEPENDS:append:class-target = " audit"
 
 S = "${WORKDIR}/git/libsemanage"
 
+EXTRA_OEMAKE:class-native = "DISABLE_AUDIT=y"
+
 PACKAGES =+ "${PN}-python"
 
 # For /usr/libexec/selinux/semanage_migrate_store
-RDEPENDS:${PN}-python += "python3-core"
+RDEPENDS:${PN}-python = "python3-core"
 
 FILES:${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/* \
                       ${libexecdir}/selinux/semanage_migrate_store"
 FILES:${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug/*"
 FILES:${PN} += "${libexecdir}"
 
-EXTRA_OEMAKE:class-native += "DISABLE_AUDIT=y"
-
 do_compile:append() {
     oe_runmake pywrap \
         PYLIBVER='python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
-- 
2.25.1


