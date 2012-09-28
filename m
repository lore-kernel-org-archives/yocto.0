Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D335E00347
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 17:31:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Sep 2012 17:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="198853024"
Received: from wrk.jf.intel.com ([10.7.202.68])
	by orsmga001.jf.intel.com with ESMTP; 27 Sep 2012 17:31:05 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Sep 2012 17:31:09 -0700
Message-Id: <605fb5734855c2d37ff96ccb3f18dfe2d4422b5d.1348791431.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1f6183c270424b625be133d6c7368f5013679cc0.1348791431.git.kevin.strasser@linux.intel.com>
References: <1f6183c270424b625be133d6c7368f5013679cc0.1348791431.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1348791431.git.kevin.strasser@linux.intel.com>
References: <cover.1348791431.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 2/4] samba: remove unused directories after install
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

"WARNING: QA Issue: samba: Files/directories were installed but not shipped
  /usr/lib/idmap
  /usr/lib/nss_info
  /usr/lib/perfcount
  /usr/lib/pdb
  /usr/lib/rpc
  /usr/lib/gpext"

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-connectivity/samba/samba.inc |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-connectivity/samba/samba.inc b/recipes-connectivity/samba/samba.inc
index 4e4f23c..8090656 100644
--- a/recipes-connectivity/samba/samba.inc
+++ b/recipes-connectivity/samba/samba.inc
@@ -70,6 +70,8 @@ do_install_append() {
 	mkdir -p ${D}${base_sbindir}
 	rm -f ${D}${bindir}/*.old
 	rm -f ${D}${sbindir}/*.old
+	rmdir ${D}${libdir}/idmap ${D}${libdir}/nss_info ${D}${libdir}/perfcount
+	rmdir ${D}${libdir}/pdb ${D}${libdir}/rpc ${D}${libdir}/gpext
 	[ -f ${D}${sbindir}/mount.cifs ] && mv ${D}${sbindir}/mount.cifs ${D}${base_sbindir}/
 	[ -f ${D}${sbindir}/umount.cifs ] && mv ${D}${sbindir}/umount.cifs ${D}${base_sbindir}/
 
-- 
1.7.9.5


