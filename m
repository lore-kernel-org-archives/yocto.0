Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6758FE00DCE; Mon,  2 Jul 2018 03:30:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E009E00DC6
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 03:30:21 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 03:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,298,1526367600"; d="scan'208";a="51396571"
Received: from aaronchu-mobl1.png.intel.com ([10.221.22.199])
	by fmsmga007.fm.intel.com with ESMTP; 02 Jul 2018 03:30:19 -0700
From: Aaron Chan <aaron.chun.yew.chan@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@yoctoproject.org
Date: Mon,  2 Jul 2018 18:30:06 +0800
Message-Id: <1530527406-24675-2-git-send-email-aaron.chun.yew.chan@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1530527406-24675-1-git-send-email-aaron.chun.yew.chan@intel.com>
References: <1530527406-24675-1-git-send-email-aaron.chun.yew.chan@intel.com>
Cc: Aaron Chan <aaron.chun.yew.chan@intel.com>
Subject: [PATCH 2/2] [yocto-ab-helper] utils.py: Resolved unicode data expansion
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
X-List-Received-Date: Mon, 02 Jul 2018 10:30:22 -0000

A patch to fix the data expansion config.json

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 scripts/utils.py | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index 7c6535c..d26cd0c 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -142,6 +142,22 @@ def loadconfig():
             else:
                 ourconfig[c][x] = config[c][x]
 
+    def resolvexp(pattern, config, c):
+        try:
+            strMatch = re.compile(pattern)
+            expansion = strMatch.match(config[c]).group(1)
+            reference = strMatch.match(config[c]).group(2)
+            if reference:
+                ourconfig[c] = config[c].replace(expansion, config[reference])
+        except:
+            pass
+
+    def handlestr(config, ourconfig, c):
+        if not c in ourconfig:
+            ourconfig[c] = config[c]
+        if isinstance(config[c], str):
+            resolvexp(r"(\${(.+)})", config, c)
+        
     ourconfig = {}
     for f in files.split():
         p = f
-- 
2.7.4


