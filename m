Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54908E013A6;
	Sun, 11 Nov 2012 15:18:16 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Nov 2012 15:18:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,759,1344236400"; d="scan'208";a="247339346"
Received: from unknown (HELO localhost) ([10.255.12.144])
	by fmsmga002.fm.intel.com with ESMTP; 11 Nov 2012 15:18:14 -0800
From: tom.zanussi@intel.com
To: meta-intel@yoctoproject.org, yocto@yoctoproject.org,
	rahul.saxena@intel.com, kishore.k.bodke@intel.com, dvhart@linux.intel.com,
	nitin.a.kamble@intel.com, ross.burton@intel.com
Date: Sun, 11 Nov 2012 17:18:13 -0600
Message-Id: <eafe70e873312e1b893408a8157501edcf0e6415.1352667964.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1352667964.git.tom.zanussi@intel.com>
References: <cover.1352667964.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: update MAINTAINERS with meta-intel mailing list info
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
X-List-Received-Date: Sun, 11 Nov 2012 23:18:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The newly created meta-intel mailing list is where meta-intel-specific
e-mail and patches should now go.  Update MAINTAINERS with that
information.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 MAINTAINERS | 32 ++++++++++++++++++--------------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index a2231d0..d5f521b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1,26 +1,30 @@
 This file contains a list of BSP maintainers for the BSPs contained in
 the meta-intel repository.
 
-Please submit any patches against meta-intel BSPs to the Yocto mailing
-list (yocto@yoctoproject.org) and preface them with [meta-intel] in
-the Subject: line of your e-mail(s).  The latter makes it obvious that
-your patches are intended for inclusion into meta-intel and also makes
-it easier for maintainers to notice patches intended for meta-intel
-amongst all the other traffic on the Yocto mailing list.  Also, if
-your patches are available via a public git repository, please also
-include a URL to the repo and branch containing your patches as that
-makes it easier for maintainers to grab and test your patches.
+Please submit any patches against meta-intel BSPs to the meta-intel
+mailing list (meta-intel@yoctoproject.org).  Also, if your patches are
+available via a public git repository, please include a URL to the
+repo and branch containing your patches as that makes it easier for
+maintainers to grab and test your patches.
+
+The web page for users of the meta-intel mailing list is
+https://lists.yoctoproject.org/listinfo/meta-intel, where you can
+subscribe to the list (please do, especially if you intend on
+submitting patches).
 
 If you have problems with or questions about a particular BSP, feel
-free to contact the maintainer directly (cc:ing the Yocto mailing list
-puts it in the archive and helps other people who might have the same
-questions in the future), but please try to do the following first:
+free to contact the maintainer directly (cc:ing the meta-intel mailing
+list puts it in the archive and helps other people who might have the
+same questions in the future), but please try to do the following
+first:
 
   - look in the Yocto Project Bugzilla
     (http://bugzilla.yoctoproject.org/) to see if a problem has
-    already been reported
+    already been reported.
 
-  - look through recent entries of the Yocto mailing list archives
+  - look through recent entries of the meta-intel mailing list
+    archives (https://lists.yoctoproject.org/pipermail/meta-intel/)
+    and the Yocto mailing list archives
     (https://lists.yoctoproject.org/pipermail/yocto/) to see if other
     people have run into similar problems or had similar questions
     answered.
-- 
1.7.11.4


