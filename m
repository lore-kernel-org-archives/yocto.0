Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A356CE00A90; Mon, 10 Aug 2015 22:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74BE4E00A80
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 22:37:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t7B5bGJa024942
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 22:37:16 -0700 (PDT)
Received: from ala-blade48.wrs.com (147.11.105.68) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.235.1;
	Mon, 10 Aug 2015 22:37:16 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 10 Aug 2015 22:37:16 -0700
Message-ID: <1439271436-32621-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux] [PATCH] audit: remove add-system-call-table-for-ARM.patch
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
X-List-Received-Date: Tue, 11 Aug 2015 05:37:20 -0000
Content-Type: text/plain

There isn't lib/machinetabs.h any more, there isn't data structures like
"static const char machine_strings", either.

This fixed a do_patch error when arm.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 .../audit/add-system-call-table-for-ARM.patch      |   46 --------------------
 recipes-security/audit/audit_2.4.3.bb              |    2 -
 2 files changed, 48 deletions(-)
 delete mode 100644 recipes-security/audit/audit/add-system-call-table-for-ARM.patch

diff --git a/recipes-security/audit/audit/add-system-call-table-for-ARM.patch b/recipes-security/audit/audit/add-system-call-table-for-ARM.patch
deleted file mode 100644
index ad94d11..0000000
--- a/recipes-security/audit/audit/add-system-call-table-for-ARM.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From 52ff74be2f01182ed9d4fcc3da059512fad63d72 Mon Sep 17 00:00:00 2001
-From: Han Chao <chan@windriver.com>
-Date: Thu, 27 Feb 2014 14:58:57 +0800
-Subject: [PATCH] add system call table for ARM.
-
-This change enable audit system call on ARM.
-Add arm System call table on machinetabs.h.
-Audit system call need enable kernel config CONFIG_AUDITSYSCALL.
-
-Signed-off-by: Han Chao <chan@windriver.com>
----
- lib/machinetabs.h |   11 ++++++-----
- 1 file changed, 6 insertions(+), 5 deletions(-)
-
-diff --git a/lib/machinetabs.h b/lib/machinetabs.h
-index ec2d033..1c2e284 100644
---- a/lib/machinetabs.h
-+++ b/lib/machinetabs.h
-@@ -1,10 +1,11 @@
--/* This is a generated file, see Makefile.am for its inputs. */
--static const char machine_strings[] = "i386\0i486\0i586\0i686\0ia64\0ppc\0ppc64\0s390\0s390x\0x86_64";
-+/* Such is aways generated file, see Makefile.am for its inputs.
-+ * But this version is not generated file, which is for ARM. */
-+static const char machine_strings[] = "armeb\0armv5tejl\0armv5tel\0armv6l\0armv7l";
- static const unsigned machine_s2i_s[] = {
--	0,5,10,15,20,25,29,35,40,46,
-+	0,6,16,25,32,
- };
- static const int machine_s2i_i[] = {
--	0,0,0,0,2,4,3,6,5,1,
-+	8,8,8,8,8,
- };
- static int machine_s2i(const char *s, int *value) {
- 	size_t len, i;
-@@ -19,7 +20,7 @@ static int machine_s2i(const char *s, int *value) {
- 	}
- }
- static const unsigned machine_i2s_direct[] = {
--	0,46,20,29,25,40,35,
-+    39,85,59,68,64,
- };
- static const char *machine_i2s(int v) {
- 	return i2s_direct__(machine_strings, machine_i2s_direct, 0, 6, v);
--- 
-1.7.9.5
-
diff --git a/recipes-security/audit/audit_2.4.3.bb b/recipes-security/audit/audit_2.4.3.bb
index 233fb00..3f5026c 100644
--- a/recipes-security/audit/audit_2.4.3.bb
+++ b/recipes-security/audit/audit_2.4.3.bb
@@ -20,8 +20,6 @@ SRC_URI = "http://people.redhat.com/sgrubb/audit/audit-${PV}.tar.gz \
 SRC_URI[md5sum] = "544d863af2016b76afd8d1691b251164"
 SRC_URI[sha256sum] = "9c914704fecc602e143e37152f3efbab2469692684c1a8cc1b801c1b49c7abc6"
 
-SRC_URI_append_arm = "file://add-system-call-table-for-ARM.patch"
-
 inherit autotools pythonnative update-rc.d systemd
 
 UPDATERCPN = "auditd"
-- 
1.7.9.5


