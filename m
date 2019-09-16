Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88465E00D59; Sun, 15 Sep 2019 22:19:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33D1CE00D53
	for <yocto@yoctoproject.org>; Sun, 15 Sep 2019 22:19:56 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Sep 2019 22:19:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,510,1559545200"; d="scan'208";a="337545141"
Received: from bletchu-mobl1.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.184.21])
	by orsmga004.jf.intel.com with ESMTP; 15 Sep 2019 22:19:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 16 Sep 2019 17:19:39 +1200
Message-Id: <b46de0bfa76781b2903b8844611986df18726a2f.1568611075.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1568611075.git.paul.eggleton@linux.intel.com>
References: <cover.1568611075.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 3/3] import_layers: fix output when importing layers from scratch
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
X-List-Received-Date: Mon, 16 Sep 2019 05:19:56 -0000
Content-Transfer-Encoding: 8bit

Fixes "Importing None" message since we had not yet initialised the
layerbranch variable.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/tools/import_layers.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/layerindex/tools/import_layers.py b/layerindex/tools/import_layers.py
index 0ce31968..1e49bbdf 100755
--- a/layerindex/tools/import_layers.py
+++ b/layerindex/tools/import_layers.py
@@ -329,10 +329,10 @@ def main():
                         continue
                     logger.info('Updating %s (%d/%d)' % (layerbranch, i+1, layercount))
                 else:
-                    logger.info('Importing %s (%d/%d)' % (layerbranch, i+1, layercount))
                     layerbranch = LayerBranch()
                     layerbranch.branch = branch
                     layerbranch.layer = layer
+                    logger.info('Importing %s (%d/%d)' % (layerbranch, i+1, layercount))
 
 
                 for key, value in layerbranchjs.items():
-- 
2.20.1


