Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DC35E00879
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:15:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0KAFluv023834
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2014 02:15:48 -0800 (PST)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Mon, 20 Jan 2014 02:15:47 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 20 Jan 2014 05:15:42 -0500
Message-ID: <cf8a6f888b4ecc8ec2dc10e728dfe4c4c5d010dc.1390212504.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1390212504.git.wenzong.fan@windriver.com>
References: <cover.1390212504.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [meta-selinux][PATCH 1/2] Revert "libsemanage: add audit dependency"
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
X-List-Received-Date: Mon, 20 Jan 2014 10:15:49 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

This reverts commit 146bd8c6bc3bc0e9e96a8517263f28f7915b871d.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/audit/audit_2.3.2.bb    |    8 +-------
 recipes-security/selinux/libsemanage.inc |    2 +-
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/recipes-security/audit/audit_2.3.2.bb b/recipes-security/audit/audit_2.3.2.bb
index 8ab0c7b..edcb881 100644
--- a/recipes-security/audit/audit_2.3.2.bb
+++ b/recipes-security/audit/audit_2.3.2.bb
@@ -26,7 +26,6 @@ SRC_URI[md5sum] = "4e8d065b5cc16b77b9b61e93a9ed160e"
 SRC_URI[sha256sum] = "8872e0b5392888789061db8034164305ef0e1b34543e1e7004d275f039081d29"
 
 DEPENDS += "python tcp-wrappers libcap-ng linux-libc-headers (>= 2.6.30)"
-DEPENDS_class-native = ""
 
 EXTRA_OECONF += "--without-prelude \
 	--with-libwrap \
@@ -38,9 +37,6 @@ EXTRA_OECONF += "--without-prelude \
 	--sbindir=${base_sbindir} \
 	"
 
-# Remove extra configs for native build
-EXTRA_OECONF_class-native = "--with-python=no"
-
 EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
 	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
 	pyexecdir=${libdir}/python${PYTHON_BASEVERSION}/site-packages \
@@ -66,7 +62,7 @@ FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
 FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la"
 
-do_install_append_class-target() {
+do_install_append() {
 	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.a
 	rm -f ${D}/${libdir}/python${PYTHON_BASEVERSION}/site-packages/*.la
 
@@ -79,5 +75,3 @@ do_install_append_class-target() {
 	install -D -m 0755 ${S}/../auditd ${D}/etc/init.d/auditd
 	rm -rf ${D}/etc/rc.d
 }
-
-BBCLASSEXTEND = "native"
diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index a978c75..dfc3006 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -10,7 +10,7 @@ LICENSE = "LGPLv2.1+"
 
 inherit lib_package
 
-DEPENDS += "libsepol libselinux ustr bzip2 python audit bison-native flex-native"
+DEPENDS += "libsepol libselinux ustr bzip2 python bison-native flex-native"
 
 PACKAGES += "${PN}-python"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
-- 
1.7.9.5


