Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79373E00AAB
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:10 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="467200414"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 10:26:51 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 9140A5F82A4A; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:14 -0800
Message-Id: <3536c6d9fa2f67de7dce6838b45f599e5c1da8fa.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 23/27] BuildEclipsePlugin.py: Change location of build.
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:10 -0000

Now that yoctogit is checking this out in the right place, change
where we look for setup.sh
---
 .../site-packages/autobuilder/buildsteps/BuildEclipsePlugin.py          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildEclipsePlugin.py b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildEclipsePlugin.py
index bc5d9b3..c06f569 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/BuildEclipsePlugin.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/BuildEclipsePlugin.py
@@ -40,7 +40,7 @@ class BuildEclipsePlugin(ShellCommand):
         buildername=self.getProperty("buildername")
         oldbuildername=buildername.replace("plugin", "poky")
         branch=self.getProperty("branch")
-        eclipsehome=self.slaveworkdir + "/" + buildername + '/build/' + oldbuildername
+        eclipsehome=self.slaveworkdir + "/" + buildername + '/build'
         self.command='cd ' + eclipsehome + '/scripts/; ./setup.sh; ECLIPSE_HOME="' + eclipsehome + '/scripts/eclipse" ./build.sh ' + branch + ' development'
         ShellCommand.start(self)
 
-- 
1.8.1.2


