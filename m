Return-Path: <amarnath.valluri@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 239EAE00EC4; Fri, 15 Jul 2016 00:21:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1660E00EB1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 00:21:43 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP; 15 Jul 2016 00:21:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,367,1464678000"; d="scan'208";a="139623886"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2016 00:21:42 -0700
Received: from avalluri-GigaByte.fi.intel.com (avalluri-gigabyte.fi.intel.com
	[10.237.72.170]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id A58B46A4080
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 00:21:33 -0700 (PDT)
From: Amarnath Valluri <amarnath.valluri@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Jul 2016 10:21:18 +0300
Message-Id: <1468567278-7137-2-git-send-email-amarnath.valluri@intel.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1468567278-7137-1-git-send-email-amarnath.valluri@intel.com>
References: <1468567278-7137-1-git-send-email-amarnath.valluri@intel.com>
Subject: [meta-swupd][PATCH 2/2] swupd-client: Fix typo
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
X-List-Received-Date: Fri, 15 Jul 2016 07:21:48 -0000

Typo in writing swupd version and urls to defaults

Signed-off-by: Amarnath Valluri <amarnath.valluri@intel.com>
---
 recipes-core/swupd-client/swupd-client_git.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-core/swupd-client/swupd-client_git.bb b/recipes-core/swupd-client/swupd-client_git.bb
index 6ab289a..2a23c19 100644
--- a/recipes-core/swupd-client/swupd-client_git.bb
+++ b/recipes-core/swupd-client/swupd-client_git.bb
@@ -42,9 +42,9 @@ do_install_append () {
 
     # Write default values to the configuration hierarchy (since 3.4.0)
     install -d ${D}/usr/share/defaults/swupd
-    echo "{SWUPD_VERSION_URL}" >> ${D}/usr/share/defaults/swupd/versionurl
-    echo "{SWUPD_CONTENT_URL}" >> ${D}/usr/share/defaults/swupd/contenturl
-    echo "{SWUPD_FORMAT}" >> ${D}/usr/share/defaults/swupd/format
+    echo "${SWUPD_VERSION_URL}" >> ${D}/usr/share/defaults/swupd/versionurl
+    echo "${SWUPD_CONTENT_URL}" >> ${D}/usr/share/defaults/swupd/contenturl
+    echo "${SWUPD_FORMAT}" >> ${D}/usr/share/defaults/swupd/format
 }
 
 FILES_${PN} += "\
-- 
2.5.0

---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki 
Business Identity Code: 0357606 - 4 
Domiciled in Helsinki 

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


