Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24E6AE00B4C
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475934755"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id C5AE25F825B8; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:18 -0700
Message-Id: <8d93ef4c37de2b81bde457d38724a9bc1ebd59cc.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 20/22] yocto-start-autobuilder: Make sure janitor logging goes to a log file
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
X-List-Received-Date: Wed, 19 Mar 2014 20:58:14 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Currently logging from the janitor gets lost. Ensure it gets to a log
file instead including anything to stderr.
---
 yocto-start-autobuilder | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/yocto-start-autobuilder b/yocto-start-autobuilder
index b34a60d..74e3a13 100755
--- a/yocto-start-autobuilder
+++ b/yocto-start-autobuilder
@@ -79,7 +79,7 @@ if os.path.isfile(os.path.join(AB_BASE, ".setupdone")):
         os.chdir(AB_BASE)
         if os.environ["OPTIMIZED_GIT_CLONE"] == "True":
             os.chdir(AB_BASE)
-            subprocess.Popen("python bin/buildslave-janitor " + os.path.join(AB_BASE, "config/autobuilder.conf"), 
+            subprocess.Popen("python bin/buildslave-janitor " + os.path.join(AB_BASE, "config/autobuilder.conf") + ">> yocto-slave/janitor.log 2>&1", 
                            shell=True, stdin=None, 
                            stdout=None, stderr=None, 
                            close_fds=True)
-- 
1.8.1.2


