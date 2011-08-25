Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1B50E0120D
	for <yocto@yoctoproject.org>; Thu, 25 Aug 2011 10:16:04 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 25 Aug 2011 10:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,281,1312182000"; d="scan'208";a="11059299"
Received: from unknown (HELO scimitar.amr.corp.intel.com) ([10.255.13.243])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Aug 2011 10:16:02 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Aug 2011 10:15:55 -0700
Message-Id: <0ca0975a1895796bc921a9340897220ba77581af.1314288840.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1314288840.git.josh@linux.intel.com>
References: <cover.1314288840.git.josh@linux.intel.com>
In-Reply-To: <cover.1314288840.git.josh@linux.intel.com>
References: <cover.1314288840.git.josh@linux.intel.com>
Subject: [PATCH 1/1] poky.conf: perform network sanity check by default for poky distros
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
X-List-Received-Date: Thu, 25 Aug 2011 17:16:05 -0000

Add CONNECTIVITY_CHECK_URIS to run the network connectivity sanity test for
http, https and git sources.

The variable is soft-assigned so that it's easily overrideable.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index c5fc3b9..46b22f4 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -54,5 +54,10 @@ ftp://.*/.*      http://autobuilder.yoctoproject.org/sources/ \n \
 http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
 https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"
 
-
+# The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
+# fetch from the network (and warn you if not). To disable the test set
+# the variable to be empty.
+CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
+                          https://eula-downloads.yoctoproject.org/index.php \
+                          http://bugzilla.yoctoproject.org/report.cgi"
 
-- 
1.7.6


