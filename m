Return-Path: <alexandrux.palalau@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96FDDE015BD
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 02:15:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Sep 2013 02:12:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,977,1371106800"; d="scan'208";a="408997602"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 25 Sep 2013 02:15:29 -0700
Received: from localhost.localdomain (unknown [10.237.112.121])
	by linux.intel.com (Postfix) with ESMTP id C60A32C8001;
	Wed, 25 Sep 2013 02:15:26 -0700 (PDT)
From: Alexandru Palalau <alexandrux.palalau@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Sep 2013 12:16:54 +0300
Message-Id: <1380100614-15516-1-git-send-email-alexandrux.palalau@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Alexandru Palalau <alexandrux.palalau@intel.com>, paul.eggleton@intel.com
Subject: [meta-yocto][PATCH] meta-yocto: updated SANITY_TESTED_DISTROS in poky.conf
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
X-List-Received-Date: Wed, 25 Sep 2013 09:15:30 -0000

Added Fedora-19 and Debian-6.0.7 to SANITY_TESTED_DISTROS.
No more warnings regarding sanity for these two host distros

Signed-off-by: Alexandru Palalau <alexandrux.palalau@intel.com>
---
 meta-yocto/conf/distro/poky.conf | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 269ce8a..4752356 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -80,14 +80,16 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-13.04 \n \
             Fedora-17 \n \
             Fedora-18 \n \
+            Fedora-19 \n \
             CentOS-6.3 \n \
             CentOS-6.4 \n \
             Debian-6.0 \n \
+            Debian-6.0.7 \n \
             Debian-7.0 \n \
             Debian-7.1 \n \
             SUSE-LINUX-12.2 \n \
             openSUSE-project-12.3 \n \
-	    "
+            "
 
 # Default hash policy for distro
 BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
-- 
1.7.11.7


