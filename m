Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E06AE00F58; Mon,  2 Jul 2018 16:01:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED369E010A2
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 16:00:59 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 16:00:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,300,1526367600"; d="scan'208";a="52165205"
Received: from nmunfye-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.64.227])
	by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2018 16:00:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue,  3 Jul 2018 10:58:50 +1200
Message-Id: <4fdb8a6bb5c3fc11a48d93d1b18b30bfb3fa563c.1530569567.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1530569567.git.paul.eggleton@linux.intel.com>
References: <cover.1530569567.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 6/7] utils: fix missing dependency logic in _add_dependency()
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
X-List-Received-Date: Mon, 02 Jul 2018 23:01:04 -0000

* If a missing dependency is not required, show a warning instead of an
  error
* If logger isn't specified we still need to skip to the next item, so
  move the continue statement out of the conditional block. (In practice
  I don't think this function is currently called anywhere in the code
  without a logger specified, but let's fix it anyway).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/utils.py | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index f8c5fd45..8f652da7 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -140,8 +140,11 @@ def _add_dependency(var, name, layerbranch, config_data, logger=None, required=T
         # No layer found.
         if not dep_layer:
             if logger:
-                logger.error('Cannot resolve %s %s (version %s) for %s' % (name, dep, ver_str, layer_name))
-                continue
+                if required:
+                    logger.error('Cannot resolve %s %s (version %s) for %s' % (name, dep, ver_str, layer_name))
+                else:
+                    logger.warning('Cannot resolve %s %s (version %s) for %s' % (name, dep, ver_str, layer_name))
+            continue
 
         # Preparing to remove obsolete ones
         if need_remove:
-- 
2.17.1


