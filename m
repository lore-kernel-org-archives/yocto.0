Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 626204C803E4
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 13:07:31 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Jul 2011 11:07:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,526,1304319600"; d="scan'208";a="29946348"
Received: from unknown (HELO scimitar.amr.corp.intel.com) ([10.255.14.33])
	by fmsmga001.fm.intel.com with ESMTP; 13 Jul 2011 11:07:30 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jul 2011 11:07:24 -0700
Message-Id: <123dff0c787b52a3d93a5f4f46df9d0b61071451.1310580346.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1310580346.git.josh@linux.intel.com>
References: <cover.1310580346.git.josh@linux.intel.com>
In-Reply-To: <cover.1310580346.git.josh@linux.intel.com>
References: <cover.1310580346.git.josh@linux.intel.com>
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
X-List-Received-Date: Wed, 13 Jul 2011 18:07:31 -0000

Add CONNECTIVITY_CHECK_URIS to run the network connectivity sanity test for
http, https and git sources.

The variable is soft-assigned so that it's easily overrideable.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 1ae94a0..679bef6 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -48,4 +48,9 @@ http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
 https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"
 
 
-
+# The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
+# fetch from the network (and warn you if not). To disable the test set
+# the variable to be empty.
+CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
+			   https://eula-downloads.yoctoproject.org/index.php \
+			   http://bugzilla.yoctoproject.org/report.cgi"
-- 
1.7.6


