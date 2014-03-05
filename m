Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CD01E00A80
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:50 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:26:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="486606550"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 10:26:49 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id D1C875F82A7A; Wed,  5 Mar 2014 10:23:30 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:22:55 -0800
Message-Id: <fa02e553fc005efd1a7aecb53a48c59a70c3a7b1.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 04/27] PrepPkgIndex.py: ln instead of cp
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
X-List-Received-Date: Wed, 05 Mar 2014 18:26:51 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

Since pkgindex is no longer using flock() this should be safe now.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/PrepPkgIndex.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PrepPkgIndex.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PrepPkgIndex.py
index 3b2591e..1b41927 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PrepPkgIndex.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PrepPkgIndex.py
@@ -37,9 +37,9 @@ class PrepPkgIndex(ShellCommand):
         RPM_PUBLISH_DIR = os.environ.get("RPM_PUBLISH_DIR")
         IPK_PUBLISH_DIR = os.environ.get("IPK_PUBLISH_DIR")
         # Work around for #4186
-	command = "rm -rf ipk; cp -R " + DEST + "/" + IPK_PUBLISH_DIR + " ipk;"
-#        command = "rm -rf ipk; ln -s " + DEST + "/" + IPK_PUBLISH_DIR + " ipk;"
-#        command = command + "rm -rf rpm; ln -s " + DEST + "/" + RPM_PUBLISH_DIR + " rpm"
+	#command = "rm -rf ipk; cp -R " + DEST + "/" + IPK_PUBLISH_DIR + " ipk;"
+        command = "rm -rf ipk; ln -s " + DEST + "/" + IPK_PUBLISH_DIR + " ipk;"
+        #command = command + "rm -rf rpm; ln -s " + DEST + "/" + RPM_PUBLISH_DIR + " rpm"
         self.command = command
         ShellCommand.start(self)
 
-- 
1.8.1.2


