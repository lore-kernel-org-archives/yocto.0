Return-Path: <Liam.Howlett@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F111BE00C44; Fri,  7 Oct 2016 08:57:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29062E00C19
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:57:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u97FvODE011619
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Fri, 7 Oct 2016 08:57:24 -0700
Received: from yow-lhowlett-d0.wrs.com (128.224.56.217) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Fri, 7 Oct 2016 08:57:23 -0700
From: "Liam R. Howlett" <Liam.Howlett@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Oct 2016 11:57:10 -0400
Message-ID: <1475855841-30009-2-git-send-email-Liam.Howlett@WindRiver.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [layerindex-web][PATCH v2 01/12] import_layer: Add --actual-branch option
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
X-List-Received-Date: Fri, 07 Oct 2016 15:57:30 -0000
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


