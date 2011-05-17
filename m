Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6025A4C80FC7
	for <yocto@yoctoproject.org>; Tue, 17 May 2011 15:50:54 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 May 2011 13:50:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,227,1304319600"; 
   d="scan'208";a="3004586"
Received: from unknown (HELO localhost) ([10.255.12.109])
	by fmsmga002.fm.intel.com with ESMTP; 17 May 2011 13:50:53 -0700
Message-Id: <b079f39ba2774d362f60c67d0d409f2672dded8c.1305665232.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305665232.git.tom.zanussi@intel.com>
References: <cover.1305665232.git.tom.zanussi@intel.com>
Old-Date: Tue, 17 May 2011 15:29:50 -0500
Date: Tue, 17 May 2011 15:49:55 -0500
To: yocto@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: add top-level MAINTAINERS file
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
X-List-Received-Date: Tue, 17 May 2011 20:50:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

To help people figure out where to send patches, report problems, and
ask questions relating to BSPs in the meta-intel repo.

Based on the linux-kernel MAINTAINERS file, but pared way down for
simplicity.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 MAINTAINERS |   64 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 64 insertions(+), 0 deletions(-)
 create mode 100644 MAINTAINERS

diff --git a/MAINTAINERS b/MAINTAINERS
new file mode 100644
index 0000000..328136f
--- /dev/null
+++ b/MAINTAINERS
@@ -0,0 +1,64 @@
+This file contains a list of BSP maintainers for the BSPs contained in
+the meta-intel repository.
+
+Please submit any patches against meta-intel BSPs to the Yocto mailing
+list (yocto@yoctoproject.org).
+
+If you have problems with or questions about a particular BSP, feel
+free to contact the maintainer directly (cc:ing the Yocto mailing list
+puts it in the archive and helps other people who might have the same
+questions in the future), but please try to do the following first:
+
+  - look in the Yocto Project Bugzilla
+    (http://bugzilla.yoctoproject.org/) to see if a problem has
+    already been reported
+
+  - look through recent entries of the Yocto mailing list archives
+    (https://lists.yoctoproject.org/pipermail/yocto/) to see if other
+    people have run into similar problems or had similar questions
+    answered.
+
+Descriptions of section entries:
+
+	M: Mail patches to: FullName <address@domain>
+	F: Files and directories with wildcard patterns.
+	   A trailing slash includes all files and subdirectory files.
+	   F:	meta-crownbay/	all files in and below meta-crownbay
+	   F:	meta-crownbay/*	all files in meta-crownbay, but not below
+	   One pattern per line.  Multiple F: lines acceptable.
+
+Please keep this list in alphabetical order.
+
+Maintainers List (try to look for most precise areas first)
+
+		-----------------------------------
+
+COMMON
+M:	Tom Zanussi <tom.zanussi@intel.com>
+F:	common/recipes-bsp/grub/
+F:	common/recipes-core/
+
+CROWNBAY
+M:	Tom Zanussi <tom.zanussi@intel.com>
+F:	meta-crownbay/
+
+EMENLOW
+M:	Tom Zanussi <tom.zanussi@intel.com>
+F:	meta-emenlow/
+
+FISHRIVER
+M:	Tom Zanussi <tom.zanussi@intel.com>
+F:	meta-fishriver/
+
+JASPERFOREST
+M:	Tom Zanussi <tom.zanussi@intel.com>
+F:	meta-jasperforest/
+
+N450
+M:	Darren Hart <dvhart@linux.intel.com>
+F:	meta-n450/
+
+SUGARBAY
+M:	Tom Zanussi <tom.zanussi@intel.com>
+F:	meta-sugarbay/
+
-- 
1.7.0.4


