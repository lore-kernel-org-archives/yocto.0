Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FD24E0071C; Tue, 20 Oct 2015 02:49:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEBC4E006F1
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 02:49:23 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t9K9nMeS002187
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 02:49:22 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 20 Oct 2015 02:49:21 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Oct 2015 05:49:20 -0400
Message-ID: <1445334560-69082-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] libselinux, libsepol: depends on coreutils-native
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
X-List-Received-Date: Tue, 20 Oct 2015 09:49:26 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

'ln --relative' doesn't work on Ubuntu 12.04 that has ln 8.13. The
changes involved by SELinux commit:

  commit 71393a181d63c9baae5fe8dcaeb9411d1f253998
  Author: Steve Lawrence <slawrence@tresys.com>
  Date:   Mon Oct 20 15:46:17 2014 -0400

    libselinux: libsepol: use ln --relative to create .so symlinks

    The current build system assumes SHLIBDIR is ../../ relative to LIBDIR.
    However, this isn't always the case. For example, Arch Linux sets both
    LIBDIR and SHLIBDIR to /usr/lib, which results in broken symlinks.

    Instead of making that assumption, create .so symlinks using ln
    --relative so that the correct relative paths are used. Note that this
    adds a dependency for the build system to use coretuils-8.16 or later.

Just depends on coreutils-native to fix the issue.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/libselinux.inc | 2 +-
 recipes-security/selinux/libsepol.inc   | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index d571a7c..b0f7bc4 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -7,7 +7,7 @@ LICENSE = "PD"
 
 inherit lib_package pythonnative
 
-DEPENDS += "libsepol python libpcre swig-native"
+DEPENDS += "libsepol python libpcre swig-native coreutils-native"
 
 PACKAGES += "${PN}-python"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/selinux/*"
diff --git a/recipes-security/selinux/libsepol.inc b/recipes-security/selinux/libsepol.inc
index b24ed28..9234f24 100644
--- a/recipes-security/selinux/libsepol.inc
+++ b/recipes-security/selinux/libsepol.inc
@@ -8,6 +8,8 @@ LICENSE = "LGPLv2+"
 
 inherit lib_package
 
+DEPENDS += "coreutils-native"
+
 # Change RANLIB for cross compiling, use host-tools $(AR) rather than
 # local ranlib.
 EXTRA_OEMAKE += "RANLIB='$(AR) s'"
-- 
1.9.1


