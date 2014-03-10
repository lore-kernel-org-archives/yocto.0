Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88B47E008FA
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 15:57:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Mar 2014 15:52:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,626,1389772800"; d="scan'208";a="497307063"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2014 15:57:26 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id A64BD5F82989; Mon, 10 Mar 2014 15:54:03 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Mar 2014 15:54:01 -0700
Message-Id: <1394492042-15116-3-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <1394492042-15116-1-git-send-email-elizabeth.flanagan@intel.com>
References: <1394492042-15116-1-git-send-email-elizabeth.flanagan@intel.com>
Subject: [AUTOBUILDER][PATCH 3/4] yoctogit.py: movecopy needs an incremental callback
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
X-List-Received-Date: Mon, 10 Mar 2014 22:57:29 -0000

We need to do an incremental before we copy or else, we're
essentially copying nothing.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py           | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 25e5308..080f5b2 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -322,6 +322,7 @@ class YoctoGit(Source):
         else:
             todir = "build/" + self.layername
             self.workdir = 'source/'+self.repourl
+        d.addCallback(lambda _: self.incremental())
 
         def copy(_):
             cmd = buildstep.RemoteCommand('cpdir',
-- 
1.8.1.2


