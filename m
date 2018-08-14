Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2E96E00B5C; Tue, 14 Aug 2018 06:32:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C2BE00ACF
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 06:32:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Aug 2018 06:32:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,238,1531810800"; d="scan'208";a="66079747"
Received: from pciunel-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.52.11])
	by orsmga006.jf.intel.com with ESMTP; 14 Aug 2018 06:32:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Aug 2018 15:32:17 +0200
Message-Id: <dafa4dc129daa4eeab5fa697d35d806a3a6ec994.1534253407.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1534253406.git.paul.eggleton@linux.intel.com>
References: <cover.1534253406.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 4/5] update: ensure that exceptions during the update process are logged
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
X-List-Received-Date: Tue, 14 Aug 2018 13:32:44 -0000

If an exception occurred during the update then we were managing to save
the update record, but we did not include the exception traceback in the
log for the update. Catch the exception and log it which ensures it gets
captured in the update record and still gets printed as well.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/layerindex/update.py b/layerindex/update.py
index 14529498..aea7cd09 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -540,6 +540,10 @@ def main():
     except KeyboardInterrupt:
         logger.info('Update interrupted, exiting')
         sys.exit(254)
+    except Exception:
+        import traceback
+        logger.error(traceback.format_exc().rstrip())
+        sys.exit(1)
     finally:
         update.log = ''.join(listhandler.read())
         update.finished = datetime.now()
-- 
2.17.1


