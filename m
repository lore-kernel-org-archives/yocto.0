Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8680EE01139; Mon,  2 Jul 2018 18:44:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13809E00E36
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 18:44:49 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 18:44:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,301,1526367600"; d="scan'208";a="51568720"
Received: from aaronchu-mobl1.png.intel.com ([10.221.22.199])
	by fmsmga007.fm.intel.com with ESMTP; 02 Jul 2018 18:44:47 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Date: Tue,  3 Jul 2018 09:44:44 +0800
Message-Id: <1530582284-6467-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-ab-helper] utils.py: Resolved unicode data expansion
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
X-List-Received-Date: Tue, 03 Jul 2018 01:44:50 -0000

Updated patch to trigger handlestr() when unicode string is found
during iteration json.loads(config.json). Unicode and list with data
expansion were not handled hence adding this patch to handle conversion.
Added a debug message to dump pretty json data populated to ourconfig[c].

e.g "REPO_STASH_DIR" read as ${BASE_HOMEDIR}/git/mirror, where it should be
    "REPO_STASH_DIR" as /home/pokybuild/git/mirror

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 scripts/utils.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index d26cd0c..32caa4f 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -152,11 +152,13 @@ def loadconfig():
         except:
             pass
 
-    def handlestr(config, ourconfig, c):
+    def handlestr(config, ourconfig, c, debug=False):
         if not c in ourconfig:
             ourconfig[c] = config[c]
         if isinstance(config[c], str):
             resolvexp(r"(\${(.+)})", config, c)
+        if debug:
+            print(json.dumps(ourconfig[c], indent=4, sort_keys=True))
         
     ourconfig = {}
     for f in files.split():
@@ -168,6 +170,8 @@ def loadconfig():
             for c in config:
                 if isinstance(config[c], dict):
                     handledict(config, ourconfig, c)
+                elif isinstance(config[c], str):
+                    handlestr(config, ourconfig, c)
                 else:
                     ourconfig[c] = config[c]
 
-- 
2.7.4


