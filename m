Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00492E00E92; Thu, 21 Dec 2017 08:33:23 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8DC3E00E92
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:22 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761479"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:21 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:25 +0200
Message-Id: <a010b7dcc954347dc2904857528ed20c032902b7.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 17/21] testimage.py: clarify what arguments are passed to class constructor
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:24 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 modules/testimage.py | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/modules/testimage.py b/modules/testimage.py
index 6c4ed2b..86e817c 100644
--- a/modules/testimage.py
+++ b/modules/testimage.py
@@ -1,4 +1,3 @@
-#!/usr/bin/env python
 # vim: set ts=4 sw=4 et:
 #
 # Copyright (c) 2015 Intel Corporation
@@ -42,13 +41,13 @@ def _pn_in_pkgs_ctx(pn, pkgs_ctx):
     return None
 
 class TestImage():
-    def __init__(self, bb, git, uh_work_dir, opts, *args, **kwargs):
+    def __init__(self, bb, git, uh_work_dir, opts, packages, image):
         self.bb = bb
         self.git = git
         self.uh_work_dir = uh_work_dir
         self.opts = opts
-        self.pkgs_ctx = args[0]['succeeded'][:]
-        self.image = args[1]
+        self.pkgs_ctx = packages['succeeded']
+        self.image = image
 
         os.environ['BB_ENV_EXTRAWHITE'] = os.environ['BB_ENV_EXTRAWHITE'] + \
             " TEST_SUITES CORE_IMAGE_EXTRA_INSTALL"
-- 
2.15.1


