Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E2B3E00B47
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475935036"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 7E0E75F82A4A; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:14 -0700
Message-Id: <5ab98a5ab4e8d1fa26b88df432f71557923f6b46.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 16/22] yoctogit.py: Set workdir within dovccmd
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

From: Beth Flanagan <elizabeth.flanagan@intel.com>

Ensure we're in the correct place by setting workdir in dovccmd.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index c739d7d..6990abe 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -376,6 +376,10 @@ class YoctoGit(Source):
                 full_command.append('-c')
                 full_command.append('%s=%s' % (name, value))
         full_command.extend(command)
+        if self.method in ['barecopy', 'movecopy']:
+            self.workdir='source/'+self.repourl
+        else:
+            self.workdir = 'build'
         cmd = buildstep.RemoteShellCommand(self.workdir,
                                            full_command,
                                            env=self.env,
-- 
1.8.1.2


