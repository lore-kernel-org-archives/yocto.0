Return-Path: <alexandrux.palalau@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16470E01602
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 09:28:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Oct 2013 09:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1014,1371106800"; d="scan'208";a="412498180"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 01 Oct 2013 09:28:45 -0700
Received: from localhost.localdomain (unknown [10.237.112.123])
	by linux.intel.com (Postfix) with ESMTP id 25CD02C8001;
	Tue,  1 Oct 2013 09:28:41 -0700 (PDT)
From: Alexandru Palalau <alexandrux.palalau@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Oct 2013 19:40:04 +0300
Message-Id: <1380645604-6411-1-git-send-email-alexandrux.palalau@intel.com>
X-Mailer: git-send-email 1.8.1.4
Cc: paul.eggleton@linux.intel.com,
	Alexandru Palalau <alexandrux.palalau@intel.com>
Subject: [PATCH] meta-yocto: Removed obsolete distros from SANITY_TESTED_DISTROS in poky.conf
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
X-List-Received-Date: Tue, 01 Oct 2013 16:28:46 -0000

Removed CentOS-6.3, Fedora-17, Debian-6.0 and Poky-1.3 from SANITY_TESTED_DISTROS.

Signed-off-by: Alexandru Palalau <alexandrux.palalau@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 4752356..465dbb9 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -72,18 +72,14 @@ CONNECTIVITY_CHECK_URIS ?= " \
              http://bugzilla.yoctoproject.org/report.cgi"
 
 SANITY_TESTED_DISTROS ?= " \
-            Poky-1.3 \n \
             Poky-1.4 \n \
             Poky-1.5 \n \
             Ubuntu-12.04 \n \
             Ubuntu-12.10 \n \
             Ubuntu-13.04 \n \
-            Fedora-17 \n \
             Fedora-18 \n \
             Fedora-19 \n \
-            CentOS-6.3 \n \
             CentOS-6.4 \n \
-            Debian-6.0 \n \
             Debian-6.0.7 \n \
             Debian-7.0 \n \
             Debian-7.1 \n \
-- 
1.8.1.4


