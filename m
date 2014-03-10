Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 980F9E00955
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 15:57:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Mar 2014 15:52:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,626,1389772800"; d="scan'208";a="497307064"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2014 15:57:26 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id B82C15F8286E; Mon, 10 Mar 2014 15:54:03 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Mar 2014 15:54:02 -0700
Message-Id: <1394492042-15116-4-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <1394492042-15116-1-git-send-email-elizabeth.flanagan@intel.com>
References: <1394492042-15116-1-git-send-email-elizabeth.flanagan@intel.com>
Subject: [AUTOBUILDER][PATCH 4/4] yoctogit.py: set workdirs in _fetch and _fullClone
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

We use _fetch and _fullClone differently than initially intended.
If you trace through the code, there are around 6 entry points
for both and workdir needs to be set specifically for our use
cases.

One case where we use fetch is doing a fetch in our source dir,
prior to us copying it over into our builddir. So,
if we are doing a copy build, we fetch first in source and then
copy (same with clone).

Otherwise, we just default out to the old fetch/fullClone behavior.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py                 | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 080f5b2..a21d22a 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -428,6 +428,15 @@ class YoctoGit(Source):
         return d
 
     def _fetch(self, _):
+        if "copy" in self.method:
+           self.workdir='source/'+self.repourl
+        else:
+            if "poky" in self.layername or \
+               "oecore" in self.layername or \
+               "eclipse" in self.layername:
+                self.workdir = "build"
+            else:
+                self.workdir = 'build/'+self.layername
         command = ['fetch', '-t', '--prune', self.repourl, '+refs/heads/' + self.branch + ':refs/remotes/' + self.branch]
         # If the 'progress' option is set, tell git fetch to output
         # progress information to the log. This can solve issues with
@@ -483,6 +492,16 @@ class YoctoGit(Source):
         """Perform full clone and checkout to the revision if specified
            In the case of shallow clones if any of the step fail abort whole build step.
         """
+        if "copy" in self.method:
+           self.workdir='source/'+self.repourl
+        else:
+            if "poky" in self.layername or \
+               "oecore" in self.layername or \
+               "eclipse" in self.layername:
+                self.workdir = "build"
+            else:
+                self.workdir = 'build/'+self.layername
+
         args = []
         if self.branch != 'HEAD':
             args += ['--branch', self.branch]
-- 
1.8.1.2


