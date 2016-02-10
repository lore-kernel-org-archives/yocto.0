Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E01C2E00DBB; Tue,  9 Feb 2016 18:40:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B352E00DB9
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 18:40:13 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u1A2eBP0028774
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Feb 2016 18:40:11 -0800 (PST)
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 9 Feb 2016 18:40:11 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 9 Feb 2016 20:39:59 -0600
Message-ID: <1455072000-156056-9-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
References: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 8/9][master] binutils/gdb: Sync with latest oe-core master version
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
X-List-Received-Date: Wed, 10 Feb 2016 02:40:13 -0000
Content-Type: text/plain

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend  | 5 +++++
 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend | 5 -----
 recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend             | 5 +++++
 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend           | 5 -----
 4 files changed, 10 insertions(+), 10 deletions(-)
 create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
 delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
 create mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
 delete mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
new file mode 100644
index 0000000..5845fe0
--- /dev/null
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
@@ -0,0 +1,5 @@
+EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
+LDFLAGS_append_sdkmingw32 = " -Wl,-static"
+
+DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
+DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
deleted file mode 100644
index 5845fe0..0000000
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
-LDFLAGS_append_sdkmingw32 = " -Wl,-static"
-
-DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
-DEPENDS_remove_sdkmingw32 = "nativesdk-flex"
diff --git a/recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend b/recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
new file mode 100644
index 0000000..bf4bd75
--- /dev/null
+++ b/recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
@@ -0,0 +1,5 @@
+LDFLAGS_append_sdkmingw32 = " -Wl,-static"
+EXEEXT_sdkmingw32 = ".exe"
+DEPENDS_remove_sdkmingw32 = "nativesdk-ncurses nativesdk-readline nativesdk-python"
+RDEPENDS_${PN}_remove_sdkmingw32 = "nativesdk-python-core nativesdk-python-lang nativesdk-python-re nativesdk-python-codecs nativesdk-python-netclient"
+EXTRA_OECONF_append_sdkmingw32 = "--without-curses --without-system-readline --with-python=no"
diff --git a/recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend b/recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
deleted file mode 100644
index bf4bd75..0000000
--- a/recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-LDFLAGS_append_sdkmingw32 = " -Wl,-static"
-EXEEXT_sdkmingw32 = ".exe"
-DEPENDS_remove_sdkmingw32 = "nativesdk-ncurses nativesdk-readline nativesdk-python"
-RDEPENDS_${PN}_remove_sdkmingw32 = "nativesdk-python-core nativesdk-python-lang nativesdk-python-re nativesdk-python-codecs nativesdk-python-netclient"
-EXTRA_OECONF_append_sdkmingw32 = "--without-curses --without-system-readline --with-python=no"
-- 
2.5.0


