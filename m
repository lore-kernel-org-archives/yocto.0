Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E607E0086E; Sun,  2 Aug 2015 17:38:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2649 seconds by postgrey-1.32 at yocto-www;
	Sun, 02 Aug 2015 17:38:34 PDT
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D1ADE00758
	for <yocto@yoctoproject.org>; Sun,  2 Aug 2015 17:38:34 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZM34Z-0002tu-4n; Sun, 02 Aug 2015 23:53:43 +0000
From: flihp@twobit.us
To: yocto@yoctoproject.org
Date: Sun,  2 Aug 2015 15:52:45 +0000
Message-Id: <1438530765-127834-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [][meta-selinux] libpam: Upgrade recipe with wildcard.
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
X-List-Received-Date: Mon, 03 Aug 2015 00:38:38 -0000

From: Philip Tricca <flihp@twobit.us>

The DESTDIR prefix patch is now upstream and no longer necessary.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../pam/libpam/sepermit-add-DESTDIR-prefix.patch   | 31 ----------------------
 recipes-extended/pam/libpam_1.%.bbappend           |  8 ++++++
 recipes-extended/pam/libpam_1.1.6.bbappend         | 10 -------
 3 files changed, 8 insertions(+), 41 deletions(-)
 delete mode 100644 recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
 create mode 100644 recipes-extended/pam/libpam_1.%.bbappend
 delete mode 100644 recipes-extended/pam/libpam_1.1.6.bbappend

diff --git a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch b/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
deleted file mode 100644
index d48d386..0000000
--- a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-Subject: [PATCH] libpam: add missing DESTDIR prefix
-
-The DESTDIR prefix is missing, this will cause build failures for
-mkdir /var/run/sepermit on the host.
-
-| mkdir -p /var/run/sepermit
-| mkdir: cannot create directory `/var/run/sepermit': Permission denied
-
-Upstream-Status: Pending
-
-Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com>
----
- modules/pam_sepermit/Makefile.am |    2 +-
- 1 files changed, 1 insertions(+), 1 deletions(-)
-
-diff --git a/modules/pam_sepermit/Makefile.am b/modules/pam_sepermit/Makefile.am
-index cfc5594..bc82275 100644
---- a/modules/pam_sepermit/Makefile.am
-+++ b/modules/pam_sepermit/Makefile.am
-@@ -35,7 +35,7 @@ if HAVE_LIBSELINUX
-   securelib_LTLIBRARIES = pam_sepermit.la
- 
- install-data-local:
--	mkdir -p $(sepermitlockdir)
-+	mkdir -p $(DESTDIR)$(sepermitlockdir)
- endif
- if ENABLE_REGENERATE_MAN
- noinst_DATA = README pam_sepermit.8 sepermit.conf.5
--- 
-1.7.5.4
-
diff --git a/recipes-extended/pam/libpam_1.%.bbappend b/recipes-extended/pam/libpam_1.%.bbappend
new file mode 100644
index 0000000..100a376
--- /dev/null
+++ b/recipes-extended/pam/libpam_1.%.bbappend
@@ -0,0 +1,8 @@
+#FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESPATH_append := ":${@base_set_filespath(['${THISDIR}/${PN}'], d)}"
+
+PR .= ".4"
+
+inherit enable-selinux
+
+RDEPENDS_${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
diff --git a/recipes-extended/pam/libpam_1.1.6.bbappend b/recipes-extended/pam/libpam_1.1.6.bbappend
deleted file mode 100644
index 71acecc..0000000
--- a/recipes-extended/pam/libpam_1.1.6.bbappend
+++ /dev/null
@@ -1,10 +0,0 @@
-#FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-FILESPATH_append := ":${@base_set_filespath(['${THISDIR}/${PN}'], d)}"
-
-SRC_URI += "file://sepermit-add-DESTDIR-prefix.patch"
-
-PR .= ".4"
-
-inherit enable-selinux
-
-RDEPENDS_${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
-- 
2.1.4


