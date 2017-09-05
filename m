Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18857E00CC1; Mon,  4 Sep 2017 23:00:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4190E00CD5
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 23:00:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v85604eo005695
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 4 Sep 2017 23:00:04 -0700 (PDT)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 4 Sep 2017 23:00:03 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Sep 2017 22:59:44 -0700
Message-ID: <20170905055958.54697-7-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
In-Reply-To: <20170905055958.54697-1-wenzong.fan@windriver.com>
References: <20170905055958.54697-1-wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 07/21] policycoreutils: uprev to 2.7 (20170804)
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
X-List-Received-Date: Tue, 05 Sep 2017 06:00:09 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Uprev the recipe file as is.

Some packages have been moved out from policycoreutils, they will be
added as new packages and the policycoreutils.inc need to be cleaned
up from later commits accordingly.

Moved packages:
    From:                            To:
  - policycoreutils/gui              gui
  - policycoreutils/mcstrans         mcstrans
  - policycoreutils/restorecond      restorecond
  - policycoreutils/sandbox          sandbox
  - policycoreutils/sepolicy/dbus    dbus
  - policycoreutils/semodule_deps    semodule-utils/semodule_deps
  - policycoreutils/semodule_expand  semodule-utils/semodule_expand
  - policycoreutils/semodule_link    semodule-utils/semodule_link
  - policycoreutils/semodule_package semodule-utils/semodule_package
  - policycoreutils/semanage         python/semanage
  - policycoreutils/audit2allow      python/audit2allow
  - policycoreutils/sepolgen-ifgen   python/audit2allow/sepolgen-ifgen
  - policycoreutils/sepolicy         python/sepolicy
  - policycoreutils/scripts/chcat    python/chcat

Released package list refer to:
  https://github.com/SELinuxProject/selinux/wiki/Releases

Cleanup the patch file that have been removed in 2.6:
  - policycoreutils-fts_flags-FTS_NOCHDIR.patch

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 .../policycoreutils-fts_flags-FTS_NOCHDIR.patch    | 25 ----------------------
 ...licycoreutils_2.6.bb => policycoreutils_2.7.bb} |  6 +++---
 2 files changed, 3 insertions(+), 28 deletions(-)
 delete mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch
 rename recipes-security/selinux/{policycoreutils_2.6.bb => policycoreutils_2.7.bb} (74%)

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch
deleted file mode 100644
index fd04b51..0000000
--- a/recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-This works around a bug in the default libc used by OE. FTS functions are
-supposed to change the current working directory as they walk the file
-hierarchy. The fts_accpath member of the FTSENT structure relies on this
-behavior and without it the path is not relative to cwd as expected.
-Supplying the FTS_NOCHDIR flag disables this optimization and causes
-fts_accpath to be relative to the directory where the traversal started.
-Use of this flag doesn't effect compatibility with glibc.
-
-An alternative fix could replace the use of fts_accpath with fts_path
-which is absolute.
-
-Signed-off-by: Philip Tricca <flihp@twobit.us>
-Index: policycoreutils/setfiles/setfiles.c
-===================================================================
---- policycoreutils.orig/setfiles/setfiles.c
-+++ policycoreutils/setfiles/setfiles.c
-@@ -194,7 +194,7 @@ int main(int argc, char **argv)
- 		r_opts.expand_realpath = 0;
- 		r_opts.abort_on_error = 1;
- 		r_opts.add_assoc = 1;
--		r_opts.fts_flags = FTS_PHYSICAL | FTS_XDEV;
-+		r_opts.fts_flags = FTS_PHYSICAL | FTS_XDEV | FTS_NOCHDIR;
- 		ctx_validate = 1;
- 	} else {
- 		/*
diff --git a/recipes-security/selinux/policycoreutils_2.6.bb b/recipes-security/selinux/policycoreutils_2.7.bb
similarity index 74%
rename from recipes-security/selinux/policycoreutils_2.6.bb
rename to recipes-security/selinux/policycoreutils_2.7.bb
index 6a625b3..50f15d0 100644
--- a/recipes-security/selinux/policycoreutils_2.6.bb
+++ b/recipes-security/selinux/policycoreutils_2.7.bb
@@ -1,10 +1,10 @@
-include selinux_20161014.inc
+include selinux_20170804.inc
 include ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
-SRC_URI[md5sum] = "0358f0136e2dd9a8c9e99f181aaab1b2"
-SRC_URI[sha256sum] = "68891b376f5048edc53c6ccb2fca44da3dc7f4563f4b6894e201d70c04a05a29"
+SRC_URI[md5sum] = "65311b66ae01f7b7ad7c2ea7401b68ed"
+SRC_URI[sha256sum] = "0a1b8a4a323b854981c6755ff025fe98a0f1cff307f109abb260f0490f13e4f4"
 
 SRC_URI += "\
 	file://policycoreutils-fix-sepolicy-install-path.patch \
-- 
2.13.0


