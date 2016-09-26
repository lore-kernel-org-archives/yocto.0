Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F4E8E0090A; Mon, 26 Sep 2016 11:26:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BD07E008E4
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 11:26:10 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8QIPfRG026994
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 26 Sep 2016 11:25:49 -0700
Received: from yow-lhowlett-d0.wrs.com (128.224.56.234) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Mon, 26 Sep 2016 11:25:40 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Sep 2016 14:25:29 -0400
Message-ID: <1474914338-26310-2-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH 01/10] import_layer: Add --actual-branch option
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
X-List-Received-Date: Mon, 26 Sep 2016 18:26:16 -0000
Content-Type: text/plain

Allow users to set actual-branch from the command line import of layers.

Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
---
 layerindex/tools/import_layer.py | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index 0521e1c..9b5da22 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -200,6 +200,9 @@ def main():
     parser.add_option("-q", "--quiet",
             help = "Hide all output except error messages",
             action="store_const", const=logging.ERROR, dest="loglevel")
+    parser.add_option("-a", "--actual-branch",
+            help = "Set actual branch",
+            action="store", dest="actual_branch")
 
     options, args = parser.parse_args(sys.argv)
 
@@ -273,10 +276,13 @@ def main():
                 logger.error("Fetch failed: %s" % str(e))
                 sys.exit(1)
 
-            actual_branch = ''
+            actual_branch = 'master'
+            if (options.actual_branch):
+                actual_branch = options.actual_branch
             try:
-                out = utils.runcmd("git checkout origin/master", repodir, logger=logger)
+                out = utils.runcmd("git checkout origin/%s" % actual_branch, repodir, logger=logger)
             except subprocess.CalledProcessError:
+                actual_branch = None
                 branches = utils.runcmd("git branch -r", repodir, logger=logger)
                 for line in branches.splitlines():
                     if 'origin/HEAD ->' in line:
-- 
1.9.1


