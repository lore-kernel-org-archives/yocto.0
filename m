Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56959E00CC1; Mon,  4 Sep 2017 23:00:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3194CE00C89
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 23:00:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v856058f010001
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 4 Sep 2017 23:00:05 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 4 Sep 2017 23:00:04 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Sep 2017 22:59:45 -0700
Message-ID: <20170905055958.54697-8-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20170905055958.54697-1-wenzong.fan@windriver.com>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 08/21] sepolgen: remove package
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
X-List-Received-Date: Tue, 05 Sep 2017 06:00:09 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The package has been moved to selinux-python/sepolgen.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/sepolgen.inc    | 34 --------------------------------
 recipes-security/selinux/sepolgen_2.6.bb |  7 -------
 recipes-security/selinux/sepolgen_git.bb |  7 -------
 3 files changed, 48 deletions(-)
 delete mode 100644 recipes-security/selinux/sepolgen.inc
 delete mode 100644 recipes-security/selinux/sepolgen_2.6.bb
 delete mode 100644 recipes-security/selinux/sepolgen_git.bb

diff --git a/recipes-security/selinux/sepolgen.inc b/recipes-security/selinux/sepolgen.inc
deleted file mode 100644
index daf213d..0000000
--- a/recipes-security/selinux/sepolgen.inc
+++ /dev/null
@@ -1,34 +0,0 @@
-SUMMARY = "Python modules for supporting various SELinux utilities."
-DESCRIPTION = "\
-This package contains a Python module that forms the core of the \
-modern audit2allow (which is a part of the package policycoreutils). \
-The sepolgen library is structured to give flexibility to the \
-application using it. The library contains: Reference Policy \
-Representation, which are Objects for representing policies and the \
-reference policy interfaces. Secondly, it has objects and algorithms \
-for representing access and sets of access in an abstract way and \
-searching that access. It also has a parser for reference policy \
-"headers". It contains infrastructure for parsing SELinux related \
-messages as produced by the audit system. It has facilities for \
-generating policy based on required access."
- 
-SECTION = "base"
-LICENSE = "LGPLv2+"
-
-FILES_${PN} = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
-
-DEPENDS += "python"
-
-inherit python-dir
-
-FILES_${PN} += "${libdir}/python${PYTHON_BASEVERSION}/site-packages \
-		/var/lib/sepolgen"
-
-do_install() {
-	oe_runmake DESTDIR=${D} \
-			PYTHONLIBDIR='${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
-			install
-}
-
-BBCLASSEXTEND = "native"
-
diff --git a/recipes-security/selinux/sepolgen_2.6.bb b/recipes-security/selinux/sepolgen_2.6.bb
deleted file mode 100644
index 7825863..0000000
--- a/recipes-security/selinux/sepolgen_2.6.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20161014.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "84faa46a0eb0b603e903efeed239c244"
-SRC_URI[sha256sum] = "6a327b1576d914e57ad796a541a7a9bcceefb14c445355559993de0fdb8e7a60"
diff --git a/recipes-security/selinux/sepolgen_git.bb b/recipes-security/selinux/sepolgen_git.bb
deleted file mode 100644
index 9b3cbe2..0000000
--- a/recipes-security/selinux/sepolgen_git.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-PR = "r99"
-PV = "1.2.1+git${SRCPV}"
-
-include selinux_git.inc
-include ${BPN}.inc
- 
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-- 
2.13.0


