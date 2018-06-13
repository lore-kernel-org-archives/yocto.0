Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65F44E02DD5; Wed, 13 Jun 2018 00:08:13 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 134BDE01B72
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 00:08:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jun 2018 00:08:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,217,1526367600"; d="scan'208";a="237012237"
Received: from aaronchu-mobl1.png.intel.com ([10.221.23.106])
	by fmsmga006.fm.intel.com with ESMTP; 13 Jun 2018 00:08:11 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jun 2018 15:07:58 +0800
Message-Id: <1528873678-17502-1-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH] [yocto-autobuilder2] Add support to enable Manual BSP on LAVA
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
X-List-Received-Date: Wed, 13 Jun 2018 07:08:13 -0000

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 config.py     | 9 +++++++++
 schedulers.py | 9 +++++++--
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/config.py b/config.py
index 2568768..d21948f 100644
--- a/config.py
+++ b/config.py
@@ -80,3 +80,12 @@ builder_to_workers = {
     "nightly-deb-non-deb": [],
     "default": workers
 }
+
+# Supported LAVA-Linaro on Yocto Project 
+# Enable Automated Manual(Hardware) BSP Test case(s)
+enable_hw_test = {
+    "enable": False,
+    "lava_user"   : "<Specify a valid user connected to LAVA-server>",
+    "lava_token"  : "<Specify token generated from LAVA profile>",
+    "lava_server" : "<Specify LAVA-server URL <server>:<port>"
+}
diff --git a/schedulers.py b/schedulers.py
index 8f3dbc5..2c1b8e1 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -63,9 +63,14 @@ def props_for_builder(builder):
         props.append(util.BooleanParameter(
             name="deploy_artifacts",
             label="Do we want to deploy artifacts? ",
-            default=Boolean
+            default=False
+        ))
+    if builder in ['nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-arm', 'nightly-arm-lsb', 'nightly-arm64']:
+        props.append(util.BooleanParameter(
+            name="enable_hw_test",
+            label="Enable BSP Test case(s) on Hardware?",
+            default=config.enable_hw_test['enable']
         ))
-
     props = props + repos_for_builder(builder)
     return props
 
-- 
2.7.4


