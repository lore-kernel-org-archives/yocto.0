Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE4954C810D8
	for <yocto@yoctoproject.org>; Thu, 12 May 2011 21:01:37 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 19:01:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1088005"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2011 19:01:36 -0700
Message-Id: <c63fda8bde2a7803900a030d48d42953990d1495.1305250702.git.liping.ke@intel.com>
In-Reply-To: <cover.1305250702.git.liping.ke@intel.com>
References: <cover.1305250702.git.liping.ke@intel.com>
Old-Date: Thu, 12 May 2011 22:34:14 +0800
Date: Fri, 13 May 2011  9:50:28 +0800
To: yocto@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 1/4][Image Creator]Put extra requested fields into different cache files
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
X-List-Received-Date: Fri, 13 May 2011 02:01:37 -0000

From: Liping Ke <liping.ke@intel.com>

When using ui mode, we will save ui_mode required extra cache
fields into a separate cache file. This patch firstly introduce
this extracaches parameter. It will be used in the following
patches.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/lib/bb/cache.py  |   20 +++++++++++++++++---
 bitbake/lib/bb/cooker.py |   11 ++++++++---
 2 files changed, 25 insertions(+), 6 deletions(-)

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index d083c51..f9d2e5f 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -187,7 +187,10 @@ class Cache(object):
     BitBake Cache implementation
     """
 
-    def __init__(self, data):
+    def __init__(self, data, extracaches=None):       
+        # Pass extracaches information into Cache constructor
+        # It will be used in later for deciding whether
+        # we need separate cache file dump/load support
         self.cachedir = bb.data.getVar("CACHE", data, True)
         self.clean = set()
         self.checked = set()
@@ -196,6 +199,11 @@ class Cache(object):
         self.data_fn = None
         self.cacheclean = True
 
+        # Below three variables are used for loading extra cache
+        self.extra_depends_cache = {}        
+        self.extracaches = extracaches
+        self.extra_cachefile = None
+
         if self.cachedir in [None, '']:
             self.has_cache = False
             logger.info("Not using a cache. "
@@ -205,6 +213,11 @@ class Cache(object):
         self.has_cache = True
         self.cachefile = os.path.join(self.cachedir, "bb_cache.dat")
 
+        # if extracaches is not None, we need to load extra cache files
+        if self.extracaches:
+            self.extra_cachefile = os.path.join(self.cachedir,
+                        "bb_extracache_%s.dat" %self.extracaches)
+
         logger.debug(1, "Using cache in '%s'", self.cachedir)
         bb.utils.mkdirhier(self.cachedir)
 
@@ -302,7 +315,7 @@ class Cache(object):
         return bb_data[virtual]
 
     @classmethod
-    def parse(cls, filename, appends, configdata):
+    def parse(cls, filename, appends, configdata, extracaches=None):
         """Parse the specified filename, returning the recipe information"""
         infos = []
         datastores = cls.load_bbfile(filename, appends, configdata)
@@ -565,8 +578,9 @@ class CacheData(object):
     The data structures we compile from the cached data
     """
 
-    def __init__(self):
+    def __init__(self, extracaches):
         # Direct cache variables
+        self.extracaches = extracaches
         self.providers = defaultdict(list)
         self.rproviders = defaultdict(list)
         self.packages = defaultdict(list)
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index a1cd4d7..eaf5923 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -71,6 +71,10 @@ class BBCooker:
             self.server = server.BitBakeServer(self)
 
         self.configuration = configuration
+        # Cooker can get the bitbake mode information from configuration,
+        # we need to log down this information and pass it to Cache for
+        # extra cache file implementation
+        self.extracaches = configuration.ui
 
         self.configuration.data = bb.data.init()
 
@@ -713,9 +717,10 @@ class BBCooker:
 
         self.buildSetVars()
 
-        self.status = bb.cache.CacheData()
+        self.status = bb.cache.CacheData(self.extracaches)
         infos = bb.cache.Cache.parse(fn, self.get_file_appends(fn), \
-                                     self.configuration.data)
+                                     self.configuration.data, \
+                                     self.extracaches)
         infos = dict(infos)
 
         fn = bb.cache.Cache.realfn2virtual(buildfile, cls)
@@ -859,7 +864,7 @@ class BBCooker:
                 else:
                     collectlog.info("You have disabled Psyco. This decreases performance.")
 
-            self.status = bb.cache.CacheData()
+            self.status = bb.cache.CacheData(self.extracaches)
 
             ignore = bb.data.getVar("ASSUME_PROVIDED", self.configuration.data, 1) or ""
             self.status.ignored_dependencies = set(ignore.split())
-- 
1.7.0.4


