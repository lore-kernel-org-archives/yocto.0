Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA9AAC4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 05:13:00 +0000 (UTC)
Received: from esa3.hc1455-7.c3s2.iphmx.com (esa3.hc1455-7.c3s2.iphmx.com [207.54.90.49])
 by mx.groups.io with SMTP id smtpd.web11.5571.1713330778841610178
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Apr 2024 22:12:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=WFeV3+6d;
 spf=pass (domain: fujitsu.com, ip: 207.54.90.49, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1713330779; x=1744866779;
  h=from:to:cc:subject:date:message-id;
  bh=4An97SZfXd55G7p3B9EMRHFDLTjealwEcCrxgoAKOlc=;
  b=WFeV3+6dCyJlkFLDE6l83jsQ9c9i8bnBhLnmkEOV1vlVU2yFFwcUff94
   cOUt54Cv1WUd/POc6d0YtbehoNyxCMnOuT9hKN+ogzyP1ddamXpdbD0pb
   xeWKtRiApA3NVGMpx8uDoG/4AWMw1ZZwa5opqyoyqDfP2l6BTl+QsIIzA
   3LS/3EUZCC52M2+Onreq1aUR+0phm0V8+fuJsIxq8YcjDtJ+iSvlQgeRd
   biqm61bB5wim1jTG5Lmke6TvAHkXR5noUIzvWHD3GWAwT7jH71Iwx7WJT
   Nx8opjKZhCsUcKIRahrDIyiF8rLWBfQxqPQ9RC6YYL0G1GTge1NeUeXEh
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="155808837"
X-IronPort-AV: E=Sophos;i="6.07,208,1708354800"; 
   d="scan'208";a="155808837"
Received: from unknown (HELO oym-r1.gw.nic.fujitsu.com) ([210.162.30.89])
  by esa3.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2024 14:12:56 +0900
Received: from oym-m2.gw.nic.fujitsu.com (oym-nat-oym-m2.gw.nic.fujitsu.com [192.168.87.59])
	by oym-r1.gw.nic.fujitsu.com (Postfix) with ESMTP id 051F9D4804
	for <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 14:12:54 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m2.gw.nic.fujitsu.com (Postfix) with ESMTP id 382B91C7C6E
	for <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 14:12:53 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 705C0200968CA
	for <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 14:12:52 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id EB4421A000A;
	Wed, 17 Apr 2024 13:12:51 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-security] [PATCH] lynis: upgrade 3.0.9 -> 3.1.1
Date: Wed, 17 Apr 2024 13:12:39 +0800
Message-Id: <1713330759-18425-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28326.005
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28326.005
X-TMASE-Result: 10--4.201000-10.000000
X-TMASE-MatchedRID: jrsYt7uzg+ujz0nOeth/yaoXHZz/dXlxkdS3kPlaZyVkDFfw8NSG/Nnf
	JrUSEbFD/9FzCWH6Yv2mKaU7uZLa5vovxOtCrbSWP0HVIeixJdDBOVz0Jwcxl0fyM5VfgjG209D
	6Rw2zIrPK+04wblaYCEb5H/7zTJtBXSJ4c3nT+Qd85pjA/x1xfhn2SJm936gERZoK1u5mCLIdVi
	Prp6qeeTo2a10XPZVUo0L8t/QbaZGtYv/FAmebjm9OepgphdNGfS0Ip2eEHnz3IzXlXlpamPoLR
	4+zsDTtvG0VHndRxgJsvc5nKHHtoVnZizoKQ0+/WbIZXSkDM/p61QeCMmoagHnfs3PUEGkaiKg3
	C5hfNWGT7VXIyBG7ahHx3tnSX7JqVqb/wfV/2xLyDBYNCJzj6s+YAJ5mo7zlOKgonZY9TFMtLgA
	Q4uO3AA==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 05:13:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62941

From: Wang Mingyu <wangmy@fujitsu.com>

0001-osdetection-add-OpenEmbedded-and-Poky.patch
removed since it's included in 3.1.1.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 ...sdetection-add-OpenEmbedded-and-Poky.patch | 51 -------------------
 .../lynis/{lynis_3.0.9.bb => lynis_3.1.1.bb}  |  6 +--
 2 files changed, 2 insertions(+), 55 deletions(-)
 delete mode 100644 recipes-compliance/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch
 rename recipes-compliance/lynis/{lynis_3.0.9.bb => lynis_3.1.1.bb} (88%)

diff --git a/recipes-compliance/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch b/recipes-compliance/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch
deleted file mode 100644
index d365ec1..0000000
--- a/recipes-compliance/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch
+++ /dev/null
@@ -1,51 +0,0 @@
-From 4b1de197ee0dd259cc05d5faf7fd38b580d841d2 Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster808@gmail.com>
-Date: Tue, 2 May 2023 16:22:13 -0400
-Subject: [PATCH] osdetection: add OpenEmbedded and Poky
-
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
-Upstream-Status: Pending
-https://github.com/CISOfy/lynis/pull/1390
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
----
- include/osdetection | 14 ++++++++++++++
- 1 file changed, 14 insertions(+)
-
-diff --git a/include/osdetection b/include/osdetection
-index 989b1b3..e5974e5 100644
---- a/include/osdetection
-+++ b/include/osdetection
-@@ -308,6 +308,12 @@
-                             OS_REDHAT_OR_CLONE=1
-                             OS_VERSION=$(grep "^VERSION_ID=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
-                         ;;
-+                        "nodistro")
-+                            LINUX_VERSION="openembedded"
-+                            OS_NAME="OpenEmbedded"
-+                            OS_VERSION=$(grep "^VERSION_ID=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
-+                            OS_VERSION_FULL=$(grep "^VERSION=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
-+                        ;;
-                         "opensuse-tumbleweed")
-                             LINUX_VERSION="openSUSE Tumbleweed"
-                             # It's rolling release but has a snapshot version (the date of the snapshot)
-@@ -330,6 +336,14 @@
-                             OS_VERSION=$(grep "^VERSION_ID=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
-                             OS_VERSION_FULL=$(grep "^PRETTY_NAME=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
-                         ;;
-+                        "poky")
-+                            LINUX_VERSION="Poky"
-+                            OS_NAME="openembedded"
-+                            LINUX_VERSION_LIKE="openembedded"
-+                            OS_VERSION=$(grep "^VERSION_ID=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
-+                            OS_VERSION_FULL=$(grep "^PRETTY_NAME=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
-+
-+                        ;;
-                         "pop")
-                             LINUX_VERSION="Pop!_OS"
-                             LINUX_VERSION_LIKE="Ubuntu"
--- 
-2.25.1
-
diff --git a/recipes-compliance/lynis/lynis_3.0.9.bb b/recipes-compliance/lynis/lynis_3.1.1.bb
similarity index 88%
rename from recipes-compliance/lynis/lynis_3.0.9.bb
rename to recipes-compliance/lynis/lynis_3.1.1.bb
index b8b97a5..b69f4df 100644
--- a/recipes-compliance/lynis/lynis_3.0.9.bb
+++ b/recipes-compliance/lynis/lynis_3.1.1.bb
@@ -6,11 +6,9 @@ HOMEDIR = "https://cisofy.com/"
 LICENSE = "GPL-3.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
-SRC_URI = "https://downloads.cisofy.com/lynis/${BPN}-${PV}.tar.gz \
-           file://0001-osdetection-add-OpenEmbedded-and-Poky.patch \
-          "
+SRC_URI = "https://downloads.cisofy.com/lynis/${BPN}-${PV}.tar.gz"
 
-SRC_URI[sha256sum] = "f394df7d20391fb76e975ae88f3eba1da05ac9c4945e2c7f709326e185e17025"
+SRC_URI[sha256sum] = "d72f4ee7325816bb8dbfcf31eb104207b9fe58a2493c2a875373746a71284cc3"
 
 #UPSTREAM_CHECK = "https://downloads.cisofy.com/lynis"
 
-- 
2.34.1


