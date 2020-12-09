Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.2724.1607493688834903309
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Dec 2020 22:01:29 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=pJw6Qk4o;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2074.outbound.protection.outlook.com [40.107.220.74])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B7E6238C06E8
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2020 06:01:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dMs599FP8s+7xCc99OboVYmTmsPF0K+sC/eW404smNhXOucU9rDOiYwiD3Zk5NEb7N8ydPtGEMFi3qvrs57K+BS/jZXjoHcEA4UkUjLGeOs5GkzB8GY+L8w3+8Iu7pOg1FLpdx/4+uKarx+Zdw5at3UWbxYV8Yl9xOvQYtEIaOWjHVRXOJ4LCUKynaRyX5hr7TjtOsmKmbvUnAOtERNPNCIm7Golr5W5krQg0hFGmfECTPW6my9sMF9xaHdRxWZw/582vcyjO+g23gTYbr7KvUKvlI/lCbW4PM3NbeMOXbNj2qI69ek1KArBJfhVJTySxQKXEOnltSPacjPp3yaIPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=drRW5TXz6W/y9cxq/U8Wrs2A0HVjSx2YO14gmh6bhz8=;
 b=PbdOw4y/foEhuz+BRhXqFvDr0u6GRz77tVvijUgCADSp7JPV6QK8jmIEvHl5rC9zEVFgJOWJVCl2voae2nHZEn+RciXfQZ0hwcj0LRqfaaAexuFZfX/burPDSFXIGeYVtO/3bUOZIdsk6x1VT2xnRQk/Skyb0CZQZx1s5n55V8PA9kq7dmgUSY8wwidWyIHzdjEnyAbbXrm/lsMbLg2oHVXITNJfO5dSSRrUDCpw2psgohNd/wljo4tX5zWKYa/maNFw034PhYs/RUU2tim6bsurIb30yvKOTXMD7U3T6LKlOALoIcVM94Vq07UqQDCpLWvFF0Yvem73ebD9ceBKTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=drRW5TXz6W/y9cxq/U8Wrs2A0HVjSx2YO14gmh6bhz8=;
 b=pJw6Qk4o3Zllr2Lk3816ToaDMBSyRVU76zovyOgJ4PhU0jnBoVqFxApohPeQwyF8352uUSJahsxdYmwYD086i8cmGWcFcxIP1IE4EQ0Hf6Md9TkXgpeEHDI7XUxUxjcU5SixcsNOZY/WayzUaNChkjimoAaSCMPjxApA1Lq2yU8=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1631.namprd11.prod.outlook.com (2603:10b6:301:10::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21; Wed, 9 Dec
 2020 06:01:25 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3632.023; Wed, 9 Dec 2020
 06:01:25 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	jpuhlman@mvista.com
Subject: [meta-cgl][PATCH] pacemaker: upgrade 2.0.3 -> 2.0.5
Date: Wed,  9 Dec 2020 14:01:11 +0800
Message-Id: <20201209060111.97275-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0134.apcprd02.prod.outlook.com
 (2603:1096:202:16::18) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0134.apcprd02.prod.outlook.com (2603:1096:202:16::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 9 Dec 2020 06:01:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 372f5aac-1bd1-4b53-664e-08d89c07dc84
X-MS-TrafficTypeDiagnostic: MWHPR11MB1631:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1631CFD2A3AD294D19EF86A2F9CC0@MWHPR11MB1631.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Dqj+6iqMhj1utypCe230bLu5LdOGyQo47UU9ZkoHgzH1s57GktpFzX0YkD6Opj6KExPPwIijQ+RfEZJR27AVH+7UXqBuoHRQfDLCtFXC72Q5xbo0HZUFk4S98WSH1OHtYQV09fttKgypPcmJ/88neFQef/ZxveZ7aHAhyzQIlaTXDr08ZF6Wq7Xxg6DJwf6EHr3/5UUu3vRBJMwlDACcBWNJIv4O04mfGdhpp2fp+gaFxaUm6sSmKQz9m9HK56wwgmgjxMcNgH8sSTn6aqIVLfH0CdkRH1GKnS4G4XFDNB501eq/jxIsH94D7haCc7ZAr49XT/Y1nGUiWJTSyhmOMfXQKxrJfCsIAXeui4Z7+aUSmG1dNRPt6Al7M78rv8L4
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(136003)(346002)(86362001)(2616005)(186003)(6512007)(30864003)(66476007)(36756003)(956004)(34490700003)(26005)(52116002)(6486002)(1076003)(83380400001)(44832011)(6666004)(66946007)(66556008)(2906002)(6506007)(508600001)(8676002)(16526019)(5660300002)(8936002)(53546011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Hs7B/lBBunkB0V7GayKtjIcvCPBGHsGS41CS4rRQwnfi546u7sqNc/QVKFpB?=
 =?us-ascii?Q?7ZC4BEX3KngMms67SSDAjG9/15+rL8M0CRgpdyiD46vcfuCnO/orFmkdZqXz?=
 =?us-ascii?Q?RNOK9Mg2KGFG0VKLM21s+aIDWeOYpF8fdpauZqAfBS2S0zSyTxMxYPZGUeKb?=
 =?us-ascii?Q?zoO31usKDBE4ESVE/C3V8z1OR50EK0X5cu2dQOEd8bv//MDRiipDOF7K3bs7?=
 =?us-ascii?Q?yrVZMDVbIjgK5Acq5dpPntC+XyfFRyW9rn9OnQigQ2d0neLbzXoqCzOYrz7X?=
 =?us-ascii?Q?kDrb8ntr8LLSt8OjRh+5TK0ckM82vugM7/tkXcIGM1K4Si/A1dRtHEbBZ7+z?=
 =?us-ascii?Q?r3tueoVXp4JZUH/P7LO9lQX4lHEDVVb2bSl/ERYTXUIQonfuv6pzwlhQcb7/?=
 =?us-ascii?Q?Xes/EsI55oVWqh9jQaMfdgT3D+xwK1NcWvwpLvRoXuJuc5mUF4SNhKieiBgW?=
 =?us-ascii?Q?RffZdA9unNV9XUqwXF5SNwdmrAfO4vf/WkqVk3bc3kjI3jh9aUHwlqo6VhoV?=
 =?us-ascii?Q?GqJj+kLC8lXKcE1vJyo43S2Z/4i/q2Te8X0W5LKfgU02+vlaVpZsMU7IaVmh?=
 =?us-ascii?Q?C03T8wGdBEj0AXDbcu4nqz92SSq6A/LpS/ey0mtZ9YY5EMHb5x6QngKgi5ml?=
 =?us-ascii?Q?O1J38VRZpa9DyV1cJ6FBJz7I5QrsLvFse70IkfgiWv5y3ZjIGMHR7k8idgb2?=
 =?us-ascii?Q?OGyOHHQ8R9xQzeDkNnk0cB1qHM1l1cxFJtNEUzYWqWUQub0wAnPaLC3bgTv2?=
 =?us-ascii?Q?n/6UAkdXmFzjVbFbBqtAChQYUw0PZTRsy5sYZz0VgYopAGPlOyxke6Emr/QL?=
 =?us-ascii?Q?zdgiXK8k2wOjGvwp19CsMhVALX8YJzRE56X81uul9Sj9KX5CJMM4IoSGWKix?=
 =?us-ascii?Q?edXOBkzplge3aTm/6Vfg6py5Xl9BIpD0u8KrWogiMwopPSU/z7KsPvHNOcys?=
 =?us-ascii?Q?fV5oudENJ5DOSPCDp3aSzgpcsSvhBSdP+j5jPltFxL4=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2020 06:01:24.8874
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 372f5aac-1bd1-4b53-664e-08d89c07dc84
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aJ3lE/N2fmO8IC16Td2T7/NvVBxkP81skDx9zTrlTKYRZAGZC0AWGJiz86EbPo2/aGOfiXRBqzlbwO7cSmq4Rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1631
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Drop backported patches:
0001-Mark-declaration-with-extern.patch
0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch

Rebase patches:
0001-Fix-python3-usage.patch
0001-pacemaker-fix-compile-error-of-musl-libc.patch

Remove /var/log directory in do_install and create /var/log/pacemaker
directory in volatile file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../recipes-cgl/pacemaker/files/tmpfiles      |  3 +-
 .../recipes-cgl/pacemaker/files/volatiles     |  1 +
 .../pacemaker/0001-Fix-python3-usage.patch    | 34 ++++----------
 .../0001-Mark-declaration-with-extern.patch   | 46 -------------------
 ...maker-fix-compile-error-of-musl-libc.patch | 39 +++-------------
 ...definition-of-curses_indented_printf.patch | 30 ------------
 ...{pacemaker_2.0.3.bb =3D> pacemaker_2.0.5.bb} |  5 +-
 7 files changed, 21 insertions(+), 137 deletions(-)
 mode change 100755 =3D> 100644 meta-cgl-common/recipes-cgl/pacemaker/fil=
es/tmpfiles
 mode change 100755 =3D> 100644 meta-cgl-common/recipes-cgl/pacemaker/fil=
es/volatiles
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-=
Mark-declaration-with-extern.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-=
Fix-tools-Fix-definition-of-curses_indented_printf.patch
 rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_2.0.3.bb =3D> pa=
cemaker_2.0.5.bb} (96%)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles b/meta-=
cgl-common/recipes-cgl/pacemaker/files/tmpfiles
old mode 100755
new mode 100644
index 979db47..765ee0d
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
+++ b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
@@ -3,4 +3,5 @@ d /var/lib/pacemaker/cib 0750 hacluster haclient -
 d /var/lib/pacemaker/cores 0750 hacluster haclient -
 d /var/lib/pacemaker/pengine 0750 hacluster haclient -
 d /var/lib/pacemaker/blackbox 0750 hacluster haclient -
-d /var/run/crm 0750 hacluster haclient -
+d /run/crm 0750 hacluster haclient -
+d /var/log/pacemaker 0750 hacluster haclient -
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles b/meta=
-cgl-common/recipes-cgl/pacemaker/files/volatiles
old mode 100755
new mode 100644
index 1700a69..eca3002
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
+++ b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
@@ -4,3 +4,4 @@ d hacluster haclient 0750 /var/lib/pacemaker/cores none
 d hacluster haclient 0750 /var/lib/pacemaker/pengine none
 d hacluster haclient 0750 /var/lib/pacemaker/blackbox none
 d hacluster haclient 0750 /var/run/crm none
+d hacluster haclient 0750 /var/log/pacemaker none
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-pyt=
hon3-usage.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-F=
ix-python3-usage.patch
index 05d7a76..2095227 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-us=
age.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-us=
age.patch
@@ -1,4 +1,4 @@
-From fdefa9efc726fe704238d462a3dc207e0282fb9e Mon Sep 17 00:00:00 2001
+From f470884e0b990676685c8740b5c7d6f094267e4f Mon Sep 17 00:00:00 2001
 From: Jeremy Puhlman <jpuhlman@mvista.com>
 Date: Sun, 15 Mar 2020 21:09:33 +0000
 Subject: [PATCH] Fix python3 usage
@@ -18,12 +18,11 @@ Upstream-Status: Pending
  cts/pacemaker-cts-dummyd.in                   | 2 +-
  daemons/fenced/fence_legacy.in                | 2 +-
  doc/Pacemaker_Development/en-US/Ch-Python.txt | 2 +-
- doc/Pacemaker_Development/pot/Ch-Python.pot   | 2 +-
  tools/pcmk_simtimes.in                        | 2 +-
- 14 files changed, 14 insertions(+), 14 deletions(-)
+ 13 files changed, 13 insertions(+), 13 deletions(-)
=20
 diff --git a/cts/CTSlab.py.in b/cts/CTSlab.py.in
-index f4ae60dc1..55a0d4ecf 100644
+index 4bae93515..f09f71c66 100644
 --- a/cts/CTSlab.py.in
 +++ b/cts/CTSlab.py.in
 @@ -1,4 +1,4 @@
@@ -43,10 +42,10 @@ index 81a5da8c0..bbadf938a 100644
  '''OCF IPaddr/IPaddr2 Resource Agent Test'''
 =20
 diff --git a/cts/cluster_test.in b/cts/cluster_test.in
-index e0d28509d..f982be05a 100755
+index 38f941d3e..5a289e3fc 100755
 --- a/cts/cluster_test.in
 +++ b/cts/cluster_test.in
-@@ -171,4 +171,4 @@ printf "\nAll set to go for %d iterations!\n" "$CTS_=
numtests"
+@@ -172,4 +172,4 @@ printf "\nAll set to go for %d iterations!\n" "$CTS_=
numtests"
      || echo "+ To use a different configuration, remove ~/.cts and re-r=
un cts (or edit it manually)."
 =20
  echo Now paste the following command into this shell:
@@ -63,7 +62,7 @@ index 592d850b4..9a653a442 100644
  """
 =20
 diff --git a/cts/cts-fencing.in b/cts/cts-fencing.in
-index 2d9999ca0..8e3fb7203 100644
+index 444402438..0270c99ce 100644
 --- a/cts/cts-fencing.in
 +++ b/cts/cts-fencing.in
 @@ -1,4 +1,4 @@
@@ -83,7 +82,7 @@ index 28f4efe7f..b4ed5024f 100644
 =20
  Reads a specified number of lines from the supplied offset
 diff --git a/cts/cts-scheduler.in b/cts/cts-scheduler.in
-index 8fa16fb69..d4306b02b 100644
+index 23e6a919f..09058ce22 100644
 --- a/cts/cts-scheduler.in
 +++ b/cts/cts-scheduler.in
 @@ -1,4 +1,4 @@
@@ -93,7 +92,7 @@ index 8fa16fb69..d4306b02b 100644
  """
 =20
 diff --git a/cts/environment.py b/cts/environment.py
-index db9d3db16..9d103fda9 100644
+index 6a97b1289..39e89fa6f 100644
 --- a/cts/environment.py
 +++ b/cts/environment.py
 @@ -639,7 +639,7 @@ class Environment(object):
@@ -106,7 +105,7 @@ index db9d3db16..9d103fda9 100644
 =20
          sys.exit(status)
 diff --git a/cts/fence_dummy.in b/cts/fence_dummy.in
-index a2692b1e0..f1d111205 100644
+index 8b0dd5165..9e8624bd9 100644
 --- a/cts/fence_dummy.in
 +++ b/cts/fence_dummy.in
 @@ -1,4 +1,4 @@
@@ -148,19 +147,6 @@ index 42d35b649..467e1c524 100644
  ----
  =3D=3D=3D=3D
  which will be replaced with the appropriate python executable when Pace=
maker is
-diff --git a/doc/Pacemaker_Development/pot/Ch-Python.pot b/doc/Pacemaker=
_Development/pot/Ch-Python.pot
-index ed71331ce..27c7e22e5 100644
---- a/doc/Pacemaker_Development/pot/Ch-Python.pot
-+++ b/doc/Pacemaker_Development/pot/Ch-Python.pot
-@@ -39,7 +39,7 @@ msgstr ""
-=20
- #. Tag: screen
- #, no-c-format
--msgid "#!@PYTHON@"
-+msgid "#!/usr/bin/env python3"
- msgstr ""
-=20
- #. Tag: para
 diff --git a/tools/pcmk_simtimes.in b/tools/pcmk_simtimes.in
 index 6e362243b..28009f499 100644
 --- a/tools/pcmk_simtimes.in
@@ -172,5 +158,5 @@ index 6e362243b..28009f499 100644
  """
 =20
 --=20
-2.23.0
+2.17.1
=20
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-de=
claration-with-extern.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacem=
aker/0001-Mark-declaration-with-extern.patch
deleted file mode 100644
index 5729447..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declarati=
on-with-extern.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From e1abd3b7c7a0122813e4d0abdb079df10104882c Mon Sep 17 00:00:00 2001
-From: Mingli Yu <mingli.yu@windriver.com>
-Date: Thu, 3 Sep 2020 04:44:09 +0000
-Subject: [PATCH] Mark declaration with extern
-
-Fixes build with gcc 10+
-
-Upstream-Status: Pending
-
-Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
----
- daemons/attrd/pacemaker-attrd.h | 4 ++--
- daemons/execd/pacemaker-execd.h | 2 +-
- 2 files changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/daemons/attrd/pacemaker-attrd.h b/daemons/attrd/pacemaker-a=
ttrd.h
-index cc8e29ee1..76778915e 100644
---- a/daemons/attrd/pacemaker-attrd.h
-+++ b/daemons/attrd/pacemaker-attrd.h
-@@ -106,8 +106,8 @@ typedef struct attribute_value_s {
-         gboolean seen;
- } attribute_value_t;
-=20
--crm_cluster_t *attrd_cluster;
--GHashTable *attributes;
-+extern crm_cluster_t *attrd_cluster;
-+extern GHashTable *attributes;
-=20
- #define attrd_send_ack(client, id, flags) \
-     crm_ipcs_send_ack((client), (id), (flags), "ack", __FUNCTION__, __L=
INE__)
-diff --git a/daemons/execd/pacemaker-execd.h b/daemons/execd/pacemaker-e=
xecd.h
-index 4a52d9183..dab3ccdbe 100644
---- a/daemons/execd/pacemaker-execd.h
-+++ b/daemons/execd/pacemaker-execd.h
-@@ -20,7 +20,7 @@
- #    include <gnutls/gnutls.h>
- #  endif
-=20
--GHashTable *rsc_list;
-+extern GHashTable *rsc_list;
-=20
- typedef struct lrmd_rsc_s {
-     char *rsc_id;
---=20
-2.26.2
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemak=
er-fix-compile-error-of-musl-libc.patch b/meta-cgl-common/recipes-cgl/pac=
emaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
index f8cbb7e..a10e8cd 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-=
compile-error-of-musl-libc.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-=
compile-error-of-musl-libc.patch
@@ -1,4 +1,4 @@
-From 51b0df9242bb1e3eb41362381472a00727910f64 Mon Sep 17 00:00:00 2001
+From ba9e4810a09893521d28f6c699fb7f213d4a4b34 Mon Sep 17 00:00:00 2001
 From: Changqing Li <changqing.li@windriver.com>
 Date: Fri, 10 Aug 2018 15:08:31 +0800
 Subject: [PATCH] pacemaker: fix compile error of musl libc
@@ -7,28 +7,14 @@ Upstream-Status: Pending
=20
 Signed-off-by: Changqing Li <changqing.li@windriver.com>
 ---
- include/crm/stonith-ng.h | 1 +
- lib/cib/cib_remote.c     | 3 ---
- tools/crm_mon.c          | 2 +-
- 3 files changed, 2 insertions(+), 4 deletions(-)
+ lib/cib/cib_remote.c | 3 ---
+ 1 file changed, 3 deletions(-)
=20
-diff --git a/include/crm/stonith-ng.h b/include/crm/stonith-ng.h
-index 56c1ec7..a637b47 100644
---- a/include/crm/stonith-ng.h
-+++ b/include/crm/stonith-ng.h
-@@ -28,6 +28,7 @@
- #  include <dlfcn.h>
- #  include <errno.h>
- #  include <stdbool.h>
-+#  include <time.h>
-=20
- /* TO-DO: Work out how to drop this requirement */
- #  include <libxml/tree.h>
 diff --git a/lib/cib/cib_remote.c b/lib/cib/cib_remote.c
-index 4d7b93b..8be8ecc 100644
+index 4de0a0f7b..7686637db 100644
 --- a/lib/cib/cib_remote.c
 +++ b/lib/cib/cib_remote.c
-@@ -53,9 +53,6 @@ typedef void gnutls_session_t;
+@@ -45,9 +45,6 @@ typedef void gnutls_session_t;
  #endif
 =20
  #include <arpa/inet.h>
@@ -38,19 +24,6 @@ index 4d7b93b..8be8ecc 100644
 =20
  #define DH_BITS 1024
 =20
-diff --git a/tools/crm_mon.c b/tools/crm_mon.c
-index 7c63803..1ae6c21 100644
---- a/tools/crm_mon.c
-+++ b/tools/crm_mon.c
-@@ -553,7 +553,7 @@ main(int argc, char **argv)
-=20
- #if !defined (ON_DARWIN) && !defined (ON_BSD)
-     /* prevent zombies */
--    signal(SIGCLD, SIG_IGN);
-+    signal(SIGCHLD, SIG_IGN);
- #endif
-=20
-     if (crm_ends_with_ext(argv[0], ".cgi") =3D=3D TRUE) {
 --=20
-2.7.4
+2.17.1
=20
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-too=
ls-Fix-definition-of-curses_indented_printf.patch b/meta-cgl-common/recip=
es-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indent=
ed_printf.patch
deleted file mode 100644
index f5e1829..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-=
definition-of-curses_indented_printf.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:00 2001
-From: Chris Lumens <clumens@redhat.com>
-Date: Thu, 2 Jan 2020 15:08:58 -0500
-Subject: [PATCH 006/207] Fix: tools: Fix definition of curses_indented_p=
rintf.
-
-The placeholder version that is built if curses is not enabled does not
-have a type that matches the header file.  Correct that.
-
-Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
-Upstream-Status: Backport[git]
----
- tools/crm_mon_curses.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c
-index c0dbedbf0..ecd0584fe 100644
---- a/tools/crm_mon_curses.c
-+++ b/tools/crm_mon_curses.c
-@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t *out, const c=
har *format, va_list args) {
-=20
- G_GNUC_PRINTF(2, 3)
- void
--curses_indented_printf(pcmk__output_t *out, const char *format, va_list=
 args) {
-+curses_indented_printf(pcmk__output_t *out, const char *format, ...) {
-     return;
- }
-=20
---=20
-2.23.0
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb b/m=
eta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
similarity index 96%
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
index 8576f18..6cfa057 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
@@ -14,9 +14,7 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D000212f361a8=
1b100d9d0f0435040663"
 DEPENDS =3D "corosync libxslt libxml2 gnutls resource-agents libqb pytho=
n3-native"
=20
 SRC_URI =3D "git://github.com/ClusterLabs/${BPN}.git \
-           file://0006-Fix-tools-Fix-definition-of-curses_indented_print=
f.patch \
            file://0001-Fix-python3-usage.patch \
-           file://0001-Mark-declaration-with-extern.patch \
            file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://volatiles \
            file://tmpfiles \
@@ -26,7 +24,7 @@ CFLAGS +=3D "-I${STAGING_INCDIR}/heartbeat"
 CPPFLAGS +=3D"-I${STAGING_INCDIR}/heartbeat"
 SRC_URI_append_libc-musl =3D "file://0001-pacemaker-fix-compile-error-of=
-musl-libc.patch"
=20
-SRCREV =3D "4b1f869f0f64ef0d248b6aa4781d38ecccf83318"
+SRCREV =3D "ba59be71228fed04f78ab374dfac748d314d0e89"
=20
 inherit autotools-brokensep pkgconfig systemd python3native python3-dir =
useradd
=20
@@ -78,6 +76,7 @@ do_install_append() {
=20
     rm -rf ${D}${localstatedir}/lib/heartbeat
     rm -rf ${D}${localstatedir}/run
+    rm -rf ${D}${localstatedir}/log
=20
     # remove buildpath
     tempdirs=3D$(grep -Rn ${RECIPE_SYSROOT_NATIVE} ${D}/* | awk -F: '{pr=
int $1}' | uniq)
--=20
2.25.1

