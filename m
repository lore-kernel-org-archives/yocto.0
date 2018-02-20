Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C071EE00F22; Mon, 19 Feb 2018 19:46:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4527EE00D6D
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 19:46:39 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Feb 2018 19:46:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,537,1511856000"; d="scan'208";a="28405908"
Received: from ngorski-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.160.197])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2018 19:46:36 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Feb 2018 16:45:53 +1300
Message-Id: <20180220034558.14341-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
Subject: [layerindex-web][PATCH 1/6] update.py: fix Ctrl+C behaviour
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
X-List-Received-Date: Tue, 20 Feb 2018 03:46:40 -0000

If the user hit Ctrl+C during the initial info gathering then it didn't
break out of the loop in update.py, so you had to hit Ctrl+C for as many
layers as were involved in the update. Look for exit code 254 from
update_layer.py and stop if it is returned since that indicates Ctrl+C
has been used.

Additionally, ensure we return exit code 254 and print a message from
the main update script when it is interrupted in this way.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update.py | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index 5c83b00..f60b943 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -337,7 +337,11 @@ def main():
                     logger.debug('Running layer update command: %s' % cmd)
                     ret, output = run_command_interruptible(cmd)
                     logger.debug('output: %s' % output)
-                    if ret != 0:
+                    if ret == 254:
+                        # Interrupted by user, break out of loop
+                        logger.info('Update interrupted, exiting')
+                        sys.exit(254)
+                    elif ret != 0:
                         continue
                     col = re.search("^BBFILE_COLLECTIONS = \"(.*)\"", output, re.M).group(1) or ''
                     ver = re.search("^LAYERVERSION = \"(.*)\"", output, re.M).group(1) or ''
@@ -418,10 +422,14 @@ def main():
 
                     if ret == 254:
                         # Interrupted by user, break out of loop
-                        break
+                        logger.info('Update interrupted, exiting')
+                        sys.exit(254)
         finally:
             utils.unlock_file(lockfile)
 
+    except KeyboardInterrupt:
+        logger.info('Update interrupted, exiting')
+        sys.exit(254)
     finally:
         update.log = ''.join(listhandler.read())
         update.finished = datetime.now()
-- 
2.14.3


