Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8550AE00945; Mon, 12 Jan 2015 19:50:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DA1CE00902
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 19:50:21 -0800 (PST)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=scrapper.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1YAsTH-0001jA-V1; Tue, 13 Jan 2015 03:48:48 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Tue, 13 Jan 2015 03:50:04 +0000
Message-Id: <1421121004-8592-4-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1421121004-8592-1-git-send-email-flihp@twobit.us>
References: <1421121004-8592-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][ 3/3] tar: Use wildcard for version number in bbappend.
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
X-List-Received-Date: Tue, 13 Jan 2015 03:50:29 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-extended/tar/tar_%.bbappend      |   13 +++++++++++++
 recipes-extended/tar/tar_1.27.1.bbappend |   13 -------------
 2 files changed, 13 insertions(+), 13 deletions(-)
 create mode 100644 recipes-extended/tar/tar_%.bbappend
 delete mode 100644 recipes-extended/tar/tar_1.27.1.bbappend

diff --git a/recipes-extended/tar/tar_%.bbappend b/recipes-extended/tar/tar_%.bbappend
new file mode 100644
index 0000000..a1dc99c
--- /dev/null
+++ b/recipes-extended/tar/tar_%.bbappend
@@ -0,0 +1,13 @@
+PR .= ".3"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+inherit with-selinux
+
+
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
+
+# configure has no acl enable/disable options!
+#
+PACKAGECONFIG[acl] = ",,acl,"
+
diff --git a/recipes-extended/tar/tar_1.27.1.bbappend b/recipes-extended/tar/tar_1.27.1.bbappend
deleted file mode 100644
index a1dc99c..0000000
--- a/recipes-extended/tar/tar_1.27.1.bbappend
+++ /dev/null
@@ -1,13 +0,0 @@
-PR .= ".3"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-inherit with-selinux
-
-
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
-
-# configure has no acl enable/disable options!
-#
-PACKAGECONFIG[acl] = ",,acl,"
-
-- 
1.7.10.4


