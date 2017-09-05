Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12A12E00CC0; Mon,  4 Sep 2017 23:00:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79303E00D08
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 23:00:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8560Bsa007463
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 4 Sep 2017 23:00:11 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 4 Sep 2017 23:00:11 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Sep 2017 22:59:52 -0700
Message-ID: <20170905055958.54697-15-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20170905055958.54697-1-wenzong.fan@windriver.com>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 15/21] selinux-gui: add package 2.7 (20170804)
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
X-List-Received-Date: Tue, 05 Sep 2017 06:00:14 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Move policycoreutils/gui to gui and cleanup policycoreutils.inc.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc |  7 -------
 recipes-security/selinux/selinux-gui.inc     | 15 +++++++++++++++
 recipes-security/selinux/selinux-gui_2.7.bb  |  7 +++++++
 3 files changed, 22 insertions(+), 7 deletions(-)
 create mode 100644 recipes-security/selinux/selinux-gui.inc
 create mode 100644 recipes-security/selinux/selinux-gui_2.7.bb

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 8a9027b..5e03ba0 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -78,7 +78,6 @@ PACKAGES =+ "\
 	${PN}-sestatus \
 	${PN}-setfiles \
 	${PN}-setsebool \
-	system-config-selinux \
 "
 FILES_${PN}-fixfiles += "${base_sbindir}/fixfiles"
 FILES_${PN}-genhomedircon += "${sbindir}/genhomedircon"
@@ -112,12 +111,6 @@ FILES_${PN}-setsebool += "\
 	${datadir}/bash-completion/completions/setsebool \
 "
 
-FILES_system-config-selinux = " \
-    ${datadir}/system-config-selinux/* \
-    ${datadir}/icons/hicolor/ \
-    ${datadir}/polkit-1/actions/org.selinux.config.policy \
-"
-
 export STAGING_INCDIR
 export STAGING_LIBDIR
 export BUILD_SYS
diff --git a/recipes-security/selinux/selinux-gui.inc b/recipes-security/selinux/selinux-gui.inc
new file mode 100644
index 0000000..1096f3f
--- /dev/null
+++ b/recipes-security/selinux/selinux-gui.inc
@@ -0,0 +1,15 @@
+SUMMARY = "SELinux GUI tools"
+DESCRIPTION = "\
+Provide SELinux Management tool (system-config-selinux) and SELinux \
+Policy Generation Tool (selinux-polgengui)"
+
+SECTION = "base"
+LICENSE = "GPLv2+"
+
+RDEPENDS_${PN} += "python"
+
+FILES_${PN} += " \
+        ${datadir}/system-config-selinux/* \
+        ${datadir}/icons/hicolor/* \
+        ${datadir}/polkit-1/actions/org.selinux.config.policy \
+"
diff --git a/recipes-security/selinux/selinux-gui_2.7.bb b/recipes-security/selinux/selinux-gui_2.7.bb
new file mode 100644
index 0000000..3531591
--- /dev/null
+++ b/recipes-security/selinux/selinux-gui_2.7.bb
@@ -0,0 +1,7 @@
+include selinux_20170804.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "f3555cb50a9e67b42bc917ede1982c7d"
+SRC_URI[sha256sum] = "693fb3347041b5a2273c52c33be0a256b109e60f2039ae1d7e90ba8a2ec0324f"
-- 
2.13.0


