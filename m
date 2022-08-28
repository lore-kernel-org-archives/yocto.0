Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 808A7ECAAD1
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:16 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.55784.1661653807413856292
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:30:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=sKa1ZBEy;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2U1XY008518;
	Sat, 27 Aug 2022 19:30:06 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=27YjrTVC5sU0dLayLAgqQAjHeB6N2pMLziRqYjl/R+Q=;
 b=sKa1ZBEymue6wscC5GgJ5U9sDYT0/8gqsnGuh4JbZf6Eg8Dh6TEuWRS3ZXd6HdBnO4pl
 DzAU89TaBYyiMqjHBhZLSRU2jWlheURJ6pPr9iKNbBrSCIrGG8gYORPdP+Ty3VgfO7r3
 cdMkZZ5g5j8RM9LV+EV+oPpdkWUCsFmMxCOAQRwYeysUtkzYOaKBeR4A3Gy0ZPf4/HiN
 BLjv+7qMRvXwK7IR05cVa73OZ+3JNG7WS+O7aPAhCkouWm0fB1T9IRBUNezHwbgLnqnl
 nP6vcPMcUGqXOzkJ2bTypaNqX9XuO7HsayUl7wEKVyUkzhZXm0BmrpYAShd2kipAWZrd xQ==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7jsk8d5h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Aug 2022 19:30:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mf6UaAzQfK0LLa5l3qezgqNi4RspwePkzHOp42noBZ0gQeJSyRWjVOEduB/wjO59dfRhdgM+sXjxdIJtxlE1Hh0whUNLDhAQYydNlPVVCQuB1BuVaMhIaQcUrwqZ9jtG+U3/flo4DARrMRgs5zhTzux8yax7uRXdK8DKnwnfqytvybSpeWrUPw11JSXY/CVpqItXklQfgVKsWvoDfYIf1ssJO8U/KPCVfQHwmTqWNUKE51JzeasFh53oGIVnswFALyDEeeFBl3KwbhRuZG19BoYzzZtmXPONZ75swAeRJTYFNOviSEs5rGfneLRhiCukiwEEPxzZuL5HWfCvoWAYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=27YjrTVC5sU0dLayLAgqQAjHeB6N2pMLziRqYjl/R+Q=;
 b=V7Xg+9cPRk8r5PKOXEJWa7gWWAMX5O/AnC0Mz1oiJ4The++6Oe7UWg05Pgv3EHbwVebbwp7FCqhAJX3omoJawOltWSQM5i9AYsq2A32KICGK4QAj2qbu2X63gloCb3RszRBeeutschOD9uce4nMjzvFM2IjnseJqIyZ5otqfsnvUdPG9bn//5oHzcJbTQxRUmhg0f6DYy138uPq7Xo+rbhcSMtGJkWAsLMcFrIsgj8Ps9G4ROD7rGgQ4nsLhkiaSaW+jvQh4WuMB5fx4WUx7cG7iKPGSs8QWH5/3UKa7Dix0ihnBsZEhyOs8kd4CzJhl5I6RZwEGerNZP2j1F3Tinw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:30:04 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:30:04 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 11/16] selinux-python: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:29 +0800
Message-Id: <20220828022934.47592-11-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: fdd15ef8-f5fe-40e2-4b2d-08da889d3757
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	A/nxnPlcPUMJ5JClIIt9V2m0LHjKOR8JgnXbtbCZ4htHsAgHZy32IyLfbTMm399LSy7E2IGPqU5FvF+lOvFcwvrLRNcDWzROqaTia6/bvcRyECqRk7r7LUOwX1xjx3KnO7moqu3GofWywhrWaYDckNcl48YK3DHULmkHtY5dHZ7NZ5QlFpUtU2swLy/W+Avt3lvM+XZ7RBiklB1A+c/FLIjD7x+P286PsUo+VFPXIsQwfFGF8bz1NiNHiVoa4URUhDvqsVw74qWV5IdwcPKEap74ie4prRCOvSFH0SByUjPe4nFlacQ4vriNexyeMz9I/YqJqGRWVPauNRlZicPyBdnFzb9KEIPnzR1Qh0W5U4VmOKMbKOAORfoNX6t8O2oIf9hqfX6sVVitlgVs8gk5e8K6ovpZK6dZOc7AU7WnuG0behBrUYTXSqlKK8SfypTScIyJdc8A4/6R7o9YD2AtrpHhVsbZTntaPf9n4wt8ncuTdB+fyR2JYueV15rGBkhFP5R1slcQx/blWHzpk2UtY2CVfz/b6Y3/tIOob/K3W784pG+OFkmCV1+sd4zhVHY/TH5zEN5o5dW3dRBQvq5lvoFO3J9a0Oenk9I2hY0MWF33D3Ymc/qz+tml2V5L4RY60XE/Uj4ScxCdxQ3HDo92V2D2kpaGk+QjrBCUQrxtEGegfAwkncoSUpv+DU3BEr/9/fv+YbVtG9oyS0oRGpyoNf0wAqIapPtgSw0iB3ebGPXpqVYzNc7OKFc/BYIjteOHxlgDowbjtSl2SHBvc3Axv7F+zbREZfklXGhVWLrA3PU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(53546011)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?6EfrXlulfCuLF8HSkorK65LiFJhPe/+qpwau6UME669mGbNmTWM2vXIG6Ql/?=
 =?us-ascii?Q?Ts9R3k2HxCOqQodyYAkhG8Z1nal9w2aJ63oOYWi/P1+GkFXLXM0oDvzWuDdz?=
 =?us-ascii?Q?GW+UdYEwQr5yoLW2Ydf5ndgJz4evKEy+0JsiHhPgsZxV+qTiI8Uz6m+RXYWQ?=
 =?us-ascii?Q?OGhm1GAeWZoNHVRPXCyaJCrAELwSW7twRih88t4rMUkI/Ln267tWNv29xIdR?=
 =?us-ascii?Q?QAZP/liFgdVf1RkQphmXHYOf+x7+UGUDXn2AVynJPveotuVFnm9BVtjMKzL7?=
 =?us-ascii?Q?U5VT+C4OeugCXBDN+rGzctXQYGtodj8EXXRCNERO9bokMHAsCKVES6m13iQr?=
 =?us-ascii?Q?PpoNgoIvA+mnFWrSd2BQ41nxdOs/tNjaaPcS6b1PSc8YjUAyx0b9SCz1dDDr?=
 =?us-ascii?Q?sVxDon5fn2Y8lJViPuPTDrw3SYzD/zV1Mi3RBcfG1BG4tHwI5lcu0r/EBEyY?=
 =?us-ascii?Q?aGSmj/B19C8108/aa0AOmYFIzTqcQA4R0jIFn4qEELSIKHpuZxIFS/kkRAUY?=
 =?us-ascii?Q?Okhg0InGMMGyz6KpWmzynsFCM2PEGlH3f0rudoJLn8YYXv7t493S1+qUmYDx?=
 =?us-ascii?Q?afqJk/2K6yPbprzaM5rmlPzeywYj6MkrshD7WSFjpqe6QTID8sOjCqBXVCN0?=
 =?us-ascii?Q?ZN5882Aacgdi6/Y59Fn1W1jDwF0OYEOxinN7/2129TwlhllS2s9cOWGhhcKO?=
 =?us-ascii?Q?nUcHTc61iCTrJAUmanL98/2fefIBrWddkX0HPgX1G4TO7lqB2G/C5qCrDh8u?=
 =?us-ascii?Q?xUBTNK+wgBPGlHbSj2snWsZDL31QeExWrLrslrH21aT+52CF3yi1I5v1YEmv?=
 =?us-ascii?Q?whGEZgbou5261OwsPpxRuyvmDM1kvnQ9H823CmyBI1mksbM7JFBMLLd/uq35?=
 =?us-ascii?Q?FpxhVJxRDZQmePX1Xzng31rIL3aNvb5GPyYtRJxf1ZcrJFFGH/JmnXvy6AYE?=
 =?us-ascii?Q?w5avDb717BvTdOCDw/8teZF4SXV5dAistqJfCkS9eFq/bpacCWha+Uur3ZOm?=
 =?us-ascii?Q?XBMcnI2TkDlkquC7VF+KsFpta73RTuv9eSW4OSz0W92mL1PCpOFkvlKg1NuB?=
 =?us-ascii?Q?EplqGNMTZRCkN3LV2Mvp5C2RzR2AEH2ma2ykyruy9md6ThiQYJ8K9sXfjilm?=
 =?us-ascii?Q?A7Te6q+X2xjwQ9svRzzgtUHYEqF4vPr4OXgQ8yujbbW+kfZC+bsKn+ud8qKT?=
 =?us-ascii?Q?jpMI8i4+4HNrMYw+OvYhR6lW5TVi209A63W/WEwo+v6uIiqAbZb1LrJ7mb8J?=
 =?us-ascii?Q?ffnjau6vlXwp/1dkGLgTe4bqmxkchxxAXMDXUSot0EMF/30Renv7tB9NbxeL?=
 =?us-ascii?Q?G94M3rpWt4MWLZYG3xWN3MSfgxJM6J2Ud/tWRteryQjFpyoE48dJwxTQ8xAd?=
 =?us-ascii?Q?xM6oxEm+DwmCHLgQ4g9nRr+mJlsqJL2ZVeRfnkR2rsBh6O6/5J++ZScvus9x?=
 =?us-ascii?Q?/c4KJSgjf14t7lAoSy6rYejkJ39a/Y2fLPlQxs1iy7KmLtKGwUqYRhGHwO2J?=
 =?us-ascii?Q?nr3QO4V+aMTtHZ5EQNBn9PGzD422F+WMYpsgz90mkJ0RpC3xhkWQZ2husuwA?=
 =?us-ascii?Q?ui5y/jLrhQzWEXMfcCx44nOl7YNm25lVXI1rwlEF?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 fdd15ef8-f5fe-40e2-4b2d-08da889d3757
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:30:04.7462
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 g3Irq7zEwT0KKq1q4TFgUt6ymSbPKFVvkaQI5OVRj/fz+kkVOqXHV8/gVocKoxKQQpI/C+tNKw6d56Lq5M6YYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-GUID: sQ-BbkYGOEICMzRFnkSaREwuuCp2MiDN
X-Proofpoint-ORIG-GUID: sQ-BbkYGOEICMzRFnkSaREwuuCp2MiDN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0 mlxlogscore=999
 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2207270000
 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57926

* Backport a patch to fix chcat runtime error.
* Refresh patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...andle-unsupported-languages-properly.patch | 173 ++++++++++++++++++
 .../fix-sepolicy-install-path.patch           |   4 +-
 ...ux-python_3.3.bb => selinux-python_3.4.bb} |  51 +++---
 3 files changed, 201 insertions(+), 27 deletions(-)
 create mode 100644 recipes-security/selinux/selinux-python/0001-gettext-handle-unsupported-languages-properly.patch
 rename recipes-security/selinux/{selinux-python_3.3.bb => selinux-python_3.4.bb} (82%)

diff --git a/recipes-security/selinux/selinux-python/0001-gettext-handle-unsupported-languages-properly.patch b/recipes-security/selinux/selinux-python/0001-gettext-handle-unsupported-languages-properly.patch
new file mode 100644
index 0000000..b83300d
--- /dev/null
+++ b/recipes-security/selinux/selinux-python/0001-gettext-handle-unsupported-languages-properly.patch
@@ -0,0 +1,173 @@
+From 4693794ff8c52f87a4abdb68fe9dae6618023c03 Mon Sep 17 00:00:00 2001
+From: Vit Mojzis <vmojzis@redhat.com>
+Date: Fri, 24 Jun 2022 16:24:25 +0200
+Subject: [PATCH] gettext: handle unsupported languages properly
+
+With "fallback=True" gettext.translation behaves the same as
+gettext.install and uses NullTranslations in case the
+translation file for given language was not found (as opposed to
+throwing an exception).
+
+Fixes:
+  # LANG is set to any "unsupported" language, e.g. en_US.UTF-8
+  $ chcat --help
+  Traceback (most recent call last):
+  File "/usr/bin/chcat", line 39, in <module>
+    t = gettext.translation(PROGNAME,
+  File "/usr/lib64/python3.9/gettext.py", line 592, in translation
+    raise FileNotFoundError(ENOENT,
+  FileNotFoundError: [Errno 2] No translation file found for domain: 'selinux-python'
+
+Signed-off-by: Vit Mojzis <vmojzis@redhat.com>
+Reviewed-by: Daniel Burgener <dburgener@linux.microsoft.com>
+Acked-by: Petr Lautrbach <plautrba@redhat.com>
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/selinux/commit/344463076b2a91e1d2c7f5cc3835dc1a53a05e88]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ chcat/chcat                           | 5 +++--
+ semanage/semanage                     | 3 ++-
+ semanage/seobject.py                  | 3 ++-
+ sepolgen/src/sepolgen/sepolgeni18n.py | 4 +++-
+ sepolicy/sepolicy.py                  | 3 ++-
+ sepolicy/sepolicy/__init__.py         | 3 ++-
+ sepolicy/sepolicy/generate.py         | 3 ++-
+ sepolicy/sepolicy/gui.py              | 3 ++-
+ sepolicy/sepolicy/interface.py        | 3 ++-
+ 9 files changed, 20 insertions(+), 10 deletions(-)
+
+diff --git a/chcat/chcat b/chcat/chcat
+index e779fcc..952cb81 100755
+--- a/chcat/chcat
++++ b/chcat/chcat
+@@ -38,9 +38,10 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+-except ImportError:
++except:
+     try:
+         import builtins
+         builtins.__dict__['_'] = str
+diff --git a/semanage/semanage b/semanage/semanage
+index 8f4e44a..f45061a 100644
+--- a/semanage/semanage
++++ b/semanage/semanage
+@@ -38,7 +38,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/semanage/seobject.py b/semanage/seobject.py
+index ff8f4e9..0782c08 100644
+--- a/semanage/seobject.py
++++ b/semanage/seobject.py
+@@ -42,7 +42,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/sepolgen/src/sepolgen/sepolgeni18n.py b/sepolgen/src/sepolgen/sepolgeni18n.py
+index 56ebd80..1ff307d 100644
+--- a/sepolgen/src/sepolgen/sepolgeni18n.py
++++ b/sepolgen/src/sepolgen/sepolgeni18n.py
+@@ -19,7 +19,9 @@
+ 
+ try: 
+     import gettext
+-    t = gettext.translation( 'selinux-python' )
++    t = gettext.translation("selinux-python",
++                        localedir="/usr/share/locale",
++                        fallback=True)
+     _ = t.gettext
+ except:
+     def _(str):
+diff --git a/sepolicy/sepolicy.py b/sepolicy/sepolicy.py
+index 7ebe0ef..c7a70e0 100755
+--- a/sepolicy/sepolicy.py
++++ b/sepolicy/sepolicy.py
+@@ -36,7 +36,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/sepolicy/sepolicy/__init__.py b/sepolicy/sepolicy/__init__.py
+index 7208234..9c3caa0 100644
+--- a/sepolicy/sepolicy/__init__.py
++++ b/sepolicy/sepolicy/__init__.py
+@@ -31,7 +31,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/sepolicy/sepolicy/generate.py b/sepolicy/sepolicy/generate.py
+index 67189fc..3717d5d 100644
+--- a/sepolicy/sepolicy/generate.py
++++ b/sepolicy/sepolicy/generate.py
+@@ -56,7 +56,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/sepolicy/sepolicy/gui.py b/sepolicy/sepolicy/gui.py
+index b026374..5bdbfeb 100644
+--- a/sepolicy/sepolicy/gui.py
++++ b/sepolicy/sepolicy/gui.py
+@@ -49,7 +49,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/sepolicy/sepolicy/interface.py b/sepolicy/sepolicy/interface.py
+index 599f97f..43f8644 100644
+--- a/sepolicy/sepolicy/interface.py
++++ b/sepolicy/sepolicy/interface.py
+@@ -38,7 +38,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+-- 
+2.25.1
+
diff --git a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
index 4e91df7..bd14450 100644
--- a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
+++ b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
@@ -1,4 +1,4 @@
-From df40fadfb251cc2aebdbd2e216f99a8ae7da7763 Mon Sep 17 00:00:00 2001
+From d43220e336edf8ccaaa7bd3eb9c13874ed34d468 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 23 Sep 2013 21:17:59 +0800
 Subject: [PATCH] sepolicy: fix install path for new pymodule sepolicy
@@ -26,5 +26,5 @@ index 3361be4..5842321 100644
  	install -m 755 sepolicy.py $(DESTDIR)$(BINDIR)/sepolicy
  	(cd $(DESTDIR)$(BINDIR); ln -sf sepolicy sepolgen)
 -- 
-2.17.1
+2.25.1
 
diff --git a/recipes-security/selinux/selinux-python_3.3.bb b/recipes-security/selinux/selinux-python_3.4.bb
similarity index 82%
rename from recipes-security/selinux/selinux-python_3.3.bb
rename to recipes-security/selinux/selinux-python_3.4.bb
index 8f76718..cc279f2 100644
--- a/recipes-security/selinux/selinux-python_3.3.bb
+++ b/recipes-security/selinux/selinux-python_3.4.bb
@@ -10,40 +10,41 @@ require selinux_common.inc
 
 inherit python3native
 
-SRC_URI += "file://fix-sepolicy-install-path.patch"
+SRC_URI += "file://fix-sepolicy-install-path.patch \
+            file://0001-gettext-handle-unsupported-languages-properly.patch \
+           "
 
 S = "${WORKDIR}/git/python"
 
-EXTRA_OEMAKE += "LIBSEPOLA=${STAGING_LIBDIR}/libsepol.a"
+DEPENDS = "libsepol libselinux gettext-native"
 
-DEPENDS += "python3 libsepol libselinux"
-RDEPENDS:${BPN}-audit2allow += "\
-        python3-core \
-        libselinux-python \
-        ${BPN}-sepolgen \
-"
-RDEPENDS:${BPN}-chcat += "\
+RDEPENDS:${PN} = "\
         python3-core \
         python3-codecs \
-        python3-shell \
+        python3-io \
+        python3-ipy \
         python3-stringold \
+        python3-syslog \
         python3-unixadmin \
         libselinux-python \
-        ${BPN} \
+        libsemanage-python \
+        setools \
 "
-RDEPENDS:${BPN} += "\
+RDEPENDS:${PN}-audit2allow = "\
+        python3-core \
+        libselinux-python \
+        ${PN}-sepolgen \
+"
+RDEPENDS:${PN}-chcat = "\
         python3-core \
         python3-codecs \
-        python3-io \
-        python3-ipy \
+        python3-shell \
         python3-stringold \
-        python3-syslog \
         python3-unixadmin \
         libselinux-python \
-        libsemanage-python \
-        setools \
+        ${PN} \
 "
-RDEPENDS:${BPN}-semanage += "\
+RDEPENDS:${PN}-semanage = "\
         python3-core \
         python3-ipy \
         python3-compression \
@@ -51,16 +52,16 @@ RDEPENDS:${BPN}-semanage += "\
         python3-misc \
         libselinux-python \
         audit-python \
-        ${BPN} \
+        ${PN} \
 "
-RDEPENDS:${BPN}-sepolicy += "\
+RDEPENDS:${PN}-sepolicy = "\
         python3-core \
         python3-codecs \
         python3-syslog \
         python3-multiprocessing \
-        ${BPN} \
+        ${PN} \
 "
-RDEPENDS:${BPN}-sepolgen-ifgen += "\
+RDEPENDS:${PN}-sepolgen-ifgen = "\
         python3-core \
         libselinux-python \
 "
@@ -85,16 +86,16 @@ FILES:${PN}-semanage = "\
         ${datadir}/bash-completion/completions/semanage \
 "
 # The ${bindir}/sepolgen is a symlink to ${bindir}/sepolicy
-FILES:${PN}-sepolicy += "\
+FILES:${PN}-sepolicy = "\
         ${bindir}/sepolgen \
         ${bindir}/sepolicy \
         ${datadir}/bash-completion/completions/sepolicy \
 "
-FILES:${PN}-sepolgen-ifgen += "\
+FILES:${PN}-sepolgen-ifgen = "\
         ${bindir}/sepolgen-ifgen \
         ${bindir}/sepolgen-ifgen-attr-helper \
 "
-FILES:${PN}-sepolgen += "\
+FILES:${PN}-sepolgen = "\
         ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolgen* \
         ${localstatedir}/lib/sepolgen/perm_map \
 "
-- 
2.25.1


