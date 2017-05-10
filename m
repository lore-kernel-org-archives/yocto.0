Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFD16E00B3F; Tue,  9 May 2017 19:58:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C63E00B3D
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 19:58:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4A2wNsB026667
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 9 May 2017 19:58:23 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 9 May 2017 19:58:22 -0700
From: Dengke Du <dengke.du@windriver.com>
To: <mark.hatle@windriver.com>
Date: Tue, 9 May 2017 22:58:21 -0400
Message-ID: <1494385101-125963-1-git-send-email-dengke.du@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH V2] rpm: modify the rpm bbappend file to suitable for rpm4
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
X-List-Received-Date: Wed, 10 May 2017 02:58:27 -0000
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


