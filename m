Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95874E01136; Tue, 26 Jun 2018 00:05:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5CDEE01134
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2018 00:05:28 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jun 2018 00:05:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,273,1526367600"; d="scan'208";a="211191696"
Received: from aaronchu-mobl1.png.intel.com ([10.221.17.73])
	by orsmga004.jf.intel.com with ESMTP; 26 Jun 2018 00:05:26 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Date: Tue, 26 Jun 2018 15:05:23 +0800
Message-Id: <1529996723-14506-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] Fix syntax load config.json clobber buildStep
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
X-List-Received-Date: Tue, 26 Jun 2018 07:05:29 -0000

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config.json        | 5 ++---
 janitor/clobberdir | 3 +--
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/config.json b/config.json
index ecfca51..c9dc21e 100644
--- a/config.json
+++ b/config.json
@@ -8,15 +8,14 @@
     "BUILD_HISTORY_DIRECTPUSH" : ["poky:morty", "poky:pyro", "poky:rocko", "poky:master"],
     "BUILD_HISTORY_FORKPUSH" : {"poky-contrib:ross/mut" : "poky:master", "poky:master-next" : "poky:master"},
 
-    "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
-    "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
+    "REPO_STASH_DIR" : "/git/mirror",
+    "TRASH_DIR" : "/git/trash",
 
     "QAMAIL_TO" : "richard.purdie@linuxfoundation.org",
     "QAMAIL_TO1" : "yocto@yoctoproject.org",
     "QAMAIL_CC1" : "pidge@toganlabs.com, otavio@ossystems.com.br, yi.zhao@windriver.com, tracy.graydon@intel.com, joshua.g.lock@intel.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, rebecca.swee.fun.chang@intel.com, chin.huat.ang@intel.com",
     "WEBPUBLISH_DIR" : "${BASE_SHAREDDIR}/",
     "WEBPUBLISH_URL" : "https://autobuilder.yocto.io/",
-
     "defaults" : {
         "NEEDREPOS" : ["poky"],
         "DISTRO" : "poky",
diff --git a/janitor/clobberdir b/janitor/clobberdir
index 5dab5af..73ec87c 100755
--- a/janitor/clobberdir
+++ b/janitor/clobberdir
@@ -19,7 +19,6 @@ import utils
 
 ourconfig = utils.loadconfig()
 
-
 def mkdir(path):
     try:
         os.makedirs(path)
@@ -43,7 +42,7 @@ if "TRASH_DIR" not in ourconfig:
     print("Please set TRASH_DIR in the configuration file")
     sys.exit(1)
 
-trashdir = ourconfig["TRASH_DIR"]
+trashdir = ourconfig["BASE_HOMEDIR"] + ourconfig["TRASH_DIR"]
 
 for x in [clobberdir]:
     if os.path.exists(x):
-- 
2.7.4


