Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5165FE00B05; Tue,  9 May 2017 00:41:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2646CE00B02
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 00:41:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v497fp8m024140
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 9 May 2017 00:41:51 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 9 May 2017 00:41:50 -0700
From: Dengke Du <dengke.du@windriver.com>
To: <mark.hatle@windriver.com>
Date: Tue, 9 May 2017 03:41:49 -0400
Message-ID: <1494315709-222489-1-git-send-email-dengke.du@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH] rpm: modify the rpm bbappend file to suitable for rpm4
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
X-List-Received-Date: Tue, 09 May 2017 07:41:56 -0000
Content-Type: text/plain

1. change the rpm_5.4.16.bbappend to rpm_git.bbappend, this is
   because the rpm in oe-core has become rpm4 from rpm5.

2. drop the patch for rpm5.

3. delete the does not exist files when run task do_package.

Signed-off-by: Dengke Du <dengke.du@windriver.com>
---
 recipes-devtools/rpm/rpm_5.4.16.bbappend | 10 ----------
 recipes-devtools/rpm/rpm_git.bbappend    |  4 ++++
 2 files changed, 4 insertions(+), 10 deletions(-)
 delete mode 100644 recipes-devtools/rpm/rpm_5.4.16.bbappend
 create mode 100644 recipes-devtools/rpm/rpm_git.bbappend

diff --git a/recipes-devtools/rpm/rpm_5.4.16.bbappend b/recipes-devtools/rpm/rpm_5.4.16.bbappend
deleted file mode 100644
index 2a41a28..0000000
--- a/recipes-devtools/rpm/rpm_5.4.16.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://rpm-fix-build-bug.patch \
-          "
-FILES_${PN} += "${libdir}/rpm/bin/spooktool \
-                ${libdir}/rpm/bin/semodule \
-               "
-
-inherit with-selinux
-PACKAGECONFIG[selinux] = "${WITH_SELINUX},${WITHOUT_SELINUX},libsemanage,"
diff --git a/recipes-devtools/rpm/rpm_git.bbappend b/recipes-devtools/rpm/rpm_git.bbappend
new file mode 100644
index 0000000..9f3ec90
--- /dev/null
+++ b/recipes-devtools/rpm/rpm_git.bbappend
@@ -0,0 +1,4 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+inherit with-selinux
+PACKAGECONFIG[selinux] = "${WITH_SELINUX},${WITHOUT_SELINUX},libsemanage,"
-- 
2.8.1


