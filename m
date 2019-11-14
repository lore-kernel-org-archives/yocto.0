Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7684E00E32; Wed, 13 Nov 2019 17:49:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59EFFE00DB1
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:11 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1n9Dt024237
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:09 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:08 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:43 +0800
Message-ID: <20191114014901.22862-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 01/19] python-ipy: upgrade to 1.00 and add python3 version
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Nov 2019 01:49:12 -0000
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-devtools/python/python-ipy.inc      | 18 ++++++++++++
 recipes-devtools/python/python-ipy_0.83.bb  | 32 ---------------------
 recipes-devtools/python/python-ipy_1.00.bb  |  2 ++
 recipes-devtools/python/python3-ipy_1.00.bb |  2 ++
 4 files changed, 22 insertions(+), 32 deletions(-)
 create mode 100644 recipes-devtools/python/python-ipy.inc
 delete mode 100644 recipes-devtools/python/python-ipy_0.83.bb
 create mode 100644 recipes-devtools/python/python-ipy_1.00.bb
 create mode 100644 recipes-devtools/python/python3-ipy_1.00.bb

diff --git a/recipes-devtools/python/python-ipy.inc b/recipes-devtools/python/python-ipy.inc
new file mode 100644
index 0000000..ba4c2bd
--- /dev/null
+++ b/recipes-devtools/python/python-ipy.inc
@@ -0,0 +1,18 @@
+SUMMARY = "Python module for handling IPv4 and IPv6 Addresses and Networks"
+DESCRIPTION = "IPy is a Python module for handling IPv4 and IPv6 Addresses and Networks \
+in a fashion similar to perl's Net::IP and friends. The IP class allows \
+a comfortable parsing and handling for most notations in use for IPv4 \
+and IPv6 Addresses and Networks."
+SECTION = "devel/python"
+HOMEPAGE = "https://github.com/haypo/python-ipy"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://COPYING;md5=848d24919845901b4f48bae5f13252e6"
+
+SRC_URI[md5sum] = "1a90c68174234672241a7e60c7ea0fb9"
+SRC_URI[sha256sum] = "2f2bf658a858d43868d8a4352b3889cf78c66e2ce678b300dcf518c9149ba621"
+
+inherit pypi
+
+PYPI_PACKAGE = "IPy"
+
+BBCLASSEXTEND = "native"
diff --git a/recipes-devtools/python/python-ipy_0.83.bb b/recipes-devtools/python/python-ipy_0.83.bb
deleted file mode 100644
index df060fa..0000000
--- a/recipes-devtools/python/python-ipy_0.83.bb
+++ /dev/null
@@ -1,32 +0,0 @@
-SUMMARY = "Python module for handling IPv4 and IPv6 Addresses and Networks"
-DESCRIPTION = "IPy is a Python module for handling IPv4 and IPv6 Addresses and Networks \ 
-in a fashion similar to perl's Net::IP and friends. The IP class allows \
-a comfortable parsing and handling for most notations in use for IPv4 \
-and IPv6 Addresses and Networks."
-SECTION = "devel/python"
-HOMEPAGE = "https://github.com/haypo/python-ipy"
-DEPENDS = "python"
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://COPYING;md5=ebc0028ff5cdaf7796604875027dcd55"
-
-SRC_URI = "https://pypi.python.org/packages/source/I/IPy/IPy-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "7b8c6eb4111b15aea31b67108e769712"
-SRC_URI[sha256sum] = "61da5a532b159b387176f6eabf11946e7458b6df8fb8b91ff1d345ca7a6edab8"
-
-S = "${WORKDIR}/IPy-${PV}"
-
-inherit distutils
-
-# need to export these variables for python-config to work
-export BUILD_SYS
-export HOST_SYS
-export STAGING_INCDIR
-export STAGING_LIBDIR
-
-BBCLASSEXTEND = "native"
-
-do_install_append() {
-	install -d ${D}/${datadir}/doc/${BPN}-${PV}
-	install AUTHORS COPYING ChangeLog README ${D}/${datadir}/doc/${BPN}-${PV}
-}
diff --git a/recipes-devtools/python/python-ipy_1.00.bb b/recipes-devtools/python/python-ipy_1.00.bb
new file mode 100644
index 0000000..587a517
--- /dev/null
+++ b/recipes-devtools/python/python-ipy_1.00.bb
@@ -0,0 +1,2 @@
+inherit setuptools
+require python-ipy.inc
diff --git a/recipes-devtools/python/python3-ipy_1.00.bb b/recipes-devtools/python/python3-ipy_1.00.bb
new file mode 100644
index 0000000..ea6a105
--- /dev/null
+++ b/recipes-devtools/python/python3-ipy_1.00.bb
@@ -0,0 +1,2 @@
+inherit setuptools3
+require python-ipy.inc
-- 
2.17.1


