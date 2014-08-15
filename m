Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8495E00769; Fri, 15 Aug 2014 02:49:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAE58E0034B
	for <yocto@yoctoproject.org>; Fri, 15 Aug 2014 02:48:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Aug 2014 02:48:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,869,1400050800"; d="scan'208";a="588521282"
Received: from kmoriart-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.210])
	by orsmga002.jf.intel.com with ESMTP; 15 Aug 2014 02:48:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Aug 2014 10:48:41 +0100
Message-Id: <c4fd54cb38ce4dcbf94661eedd1612b05d930180.1408096074.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1408096074.git.paul.eggleton@linux.intel.com>
References: <cover.1408096074.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1408096074.git.paul.eggleton@linux.intel.com>
References: <cover.1408096074.git.paul.eggleton@linux.intel.com>
Subject: [auh][PATCH 1/4] Add ability to set machines in config file
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
X-List-Received-Date: Fri, 15 Aug 2014 09:49:00 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README           | 2 ++
 upgradehelper.py | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 74a8ecc..c43fa5e 100644
--- a/README
+++ b/README
@@ -41,6 +41,8 @@ clean_sstate=yes
 clean_tmp=yes
 # keep previous commits or not
 drop_previous_commits=yes
+# machines to test build with
+machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
 --------------- snip ---------------
 
 3. Enable distrodata and supply appropriate additional metadata. For
diff --git a/upgradehelper.py b/upgradehelper.py
index cc90958..2429897 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -130,7 +130,7 @@ class Updater(object):
         self.skip_compilation = skip_compilation
         self.interactive = not auto_mode
 
-        self.machines = ["qemux86", "qemux86-64", "qemuarm", "qemumips", "qemuppc"]
+        self.machines = settings.get('machines', 'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
 
         self.upgrade_steps = [
             (self._create_workdir, None),
-- 
1.9.3


