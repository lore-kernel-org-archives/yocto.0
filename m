Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC199E00AAA; Thu, 30 Jul 2015 02:24:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F37EE00A5B
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 02:24:30 -0700 (PDT)
Received: by pabkd10 with SMTP id kd10so20619706pab.2
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 02:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=2chkSYfbX9Iz71REqK6+Kh5MHyex3inOZvNVJs0VYVE=;
	b=TjvGJB9uIOz8n7m7EMaMw3S4TjBFZWCYgHpng/Av2qPVQ/rBmb/NTMTdCmf0ofnN/n
	3omF5/2FcG3iVAHlDtMJn+QCSuuueptfKH4pijHf8aRNiCravkgWPmmDv/KdY68fwHLB
	M1/01O3uj6dQ6WiOn7VDjspkYvSsaxVYd3RqQF+yij5cVanNJ9aJH00LSfY50cbSVXbv
	qmUJaeBQnO7eXQ2vblCecUDacaNv4QCydLiJ7MonKXT8VYsT+zut0UJIWxauKE7yix7X
	Lm90oxTSgHh5Z+YlfUG+X5ffRimoCPIRh9Q2fmt5TLYfaKFdyIry2GVNxYJlBrm+jYZ0
	cANQ==
X-Received: by 10.66.218.42 with SMTP id pd10mr105994839pac.106.1438248270207; 
	Thu, 30 Jul 2015 02:24:30 -0700 (PDT)
Received: from localhost.localdomain ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	br14sm1047069pdb.47.2015.07.30.02.24.28
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jul 2015 02:24:29 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Jul 2015 14:55:04 +0530
Message-Id: <1438248304-7884-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH v1] libpam: use wildcard for version and cleanup
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
X-List-Received-Date: Thu, 30 Jul 2015 09:24:34 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

use wildcard for version: adopting libpam upgrade from 1.1.6 to 1.2.1,
cleanup older recipe and remove patch sepermit-add-DESTDIR-prefix.patch
since the changes already available with latest source.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 .../pam/libpam/sepermit-add-DESTDIR-prefix.patch   |   31 --------------------
 recipes-extended/pam/libpam_%.bbappend             |    3 ++
 recipes-extended/pam/libpam_1.1.6.bbappend         |   10 -------
 3 files changed, 3 insertions(+), 41 deletions(-)
 delete mode 100644 recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
 create mode 100644 recipes-extended/pam/libpam_%.bbappend
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
diff --git a/recipes-extended/pam/libpam_%.bbappend b/recipes-extended/pam/libpam_%.bbappend
new file mode 100644
index 0000000..adcf938
--- /dev/null
+++ b/recipes-extended/pam/libpam_%.bbappend
@@ -0,0 +1,3 @@
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
1.7.9.5


