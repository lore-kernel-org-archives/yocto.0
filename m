Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 985AEE006EC
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 01:34:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3O8YkUL006771
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 01:34:46 -0700 (PDT)
Received: from pek-kkang-d1.wrs.com (128.224.162.231) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Thu, 24 Apr 2014 01:34:46 -0700
From: Kai Kang <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 24 Apr 2014 16:34:37 +0800
Message-ID: <1398328477-20192-1-git-send-email-kai.kang@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [128.224.162.231]
Subject: [meta-selinux][PATCH] audit: Enable ARM System Call Audit in user space.
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
X-List-Received-Date: Thu, 24 Apr 2014 08:34:50 -0000
Content-Type: text/plain

From: Han Chao <chan@windriver.com>

Audit System Call needs kernel and user space support.

In user space it needs system call table for ARM. It also needs a
configure option --with-armeb for build audit. Audit system call also
needs enable kernel config CONFIG_AUDITSYSCALL.

Signed-off-by: Han Chao <chan@windriver.com>
Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../audit/add-system-call-table-for-ARM.patch      | 46 ++++++++++++++++++++++
 recipes-security/audit/audit_2.3.2.bb              |  2 +
 2 files changed, 48 insertions(+)
 create mode 100644 recipes-security/audit/audit/add-system-call-table-for-ARM.patch

diff --git a/recipes-security/audit/audit/add-system-call-table-for-ARM.patch b/recipes-security/audit/audit/add-system-call-table-for-ARM.patch
new file mode 100644
index 0000000..ad94d11
--- /dev/null
+++ b/recipes-security/audit/audit/add-system-call-table-for-ARM.patch
@@ -0,0 +1,46 @@
+From 52ff74be2f01182ed9d4fcc3da059512fad63d72 Mon Sep 17 00:00:00 2001
+From: Han Chao <chan@windriver.com>
+Date: Thu, 27 Feb 2014 14:58:57 +0800
+Subject: [PATCH] add system call table for ARM.
+
+This change enable audit system call on ARM.
+Add arm System call table on machinetabs.h.
+Audit system call need enable kernel config CONFIG_AUDITSYSCALL.
+
+Signed-off-by: Han Chao <chan@windriver.com>
+---
+ lib/machinetabs.h |   11 ++++++-----
+ 1 file changed, 6 insertions(+), 5 deletions(-)
+
+diff --git a/lib/machinetabs.h b/lib/machinetabs.h
+index ec2d033..1c2e284 100644
+--- a/lib/machinetabs.h
++++ b/lib/machinetabs.h
+@@ -1,10 +1,11 @@
+-/* This is a generated file, see Makefile.am for its inputs. */
+-static const char machine_strings[] = "i386\0i486\0i586\0i686\0ia64\0ppc\0ppc64\0s390\0s390x\0x86_64";
++/* Such is aways generated file, see Makefile.am for its inputs.
++ * But this version is not generated file, which is for ARM. */
++static const char machine_strings[] = "armeb\0armv5tejl\0armv5tel\0armv6l\0armv7l";
+ static const unsigned machine_s2i_s[] = {
+-	0,5,10,15,20,25,29,35,40,46,
++	0,6,16,25,32,
+ };
+ static const int machine_s2i_i[] = {
+-	0,0,0,0,2,4,3,6,5,1,
++	8,8,8,8,8,
+ };
+ static int machine_s2i(const char *s, int *value) {
+ 	size_t len, i;
+@@ -19,7 +20,7 @@ static int machine_s2i(const char *s, int *value) {
+ 	}
+ }
+ static const unsigned machine_i2s_direct[] = {
+-	0,46,20,29,25,40,35,
++    39,85,59,68,64,
+ };
+ static const char *machine_i2s(int v) {
+ 	return i2s_direct__(machine_strings, machine_i2s_direct, 0, 6, v);
+-- 
+1.7.9.5
+
diff --git a/recipes-security/audit/audit_2.3.2.bb b/recipes-security/audit/audit_2.3.2.bb
index ae6556f..4baf7a0 100644
--- a/recipes-security/audit/audit_2.3.2.bb
+++ b/recipes-security/audit/audit_2.3.2.bb
@@ -18,6 +18,7 @@ SRC_URI = "http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
 	   file://auditd.service \
 	   file://audit-volatile.conf \
 "
+SRC_URI_append_arm = "file://add-system-call-table-for-ARM.patch"
 
 inherit autotools pythonnative update-rc.d systemd
 
@@ -41,6 +42,7 @@ EXTRA_OECONF += "--without-prelude \
 	--libdir=${base_libdir} \
 	--sbindir=${base_sbindir} \
 	"
+EXTRA_OECONF_append_arm = " --with-armeb=yes"
 
 EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
 	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
-- 
1.8.4


