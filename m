Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.821.1577089319729276202
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 00:21:59 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: yi.zhao@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4080BE0122A; Mon, 23 Dec 2019 00:21:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDE82E01084
	for <yocto@yoctoproject.org>; Mon, 23 Dec 2019 00:21:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xBN8LscH012781
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 23 Dec 2019 00:21:54 -0800 (PST)
Received: from localhost (128.224.162.174) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 23 Dec
 2019 00:21:54 -0800
From: "Yi Zhao" <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Subject: [meta-selinux][PATCH 1/6] python-ipy: remove recipe
Date: Mon, 23 Dec 2019 16:21:47 +0800
Message-ID: <20191223082152.7706-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.174]
Content-Type: text/plain

The python-ipy had been moved to meta-python.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-devtools/python/python-ipy.inc      | 18 ------------------
 recipes-devtools/python/python-ipy_1.00.bb  |  2 --
 recipes-devtools/python/python3-ipy_1.00.bb |  2 --
 3 files changed, 22 deletions(-)
 delete mode 100644 recipes-devtools/python/python-ipy.inc
 delete mode 100644 recipes-devtools/python/python-ipy_1.00.bb
 delete mode 100644 recipes-devtools/python/python3-ipy_1.00.bb

diff --git a/recipes-devtools/python/python-ipy.inc b/recipes-devtools/python/python-ipy.inc
deleted file mode 100644
index ba4c2bd..0000000
--- a/recipes-devtools/python/python-ipy.inc
+++ /dev/null
@@ -1,18 +0,0 @@
-SUMMARY = "Python module for handling IPv4 and IPv6 Addresses and Networks"
-DESCRIPTION = "IPy is a Python module for handling IPv4 and IPv6 Addresses and Networks \
-in a fashion similar to perl's Net::IP and friends. The IP class allows \
-a comfortable parsing and handling for most notations in use for IPv4 \
-and IPv6 Addresses and Networks."
-SECTION = "devel/python"
-HOMEPAGE = "https://github.com/haypo/python-ipy"
-LICENSE = "BSD-3-Clause"
-LIC_FILES_CHKSUM = "file://COPYING;md5=848d24919845901b4f48bae5f13252e6"
-
-SRC_URI[md5sum] = "1a90c68174234672241a7e60c7ea0fb9"
-SRC_URI[sha256sum] = "2f2bf658a858d43868d8a4352b3889cf78c66e2ce678b300dcf518c9149ba621"
-
-inherit pypi
-
-PYPI_PACKAGE = "IPy"
-
-BBCLASSEXTEND = "native"
diff --git a/recipes-devtools/python/python-ipy_1.00.bb b/recipes-devtools/python/python-ipy_1.00.bb
deleted file mode 100644
index 587a517..0000000
--- a/recipes-devtools/python/python-ipy_1.00.bb
+++ /dev/null
@@ -1,2 +0,0 @@
-inherit setuptools
-require python-ipy.inc
diff --git a/recipes-devtools/python/python3-ipy_1.00.bb b/recipes-devtools/python/python3-ipy_1.00.bb
deleted file mode 100644
index ea6a105..0000000
--- a/recipes-devtools/python/python3-ipy_1.00.bb
+++ /dev/null
@@ -1,2 +0,0 @@
-inherit setuptools3
-require python-ipy.inc
-- 
2.17.1

