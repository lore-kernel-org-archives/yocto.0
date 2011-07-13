Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0CE94C80AE6
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 21:32:34 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jul 2011 19:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,523,1304319600"; d="scan'208";a="29662684"
Received: from unknown (HELO scimitar.amr.corp.intel.com) ([10.255.13.215])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jul 2011 19:32:33 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Jul 2011 19:32:27 -0700
Message-Id: <b8158bd7aceae1fd2ade1ec15c9f508b9aeebfa0.1310524088.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1310524088.git.josh@linux.intel.com>
References: <cover.1310524088.git.josh@linux.intel.com>
In-Reply-To: <cover.1310524088.git.josh@linux.intel.com>
References: <cover.1310524088.git.josh@linux.intel.com>
Subject: [PATCH 1/1] local.conf.sample: add CONNECTIVITY_CHECK_URIS
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
X-List-Received-Date: Wed, 13 Jul 2011 02:32:34 -0000

Add CONNECTIVITY_CHECK_URIS to run the network connectivity sanity test for
http, https and git sources.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index ea32b81..fb20f2c 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -214,3 +214,11 @@ NO32LIBS = "1"
 # The network based PR service host and port
 #PRSERV_HOST = "localhost"
 #PRSERV_PORT = "8585"
+
+# Use the following URI's to test whether we can succesfully fetch from the
+# network (and warn you if not). This test will be run each time a new build
+# directory is specfied, if you wish to disable it delete or comment out the
+# following few lines that define CONNECTIVITY_CHECK_URIS.
+CONNECTIVITY_CHECK_URIS = "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
+			   https://eula-downloads.yoctoproject.org/index.php \
+			   http://bugzilla.yoctoproject.org/report.cgi"
-- 
1.7.6


