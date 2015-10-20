Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF990E008AE; Tue, 20 Oct 2015 09:41:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8F32E006D5
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:41:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t9KGfCpQ029267
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:41:12 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 20 Oct 2015 09:41:11 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Oct 2015 11:41:07 -0500
Message-ID: <1445359268-172321-4-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1445359268-172321-1-git-send-email-mark.hatle@windriver.com>
References: <1445359268-172321-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 3/4] gcc*.bbappend: Work with 5.2.
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
X-List-Received-Date: Tue, 20 Oct 2015 16:41:16 -0000
Content-Type: text/plain

From: Peter Seebach <peter.seebach@windriver.com>

Rename the bbappends to use % so they can be used with both 4.x
and 5.x. None of these changes appear to be specific to a given
version of gcc.

Signed-off-by: Peter Seebach <peter.seebach@windriver.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend     | 6 ++++++
 recipes-devtools/gcc/gcc-cross-canadian_4.9.bbappend   | 6 ------
 recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend   | 1 +
 recipes-devtools/gcc/gcc-crosssdk-initial_4.9.bbappend | 1 -
 recipes-devtools/gcc/gcc-crosssdk_%.bbappend           | 1 +
 recipes-devtools/gcc/gcc-crosssdk_4.9.bbappend         | 1 -
 recipes-devtools/gcc/gcc-runtime_%.bbappend            | 8 ++++++++
 recipes-devtools/gcc/gcc-runtime_4.9.bbappend          | 8 --------
 recipes-devtools/gcc/libgcc_%.bbappend                 | 2 ++
 recipes-devtools/gcc/libgcc_4.9.bbappend               | 2 --
 10 files changed, 18 insertions(+), 18 deletions(-)
 create mode 100644 recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-cross-canadian_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-crosssdk-initial_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-crosssdk_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-runtime_%.bbappend
 delete mode 100644 recipes-devtools/gcc/gcc-runtime_4.9.bbappend
 create mode 100644 recipes-devtools/gcc/libgcc_%.bbappend
 delete mode 100644 recipes-devtools/gcc/libgcc_4.9.bbappend

diff --git a/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
new file mode 100644
index 0000000..030a9b9
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-cross-canadian_%.bbappend
@@ -0,0 +1,6 @@
+INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
+EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
+LDFLAGS_append_sdkmingw32 = " -Wl,-static"
+EXEEXT_sdkmingw32 = ".exe"
+ELFUTILS_sdkmingw32 = ""
+DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
diff --git a/recipes-devtools/gcc/gcc-cross-canadian_4.9.bbappend b/recipes-devtools/gcc/gcc-cross-canadian_4.9.bbappend
deleted file mode 100644
index 030a9b9..0000000
--- a/recipes-devtools/gcc/gcc-cross-canadian_4.9.bbappend
+++ /dev/null
@@ -1,6 +0,0 @@
-INSANE_SKIP_${PN}_append_sdkmingw32 = " staticdev"
-EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
-LDFLAGS_append_sdkmingw32 = " -Wl,-static"
-EXEEXT_sdkmingw32 = ".exe"
-ELFUTILS_sdkmingw32 = ""
-DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
diff --git a/recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend b/recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend
new file mode 100644
index 0000000..1c09342
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-crosssdk-initial_%.bbappend
@@ -0,0 +1 @@
+DEPENDS_append_mingw32 = " nativesdk-mingw-w64-headers"
diff --git a/recipes-devtools/gcc/gcc-crosssdk-initial_4.9.bbappend b/recipes-devtools/gcc/gcc-crosssdk-initial_4.9.bbappend
deleted file mode 100644
index 1c09342..0000000
--- a/recipes-devtools/gcc/gcc-crosssdk-initial_4.9.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-DEPENDS_append_mingw32 = " nativesdk-mingw-w64-headers"
diff --git a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
new file mode 100644
index 0000000..77ba57f
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF_mingw32 := "${@oe_filter_out('--with-linker-hash-style=${LINKER_HASH_STYLE}', '${EXTRA_OECONF}', d)}"
diff --git a/recipes-devtools/gcc/gcc-crosssdk_4.9.bbappend b/recipes-devtools/gcc/gcc-crosssdk_4.9.bbappend
deleted file mode 100644
index 77ba57f..0000000
--- a/recipes-devtools/gcc/gcc-crosssdk_4.9.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-EXTRA_OECONF_mingw32 := "${@oe_filter_out('--with-linker-hash-style=${LINKER_HASH_STYLE}', '${EXTRA_OECONF}', d)}"
diff --git a/recipes-devtools/gcc/gcc-runtime_%.bbappend b/recipes-devtools/gcc/gcc-runtime_%.bbappend
new file mode 100644
index 0000000..b068dfd
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-runtime_%.bbappend
@@ -0,0 +1,8 @@
+FILES_libstdc++_append_mingw32 = " ${bindir}/libstdc++*.dll"
+FILES_libstdc++-staticdev_append_mingw32 = " ${libdir}/libstdc++.dll.a*"
+FILES_libssp_append_mingw32 = " ${bindir}/libssp*.dll"
+# FILES_libgomp_append_mingw32 = " ${bindir}/libgomp*.dll"
+
+RUNTIMETARGET_remove_mingw32 = "libatomic libgomp"
+
+DEPENDS_append_mingw32 = " pthreads-win32"
diff --git a/recipes-devtools/gcc/gcc-runtime_4.9.bbappend b/recipes-devtools/gcc/gcc-runtime_4.9.bbappend
deleted file mode 100644
index b068dfd..0000000
--- a/recipes-devtools/gcc/gcc-runtime_4.9.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-FILES_libstdc++_append_mingw32 = " ${bindir}/libstdc++*.dll"
-FILES_libstdc++-staticdev_append_mingw32 = " ${libdir}/libstdc++.dll.a*"
-FILES_libssp_append_mingw32 = " ${bindir}/libssp*.dll"
-# FILES_libgomp_append_mingw32 = " ${bindir}/libgomp*.dll"
-
-RUNTIMETARGET_remove_mingw32 = "libatomic libgomp"
-
-DEPENDS_append_mingw32 = " pthreads-win32"
diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools/gcc/libgcc_%.bbappend
new file mode 100644
index 0000000..dd95317
--- /dev/null
+++ b/recipes-devtools/gcc/libgcc_%.bbappend
@@ -0,0 +1,2 @@
+FILES_${PN}_append_mingw32 = " ${base_libdir}/libgcc*.dll"
+FILES_${PN}-dev_append_mingw32 = " ${base_libdir}/libgcc*.a"
diff --git a/recipes-devtools/gcc/libgcc_4.9.bbappend b/recipes-devtools/gcc/libgcc_4.9.bbappend
deleted file mode 100644
index dd95317..0000000
--- a/recipes-devtools/gcc/libgcc_4.9.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-FILES_${PN}_append_mingw32 = " ${base_libdir}/libgcc*.dll"
-FILES_${PN}-dev_append_mingw32 = " ${base_libdir}/libgcc*.a"
-- 
1.9.3


