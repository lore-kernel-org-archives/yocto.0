Return-Path: <liping.ke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 879294C811AE
	for <yocto@yoctoproject.org>; Thu, 12 May 2011 21:01:56 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 May 2011 19:01:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="435334367"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 19:01:38 -0700
Message-Id: <532ebf8b9b37d9ff77e7cf69c15b2af2b4773663.1305250702.git.liping.ke@intel.com>
In-Reply-To: <cover.1305250702.git.liping.ke@intel.com>
References: <cover.1305250702.git.liping.ke@intel.com>
Old-Date: Thu, 12 May 2011 22:48:07 +0800
Date: Fri, 13 May 2011  9:50:30 +0800
To: yocto@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 3/4][Image Creator]Put extra requested fields into different cache files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 May 2011 02:01:56 -0000

From: Liping Ke <liping.ke@intel.com>

We introduce extra required fields as well as namedtuple recipeinfo
class here. We also define the data retrieving methods for this
extra recipeinfo class. This factory methods can be easily extended
for furthing expanding. The extended Hob(Image Creator) class will
be used in the following patches.

Signed-off-by: Liping Ke <Liping.ke@intel.com>
---
 bitbake/lib/bb/cache.py       |    2 ++
 bitbake/lib/bb/extra_cache.py |   29 +++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+), 0 deletions(-)
 create mode 100644 bitbake/lib/bb/extra_cache.py

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index 82712ec..7dc518f 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -118,6 +118,8 @@ class RecipeRetrieve():
         return metadata.getVar(var, True) or ''
 
 class RecipeInfo(namedtuple('RecipeInfo', recipe_fields), RecipeRetrieve):
+    # Please note: fields are the static class member
+    # in namedtuple class RecipeInfo
     @classmethod
     def make_optional(cls, default=None, **kwargs):
         """Construct the namedtuple from the specified keyword arguments,
diff --git a/bitbake/lib/bb/extra_cache.py b/bitbake/lib/bb/extra_cache.py
new file mode 100644
index 0000000..11bb493
--- /dev/null
+++ b/bitbake/lib/bb/extra_cache.py
@@ -0,0 +1,29 @@
+from collections import namedtuple
+from bb.cache import RecipeRetrieve
+
+# This three fields are only requested by Image Creator
+# hob_recipe_fields, HobRecipeInfo Definition are both
+# introduced by Image Creator. If a user want to introduce
+# more fields, we need to to the same thing as below:
+# 1. introduce extra recipe fields
+# 2. Define your extra named tuple class
+# 3. Add extra data loading methods in the else part of
+#    the Factory Class.
+hob_extra_recipe_fields = (
+    'summary',
+    'license',
+    'section'
+)
+
+HobExtraRecipeInfo = namedtuple('HobExtraRecipeInfo', hob_extra_recipe_fields)
+    
+class ExtraRecipeInfoFactory(RecipeRetrieve):
+    @classmethod
+    def from_metadata(cls, extracaches, metadata):
+        if extracaches == "hob":
+            return HobExtraRecipeInfo(
+                summary          = cls.getvar('SUMMARY', metadata),
+                license          = cls.getvar('LICENSE', metadata),
+                section          = cls.getvar('SECTION', metadata),
+            )
+
-- 
1.7.0.4


