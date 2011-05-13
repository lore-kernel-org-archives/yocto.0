Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D0B04C811A3
	for <yocto@yoctoproject.org>; Thu, 12 May 2011 21:01:53 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 19:01:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="746567616"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2011 19:01:40 -0700
Message-Id: <43ceda8f026f2e4f7a384da61f93c2d21506d960.1305250702.git.liping.ke@intel.com>
In-Reply-To: <cover.1305250702.git.liping.ke@intel.com>
References: <cover.1305250702.git.liping.ke@intel.com>
Old-Date: Fri, 13 May 2011 09:33:47 +0800
Date: Fri, 13 May 2011  9:50:32 +0800
To: yocto@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 4/4][Image Creator]Put extra requested fields into different cache files
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
X-List-Received-Date: Fri, 13 May 2011 02:01:53 -0000

From: Liping Ke <liping.ke@intel.com>

Since Image Creator need extra cache fields which are not used
by bitbake, we create the extra cache file to load this extra
cache fields for making it more extensible. In the future, we
can handle similar request. This implementation does not touch
the base recipe info path. Extra fields are dealt with separately.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/lib/bb/cache.py  |  136 ++++++++++++++++++++++++++++++++++++----------
 bitbake/lib/bb/cooker.py |   44 +++++++++++-----
 2 files changed, 138 insertions(+), 42 deletions(-)

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index 7dc518f..f25bafb 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -75,9 +75,6 @@ recipe_fields = (
     'basetaskhashes',
     'hashfilename',
     'inherits',
-    'summary',
-    'license',
-    'section',
     'fakerootenv',
     'fakerootdirs'
 )
@@ -117,6 +114,7 @@ class RecipeRetrieve():
     def getvar(cls, var, metadata):
         return metadata.getVar(var, True) or ''
 
+from bb.extra_cache import ExtraRecipeInfoFactory
 class RecipeInfo(namedtuple('RecipeInfo', recipe_fields), RecipeRetrieve):
     # Please note: fields are the static class member
     # in namedtuple class RecipeInfo
@@ -177,9 +175,6 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields), RecipeRetrieve):
             rdepends_pkg     = cls.pkgvar('RDEPENDS', packages, metadata),
             rrecommends_pkg  = cls.pkgvar('RRECOMMENDS', packages, metadata),
             inherits         = cls.getvar('__inherit_cache', metadata),
-            summary          = cls.getvar('SUMMARY', metadata),
-            license          = cls.getvar('LICENSE', metadata),
-            section          = cls.getvar('SECTION', metadata),
             fakerootenv      = cls.getvar('FAKEROOTENV', metadata),
             fakerootdirs     = cls.getvar('FAKEROOTDIRS', metadata),
         )
@@ -232,11 +227,21 @@ class Cache(object):
         old_mtimes = [old_mtime for _, old_mtime in deps]
         old_mtimes.append(newest_mtime)
         newest_mtime = max(old_mtimes)
+        
+        # We need load extra cache
+        if extracaches:
+            if bb.parse.cached_mtime_noerror(self.cachefile) >= newest_mtime \
+                    and bb.parse.cached_mtime_noerror(self.extra_cachefile) \
+                            >= newest_mtime:
+                self.load_cachefile()
+            elif os.path.isfile(self.cachefile):
+                logger.info("Out of date cache found, rebuilding...")
+        else:
+            if bb.parse.cached_mtime_noerror(self.cachefile) >= newest_mtime:
+                self.load_cachefile()
+            elif os.path.isfile(self.cachefile):
+                logger.info("Out of date cache found, rebuilding...") 
 
-        if bb.parse.cached_mtime_noerror(self.cachefile) >= newest_mtime:
-            self.load_cachefile()
-        elif os.path.isfile(self.cachefile):
-            logger.info("Out of date cache found, rebuilding...")
 
     def load_cachefile(self):
         with open(self.cachefile, "rb") as cachefile:
@@ -256,9 +261,36 @@ class Cache(object):
                 return
 
             cachesize = os.fstat(cachefile.fileno()).st_size
-            bb.event.fire(bb.event.CacheLoadStarted(cachesize), self.data)
 
             previous_percent = 0
+            current_progress = 0
+            extra_current_progress = 0
+
+            if self.extracaches:
+                with open(self.extra_cachefile, "rb") as extra_cachefile:
+                    cachesize += os.fstat(extra_cachefile.fileno()).st_size
+                    pickled_extra = pickle.Unpickler(extra_cachefile)
+                    bb.event.fire(
+                            bb.event.CacheLoadStarted(cachesize), self.data)
+                    # Refresh Progress Bar                    
+                    while extra_cachefile:
+                        try:
+                            key = pickled_extra.load()
+                            value = pickled_extra.load()
+                        except Exception:
+                            break
+                        self.extra_depends_cache[key] = value
+                        current_progress = extra_cachefile.tell()
+                        current_percent = 100 * current_progress / cachesize
+                        if current_percent > previous_percent:
+                            previous_percent = current_percent
+                            bb.event.fire(
+                                bb.event.CacheLoadProgress(current_progress),
+                                          self.data)
+                extra_current_progress = current_progress
+            else:
+                bb.event.fire(bb.event.CacheLoadStarted(cachesize), self.data)
+
             while cachefile:
                 try:
                     key = pickled.load()
@@ -269,13 +301,15 @@ class Cache(object):
                 self.depends_cache[key] = value
 
                 # only fire events on even percentage boundaries
-                current_progress = cachefile.tell()
+                current_progress = cachefile.tell() + extra_current_progress
                 current_percent = 100 * current_progress / cachesize
                 if current_percent > previous_percent:
                     previous_percent = current_percent
                     bb.event.fire(bb.event.CacheLoadProgress(current_progress),
                                   self.data)
 
+            # printed cache loaded entry size need no increase since extra fields
+            # belong to the same one entry
             bb.event.fire(bb.event.CacheLoadCompleted(cachesize,
                                                       len(self.depends_cache)),
                           self.data)
@@ -321,6 +355,7 @@ class Cache(object):
     def parse(cls, filename, appends, configdata, extracaches=None):
         """Parse the specified filename, returning the recipe information"""
         infos = []
+        extra_infos = []
         datastores = cls.load_bbfile(filename, appends, configdata)
         depends = set()
         for variant, data in sorted(datastores.iteritems(),
@@ -332,7 +367,11 @@ class Cache(object):
                 data.setVar("__depends", depends)
             info = RecipeInfo.from_metadata(filename, data)
             infos.append((virtualfn, info))
-        return infos
+            if extracaches:
+                extra_info = \
+                    ExtraRecipeInfoFactory.from_metadata(extracaches, data)
+                extra_infos.append((virtualfn, extra_info))
+        return infos, extra_infos
 
     def load(self, filename, appends, configdata):
         """Obtain the recipe information for the specified filename,
@@ -345,15 +384,20 @@ class Cache(object):
         cached = self.cacheValid(filename)
         if cached:
             infos = []
+            extra_infos= []
             info = self.depends_cache[filename]
-            for variant in info.variants:
+            for i in range(0, len(info.variants)):
+                variant = info.variants[i]
                 virtualfn = self.realfn2virtual(filename, variant)
                 infos.append((virtualfn, self.depends_cache[virtualfn]))
+                if self.extracaches:
+                    extra_infos.append((virtualfn, \
+                            self.extra_depends_cache[virtualfn]))
         else:
             logger.debug(1, "Parsing %s", filename)
-            return self.parse(filename, appends, configdata)
+            return self.parse(filename, appends, configdata, self.extracaches)
 
-        return cached, infos
+        return cached, infos, extra_infos
 
     def loadData(self, fn, appends, cfgData, cacheData):
         """Load the recipe info for the specified filename,
@@ -361,13 +405,17 @@ class Cache(object):
         the recipe information to the supplied CacheData instance."""
         skipped, virtuals = 0, 0
 
-        cached, infos = self.load(fn, appends, cfgData)
-        for virtualfn, info in infos:
+        cached, infos, extra_infos = self.load(fn, appends, cfgData)
+        for i in range (0, len(infos)):
+            (virtualfn, info) = infos[i]
+            if self.extracaches:
+                extra_info = extra_infos[i]
             if info.skipped:
                 logger.debug(1, "Skipping %s", virtualfn)
                 skipped += 1
             else:
-                self.add_info(virtualfn, info, cacheData, not cached)
+                self.add_info(virtualfn, info, extra_info, \
+                            cacheData, not cached)
                 virtuals += 1
 
         return cached, skipped, virtuals
@@ -399,7 +447,8 @@ class Cache(object):
         self.checked.add(fn)
 
         # File isn't in depends_cache
-        if not fn in self.depends_cache:
+        if (not fn in self.depends_cache) or (self.extracaches \
+                       and (not fn in self.extra_depends_cache)):
             logger.debug(2, "Cache: %s is not cached", fn)
             return False
 
@@ -440,7 +489,9 @@ class Cache(object):
         for cls in info.variants:
             virtualfn = self.realfn2virtual(fn, cls)
             self.clean.add(virtualfn)
-            if virtualfn not in self.depends_cache:
+            if (virtualfn not in self.depends_cache) or \
+                         (self.extracaches \
+                         and virtualfn not in self.extra_depends_cache):
                 logger.debug(2, "Cache: %s is not cached", virtualfn)
                 invalid = True
 
@@ -467,6 +518,12 @@ class Cache(object):
         if fn in self.depends_cache:
             logger.debug(1, "Removing %s from cache", fn)
             del self.depends_cache[fn]
+        # when deleting, we need to maintain the consistency
+        # of the two independent cache
+        if self.extracaches and fn in self.extra_depends_cache:
+            logger.debug(1, "Removing %s from ui_extra_cache", fn)
+            del self.extra_depends_cache[fn]
+
         if fn in self.clean:
             logger.debug(1, "Marking %s as unclean", fn)
             self.clean.remove(fn)
@@ -492,15 +549,26 @@ class Cache(object):
                 pickler.dump(key)
                 pickler.dump(value)
 
+        # Sync back the extra cache fields into the separate cache file
+        if self.extracaches:
+            with open(self.extra_cachefile, "wb") as extra_cachefile:
+                extra_pickler = pickle.Pickler(extra_cachefile, \
+                                               pickle.HIGHEST_PROTOCOL)
+                for key, value in self.extra_depends_cache.iteritems():
+                    extra_pickler.dump(key)
+                    extra_pickler.dump(value)
+
         del self.depends_cache
+        del self.extra_depends_cache
 
     @staticmethod
     def mtime(cachefile):
         return bb.parse.cached_mtime_noerror(cachefile)
 
-    def add_info(self, filename, info, cacheData, parsed=None):
+    def add_info(self, filename, info, extra_info, cacheData, parsed=None):
         if not info.skipped:
             cacheData.add_from_recipeinfo(filename, info)
+            cacheData.add_from_extra_recipeinfo(filename, extra_info)
 
         if not self.has_cache:
             return
@@ -509,15 +577,20 @@ class Cache(object):
             if parsed:
                 self.cacheclean = False
             self.depends_cache[filename] = info
+            if self.extracaches:
+                self.extra_depends_cache[filename] = extra_info
 
     def add(self, file_name, data, cacheData, parsed=None):
         """
         Save data we need into the cache
         """
-
         realfn = self.virtualfn2realfn(file_name)[0]
+        extra_info = None
         info = RecipeInfo.from_metadata(realfn, data)
-        self.add_info(file_name, info, cacheData, parsed)
+        if self.extracaches:
+            extra_info = \
+                ExtraRecipeInfoFactory.from_metadata(self.extracaches, data)
+        self.add_info(file_name, info, extra_info, cacheData, parsed)
 
     @staticmethod
     def load_bbfile(bbfile, appends, config):
@@ -609,11 +682,13 @@ class CacheData(object):
         self.basetaskhash = {}
         self.hashfn = {}
         self.inherits = {}
+        self.fakerootenv = {}
+        self.fakerootdirs = {}
+
+# Extra cache fields
         self.summary = {}
         self.license = {}
         self.section = {}
-        self.fakerootenv = {}
-        self.fakerootdirs = {}
 
         # Indirect Cache variables (set elsewhere)
         self.ignored_dependencies = []
@@ -621,6 +696,12 @@ class CacheData(object):
         self.bbfile_priority = {}
         self.bbfile_config_priorities = []
 
+    def add_from_extra_recipeinfo(self, fn, extra_info):
+        if self.extracaches:
+            self.summary[fn] = extra_info.summary
+            self.license[fn] = extra_info.license
+            self.section[fn] = extra_info.section
+
     def add_from_recipeinfo(self, fn, info):
         self.task_deps[fn] = info.task_deps
         self.pkg_fn[fn] = info.pn
@@ -679,8 +760,5 @@ class CacheData(object):
             self.basetaskhash[identifier] = taskhash
 
         self.inherits[fn] = info.inherits
-        self.summary[fn] = info.summary
-        self.license[fn] = info.license
-        self.section[fn] = info.section
         self.fakerootenv[fn] = info.fakerootenv
         self.fakerootdirs[fn] = info.fakerootdirs
diff --git a/bitbake/lib/bb/cooker.py b/bitbake/lib/bb/cooker.py
index eaf5923..58d0e82 100644
--- a/bitbake/lib/bb/cooker.py
+++ b/bitbake/lib/bb/cooker.py
@@ -718,7 +718,7 @@ class BBCooker:
         self.buildSetVars()
 
         self.status = bb.cache.CacheData(self.extracaches)
-        infos = bb.cache.Cache.parse(fn, self.get_file_appends(fn), \
+        infos, extra_infos = bb.cache.Cache.parse(fn, self.get_file_appends(fn), \
                                      self.configuration.data, \
                                      self.extracaches)
         infos = dict(infos)
@@ -730,6 +730,13 @@ class BBCooker:
             bb.fatal("%s does not exist" % fn)
         self.status.add_from_recipeinfo(fn, maininfo)
 
+        if self.extracaches:
+            try:
+                extra_info = extra_infos[fn]
+            except KeyError:
+                bb.fatal("%s does not exist" % fn)
+            self.status.add_from_extra_recipeinfo(fn, extra_info)
+
         # Tweak some variables
         item = maininfo.pn
         self.status.ignored_dependencies = set()
@@ -1071,9 +1078,9 @@ class ParsingFailure(Exception):
         self.args = (realexception, recipe)
 
 def parse_file(task):
-    filename, appends = task
+    filename, appends, extracaches = task
     try:
-        return True, bb.cache.Cache.parse(filename, appends, parse_file.cfg)
+        return True, bb.cache.Cache.parse(filename, appends, parse_file.cfg, extracaches)
     except Exception, exc:
         exc.recipe = filename
         raise exc
@@ -1087,6 +1094,7 @@ class CookerParser(object):
     def __init__(self, cooker, filelist, masked):
         self.filelist = filelist
         self.cooker = cooker
+        self.extracaches = cooker.configuration.ui
         self.cfgdata = cooker.configuration.data
 
         # Accounting statistics
@@ -1103,13 +1111,13 @@ class CookerParser(object):
         self.num_processes = int(self.cfgdata.getVar("BB_NUMBER_PARSE_THREADS", True) or
                                  multiprocessing.cpu_count())
 
-        self.bb_cache = bb.cache.Cache(self.cfgdata)
+        self.bb_cache = bb.cache.Cache(self.cfgdata,self.extracaches)
         self.fromcache = []
         self.willparse = []
         for filename in self.filelist:
             appends = self.cooker.get_file_appends(filename)
             if not self.bb_cache.cacheValid(filename):
-                self.willparse.append((filename, appends))
+                self.willparse.append((filename, appends, self.extracaches))
             else:
                 self.fromcache.append((filename, appends))
         self.toparse = self.total - len(self.fromcache)
@@ -1148,12 +1156,12 @@ class CookerParser(object):
 
     def load_cached(self):
         for filename, appends in self.fromcache:
-            cached, infos = self.bb_cache.load(filename, appends, self.cfgdata)
-            yield not cached, infos
+            cached, infos, ui_infos = self.bb_cache.load(filename, appends, self.cfgdata)
+            yield not cached, (infos, ui_infos)
 
     def parse_next(self):
         try:
-            parsed, result = self.results.next()
+            parsed, (result, extra_result) = self.results.next()
         except StopIteration:
             self.shutdown()
             return False
@@ -1174,16 +1182,26 @@ class CookerParser(object):
         else:
             self.cached += 1
 
-        for virtualfn, info in result:
+        extra_info = None
+        for i in range (0, len(result)):
+            (virtualfn, info) = result[i]
+            if self.extracaches:
+                (extra_virtualfn, extra_info) = extra_result[i]
+                if (virtualfn != extra_virtualfn):
+                    raise Exception("Inconsistancy happens for extra cache!")
             if info.skipped:
                 self.skipped += 1
-            self.bb_cache.add_info(virtualfn, info, self.cooker.status,
-                                        parsed=parsed)
+            self.bb_cache.add_info(virtualfn, info, extra_info, self.cooker.status,
+                                         parsed=parsed)
         return True
 
     def reparse(self, filename):
-        infos = self.bb_cache.parse(filename,
+        infos, extra_infos = self.bb_cache.parse(filename,
                                     self.cooker.get_file_appends(filename),
-                                    self.cfgdata)
+                                    self.cfgdata, self.extracaches)
         for vfn, info in infos:
             self.cooker.status.add_from_recipeinfo(vfn, info)
+        if self.extracaches:
+            for vfn,extra_info in extra_infos:
+                self.status.add_from_extra_recipeinfo(vfn, extra_info)
+            
-- 
1.7.0.4


