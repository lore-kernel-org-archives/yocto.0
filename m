Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D5DDE00D5C; Tue,  3 Oct 2017 17:51:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBBAFE00D50
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 17:51:43 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 03 Oct 2017 17:51:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,475,1500966000"; d="scan'208";a="142395706"
Received: from kmsim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.132.147])
	by orsmga002.jf.intel.com with ESMTP; 03 Oct 2017 17:51:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Oct 2017 13:51:02 +1300
Message-Id: <20171004005103.24756-2-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20171004005103.24756-1-paul.eggleton@linux.intel.com>
References: <20171004005103.24756-1-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/3] models: allow LayerBranch.collection to be blank
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
X-List-Received-Date: Wed, 04 Oct 2017 00:51:46 -0000

It's really irritating to be forced to specify a value for this field
especially as it'll get auto-populated by the update script. Set
blank=True to allow that. While we're at it, touch up the description a
bit to make more sense.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/migrations/0009_layerbranch_collection.py | 19 +++++++++++++++++++
 layerindex/models.py                                 |  2 +-
 2 files changed, 20 insertions(+), 1 deletion(-)
 create mode 100644 layerindex/migrations/0009_layerbranch_collection.py

diff --git a/layerindex/migrations/0009_layerbranch_collection.py b/layerindex/migrations/0009_layerbranch_collection.py
new file mode 100644
index 0000000..bf6276f
--- /dev/null
+++ b/layerindex/migrations/0009_layerbranch_collection.py
@@ -0,0 +1,19 @@
+# -*- coding: utf-8 -*-
+from __future__ import unicode_literals
+
+from django.db import migrations, models
+
+
+class Migration(migrations.Migration):
+
+    dependencies = [
+        ('layerindex', '0008_yp_compatible'),
+    ]
+
+    operations = [
+        migrations.AlterField(
+            model_name='layerbranch',
+            name='collection',
+            field=models.CharField(help_text='Name of the collection that the layer provides for the purpose of expressing dependencies (as specified in BBFILE_COLLECTIONS). Can only contain letters, numbers and dashes.', max_length=40, blank=True, null=True, verbose_name='Layer Collection'),
+        ),
+    ]
diff --git a/layerindex/models.py b/layerindex/models.py
index e99f0b8..b39518a 100644
--- a/layerindex/models.py
+++ b/layerindex/models.py
@@ -157,7 +157,7 @@ class YPCompatibleVersion(models.Model):
 class LayerBranch(models.Model):
     layer = models.ForeignKey(LayerItem)
     branch = models.ForeignKey(Branch)
-    collection = models.CharField('Layer Collection', max_length=40, null=True, help_text='Name of the layer that could be used in the list of dependencies - can only contain letters, numbers and dashes')
+    collection = models.CharField('Layer Collection', max_length=40, null=True, blank=True, help_text='Name of the collection that the layer provides for the purpose of expressing dependencies (as specified in BBFILE_COLLECTIONS). Can only contain letters, numbers and dashes.')
     version = models.CharField('Layer Version', max_length=10, null=True, blank=True, help_text='The layer version for this particular branch.')
     vcs_subdir = models.CharField('Repository subdirectory', max_length=40, blank=True, help_text='Subdirectory within the repository where the layer is located, if not in the root (usually only used if the repository contains more than one layer)')
     vcs_last_fetch = models.DateTimeField('Last successful fetch', blank=True, null=True)
-- 
2.9.5


