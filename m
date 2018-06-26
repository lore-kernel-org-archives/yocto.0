Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 616D6E007AD; Mon, 25 Jun 2018 18:42:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F6ADE007AD
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2018 18:42:36 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Jun 2018 18:42:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,272,1526367600"; d="scan'208";a="51883174"
Received: from aaronchu-mobl1.png.intel.com ([10.221.17.73])
	by orsmga007.jf.intel.com with ESMTP; 25 Jun 2018 18:42:34 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Date: Tue, 26 Jun 2018 09:42:31 +0800
Message-Id: <1529977351-7738-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-autobuilder2] Set ABHELPER_JSON on shared-repo-unpack, run-config buildStep
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
X-List-Received-Date: Tue, 26 Jun 2018 01:42:38 -0000

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 builders.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/builders.py b/builders.py
index 4b6ee9e..0ebe562 100644
--- a/builders.py
+++ b/builders.py
@@ -142,6 +142,7 @@ def create_builder_factory():
                  util.Property("buildername"),
                  util.Property("is_release")],
         haltOnFailure=True,
+        env={'ABHELPER_JSON' : 'config.json config-intel-lava.json'},
         name="Unpack shared repositories"))
 
     f.addStep(steps.SetPropertyFromCommand(command=util.Interpolate("cd %(prop:sharedrepolocation)s/poky; git rev-parse HEAD"),
@@ -160,6 +161,7 @@ def create_builder_factory():
                  get_publish_dest,
                  util.URLForBuild],
         name="run-config",
+        env={'ABHELPER_JSON' : '../config.json config-intel-lava.json'},
         timeout=16200))  # default of 1200s/20min is too short, use 4.5hrs
     return f
 
-- 
2.7.4


