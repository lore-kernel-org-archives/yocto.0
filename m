Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C5C9E0091D; Fri, 15 Sep 2017 00:38:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65142E0091D
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v8F7cSbj006542
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:38:28 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Fri, 15 Sep 2017 00:38:27 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 15 Sep 2017 15:37:26 +0800
Message-ID: <cb35f5719f8840e73114e310fec2afa7f37b8f20.1505460823.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1505460823.git.jackie.huang@windriver.com>
References: <cover.1505460823.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 2/4] samhain: fix for the PACKAGECONFIG
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
X-List-Received-Date: Fri, 15 Sep 2017 07:38:32 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

* The "??=" assignment for PACKAGECONFIG is overridden by
  the following "+=" assignments, which is not expected,
  so combine them into one assignment with multiple lines.

* Fix a typo for postgresql.

* Remove unneeded quotation marks.

* run aotoconf to regenerate the configure, or the patch
  for ps option doesn't work:
  | configure: error: unrecognized option: --with-ps-path=/bin/ps

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-security/samhain/samhain.inc | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 7b71d9f..d25f653 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -44,17 +44,18 @@ SAMHAIN_MODE = "${@oe.utils.ifelse(d.getVar('MODE_NAME') == 'standalone', 'no',
 
 # supports mysql|postgresql|oracle|odbc but postgresql is the only one available
 
-PACKAGECONFIG ??= "postgresql ps"
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'ipv6', 'ipv6', '', d)}"
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux audit', '', d)}"
-PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)}"
-
-PACKAGECONFIG[postgres]  = "--with-database=postgresql --enable-xml-log, "", postgresql"
-PACKAGECONFIG[suidcheck]  = "--enable-suidcheck","" , "
-PACKAGECONFIG[logwatch]  = "--enable-login-watch,"" , "
-PACKAGECONFIG[mounts]  = "--enable-mounts-check","" , "
-PACKAGECONFIG[userfiles]  = "--enable-userfiles","" , "
-PACKAGECONFIG[ipv6]  = "--enable-ipv6,"--disable-ipv6","
+PACKAGECONFIG ??= "postgresql ps \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'ipv6', 'ipv6', '', d)} \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux audit', '', d)} \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'acl', 'acl', '', d)} \
+"
+
+PACKAGECONFIG[postgresql]  = "--with-database=postgresql --enable-xml-log, , postgresql"
+PACKAGECONFIG[suidcheck]  = "--enable-suidcheck, , "
+PACKAGECONFIG[logwatch]  = "--enable-login-watch, , "
+PACKAGECONFIG[mounts]  = "--enable-mounts-check, , "
+PACKAGECONFIG[userfiles]  = "--enable-userfiles, , "
+PACKAGECONFIG[ipv6]  = "--enable-ipv6,--disable-ipv6,"
 PACKAGECONFIG[selinux] = "--enable-selinux, --disable-selinux, libselinux attr"
 PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
 PACKAGECONFIG[audit] = "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
@@ -90,6 +91,7 @@ EOF
 }
 
 do_configure () {
+	autoconf -f
 	./configure \
 	--build=${BUILD_SYS} \
 	--host=${HOST_SYS} \
-- 
2.11.0


