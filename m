Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B011E00C56; Fri,  7 Oct 2016 08:57:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1AC4E00CB4
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u97FvRIg011622
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 7 Oct 2016 08:57:28 -0700
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:27 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:13 -0400
Message-ID: <1475855841-30009-5-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 04/12] layerindex/utils: Update runcmd to decode binary strings to strings.
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:39 -0000
Content-Type: text/plain

Convert binary strings to strings and strip leading/trailing whitespace
prior to returning errors and output.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/utils.py | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 50268e0..23b81f5 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -32,7 +32,8 @@ def runcmd(cmd, destdir=None, printerr=True, logger=None):
         execute command, raise CalledProcessError if fail
         return output if succeed
     """
-    #logger.debug("run cmd '%s' in %s" % (cmd, os.getcwd() if destdir is None else destdir))
+    if logger:
+        logger.debug("run cmd '%s' in %s" % (cmd, os.getcwd() if destdir is None else destdir))
     out = tempfile.TemporaryFile()
     try:
         subprocess.check_call(cmd, stdout=out, stderr=out, cwd=destdir, shell=True)
@@ -40,6 +41,7 @@ def runcmd(cmd, destdir=None, printerr=True, logger=None):
         out.seek(0)
         if printerr:
             output = out.read()
+            output = output.decode('ascii').strip()
             if logger:
                 logger.error("%s" % output)
             else:
@@ -49,7 +51,9 @@ def runcmd(cmd, destdir=None, printerr=True, logger=None):
 
     out.seek(0)
     output = out.read()
-    #logger.debug("output: %s" % output.rstrip() )
+    output = output.decode('ascii').strip()
+    if logger:
+        logger.debug("output: %s" % output.rstrip() )
     return output
 
 def setup_django():
-- 
1.9.1


