Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87B48E00D34; Fri, 18 Aug 2017 02:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84B1CE00CDE
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 02:29:49 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v7I9Tmqt028296
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 18 Aug 2017 02:29:48 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 18 Aug 2017 02:29:47 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>
Date: Fri, 18 Aug 2017 05:29:42 -0400
Message-ID: <0e5128085be917a51d6fe5fe7638978fe9c9beef.1503048463.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1503048463.git.hongxu.jia@windriver.com>
References: <cover.1503048463.git.hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/3] Revert "mc: Drop from meta-gplv2 as incompatible with newer ncurses versions"
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
X-List-Received-Date: Fri, 18 Aug 2017 09:29:51 -0000
Content-Type: text/plain

This reverts commit ec80d2cac67a952b06ed27fbd4d71f17641e9a7c.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-extended/mc/mc/mc-CTRL.patch | 31 ++++++++++++++++++++++++
 recipes-extended/mc/mc_4.7.5.2.bb    | 47 ++++++++++++++++++++++++++++++++++++
 2 files changed, 78 insertions(+)
 create mode 100644 recipes-extended/mc/mc/mc-CTRL.patch
 create mode 100644 recipes-extended/mc/mc_4.7.5.2.bb

diff --git a/recipes-extended/mc/mc/mc-CTRL.patch b/recipes-extended/mc/mc/mc-CTRL.patch
new file mode 100644
index 0000000..ee4ba9f
--- /dev/null
+++ b/recipes-extended/mc/mc/mc-CTRL.patch
@@ -0,0 +1,31 @@
+Fix build with musl by ensuring CTRL is defined.
+
+musl does not define CTRL in <termios.h>, we could include <sys/ttydefaults.h>
+explicitly but it's easier just to ensure CTRL is defined.
+
+This patch is taken from Sabotage Linux, the license statement for patches and
+build scripts in Sabotage Linux says:
+
+    To the extent possible under law, Christian Neukirchen has waived
+    all copyright and related or neighboring rights to this work.
+
+    http://creativecommons.org/publicdomain/zero/1.0/
+
+Therefore this should be good to include in OpenEmbedded.
+
+Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
+
+Upstream-Status: Accepted (should be included in v4.8.14)
+
+diff -u mc-4.8.1.7.org/lib/tty/tty-ncurses.c mc-4.8.1.7/lib/tty/tty-ncurses.c
+--- mc-4.8.1.7.org/lib/tty/tty-ncurses.c
++++ mc-4.8.1.7/lib/tty/tty-ncurses.c
+@@ -65,7 +65,7 @@
+ 
+ /*** file scope macro definitions ****************************************************************/
+ 
+-#if defined(_AIX) && !defined(CTRL)
++#if !defined(CTRL)
+ #define CTRL(x) ((x) & 0x1f)
+ #endif
+ 
diff --git a/recipes-extended/mc/mc_4.7.5.2.bb b/recipes-extended/mc/mc_4.7.5.2.bb
new file mode 100644
index 0000000..b38964d
--- /dev/null
+++ b/recipes-extended/mc/mc_4.7.5.2.bb
@@ -0,0 +1,47 @@
+SUMMARY = "Midnight Commander is an ncurses based file manager"
+HOMEPAGE = "http://www.midnight-commander.org/"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
+SECTION = "console/utils"
+DEPENDS = "ncurses glib-2.0"
+RDEPENDS_${PN} = "ncurses-terminfo"
+
+PR = "r3"
+
+SRC_URI = "http://www.midnight-commander.org/downloads/${BPN}-${PV}.tar.bz2 \
+           file://mc-CTRL.patch \
+           "
+
+SRC_URI[md5sum] = "bdae966244496cd4f6d282d80c9cf3c6"
+SRC_URI[sha256sum] = "a68338862bb30017eb65ed569a58e80ab66ae8cef11c886440c9e9f4d1efc6ab"
+
+inherit autotools gettext pkgconfig
+
+EXTRA_OECONF = "--with-screen=ncurses --without-gpm-mouse --without-x --without-samba"
+
+do_install_append () {
+	sed -i -e '1s,#!.*perl,#!${bindir}/env perl,' ${D}${libexecdir}/mc/extfs.d/*
+	sed -i -e '1s,#!.*python,#!${bindir}/env python,' ${D}${libexecdir}/mc/extfs.d/*
+}
+
+PACKAGES =+ "${BPN}-helpers-perl ${BPN}-helpers-python ${BPN}-helpers ${BPN}-fish"
+
+SUMMARY_${BPN}-helpers-perl = "Midnight Commander Perl-based helper scripts"
+FILES_${BPN}-helpers-perl = "${libexecdir}/mc/extfs.d/a+ ${libexecdir}/mc/extfs.d/apt+ \
+                             ${libexecdir}/mc/extfs.d/deb ${libexecdir}/mc/extfs.d/deba \
+                             ${libexecdir}/mc/extfs.d/debd ${libexecdir}/mc/extfs.d/dpkg+ \
+                             ${libexecdir}/mc/extfs.d/mailfs ${libexecdir}/mc/extfs.d/patchfs \ 
+                             ${libexecdir}/mc/extfs.d/rpms+ ${libexecdir}/mc/extfs.d/ulib \ 
+                             ${libexecdir}/mc/extfs.d/uzip"
+RDEPENDS_${BPN}-helpers-perl = "perl"
+
+SUMMARY_${BPN}-helpers-python = "Midnight Commander Python-based helper scripts"
+FILES_${BPN}-helpers-python = "${libexecdir}/mc/extfs.d/s3+ ${libexecdir}/mc/extfs.d/uc1541"
+RDEPENDS_${BPN}-helpers-python = "python"
+
+SUMMARY_${BPN}-helpers = "Midnight Commander shell helper scripts"
+FILES_${BPN}-helpers = "${libexecdir}/mc/extfs.d/* ${libexecdir}/mc/ext.d/*"
+
+SUMMARY_${BPN}-fish = "Midnight Commander Fish scripts"
+FILES_${BPN}-fish = "${libexecdir}/mc/fish"
+
-- 
2.8.1


