Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2D0AE00DB7; Sat, 12 Oct 2019 18:56:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A43F8E00DCE
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 18:56:36 -0700 (PDT)
Received: from lons-builder.int.hatle.net ([192.40.192.88])
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9D1uYi7017025
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 20:56:35 -0500
From: Mark Hatle <mark.hatle@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Sat, 12 Oct 2019 20:56:32 -0500
Message-Id: <20191013015633.118339-3-mark.hatle@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191013015633.118339-1-mark.hatle@kernel.crashing.org>
References: <20191013015633.118339-1-mark.hatle@kernel.crashing.org>
Subject: [layerindex-web] [PATCH 2/3] update.py: Allow bitbake to live in a subdirectory of a repository
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
X-List-Received-Date: Sun, 13 Oct 2019 01:56:40 -0000

Add a new BITBAKE_PATH to the settings file to specify the path within the
BITBAKE_REPO_URL where bitbake lives.  This is useful when using a combined
repository, such as poky, that contains bitbake, openembedded-core and other
layers.

This change also changes the default path, in the fetch directory, for the
bitbake checkout.  It no longer uses the path 'bitbake', but instead uses the
same URL processing as the layer fetching.

There is a side effect that, when using a shared fetch, the branch of the
layer will be used instead of the specified bitbake branch.  Generally this
is a reasonable compromise, since in a combined repository bitbake and
openembedded-core component should already match.

Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
---
 docker/settings.py           |  3 +++
 layerindex/bulkchange.py     |  8 +++++++-
 layerindex/layerconfparse.py |  8 +++++++-
 layerindex/update.py         | 14 +++++++++++---
 layerindex/update_layer.py   |  6 +++++-
 settings.py                  |  3 +++
 6 files changed, 36 insertions(+), 6 deletions(-)

diff --git a/docker/settings.py b/docker/settings.py
index 616b67b..2821d82 100644
--- a/docker/settings.py
+++ b/docker/settings.py
@@ -244,6 +244,9 @@ TEMP_BASE_DIR = "/tmp"
 # Fetch URL of the BitBake repository for the update script
 BITBAKE_REPO_URL = "git://git.openembedded.org/bitbake"
 
+# Path within the BITBAKE_REPO_URL, usually empty
+BITBAKE_PATH = ""
+
 # Core layer to be used by the update script for basic BitBake configuration
 CORE_LAYER_NAME = "openembedded-core"
 
diff --git a/layerindex/bulkchange.py b/layerindex/bulkchange.py
index f6506ef..ea1f85c 100644
--- a/layerindex/bulkchange.py
+++ b/layerindex/bulkchange.py
@@ -98,7 +98,13 @@ def main():
 
     branch = utils.get_branch('master')
     fetchdir = settings.LAYER_FETCH_DIR
-    bitbakepath = os.path.join(fetchdir, 'bitbake')
+
+    import layerindex.models import LayerItem
+    bitbakeitem = LayerItem()
+    bitbakeitem.vcs_url = settings.BITBAKE_REPO_URL
+    bitbakepath = os.path.join(fetchdir, bitbakeitem.get_fetch_dir())
+    if settings.BITBAKE_PATH:
+        bitbakepath = os.path.join(bitbakepath, settings.BITBAKE_PATH)
 
     if not os.path.exists(bitbakepath):
         sys.stderr.write("Unable to find bitbake checkout at %s" % bitbakepath)
diff --git a/layerindex/layerconfparse.py b/layerindex/layerconfparse.py
index 526d2c2..a0b7e1c 100644
--- a/layerindex/layerconfparse.py
+++ b/layerindex/layerconfparse.py
@@ -20,7 +20,13 @@ class LayerConfParse:
 
         if not bitbakepath:
             fetchdir = settings.LAYER_FETCH_DIR
-            bitbakepath = os.path.join(fetchdir, 'bitbake')
+
+            from layerindex.models import LayerItem
+            bitbakeitem = LayerItem()
+            bitbakeitem.vcs_url = settings.BITBAKE_REPO_URL
+            bitbakepath = os.path.join(fetchdir, bitbakeitem.get_fetch_dir())
+            if settings.BITBAKE_PATH:
+                bitbakepath = os.path.join(bitbakepath, settings.BITBAKE_PATH)
         self.bbpath = bitbakepath
 
         # Set up BBPATH.
diff --git a/layerindex/update.py b/layerindex/update.py
index 7faf6b5..57dd830 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -268,8 +268,6 @@ def main():
             logger.error("Layer index lock timeout expired")
             sys.exit(1)
         try:
-            bitbakepath = os.path.join(fetchdir, 'bitbake')
-
             if not options.nofetch:
                 # Make sure oe-core is fetched since recipe parsing requires it
                 layerquery_core = LayerItem.objects.filter(comparison=False).filter(name=settings.CORE_LAYER_NAME)
@@ -285,7 +283,17 @@ def main():
                     if layer.vcs_url not in allrepos:
                         allrepos[layer.vcs_url] = (repodir, urldir, fetchdir, layer.name)
                 # Add bitbake
-                allrepos[settings.BITBAKE_REPO_URL] = (bitbakepath, "bitbake", fetchdir, "bitbake")
+                if settings.BITBAKE_REPO_URL not in allrepos:
+                    bitbakeitem = LayerItem()
+                    bitbakeitem.vcs_url = settings.BITBAKE_REPO_URL
+                    bitbakeurldir = bitbakeitem.get_fetch_dir()
+                    bitbakepath = os.path.join(fetchdir, bitbakeurldir)
+                    allrepos[settings.BITBAKE_REPO_URL] = (bitbakepath, bitbakeurldir, fetchdir, "bitbake")
+
+                (bitbakepath, _, _, _) = allrepos[settings.BITBAKE_REPO_URL]
+                if settings.BITBAKE_PATH:
+                    bitbakepath = os.path.join(bitbakepath, settings.BITBAKE_PATH)
+
                 # Parallel fetching
                 pool = multiprocessing.Pool(int(settings.PARALLEL_JOBS))
                 for url in allrepos:
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 7131d70..f4111bd 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -300,7 +300,11 @@ def main():
         logger.error("Please set LAYER_FETCH_DIR in settings.py")
         sys.exit(1)
 
-    bitbakepath = os.path.join(fetchdir, 'bitbake')
+    bitbakeitem = LayerItem()
+    bitbakeitem.vcs_url = settings.BITBAKE_REPO_URL
+    bitbakepath = os.path.join(fetchdir, bitbakeitem.get_fetch_dir())
+    if settings.BITBAKE_PATH:
+        bitbakepath = os.path.join(bitbakepath, settings.BITBAKE_PATH)
 
     layer = utils.get_layer(options.layer)
     urldir = layer.get_fetch_dir()
diff --git a/settings.py b/settings.py
index e0f5984..e9bf6cc 100644
--- a/settings.py
+++ b/settings.py
@@ -239,6 +239,9 @@ TEMP_BASE_DIR = "/tmp"
 # Fetch URL of the BitBake repository for the update script
 BITBAKE_REPO_URL = "git://git.openembedded.org/bitbake"
 
+# Path within the BITBAKE_REPO_URL, usually empty
+BITBAKE_PATH = ""
+
 # Core layer to be used by the update script for basic BitBake configuration
 CORE_LAYER_NAME = "openembedded-core"
 
-- 
2.17.1


