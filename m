Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D49ACE00D42; Wed,  8 Jun 2016 06:21:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F9E5E00D11
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:21:13 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:21:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824133985"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:21:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:20:03 +1200
Message-Id: <f335f55b56872b869268fa7a4b4e2723176e0997.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 10/15] update_layer.py: rename confusing loop variables
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:33 -0000

Stop using "d" (sometimes multiple levels!) and use proper descriptive
variable names instead.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update_layer.py | 40 ++++++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index bf1dbb2..ac4ae1e 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -312,9 +312,9 @@ def main():
             # Check if any paths should be ignored because there are layers within this layer
             removedirs = []
             for root, dirs, files in os.walk(layerdir):
-                for d in dirs:
-                    if os.path.exists(os.path.join(root, d, 'conf', 'layer.conf')):
-                        removedirs.append(os.path.join(root, d) + os.sep)
+                for diritem in dirs:
+                    if os.path.exists(os.path.join(root, diritem, 'conf', 'layer.conf')):
+                        removedirs.append(os.path.join(root, diritem) + os.sep)
 
             if diff:
                 # Apply git changes to existing recipe list
@@ -325,12 +325,12 @@ def main():
                     subdir_start = ""
 
                 updatedrecipes = set()
-                for d in diff.iter_change_type('D'):
-                    path = d.a_blob.path
+                for diffitem in diff.iter_change_type('D'):
+                    path = diffitem.a_blob.path
                     if path.startswith(subdir_start):
                         skip = False
-                        for d in removedirs:
-                            if path.startswith(d):
+                        for removedir in removedirs:
+                            if path.startswith(removedir):
                                 skip = True
                                 break
                         if skip:
@@ -351,12 +351,12 @@ def main():
                         elif typename == 'bbclass':
                             layerclasses.filter(name=filename).delete()
 
-                for d in diff.iter_change_type('A'):
-                    path = d.b_blob.path
+                for diffitem in diff.iter_change_type('A'):
+                    path = diffitem.b_blob.path
                     if path.startswith(subdir_start):
                         skip = False
-                        for d in removedirs:
-                            if path.startswith(d):
+                        for removedir in removedirs:
+                            if path.startswith(removedir):
                                 skip = True
                                 break
                         if skip:
@@ -385,12 +385,12 @@ def main():
                             bbclass.save()
 
                 dirtyrecipes = set()
-                for d in diff.iter_change_type('M'):
-                    path = d.a_blob.path
+                for diffitem in diff.iter_change_type('M'):
+                    path = diffitem.a_blob.path
                     if path.startswith(subdir_start):
                         skip = False
-                        for d in removedirs:
-                            if path.startswith(d):
+                        for removedir in removedirs:
+                            if path.startswith(removedir):
                                 skip = True
                                 break
                         if skip:
@@ -432,8 +432,8 @@ def main():
                         fullpath = os.path.join(root, v['filename'])
                         preserve = True
                         if os.path.exists(fullpath):
-                            for d in removedirs:
-                                if fullpath.startswith(d):
+                            for removedir in removedirs:
+                                if fullpath.startswith(removedir):
                                     preserve = False
                                     break
                         else:
@@ -455,10 +455,10 @@ def main():
                 for root, dirs, files in os.walk(layerdir):
                     if '.git' in dirs:
                         dirs.remove('.git')
-                    for d in dirs[:]:
-                        fullpath = os.path.join(root, d) + os.sep
+                    for diritem in dirs[:]:
+                        fullpath = os.path.join(root, diritem) + os.sep
                         if fullpath in removedirs:
-                            dirs.remove(d)
+                            dirs.remove(diritem)
                     for f in files:
                         fullpath = os.path.join(root, f)
                         (typename, _, filename) = recipeparse.detect_file_type(fullpath, layerdir_start)
-- 
2.5.5


