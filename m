Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F589E00A38; Tue, 14 Aug 2018 06:32:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B98AE00A38
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:32:37 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Aug 2018 06:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,238,1531810800"; d="scan'208";a="66079741"
Received: from pciunel-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.52.11])
	by orsmga006.jf.intel.com with ESMTP; 14 Aug 2018 06:32:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Aug 2018 15:32:15 +0200
Message-Id: <74ea84f6963bf6b730842d01b41ed0b5193e292b.1534253407.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1534253406.git.paul.eggleton@linux.intel.com>
References: <cover.1534253406.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/5] update_layer: improve exception handling
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
X-List-Received-Date: Tue, 14 Aug 2018 13:32:37 -0000

When an exception occurs during the main part of update_layer, we were
catching and printing it but that's not enough - we need to do the
following as well:

* Use logger.error() to print the exception information, so that it gets
  logged and highlighted as an error in the layer update
* Exit with a non-zero return code so that update.py knows it has failed

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update_layer.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 2b39e8ef..d9c93360 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -808,7 +808,8 @@ def main():
         pass
     except:
         import traceback
-        traceback.print_exc()
+        logger.error(traceback.format_exc().rstrip())
+        sys.exit(1)
     finally:
         if tinfoil and (LooseVersion(bb.__version__) > LooseVersion("1.27")):
             tinfoil.shutdown()
-- 
2.17.1


