Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7110EE00BC8; Tue, 11 Sep 2018 01:39:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D023E00B77
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 01:39:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w8B8cAaO016050
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Sep 2018 01:38:47 -0700
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.408.0; Tue, 11 Sep 2018 01:38:31 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>
Date: Tue, 11 Sep 2018 16:48:56 +0800
Message-ID: <813d117cd1607059106e32c3217c0ee8c3a26df7.1536655311.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1536655311.git.liezhi.yang@windriver.com>
References: <cover.1536655311.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [layerindex-web][V2 PATCH 1/1] import_layer.py: add -t option for layer_type
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
X-List-Received-Date: Tue, 11 Sep 2018 08:39:09 -0000
Content-Type: text/plain

Now the logic is:
Use options.layer_type if specified, and guess if not. Default to 'M'.

Note choices=['A', 'B', 'S', 'D', 'M', ''], the '' is for default='', we can't
use default='M' here, otherwise we don't know whether the 'M' is specified by
user or is the default value, we don't guess if it is specified by user,
otherwise, guess.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/tools/import_layer.py | 38 ++++++++++++++++++++++++++++++++------
 1 file changed, 32 insertions(+), 6 deletions(-)

diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index 2413cff..60986e0 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -178,6 +178,22 @@ def get_github_layerinfo(layer_url, username = None, password = None):
 
     return (json_data, owner_json_data)
 
+def get_layer_type_choices():
+    """
+    Return help string and choices for --type.
+    """
+    from layerindex.models import LayerItem
+    help_str = "Specify layer type."
+    choices = []
+    for i in LayerItem.LAYER_TYPE_CHOICES:
+        key, description = i
+        help_str += ' %s: %s,' % (key, description)
+        choices.append(key)
+
+    help_str = help_str.rstrip(',')
+    choices.append('')
+
+    return (help_str, choices)
 
 def main():
     valid_layer_name = re.compile('[-\w]+$')
@@ -186,9 +202,16 @@ def main():
         usage = """
     %prog [options] <url> [name]""")
 
+    utils.setup_django()
+    layer_type_help, layer_type_choices = get_layer_type_choices()
+
     parser.add_option("-s", "--subdir",
             help = "Specify subdirectory",
             action="store", dest="subdir")
+    parser.add_option("-t", "--type",
+            help = layer_type_help,
+            choices = layer_type_choices,
+            action="store", dest="layer_type", default='')
     parser.add_option("-n", "--dry-run",
             help = "Don't write any data back to the database",
             action="store_true", dest="dryrun")
@@ -238,7 +261,6 @@ def main():
         github_login = None
         github_password = None
 
-    utils.setup_django()
     import settings
     from layerindex.models import LayerItem, LayerBranch, LayerDependency, LayerMaintainer
     from django.db import transaction
@@ -263,7 +285,6 @@ def main():
             layer = LayerItem()
             layer.name = layer_name
             layer.status = 'P'
-            layer.layer_type = 'M'
             layer.summary = 'tempvalue'
             layer.description = layer.summary
 
@@ -349,11 +370,18 @@ def main():
 
 
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
@@ -411,11 +439,9 @@ def main():
 
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


