Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga14.intel.com (unknown [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A59B6E00975
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 15:57:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 10 Mar 2014 15:57:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,626,1389772800"; d="scan'208";a="489405436"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2014 15:57:26 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 9A57E5F825AC; Mon, 10 Mar 2014 15:54:03 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Mar 2014 15:54:00 -0700
Message-Id: <1394492042-15116-2-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <1394492042-15116-1-git-send-email-elizabeth.flanagan@intel.com>
References: <1394492042-15116-1-git-send-email-elizabeth.flanagan@intel.com>
Subject: [AUTOBUILDER][PATCH 2/4] yoctogit.py: movecopy doesn't care if it's updateable
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

movecopy really shouldn't care if it's updatable or not. It should
have an incremental callback in it to take care of that (it doesn't
though, which is part of the problem!)

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 487e286..25e5308 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -184,7 +184,7 @@ class YoctoGit(Source):
         elif self.method == 'barecopy':
             yield self.barecopy()
             return
-        elif updatable and self.method == 'movecopy':
+        elif self.method == 'movecopy':
             yield self.movecopy()
             return
 
-- 
1.8.1.2


