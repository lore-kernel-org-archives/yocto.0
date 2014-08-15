Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A367E004F2; Fri, 15 Aug 2014 02:49:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAEC7E004DD
	for <yocto@yoctoproject.org>; Fri, 15 Aug 2014 02:48:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Aug 2014 02:48:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,869,1400050800"; d="scan'208";a="588521289"
Received: from kmoriart-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.210])
	by orsmga002.jf.intel.com with ESMTP; 15 Aug 2014 02:48:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Aug 2014 10:48:42 +0100
Message-Id: <aa0583aff28aa1b09f5d2c085960063304b16c47.1408096074.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1408096074.git.paul.eggleton@linux.intel.com>
References: <cover.1408096074.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1408096074.git.paul.eggleton@linux.intel.com>
References: <cover.1408096074.git.paul.eggleton@linux.intel.com>
Subject: [auh][PATCH 2/4] Simply config file option reading
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
X-List-Received-Date: Fri, 15 Aug 2014 09:49:01 -0000

It's much easier to use .get() rather than checking if the item is in
the dict; you can also specify a default value.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 upgradehelper.py | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 2429897..44b394a 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -495,11 +495,11 @@ class UniverseUpdater(Updater, Email):
         self.git.create_branch("upgrades")
 
     def prepare(self):
-        if "clean_sstate" in settings and settings["clean_sstate"] == "yes" and \
+        if settings.get("clean_sstate", "no") == "yes" and \
                 os.path.exists(os.path.join(get_build_dir(), "sstate-cache")):
             I(" Removing sstate directory ...")
             shutil.rmtree(os.path.join(get_build_dir(), "sstate-cache"))
-        if "clean_tmp" in settings and settings["clean_tmp"] == "yes" and \
+        if settings.get("clean_tmp", "no") == "yes" and \
                 os.path.exists(os.path.join(get_build_dir(), "tmp")):
             I(" Removing tmp directory ...")
             shutil.rmtree(os.path.join(get_build_dir(), "tmp"))
@@ -580,8 +580,7 @@ class UniverseUpdater(Updater, Email):
         # drop last upgrade from git. It's safer this way if the upgrade has
         # problems and other recipes depend on it. Give the other recipes a
         # chance...
-        if ("drop_previous_commits" in settings and
-                settings["drop_previous_commits"] == "yes" and
+        if (settings.get("drop_previous_commits", "no") == "yes" and
                 err is None) or (err is not None and self.patch_file is not None):
             I(" %s: Dropping changes from git ..." % self.pn)
             self.git.reset_hard(1)
-- 
1.9.3


