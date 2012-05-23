Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 395A9E013D1
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:52:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 May 2012 12:52:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="156323256"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga001.fm.intel.com with ESMTP; 23 May 2012 12:52:54 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 23 May 2012 14:52:45 -0500
Message-Id: <cacd4421924d683711d8703cec1d5e551e21554d.1337801535.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Subject: [PATCH 18/20] lms: new recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 May 2012 19:52:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add support for the Intel Active Management Technology (AMT) Local
Manageability Service (LMS) daemon.

The Intel LMS daemon allows applications to access the Intel AMT
firmware via the Intel Management Engine Interface (MEI).

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../amt/lms/atnetworktool-printf-fix.patch         |   14 +++++++
 common/recipes-bsp/amt/lms_7.1.20.bb               |   42 ++++++++++++++++++++
 2 files changed, 56 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-bsp/amt/lms/atnetworktool-printf-fix.patch
 create mode 100644 common/recipes-bsp/amt/lms_7.1.20.bb

diff --git a/common/recipes-bsp/amt/lms/atnetworktool-printf-fix.patch b/common/recipes-bsp/amt/lms/atnetworktool-printf-fix.patch
new file mode 100644
index 0000000..d3a6284
--- /dev/null
+++ b/common/recipes-bsp/amt/lms/atnetworktool-printf-fix.patch
@@ -0,0 +1,14 @@
+Index: lms-7.1.20/src/tools/ATNetworkTool.cpp
+===================================================================
+--- lms-7.1.20.orig/src/tools/ATNetworkTool.cpp	2012-04-30 23:24:56.693879920 -0500
++++ lms-7.1.20/src/tools/ATNetworkTool.cpp	2012-04-30 23:25:32.363473948 -0500
+@@ -302,7 +302,9 @@
+ 			close(s);
+ 			return -1;
+ 		}
++#ifdef LMS_NET_DEBUG
+ 		printf("successfully binded local\n");
++#endif
+ 	  
+ 	}
+ 	if (bind(s, addr, addrlen) == -1) {
diff --git a/common/recipes-bsp/amt/lms_7.1.20.bb b/common/recipes-bsp/amt/lms_7.1.20.bb
new file mode 100644
index 0000000..fb1aaec
--- /dev/null
+++ b/common/recipes-bsp/amt/lms_7.1.20.bb
@@ -0,0 +1,42 @@
+DESCRIPTION = "Intel Local Manageability Service allows applications \
+to access the Intel Active Management Technology (AMT) firmware via \
+the Intel Management Engine Interface (MEI)."
+HOMEPAGE = "http://software.intel.com/en-us/articles/download-the-latest-intel-amt-open-source-drivers"
+
+LICENSE = "Modified BSD"
+
+PR = "r0"
+SRC_URI = "http://software.intel.com/file/37962 \
+           file://atnetworktool-printf-fix.patch"
+
+COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=7264184cf88d9f27b719a9656255b47b"
+
+SRC_URI[md5sum] = "687b76e78bfdbcf567c0e842c1fe240a"
+SRC_URI[sha256sum] = "cc0457f0044e924794bb1aeae9a72c28666a525cd8a963d0d92970222946e75b"
+
+inherit autotools update-rc.d
+
+INITSCRIPT_NAME = "lms"
+INITSCRIPT_PARAMS = "defaults"
+
+PV_SUB = "25"
+
+do_unpack2() {
+	     # The downloaded 37962 filename is actually lms+7.1.20.25.zip.
+	     # It contains lms-7.1.20-25.tar.gz.
+	     # It contains lms-7.1.20-25.tar.gz untars to lms-7.1.20
+	     mv ${WORKDIR}/37962 ${WORKDIR}/${PN}+${PV}.${PV_SUB}.zip
+	     unzip -o ${WORKDIR}/${PN}+${PV}.${PV_SUB}.zip
+	     mv ${WORKDIR}/${PN}-${PV}/outputdir/${PN}-${PV}-${PV_SUB}.tar.gz ${WORKDIR}/
+	     cd ${WORKDIR}
+	     tar -xvzf ${PN}-${PV}-${PV_SUB}.tar.gz
+}
+
+addtask unpack2 after do_unpack before do_patch
+
+do_install_append () {
+	install -d ${D}${sysconfdir}/init.d
+	install -m 0755 ${WORKDIR}/${PN}-${PV}/scripts/lms ${D}${sysconfdir}/init.d/${INITSCRIPT_NAME}
+}
-- 
1.7.0.4


