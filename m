Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCADBE0049B
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 17:31:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Sep 2012 17:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="198853022"
Received: from wrk.jf.intel.com ([10.7.202.68])
	by orsmga001.jf.intel.com with ESMTP; 27 Sep 2012 17:31:05 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Sep 2012 17:31:08 -0700
Message-Id: <1f6183c270424b625be133d6c7368f5013679cc0.1348791431.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1348791431.git.kevin.strasser@linux.intel.com>
References: <cover.1348791431.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 1/4] proftpd: remove unused directories after install
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
X-List-Received-Date: Fri, 28 Sep 2012 00:31:20 -0000

Some of the directories that are created during installation are left
empty and not shipped in the image.

Removing them clears up the following QA warning:

"WARNING: QA Issue: proftpd: Files/directories were installed but not shipped
  /usr/libexec
  /usr/lib/proftpd
  /usr/share/locale"

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/proftpd/proftpd_1.3.4b.bb |    1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-extended/proftpd/proftpd_1.3.4b.bb b/recipes-extended/proftpd/proftpd_1.3.4b.bb
index b7e201b..45e73d9 100644
--- a/recipes-extended/proftpd/proftpd_1.3.4b.bb
+++ b/recipes-extended/proftpd/proftpd_1.3.4b.bb
@@ -35,6 +35,7 @@ do_configure () {
 
 do_install () {
     oe_runmake DESTDIR=${D} install
+    rmdir ${D}${libexecdir} ${D}${libdir}/proftpd ${D}${datadir}/locale
 }
 
 pkg_postinst () {
-- 
1.7.9.5


