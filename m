Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E9F5C76196
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.44236.1678540433764824968
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Ru28V/9Z;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDA5rj022348;
	Sat, 11 Mar 2023 13:13:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=ea0WUOxsxt3cet04hFM3IPMGAsTZ+pVbxbPuvUNZYSg=;
 b=Ru28V/9ZuQLISr7tqzolZd0BjXMv0lDPOLFfx+LRicwRT4ztLb2zPRuWDHJ5JEocbrMB
 RssdSn4fTrxifCv7uFhXGktzwjT/Qjh64PC11QY2xXNH7CtxTmWBLn9Rw4pqrsyFuw/I
 xMLEOSwIlNhfgjSWOxuV9752BNdtoFA1WHZFRAbrKg7xIZT1q+iU/ytqvbRnsV5NaLcu
 cMeg1ZlPIS0XRTK8UUovY3eLDa/orXDnVduNvF7qGau50Aj/v3PVcLGN9dpaPOmI0wW9
 7LA86bTYKFy145CBwxQ0SDikDpyMmsCiOT86KTTc6ptM1HfjJWUIzELrRvbWjn7fAGlZ Og== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2104.outbound.protection.outlook.com [104.47.58.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8ev2gdrf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 13:13:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bc3YZ1NzaX7fXLhRbhsLogPztpIj+wbM0Em4VGUtxBACXjrqpesNkVxLrBhgi1VLXlbNOJ3fy8IateKp71QMYsEI/MBta7WOpkqcIQlJrC0ryUp2A1WdRqLYS7Au6wNanupXOkQypVjTfkx2WGTN/KHra3r7Kwe4/3ISsS94PGcaeNpXgt5yycBnaRGxAzgjXwtOQzZ3wJH3kyH7su4Xw/1Widm/RW88JHrq8oSC9mAFtMpWHxXVpQ98KreBj0pHaGEAoqPKrjfflG8Wd44edJHXtqc11ZOB07gCMzYZpgoVGuPGv48pGbwgqO3hTBqMeY/qRSoXvLRfRtLBlaqE3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ea0WUOxsxt3cet04hFM3IPMGAsTZ+pVbxbPuvUNZYSg=;
 b=lM1ohAgm5NoKsA0GNBZwSoHeSOC+ncsuZ9s5aFVk17lqlxYgcGU9eMgcwJvLCaltLhU+WnRFSFzynHNHX/JJ6b4TBryQwkntzicbqLAsuj1amtHlWdNWDYyzK0IdMqJNo3Pk6kMbQJ86wIqkFa4FULRmoeLmW4983pLdE1lJRffAHcUSkE/oghJESf7VdicOJ0W9ejbZMSpIYg9myQFcu1a1vMXWLtMWtvIuDFvyn8H9UZ6ntVnFfJbVZ2ynjc8e6BpoxDggROOnyDrCUNfHjLRcwxt04LyKCG/0OOY8OU0r/Tmm5LJ1VbAXtuDmKczzuZYnxTPDB6gBjeBmvT3kJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:50 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:50 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 15/17] selinux-gui: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:13:06 +0800
Message-Id: <20230311131308.1337339-15-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 21fcc615-bab6-411c-5e20-08db223274c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	f9KTBanwn71iveq+FUVp8wuxRqh1o0rdg7Jzb6C61udKgqmBPAGXJhF+Nf2HvoxMnXuWgM5+znzucQKVC08KG/+jFcsfdGYOasAjWU01JhhaTFk7SgnEQbtsmzGDl4ICQELkBnK6I+BVHGzDg7CS34Kbbk6Sj2Uv9DMgQOgLw6DIOJgVgLZLdF3Qy35dmPgabLbbkBFz65Jal/94hIalizm24MUId/TXB0E3bACkweft+3f0yFhJyH0SBN60WWXIQmTrXRVl9Ag5E9smEwBa7WoSwJ1ZTOcNAX+jb+ZAS7gS9WCzRQgcHbB6wvTcm+uwdP1FOo85Aft5mfwGW4KgFyTQDHv23pZ4VfcsPMRNbRtzJ2d42WW9Mzi5NGZYh+p58KfZK5/jZ/M8SvJ7RJWpOOyN40oeeefUwjmke0qi26A2zDc8ql0vpxt+mUgQu+Fhd9TdOAH+99eZQfpiUExy2azKxjRulTR98v23/Kh/bVj4TTOQ9CV6gGPOGMFXFju6mu5spd1ckR1Hi4aCT1zbm9XiZl85xYj0Rye9CsJiZw/c6JjSQav+yiY3DKhmUauEY+QFZ6BwZyTB5Mzee4IC2F122jujy8xAhJDNSGJiHtBttQGgynEtUOAfz7fR0kORI4kJJeRYfZRgqeRUmX+YVArxf5KMov7yu921ZKRKoKHXMfFIcYhlRXklDmzKauhW
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?InKcPMdmq48I6qEHYtCHz4fFdNqfK22kAzs0rrUug9f7OHUENB1uY9bVxlr/?=
 =?us-ascii?Q?hH2dV6+wQIcKzAXzqGFkWjmhyo/f+wbxO+nINS8+jP55EQc6GzwyWb67IHFv?=
 =?us-ascii?Q?EHE4RQJRkWr8IsBoGjeM2ZrBSCuQaKhU1GnXEoXc+1Ju1p1CgJtlGlN1TDci?=
 =?us-ascii?Q?R84t0CXtEThhcH2d93WwBI3HeuUvn5xhgi5FaWviIkjeIlPwe248p7aC02JF?=
 =?us-ascii?Q?Pxsqw3iiTrOwZ5KxrbPBk8vYMhiCq4MoGEtB7tgwXN01DfDIuQoRoSmAvvAn?=
 =?us-ascii?Q?JCIBX+99QGU8+wqh2PQxIW98USY10KR+3CA0viJT8VLcJTQn2Vx2gBWmKowa?=
 =?us-ascii?Q?lUyHIQKaf09nhb/Q/2LWa0Iguq1H9oTu3jkTn6Rm8YOZzeXWcwJgDHcf4m/U?=
 =?us-ascii?Q?dT9cuPMm33pJech8KoxvjqaUaVOzg9CwfaSs2DRIcrxCeRVlTiEH5ASHKrdt?=
 =?us-ascii?Q?uZay6qu9C+d8wz3jZzxAMogwAFCzYeeoPsbJUPyYHWvmkm9chsH0fry0B2s8?=
 =?us-ascii?Q?/wpUDYHc+OoJzfusq2JkRA+i2CgqfY7Lua4WHBTKdUnIJXPLd5pWt77dcYrA?=
 =?us-ascii?Q?W1vI0NT6schjvj+KghH4X1jsRQq9BIdD0EYLzCnXoQON1IweFt50+LClU5l/?=
 =?us-ascii?Q?xVOcMtry+Ce98pW38MUtRjmScOdqV299XmNa6TJ+8qa+zFN34XbmFfntc2dD?=
 =?us-ascii?Q?bDYRw9FdZxC9dYH4Ql0dqhOBB+rYMQ0+CkmLAtaa7s0KIwR1VZQlBfkoVDlV?=
 =?us-ascii?Q?j8GqKlzqh/ufODEyPo2imYrnmQ/3qt0QyH3cq3OfUQ4Khe5QcfNL0bGN8rwG?=
 =?us-ascii?Q?5aOzQqcHiMHPtWBVbPztBRnEG8qcRrN3Lr5mtdkVah6BpyTFWI7PjzBkk6X9?=
 =?us-ascii?Q?lhVJWihjUlEXXMrzru0gFiMJxHHdWCkUC2haHwwccJB7L1DtedO6RmW8Ds74?=
 =?us-ascii?Q?6I6S++RfkQPTCmhrhydLwFLgEybn4ksMKfgwoTqpIipJ+MTyKnMsc+DH+ub9?=
 =?us-ascii?Q?M0PQqkinOfcyOhViDK4uMPM9fkMUkXCplBLja2CQqwBA4N0lAh7Sz/hx3BEv?=
 =?us-ascii?Q?vYuDYSxqT8JHFZeyxBjSbnQLa1ELE665+qviboF2JfrpH2SqO3G4QvjWGIN0?=
 =?us-ascii?Q?IBvpy4Vx0Et0j6uZFgBT7DnhIfJNc1rNl8SQVMImtNoA5MtHNI5Sb7Bsnvep?=
 =?us-ascii?Q?cXMVdsGpEo51GGGmDJSwkW+A2Cx6LxceVdOgtJSDlujJ3nQ/pEUV/fjYjAB0?=
 =?us-ascii?Q?NWrE477veazFRHhpRTAVJGKNhCwiThJYC6v7Mfj8TyWnYz7/rlgKGWsRy75k?=
 =?us-ascii?Q?de6M4Q/GQfCUHPbplkD+8u9o0GvztSuGBTyz/Bu9LJwkmdUzcOcDJSdqTWHA?=
 =?us-ascii?Q?6JrsPtYFcmpF0AOtoC/r6N7t8Kg+8PVsk2Ty4vnk6H7bEN8tANO/YCCd63d3?=
 =?us-ascii?Q?j5OV0qImmQ58eIZfubb0G6CfrCivN3FmnnUqKsAWeiZdv5aXMi0g6LCKeLl+?=
 =?us-ascii?Q?Fqs5Ue4bj5A7EVS6GBfu/Bh19rWejDkJltU8RPpzcw5ulfryolixRxxRV2VR?=
 =?us-ascii?Q?6SudWBXmtsTR2EH0OIsqIAT9DrvoWxSubr9KBtqAOMOV8w7uIslUSSNMNLZV?=
 =?us-ascii?Q?/g=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21fcc615-bab6-411c-5e20-08db223274c6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:50.7498
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UVm67vUhTjqjjBXWh3eZVCLGmGArmp6vwM3CtMKVa65jyEbGr9/TcXL9MT236aGdAdhE+Pdn6dOZDtoPfLiE9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-GUID: w-Cr1GblOIqOAtbL2p4KvXXBUwA1VgRt
X-Proofpoint-ORIG-GUID: w-Cr1GblOIqOAtbL2p4KvXXBUwA1VgRt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 phishscore=0 mlxlogscore=651 clxscore=1015 mlxscore=0 adultscore=0
 spamscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59398

License-Update: Rename COPYING to LICENSE. No content changes.

* Drop backport patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...andle-unsupported-languages-properly.patch | 199 ------------------
 ...{selinux-gui_3.4.bb => selinux-gui_3.5.bb} |   4 +-
 2 files changed, 1 insertion(+), 202 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-gui/0001-gettext-handle-unsupported-languages-properly.patch
 rename recipes-security/selinux/{selinux-gui_3.4.bb => selinux-gui_3.5.bb} (77%)

diff --git a/recipes-security/selinux/selinux-gui/0001-gettext-handle-unsupported-languages-properly.patch b/recipes-security/selinux/selinux-gui/0001-gettext-handle-unsupported-languages-properly.patch
deleted file mode 100644
index d79db22..0000000
--- a/recipes-security/selinux/selinux-gui/0001-gettext-handle-unsupported-languages-properly.patch
+++ /dev/null
@@ -1,199 +0,0 @@
-From a0a67119412622141a7f8365eff10de6395be7ca Mon Sep 17 00:00:00 2001
-From: Vit Mojzis <vmojzis@redhat.com>
-Date: Fri, 24 Jun 2022 16:24:25 +0200
-Subject: [PATCH] gettext: handle unsupported languages properly
-
-With "fallback=True" gettext.translation behaves the same as
-gettext.install and uses NullTranslations in case the
-translation file for given language was not found (as opposed to
-throwing an exception).
-
-Fixes:
-  # LANG is set to any "unsupported" language, e.g. en_US.UTF-8
-  $ chcat --help
-  Traceback (most recent call last):
-  File "/usr/bin/chcat", line 39, in <module>
-    t = gettext.translation(PROGNAME,
-  File "/usr/lib64/python3.9/gettext.py", line 592, in translation
-    raise FileNotFoundError(ENOENT,
-  FileNotFoundError: [Errno 2] No translation file found for domain: 'selinux-python'
-
-Signed-off-by: Vit Mojzis <vmojzis@redhat.com>
-Reviewed-by: Daniel Burgener <dburgener@linux.microsoft.com>
-Acked-by: Petr Lautrbach <plautrba@redhat.com>
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/344463076b2a91e1d2c7f5cc3835dc1a53a05e88]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- booleansPage.py          | 3 ++-
- domainsPage.py           | 3 ++-
- fcontextPage.py          | 3 ++-
- loginsPage.py            | 3 ++-
- modulesPage.py           | 3 ++-
- polgengui.py             | 3 ++-
- portsPage.py             | 3 ++-
- semanagePage.py          | 3 ++-
- statusPage.py            | 3 ++-
- system-config-selinux.py | 3 ++-
- usersPage.py             | 3 ++-
- 11 files changed, 22 insertions(+), 11 deletions(-)
-
-diff --git a/booleansPage.py b/booleansPage.py
-index 5beec58..ad11a9b 100644
---- a/booleansPage.py
-+++ b/booleansPage.py
-@@ -46,7 +46,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/domainsPage.py b/domainsPage.py
-index e08f34b..e6eadd6 100644
---- a/domainsPage.py
-+++ b/domainsPage.py
-@@ -38,7 +38,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/fcontextPage.py b/fcontextPage.py
-index bac2bec..767664f 100644
---- a/fcontextPage.py
-+++ b/fcontextPage.py
-@@ -55,7 +55,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/loginsPage.py b/loginsPage.py
-index 18b93d8..7e08232 100644
---- a/loginsPage.py
-+++ b/loginsPage.py
-@@ -37,7 +37,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/modulesPage.py b/modulesPage.py
-index c546d45..02b79f1 100644
---- a/modulesPage.py
-+++ b/modulesPage.py
-@@ -38,7 +38,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/polgengui.py b/polgengui.py
-index a18f1cb..7a3ecd5 100644
---- a/polgengui.py
-+++ b/polgengui.py
-@@ -71,7 +71,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/portsPage.py b/portsPage.py
-index 54aa80d..bee2bdf 100644
---- a/portsPage.py
-+++ b/portsPage.py
-@@ -43,7 +43,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/semanagePage.py b/semanagePage.py
-index 1371d4e..efad14d 100644
---- a/semanagePage.py
-+++ b/semanagePage.py
-@@ -30,7 +30,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/statusPage.py b/statusPage.py
-index c241ef8..832849e 100644
---- a/statusPage.py
-+++ b/statusPage.py
-@@ -43,7 +43,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/system-config-selinux.py b/system-config-selinux.py
-index 1b460c9..9f53b7f 100644
---- a/system-config-selinux.py
-+++ b/system-config-selinux.py
-@@ -53,7 +53,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/usersPage.py b/usersPage.py
-index d51bd96..9acd3b8 100644
---- a/usersPage.py
-+++ b/usersPage.py
-@@ -37,7 +37,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
--- 
-2.25.1
-
diff --git a/recipes-security/selinux/selinux-gui_3.4.bb b/recipes-security/selinux/selinux-gui_3.5.bb
similarity index 77%
rename from recipes-security/selinux/selinux-gui_3.4.bb
rename to recipes-security/selinux/selinux-gui_3.5.bb
index fa80860..fbd5e70 100644
--- a/recipes-security/selinux/selinux-gui_3.4.bb
+++ b/recipes-security/selinux/selinux-gui_3.5.bb
@@ -4,12 +4,10 @@ Provide SELinux Management tool (system-config-selinux) and SELinux \
 Policy Generation Tool (selinux-polgengui)"
 SECTION = "base"
 LICENSE = "GPL-2.0-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-SRC_URI += "file://0001-gettext-handle-unsupported-languages-properly.patch"
-
 S = "${WORKDIR}/git/gui"
 
 DEPENDS = "gettext-native"
-- 
2.25.1


