Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85B21C43219
	for <webhook@archiver.kernel.org>; Wed,  2 Nov 2022 07:31:13 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.3554.1667374269269337309
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Nov 2022 00:31:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=GBTIIP9/;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=83050761c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2A26wbP0032742;
	Wed, 2 Nov 2022 07:31:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=uFLwUTL2KNjIublR8SopVyxGUO1M5T8hmpvS8eC45LA=;
 b=GBTIIP9/pnKgrW4DXheUfMLTocx++S7t+JC1divBM9Kt78O2R6/vF7d/lhsh/95OIz32
 tgjvQhZLLw7I+NHugjqbD5DlmwlDUeI6QM1Fo1mWHtlkKX4C0puLS7qnrfQQnlyjixnb
 ved5lxOcmNRcreXm2bpOZ8nClKwL+Jcq3y3tigLORbKQxiS3U06SWW4ioLN67UKU5VgF
 4BS2R0U2x9Z6jz8U6+GT3hxpnu8FY8Pu3cdJyLNKnVEGV/A/qD4JB01Ts4Sfz8Kpu3Ma
 pTUQbqBfQgHzPNrH6IxlIxZKSu/mp1Z4Q9SVstZtnCdC31H9y1Ock2pZqe6LiLSrTrLs NQ== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3kgu5c35cm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 02 Nov 2022 07:31:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ethmwpT2mQdeVX/M/CWscmZbcbtqe5Ob8U1BKQyNdB36ZHL5bZn+FS3ovncaW0zZYAcASlMnlUznLo03uBGotwLBgmf/rGTW9JknXjmlg9kRLeVYchsyVAxi9iUwBf0eK7USrRO1Deea6kBus18Itk1lYjPdIclkRjzYmqxTQEjN4pGd+8onoGfUN2ESur3LYQ2EG2iKaz+z7vZwsiyHjJeSSq0iVcHYsrrOrVuPjp4cxFxe2I0ovWj2IgzGDAlO3e4gDIvn9BbnQF5BHlDxqy6CgLu4gE89MlyVPoH/JQbjbLY0XHORL6GLhu8+l2M87XfNvaZaRPpOkv2y7mN2WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uFLwUTL2KNjIublR8SopVyxGUO1M5T8hmpvS8eC45LA=;
 b=buwnMIriXwG5901nE8Zwli3gsZ2zORmv6PuOWRItbMYMM4vGer7MQg79gUPWgnoNSxquq8AXuxOHk4Q1TgFk4iOf24eBqg+wVyMMI9VAGk4lvChLzbRtQejFdn+kwqfOxi7UPpJ1mJaRd1eH110TI81oB74CPjNx0tOXHTk8P5oPVMLEZqp2miuyQj6AHm08nYoaIf7mAExiZVl3ynZnRDPNUaaDIoqXNUPxb5Uo65zo/9HFbEFG9c4Rkgpdpx6nv9vV0sxY9BvmxDjCxPevtg9gFH7uq7G0RtU9HY+YngdrUho/79cuz90BkQdsIg82X7A3I6fWtvPheY0vfl3gYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM4PR11MB5454.namprd11.prod.outlook.com (2603:10b6:5:399::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Wed, 2 Nov
 2022 07:31:04 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ad2:95fb:73d5:35ae%8]) with mapi id 15.20.5769.021; Wed, 2 Nov 2022
 07:31:04 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 1/4] SELinux-FAQ: remove references to poky-selinux distro
Date: Wed,  2 Nov 2022 15:30:49 +0800
Message-Id: <20221102073052.1567876-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYAPR01CA0108.jpnprd01.prod.outlook.com
 (2603:1096:404:2a::24) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|DM4PR11MB5454:EE_
X-MS-Office365-Filtering-Correlation-Id: c08d27e9-85ef-461f-8932-08dabca432d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rlhZIoYVrGfQ51glvrTzKQM4ZrWXlqTewQF1pByZYVcinSdInxhUKTo9YjtIFQ0SPM32Xe0J2Jy+WGl8VSVuDfDNeflNqnAV5bODm3x40oHbeQ6GGnOyPNR7Qj7egfes89FDsQhyxqUQAQboG3BYxYRgfuGpnpE+F30XpJeDxJ/BgtukbR2XfvUGyDMf6DyIrhA7UpfXy7/JWjQIfa5kbvI/BF1l9yKhEKKaUwu/KnbaZtGOHY045p3Fhae6qfGC/2I8SowUC/2J+Rw/fcS2Zmj7LzADEQdLBK7BGRtLL2tGix2KdNtcZGuI0D6VxlW+dMxZCFnvm/dFOfgzJOuAN7m6D7M5/TtXESpvAPdUWe/Kn8Y6z7GalB/o6VqYgxraY5/H/SFX7RcaESVeMEHAxxJ6s0LHEPxBKoj9nxi+wTD+wYQSl60nV7/sa9G5G3K+IUbgDxgXO+wshyiO9r/ioqnf08fiS+gnQkfrvl5Mh4xAocYwReGdI06oeGhv74QcLH8nvRCu7bHPUY94cYgC/q8eQDXpD0naaRin9i3CoRLjmrTy8syq4xuqXdQo+j483dsrENGKA/BCSbNFDhXLNotnsLUZuFiqkSoRUsnrQlkONOsr/71FtTNMDjsEgO6vpUBxHsMrZCLKoO8Ehxe5/SFZ9TppvzxgNH/h9Sqop8+6TNz9IaM8+odqWEzr56UIUUEPGKvRpfk8Tn/flbqlCKqFd4mwmKL4MLKug7qTnZq6f9X7gyi4OQPDha4rbh3LQc3ltMvSslz98VtavqP/aCwCXkNvWDl3VrAmdNEjt5U=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(366004)(39850400004)(136003)(376002)(346002)(451199015)(6486002)(5660300002)(478600001)(6666004)(316002)(36756003)(66476007)(2906002)(66946007)(52116002)(8936002)(66556008)(6512007)(26005)(8676002)(44832011)(2616005)(38100700002)(186003)(86362001)(6506007)(41300700001)(1076003)(38350700002)(83380400001)(72063004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ViQb63H2m3r0sBX04FHhPEgc9s5BA2QXRdBXolAis8YioYbVfhj44SsAdepX?=
 =?us-ascii?Q?UDcimCu5yKAlVCGFCuicvCqjO86A7XkSmLGCN/EeuSmGnv6tMwmsYRn7dPjv?=
 =?us-ascii?Q?NzQA9hvTTeQE6tUdiWHYMHVjoygDvcN+dN9xfZlJQA8trLhz9GAST/5MzScq?=
 =?us-ascii?Q?aDxPMOjhxG496uLAzAYQ3sa8Cj0OhqVYWfgfGeQ/8/EG6Cm4N5T3MBH/rEU+?=
 =?us-ascii?Q?Ke/pDEgVsWR7C7zGJ+iMPwis6rr9hzGnvyDZnIopeRLvkayCIKTtYPChL9TU?=
 =?us-ascii?Q?2RdxteCThC4fTQbUsyuKCrxm7THhhOCpw4heniWNCNLsFuAEKmRhJfxko8t9?=
 =?us-ascii?Q?qzg1Fcebc4YBF6Z+5bALhW1FlHX+Cc1xm8e4YRx+MsKVCrXB918c6Y5lJq16?=
 =?us-ascii?Q?iRt6YQFw891l6eapoxP4ewR/BJ5GnVtwB7HvDs9IlmCWYwR7WWpt7rNdaquc?=
 =?us-ascii?Q?1ESpcIuex+C4xquOnHF6QkdQ0TWuU+eHBv5biypMsRYWFPdvt2KCs5kY0OJ8?=
 =?us-ascii?Q?jHQuxCFKnVWYgzdWrN9pieHKeByJPzCxG3ObqUzcYkLRSjt5nCMkI9lIZssD?=
 =?us-ascii?Q?xjvNVUu3JVELpofZyTWfhUbVzHalNDuj4hzHmMf3LwensSGfNqRij2V1Cybj?=
 =?us-ascii?Q?TqyRhC0R2LT4YZBeUkq8JXS4o1C89gH7SY28+N+AG9VH6iVaDNcHzvDZ2DPx?=
 =?us-ascii?Q?vQxgWWEg2GSPp19FomvfHbQ4io7fJ7XicKxErnNp4t0dlob9Y8z3nPL4ws1g?=
 =?us-ascii?Q?M+b3xTFIv/fnxqKdArOkuyz2IGKlh+r73loC7foJl0QQZt325Jr+bAzQCLkQ?=
 =?us-ascii?Q?bLKpFFC5kq9u/kaIy+uHqSNseRXb+Vf3nGi4eBY1+ChU3bgcmcKqG69bi7WP?=
 =?us-ascii?Q?R6CYES/8FSp9+0y5epKHPwEbc0asgRvDQOdxDvRFUXj6zAH3obMkLryhExUe?=
 =?us-ascii?Q?kmzMp5nYuCGyWAYe1jZSu3hK/QsM4UK7mj10JPR0m/ZnBNDBIYtq+tt0iA42?=
 =?us-ascii?Q?DUvZCJX49/aV9lkUIcmIsKXNMuX9JPP/wYxWfzJG7j+sfNDzWQ9nzXjfVHnG?=
 =?us-ascii?Q?fjv5laRiFZrhOFSKqJgv4luZrq6a9R40s6ZvafHouO6rw7owDJJDeyTkYg5c?=
 =?us-ascii?Q?lLD1QldsDSLJY12vXOyubA9iBejiSSCCTRgcOG9JTTm9XPJi/VAqNb9awW3V?=
 =?us-ascii?Q?hf22NdSM732wErukuDF6ztaqL3N+1gDOONwrW4W90AZfpbf/9lm8bFZFv8Fd?=
 =?us-ascii?Q?YE5tigZvMTfx4afmUL+nagBPpY+BoXy/KgSyJ94dXVZjhAOwFhuizcodO5lU?=
 =?us-ascii?Q?nanTRK56Epg/vhcPG98mYGpHrY8vTGe2M8a1Ix2Y73WI65AlfdsTlbk6daG9?=
 =?us-ascii?Q?CC5RxNzlQl4WXF5yN4t5cq5hGe60/R5YT1tn88a1JVWfg94H6BKZaJ3btlQ3?=
 =?us-ascii?Q?kRTCZKq1k5Xw8urnU7mgYetUKZVnude2pOjFs4SN9o397SC9vIdRiT7LLX+s?=
 =?us-ascii?Q?fTDKwM01TPWVptkEV7jnxPvg64H2Mt+hLYPYEZfJ7YsvzmZPaYxEPBZaHmU5?=
 =?us-ascii?Q?1kZRo6h3eVcjg1clzYb93sN4QqBM57aKSm2CkY8+?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c08d27e9-85ef-461f-8932-08dabca432d3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2022 07:31:04.1772
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mEfUEq6uQD1OR7Cwi2nr4V4aGkVYhOq0xcnnbA+BLd9pPppRHy8h7ErsKlib0ScTz1E2Svj3PfiR5KoBFEUkeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5454
X-Proofpoint-ORIG-GUID: N1Hg6Mu_mUUCVuFSpJ9MLiVyj7Z_gwEJ
X-Proofpoint-GUID: N1Hg6Mu_mUUCVuFSpJ9MLiVyj7Z_gwEJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-02_04,2022-11-01_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 clxscore=1011 mlxlogscore=882 priorityscore=1501
 spamscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211020044
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Nov 2022 07:31:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58468

Update SELinux-FAQ as the poky-selinux distro has been removed for a
long time.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 SELinux-FAQ | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/SELinux-FAQ b/SELinux-FAQ
index 8f56b2b..2ae6649 100644
--- a/SELinux-FAQ
+++ b/SELinux-FAQ
@@ -47,7 +47,6 @@ controls could be added to an operating system.
 To enable SELinux features, this layers has done these works:
 
    * new DISTRO_FEATURES "selinux" defined
-   * new DISTRO "poky-selinux" defined, with DISTRO_FEATURES += "pam selinux"
    * config file for Linux kernel to enable SELinux
    * recipes for SELinux userland libraries and tools
    * package group (packagegroup-core-selinux) for SELinux userland packages
@@ -67,7 +66,7 @@ After init Poky build environment, please follow these steps:
 
    1. Add meta-selinux path to BUILDDIR/conf/bblayers.conf file.
 
-   2. Set DISTRO="poky-selinux" or add DISTRO_FEATURES:append=" pam selinux"
+   2. Add DISTRO_FEATURES:append=" acl xattr pam selinux"
       in BUILDDIR/conf/local.conf file.
 
    3. Build the default selinux image.
@@ -94,7 +93,6 @@ the following steps:
        $ bitbake core-image-custom
 
 
-
 ==============================================================================
 
 3 - Using SELinux 
@@ -109,7 +107,7 @@ Alternatively, you can add "selinux=0" to your kernel boot parameters. It is
 not recommended but useful on some testing situations.
 For example, when you are using qemu targets,  
 
-  $ runqemu qemumips core-image-selinux ext3 nographic bootparams="selinux=0"
+  $ runqemu qemumips core-image-selinux nographic bootparams="selinux=0"
 
 The initial filesystem relabel step requires considerable memory and can result
 in unexpected, sometimes impossible to reproduce, failures if an OOM condition
-- 
2.25.1


