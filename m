Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 131B2E00E44; Wed, 13 Nov 2019 17:50:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB473E00E5A
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1nZnS014454
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:35 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:34 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:51 +0800
Message-ID: <20191114014901.22862-10-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 09/19] policycoreutils: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:08 -0000
Content-Type: text/plain

* Switch to python3

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc    | 16 ++++------------
 recipes-security/selinux/policycoreutils_2.8.bb |  8 --------
 recipes-security/selinux/policycoreutils_2.9.bb |  8 ++++++++
 3 files changed, 12 insertions(+), 20 deletions(-)
 delete mode 100644 recipes-security/selinux/policycoreutils_2.8.bb
 create mode 100644 recipes-security/selinux/policycoreutils_2.9.bb

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 85ff164..92f7a75 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -19,7 +19,7 @@ DEPENDS += "libsepol libselinux libsemanage libcap gettext-native"
 EXTRA_DEPENDS = "libcap-ng libcgroup"
 DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native']}"
 
-inherit selinux pythonnative
+inherit selinux python3native
 
 RDEPENDS_${BPN}-fixfiles += "\
 	${BPN}-setfiles \
@@ -27,7 +27,6 @@ RDEPENDS_${BPN}-fixfiles += "\
 	findutils \
 "
 RDEPENDS_${BPN}-genhomedircon += "\
-	${BPN}-genhomedircon \
 	${BPN}-semodule \
 "
 RDEPENDS_${BPN}-loadpolicy += "\
@@ -45,10 +44,6 @@ RDEPENDS_${BPN}-semodule += "\
 	libselinux \
 	libsemanage \
 "
-# static link to libsepol
-RDEPENDS_${BPN}-semodule-expand += "libsepol libselinux"
-RDEPENDS_${BPN}-semodule-link += "libsepol libselinux"
-RDEPENDS_${BPN}-semodule-package += "libsepol libselinux"
 RDEPENDS_${BPN}-sestatus += "libselinux"
 RDEPENDS_${BPN}-setfiles += "\
 	libselinux \
@@ -61,10 +56,6 @@ RDEPENDS_${BPN}-setsebool += "\
 "
 RDEPENDS_${BPN} += "selinux-python"
 
-WARN_QA_remove = " unsafe-references-in-scripts"
-ERROR_QA_remove = " unsafe-references-in-scripts"
-
-
 PACKAGES =+ "\
 	${PN}-fixfiles \
 	${PN}-genhomedircon \
@@ -102,6 +93,7 @@ FILES_${PN}-sestatus += "\
 "
 FILES_${PN}-setfiles += "\
 	${base_sbindir}/restorecon \
+	${base_sbindir}/restorecon_xattr \
 	${base_sbindir}/setfiles \
 "
 FILES_${PN}-setsebool += "\
@@ -147,7 +139,7 @@ sysroot_stage_dirs_append_class-native() {
 }
 
 do_compile_prepend() {
-	export PYTHON=python
+	export PYTHON=python3
 	export PYLIBVER='python${PYTHON_BASEVERSION}'
 	export PYTHON_CPPFLAGS="-I${STAGING_INCDIR}/${PYLIBVER}"
 	export PYTHON_LDFLAGS="${STAGING_LIBDIR}/lib${PYLIBVER}.so"
@@ -155,7 +147,7 @@ do_compile_prepend() {
 }
 
 do_install_prepend() {
-	export PYTHON=python
+	export PYTHON=python3
 	export SBINDIR="${D}/${base_sbindir}"
 }
 
diff --git a/recipes-security/selinux/policycoreutils_2.8.bb b/recipes-security/selinux/policycoreutils_2.8.bb
deleted file mode 100644
index 85f6ff0..0000000
--- a/recipes-security/selinux/policycoreutils_2.8.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "da5ceb9c7e1e6f8c573731031b91cffe"
-SRC_URI[sha256sum] = "986553a235f27bee7ad7c2b7c35ea51eb2ee68e2cf03b661b1585de101bc1099"
-
diff --git a/recipes-security/selinux/policycoreutils_2.9.bb b/recipes-security/selinux/policycoreutils_2.9.bb
new file mode 100644
index 0000000..08ba54a
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils_2.9.bb
@@ -0,0 +1,8 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "0fbebdb4761353726cc739d5528f21d8"
+SRC_URI[sha256sum] = "c53c344f28007b3c0742bd958751e9b5d2385898adeb8aec6281ae57342f0f7b"
+
-- 
2.17.1


