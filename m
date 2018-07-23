Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6DFEE00C1E; Mon, 23 Jul 2018 03:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 463A1E00B7D
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 03:19:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w6NAJoLk031460
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 Jul 2018 03:19:51 -0700
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Mon, 23 Jul 2018 03:19:50 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Mon, 23 Jul 2018 18:30:01 +0800
Message-ID: <a08dc8b5ece1f1d3db4c1dc7278a38c980d7302f.1532341697.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1532341697.git.liezhi.yang@windriver.com>
References: <cover.1532341697.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 1/1] import_layer.py: add -t option for layer_type
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
X-List-Received-Date: Mon, 23 Jul 2018 10:19:52 -0000
Content-Type: text/plain

Now the logic is:
Use options.layer_type if specified, guess if not, default to 'M'.

Note choices=['A', 'B', 'S', 'D', 'M', ''], the '' is for default='', we can't
use default='M' here, otherwise we don't know whether the 'M' is specified by
user or not, we don't guess if it is specified by user, otherwise, guess.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/tools/import_layer.py | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index 2413cff..0d501f6 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -189,6 +189,10 @@ def main():
     parser.add_option("-s", "--subdir",
             help = "Specify subdirectory",
             action="store", dest="subdir")
+    parser.add_option("-t", "--type",
+            help = "Specify layer type. A: Base, B: Machine(BSP), S: Software, D: Distribution, M: Miscellaneous",
+            choices=['A', 'B', 'S', 'D', 'M', ''],
+            action="store", dest="layer_type", default='')
     parser.add_option("-n", "--dry-run",
             help = "Don't write any data back to the database",
             action="store_true", dest="dryrun")
@@ -263,7 +267,6 @@ def main():
             layer = LayerItem()
             layer.name = layer_name
             layer.status = 'P'
-            layer.layer_type = 'M'
             layer.summary = 'tempvalue'
             layer.description = layer.summary
 
@@ -349,11 +352,18 @@ def main():
 
 
                 logger.info('Creating layer %s' % layer.name)
-                # Guess layer type
-                if glob.glob(os.path.join(layerdir, 'conf/distro/*.conf')):
+                # Guess layer type if not specified
+                if options.layer_type:
+                    layer.layer_type = options.layer_type
+                elif layer.name in ['openembedded-core', 'meta-oe']:
+                    layer.layer_type = 'A'
+                elif glob.glob(os.path.join(layerdir, 'conf/distro/*.conf')):
                     layer.layer_type = 'D'
                 elif glob.glob(os.path.join(layerdir, 'conf/machine/*.conf')):
                     layer.layer_type = 'B'
+                else:
+                    layer.layer_type = 'M'
+
                 layer.save()
                 layerbranch = LayerBranch()
                 layerbranch.layer = layer
@@ -411,11 +421,9 @@ def main():
 
                 if layer.name == 'openembedded-core':
                     layer.summary = 'Core metadata'
-                    layer.layer_type = 'A'
                 elif layer.name == 'meta-oe':
                     layer.summary = 'Additional shared OE metadata'
                     layer.description = layer.summary
-                    layer.layer_type = 'A'
 
                 if maintainers:
                     maint_re = re.compile(r'^"?([^"@$<>]+)"? *<([^<> ]+)>[ -]*(.+)?$')
-- 
2.7.4


