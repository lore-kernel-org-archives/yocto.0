Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BB7AC0502F
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:16 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.55605.1661653812832490747
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:30:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=bLxIJFqQ;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2TtaG011348;
	Sun, 28 Aug 2022 02:30:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=IruentQg9Hhfzlz+gqZMR04WIwndEPEu8NPkgGTo8Bo=;
 b=bLxIJFqQSb4cH75vGEcJ8VIDP4QW94nu0KWHzsjWHY9DHWlmSc17auQWDO1c9pDxlXvC
 545xYBmajvVl/LAE9uIwd5XA8PHgsmE7DAm9qO+jGQ8Y4zBfEBaTUPz3vJ8EwPsTCO+9
 jPPJ5N9Mpi/6Ja9gtknMpZOiQY4DRRjUboLK28YM1z3wMjQEBHVaRtfCQB0joHHdDRuz
 plEcKoX2MRr9ONc2figRRqhM/27mDsoFuW9PM9N6kFg3vUhlSfbtM4j0ONPxIYW2h7BA
 oP3MXAbXoeu5FqFOx0Y7LuE2PM9I8juPm3GdjyNhleTCBobL1wy4WSXcgdK6Boc1hbg8 eA==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j78g2gq4v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 28 Aug 2022 02:30:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D6BP3xHz/1Hl5QDAVZ6WhMLH4e9/iuUc05HiQ7fOJ3tf9TEG5V8fAj9AJxzE9reLuRomgrCjFBy+oKFtQ1+VJ2/y9QrLApdMoHE7SElw1uqdqHQVHJ/sOjGnGeZlmLAgidrwITLqkpRdvVPN5MzJCFDdwjAGkK3C9MjGSwKXG8ZtPBpUE6ssNYQGof9hTdXOS0AxemNtBaQPrg8xRi/RxZ+QGbXEcLJxcemZfKDpstBJwx7GhY7HgH+QAvEakmZU8edWkDF8BH9ZlQkG3EhTjA1gFKqeZpIkouAlB9QvA9Td33dVcDnJJvQlv55YnK7W5rvliIC0F119xCK9S47u6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IruentQg9Hhfzlz+gqZMR04WIwndEPEu8NPkgGTo8Bo=;
 b=aoYOqgr7TyqKBXPH4Ny5M7ydbgR/nWY2+4PJBqmpv2Pe+Fs8N65mzMr5S+iTOoPDjlLs0x+CG5IF4Y2FtG2OPwKAWQILr0ttthPCVJezq9i2I3cwMYPAhvnYxEXu2WDd6CAjHIdrFL8JMzLWB7hZPSAFJ6quAN+Utvp9tCAF3XzKR/V2vEN826Zb6W/x6c1opCXOVpt5jHxirRC9sr/5AXVzSiRefFNOTWq7bSojaWCo4ENmk/rkfhsOfDdLw9kvcsbv8jp6/gc6GH3hISG97mXMO7S5ALf6XMhgysqG2YYbNLVscuKeSbEjmrVACumvL7C5PUCycFpxAxMe+CsZ/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:30:10 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:30:10 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 14/16] selinux-sandbox: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:32 +0800
Message-Id: <20220828022934.47592-14-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: f0987df9-9011-4e8b-1b3a-08da889d3aa1
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4pg6kz3aqqboa6L8ljhzLWKQFh7jVSFxE1Fh1VR1hBo1n6XKSBnHK0upENmBv+gP3RhO1Kj7h4ZkGbM+JvSQxsnBfad3g9lsiOgmX8c338QLyf08J6sw+v4/MARXMM7s7W3pvb6jUrvUV5MS56p/G25OjL4yUIaGTniDjEGYOlXlP8WBgyt2TZrd9sfyJE7XeTZ8GOqNmgMHeKbgihvyI1BzVdjuhkm01LgCcF+p/l/jFmj+spQzorN8AK2G5PiotcqtjuRNckUJFfDJ6N9gTuGJVhj1bt8Ey7nwyvfX6F9/iKHRDCldtpBhHRrLrWVAiG5dNT/nWMgNrmv0WjETzCHQc8PY4VNU+MKiSB+FFuTHKaQNAH3OuXpkcI8t1loLsehu14Xj1uF3ljqWVFp4cjp2onRvOcmsF6pPCv/bc9g4h9dLPPUrQ8yXUDwPFCtdojFQ7L2fbV3DFCNkJfSw3q9v1ANE08HGmpyJOSmZQJZ0oydx09jfyznRcP4zoW4vBVPzzRz3mKkXJIpvEad8ze2EKZLdCKNbG0FhobNFP9SasrXhENJXz/SbqSf3BfSoumM53lpbg1mfW0E4/B12xTwnGUeiHRYoCrPHQVDZoxp6EXmCHbv+iw9KhaLhQ58bo2fbrkokWVzvEeaEAs1uiKmc7S99t9ryFdvf2bqxR4Hfy8B98po/xp/NjEOudyGk3vvNn011snIguMEwOiP0QuolgO1GA8S/t5Yq78s42biRamx8l9SjYXOffNk+k7+XM6jKIajPa9aaVfMLrpGQ1Wqq6MDRu2Ox4Tha9ZW9viw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(53546011)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Rl8NMvmyNOK9jSFSbybz0Ps0CsdH+b3vyid0nqPNj5T8eF3bdeaE/W2CZm2B?=
 =?us-ascii?Q?imATH6NvKSz+qE3Y+pS+unCX7GlofkWB6MA5LaJ69KHIfKUoWUyesp33tH4s?=
 =?us-ascii?Q?XF0d1nPgv4zb5XL2Qtv4ok1la84QgG75cD+u8l1V3UNqsYIz0Env1sx6g9Kv?=
 =?us-ascii?Q?nnIBDYtlIkKq/PyqKNmtMEu7Qvy93NH+77Y8mHHmLbdlF6GN7qXoD8+BcZPM?=
 =?us-ascii?Q?m8Sw7Rhb5+HaqgvM25/bMsswzWcv/ZmmfvNFbbV82y2vXgP38netZArcxX2g?=
 =?us-ascii?Q?TdCds3s+Cso2xOiRGf2/84C4h0l776qPHAdJ+trAtAdfEhFoRi3meBzn0emQ?=
 =?us-ascii?Q?/z2lJo+aZI3WZXx1R8UcdE3sAUtKl0ALX6osUaO/mE5WEli+250tGwNncGSd?=
 =?us-ascii?Q?a8Y3YQShFB86ymnx1LH3yJpZOff0LkAR9MDH3nsnl0R4Kt9cY8vJa+HS/uOH?=
 =?us-ascii?Q?CUyDoWDW5bCZo/eRoeT5fzZ5Xx+y/7pnmd7w6x5Xondd9ZG9GWohAM7lFAE6?=
 =?us-ascii?Q?WOkTYjnSDnDU85Tb1fmRO3pXKrkQFTCOzQt9P2FSTpm7fzlaZQWNMgZ+XULw?=
 =?us-ascii?Q?xsIIvR10nvyeNrMrc1ltOA1fblBnJSEwvIoEmL7BNKhbKQxpcs+4Ow4LObTA?=
 =?us-ascii?Q?EqdajStM/IiNDQJDrFG+tz0IEhL852mOAQyZmhLireAGLcD5aerigD8Ptgdh?=
 =?us-ascii?Q?TKpTAKGXm6z3Vl9/pwl5WAK6qeVEf49AXGcKjipR0lo4Zpty5jt2nZPPPI5l?=
 =?us-ascii?Q?NMCB8ORySuhhl8jLq4+65WPI8QVrVxB1p6QBn65xyGT7NxgqLv66O1CG3YNF?=
 =?us-ascii?Q?e5gj/ckWnqh66BC4tIQYrhsJxLuG0Hl02xq7PcG6fEgtxSZQNljEyVo6KVk6?=
 =?us-ascii?Q?gbcHzfPLzGcUTg7nlf8AMCpVQ4YXAF+w37Cb+b8Ny4wNZC2HDtG7VkJC7VVo?=
 =?us-ascii?Q?R+CoMUJbWFRCYwelFsQXLaFliVIJMJAC38QEbez+1piQJ2NPz9KpBQDIftth?=
 =?us-ascii?Q?vyKl348TJb1DuleJdN4XncSZoc1W1yV7rbSNyyhfatqNMe2wg67yilv2dOA3?=
 =?us-ascii?Q?FzYSEVOgl8+X81Z9CvipCXfyPjFamqvowzd+mPjQrBqmJkEko/RkK4sT2GEZ?=
 =?us-ascii?Q?mUchAIQAzFRxrI6SxnmujgnilJjSLQZw/8899q8lsJ0jopMEDRB2FNk6Immv?=
 =?us-ascii?Q?0lRZoutr+fOhO31Gwb63i0QMPpnOewge7xOtIuImOArsTMLff3pIxT5Ic7tw?=
 =?us-ascii?Q?2RK1TwJFxzGIJ2tbDbQSQycdVhm2eLBT6q/uBveQy1q5ASqjbLkEqaVf9mcm?=
 =?us-ascii?Q?0+3hbQe9h8KkH1hCP1y3Zq8FpWoJS+8F64ascIxuezD5CQNW4CVPjbFf6dwT?=
 =?us-ascii?Q?QzKkLcYoXFplHDptwputskQ6Y4k59fDi24XFI+zRFlAdTle0y20M/PcxgWNb?=
 =?us-ascii?Q?Of52vnU7anAkSkHYlKWWZIJ8m1MHfxCbOn3I/I5642pB+TVNaBalZQcIHP7s?=
 =?us-ascii?Q?waF4AIfX8q3tUp3rfuJUYcL6qOXsbKMJLrUA6i5S2dOFynLnwEp1bGwHwvL6?=
 =?us-ascii?Q?3RofY5y+Nn+74A3TNr5caSrEuwURxy4G9yx485rq?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f0987df9-9011-4e8b-1b3a-08da889d3aa1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:30:10.2476
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 g6YVyOHqk6wUD859uVlMHgmcSn7GzhDPBTJ0diPD03veV10uAxabGfkYk2U78vQylIlvhGLp/foyFfWnT1OdnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: y_GeQjJ5MYqqtKQwdP4SgJaHhMTNyFVC
X-Proofpoint-GUID: y_GeQjJ5MYqqtKQwdP4SgJaHhMTNyFVC
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
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57929

* Backport a patch to fix chcat runtime error.
* Refresh patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...andle-unsupported-languages-properly.patch | 49 +++++++++++++++++++
 .../selinux-sandbox/sandbox-de-bashify.patch  |  6 +--
 ...-sandbox_3.3.bb => selinux-sandbox_3.4.bb} |  8 +--
 3 files changed, 57 insertions(+), 6 deletions(-)
 create mode 100644 recipes-security/selinux/selinux-sandbox/0001-gettext-handle-unsupported-languages-properly.patch
 rename recipes-security/selinux/{selinux-sandbox_3.3.bb => selinux-sandbox_3.4.bb} (77%)

diff --git a/recipes-security/selinux/selinux-sandbox/0001-gettext-handle-unsupported-languages-properly.patch b/recipes-security/selinux/selinux-sandbox/0001-gettext-handle-unsupported-languages-properly.patch
new file mode 100644
index 0000000..f1d8235
--- /dev/null
+++ b/recipes-security/selinux/selinux-sandbox/0001-gettext-handle-unsupported-languages-properly.patch
@@ -0,0 +1,49 @@
+From 70602601ac1cfc4399430ef8609b96fc224d1e25 Mon Sep 17 00:00:00 2001
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
+ sandbox | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/sandbox b/sandbox
+index cd5709f..789621e 100644
+--- a/sandbox
++++ b/sandbox
+@@ -45,7 +45,8 @@ try:
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
diff --git a/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch b/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch
index e9622f0..6258b7c 100644
--- a/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch
+++ b/recipes-security/selinux/selinux-sandbox/sandbox-de-bashify.patch
@@ -1,4 +1,4 @@
-From b92c39f0be5552c19923f75aef4487348a08b7dc Mon Sep 17 00:00:00 2001
+From d592d59eb4e7dbf8ce6dc84b3f4c0026fd7cc60c Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 20 Feb 2015 21:07:47 -0500
 Subject: [PATCH] sandbox: de-bashify
@@ -6,7 +6,7 @@ Subject: [PATCH] sandbox: de-bashify
 There's no bashisms apparent in either the sandbox initscript nor the
 sandboxX script, so point them at /bin/sh instead.
 
-Upstream-Status: Pending
+Upstream-Status: Inappropriate [embedded specific]
 
 Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
@@ -37,5 +37,5 @@ index eaa500d..8755d75 100644
  context=`id -Z | secon -t -l -P`
  export TITLE="Sandbox $context -- `grep ^#TITLE: ~/.sandboxrc | /usr/bin/cut -b8-80`"
 -- 
-2.7.4
+2.25.1
 
diff --git a/recipes-security/selinux/selinux-sandbox_3.3.bb b/recipes-security/selinux/selinux-sandbox_3.4.bb
similarity index 77%
rename from recipes-security/selinux/selinux-sandbox_3.3.bb
rename to recipes-security/selinux/selinux-sandbox_3.4.bb
index cc9baad..a5a8e13 100644
--- a/recipes-security/selinux/selinux-sandbox_3.3.bb
+++ b/recipes-security/selinux/selinux-sandbox_3.4.bb
@@ -9,13 +9,15 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-SRC_URI += "file://sandbox-de-bashify.patch"
+SRC_URI += "file://sandbox-de-bashify.patch \
+            file://0001-gettext-handle-unsupported-languages-properly.patch \
+           "
 
 S = "${WORKDIR}/git/sandbox"
 
-DEPENDS += "libcap-ng libselinux"
+DEPENDS = "libselinux libcap-ng gettext-native"
 
-RDEPENDS:${PN} += "\
+RDEPENDS:${PN} = "\
         python3-core \
         python3-math \
         python3-shell \
-- 
2.25.1


