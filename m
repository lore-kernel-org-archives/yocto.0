Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ED66E007DD; Wed, 13 Aug 2014 06:29:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 593A8E007D5
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 06:29:25 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Aug 2014 06:29:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="371867236"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2014 06:26:04 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Aug 2014 16:32:07 +0300
Message-Id: <1407936728-15722-7-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
References: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
Subject: [PATCH 6/7] Fix adding new files to recipe bug
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
X-List-Received-Date: Wed, 13 Aug 2014 13:29:27 -0000

The upgrade failed when new files were added to the recipe and
the compilation was made for multiple machines. Now this problem
has been fixed.

Signed-off-by: Marius Avram <marius.avram@intel.com>
---
 recipe.py |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/recipe.py b/recipe.py
index e6430cd..8ecd2a2 100644
--- a/recipe.py
+++ b/recipe.py
@@ -452,11 +452,15 @@ class Recipe(object):
           "/usr/lib/opie"   : "palmqtdir",
         }
 
+        I(" %s: Add new files in recipe ..." %  self.env['PN'])
         with open(package_log) as log:
             for line in log:
                 if re.match(".*Files/directories were installed but not shipped.*", line):
                     files_not_shipped = True
+                # Extract path
                 line = line.strip()
+                if line:
+                    line = line.split()[0]
                 if files_not_shipped and os.path.isabs(line):
                     # Count occurences for globbing
                     path_exists = False
@@ -587,6 +591,7 @@ class Recipe(object):
             self.git.delete_branch("remove_patches")
             self.git.reset_hard()
             self.git.reset_soft(1)
+            self.removed_patches = False
 
     def compile(self, machine):
         try:
@@ -597,6 +602,7 @@ class Recipe(object):
                 self.git.delete_branch("remove_patches")
                 self.git.reset_soft(1)
                 self.commit_msg += self.rm_patches_msg + "\n"
+                self.removed_patches = False
         except Error as e:
             if self._is_incompatible_host(e.stdout):
                 W(" %s: compilation failed: incompatible host" % self.env['PN'])
-- 
1.7.9.5


