Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F84BE007C2; Wed, 13 Aug 2014 06:29:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CCD8E007D3
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 06:29:24 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Aug 2014 06:29:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="371867227"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2014 06:26:03 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Aug 2014 16:32:06 +0300
Message-Id: <1407936728-15722-6-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
References: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
Subject: [PATCH 5/7] Info messages start with upper case
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

For consistency sake I modified all the messages to start with
upper case.

Signed-off-by: Marius Avram <marius.avram@intel.com>
---
 recipe.py        |    2 +-
 upgradehelper.py |    6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipe.py b/recipe.py
index a495b49..e6430cd 100644
--- a/recipe.py
+++ b/recipe.py
@@ -388,7 +388,7 @@ class Recipe(object):
                 W(" %s: license checksum failed for file %s."
                   " The recipe has been updated! Diff file located at %s" %
                   (self.env['PN'], license_file, self.license_diff_file))
-                I(" recompiling ...")
+                I(" Recompiling ...")
                 self.commit_msg += "License checksum changed for file " + license_file
                 return True
 
diff --git a/upgradehelper.py b/upgradehelper.py
index ef59661..27de760 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -367,20 +367,20 @@ class Updater(object):
             attempted_pkgs += 1
             I(" ATTEMPT PACKAGE %d/%d" % (attempted_pkgs, total_pkgs))
             try:
-                I(" %s: upgrading to %s" % (self.pn, self.new_ver))
+                I(" %s: Upgrading to %s" % (self.pn, self.new_ver))
                 for step, msg in self.upgrade_steps:
                     if msg is not None:
                         I(" %s: %s" % (self.pn, msg))
                     step()
 
-                I(" %s: upgrade SUCCESSFUL! Please test!" % self.pn)
+                I(" %s: Upgrade SUCCESSFUL! Please test!" % self.pn)
                 error = None
             except UpgradeNotNeededError as e:
                 I(" %s: %s" % (self.pn, e.message))
                 error = e
             except Error as e:
                 E(" %s: %s" % (self.pn, e.message))
-                E(" %s: upgrade FAILED! Logs and/or file diffs are available in %s" % (self.pn, self.workdir))
+                E(" %s: Upgrade FAILED! Logs and/or file diffs are available in %s" % (self.pn, self.workdir))
                 error = e
 
             self._commit_changes()
-- 
1.7.9.5


