Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03616E00DCE; Sat, 12 Oct 2019 18:56:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECEE9E00DD1
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 18:56:36 -0700 (PDT)
Received: from lons-builder.int.hatle.net ([192.40.192.88])
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9D1uYi8017025
	for <yocto@yoctoproject.org>; Sat, 12 Oct 2019 20:56:36 -0500
From: Mark Hatle <mark.hatle@kernel.crashing.org>
To: yocto@yoctoproject.org
Date: Sat, 12 Oct 2019 20:56:33 -0500
Message-Id: <20191013015633.118339-4-mark.hatle@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191013015633.118339-1-mark.hatle@kernel.crashing.org>
References: <20191013015633.118339-1-mark.hatle@kernel.crashing.org>
Subject: [layerindex-web] [PATCH 3/3] RFC: editlayer: Be more specific on the searches
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

Just because git.yoctoproject.org is in the URL, doesn't mean we can or
should force the vcs_web_url to be a specific value.  If it starts with
git://git.yoctoproject.org then we can do this.  git.openembedded.org
already did this.

This also changes github, gitlab and bitbucket references.

Signed-off-by: Mark Hatle <mark.hatle@kernel.crashing.org>
---
 layerindex/tools/import_layer.py       |  8 ++++----
 layerindex/tools/import_wiki_layers.py | 13 ++++++++++---
 templates/layerindex/editlayer.html    |  8 ++++----
 3 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_layer.py
index 8fcbc15..ace58e5 100755
--- a/layerindex/tools/import_layer.py
+++ b/layerindex/tools/import_layer.py
@@ -36,27 +36,27 @@ def set_vcs_fields(layer, repoval):
         layer.vcs_web_tree_base_url = 'http://cgit.openembedded.org/' + reponame + '/tree/%path%?h=%branch%'
         layer.vcs_web_file_base_url = 'http://cgit.openembedded.org/' + reponame + '/tree/%path%?h=%branch%'
         layer.vcs_web_commit_url = 'http://cgit.openembedded.org/' + reponame + '/commit/?id=%hash%'
-    elif 'git.yoctoproject.org/' in repoval:
+    elif repoval.startswith('git://git.yoctoproject.org/'):
         reponame = re.sub('^.*/', '', repoval)
         layer.vcs_web_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame
         layer.vcs_web_tree_base_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
         layer.vcs_web_file_base_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
         layer.vcs_web_commit_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/commit/?id=%hash%'
-    elif 'github.com/' in repoval:
+    elif repoval.startswith('git://github.com/') or repoval.startswith('http://github.com/') or repoval.startswith('https://github.com/'):
         reponame = re.sub('^.*github.com/', '', repoval)
         reponame = re.sub('.git$', '', reponame)
         layer.vcs_web_url = 'http://github.com/' + reponame
         layer.vcs_web_tree_base_url = 'http://github.com/' + reponame + '/tree/%branch%/'
         layer.vcs_web_file_base_url = 'http://github.com/' + reponame + '/blob/%branch%/'
         layer.vcs_web_commit_url = 'http://github.com/' + reponame + '/commit/%hash%'
-    elif 'gitlab.com/' in repoval:
+    elif repoval.startswith('git://gitlab.com/') or repoval.startswith('http://gitlab.com/') or repoval.startswith('https://gitlab.com/'):
         reponame = re.sub('^.*gitlab.com/', '', repoval)
         reponame = re.sub('.git$', '', reponame)
         layer.vcs_web_url = 'http://gitlab.com/' + reponame
         layer.vcs_web_tree_base_url = 'http://gitlab.com/' + reponame + '/tree/%branch%/'
         layer.vcs_web_file_base_url = 'http://gitlab.com/' + reponame + '/blob/%branch%/'
         layer.vcs_web_commit_url = 'http://gitlab.com/' + reponame + '/commit/%hash%'
-    elif 'bitbucket.org/' in repoval:
+    elif repoval.startswith('git://bitbucket.org/') or repoval.startswith('http://bitbucket.org/') or repoval.startswith('https://bitbucket.org/'):
         reponame = re.sub('^.*bitbucket.org/', '', repoval)
         reponame = re.sub('.git$', '', reponame)
         layer.vcs_web_url = 'http://bitbucket.org/' + reponame
diff --git a/layerindex/tools/import_wiki_layers.py b/layerindex/tools/import_wiki_layers.py
index baf0c71..71f26ea 100755
--- a/layerindex/tools/import_wiki_layers.py
+++ b/layerindex/tools/import_wiki_layers.py
@@ -100,20 +100,27 @@ def main():
                             layer.vcs_web_tree_base_url = 'http://cgit.openembedded.org/' + reponame + '/tree/%path%?h=%branch%'
                             layer.vcs_web_file_base_url = 'http://cgit.openembedded.org/' + reponame + '/tree/%path%?h=%branch%'
                             layer.vcs_web_commit_url = 'http://cgit.openembedded.org/' + reponame + '/commit/?id=%hash%'
-                        elif 'git.yoctoproject.org/' in repoval:
+                        elif repoval.startswith('git://git.yoctoproject.org/'):
                             reponame = re.sub('^.*/', '', repoval)
                             layer.vcs_web_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame
                             layer.vcs_web_tree_base_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
                             layer.vcs_web_file_base_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
                             layer.vcs_web_commit_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/commit/?id=%hash%'
-                        elif 'github.com/' in repoval:
+                        elif repoval.startswith('git://github.com/') or repoval.startswith('http://github.com/') or repoval.startswith('https://github.com/'):
                             reponame = re.sub('^.*github.com/', '', repoval)
                             reponame = re.sub('.git$', '', reponame)
                             layer.vcs_web_url = 'http://github.com/' + reponame
                             layer.vcs_web_tree_base_url = 'http://github.com/' + reponame + '/tree/%branch%/'
                             layer.vcs_web_file_base_url = 'http://github.com/' + reponame + '/blob/%branch%/'
                             layer.vcs_web_commit_url = 'http://github.com/' + reponame + '/commit/%hash%'
-                        elif 'bitbucket.org/' in repoval:
+                        elif repoval.startswith('git://gitlab.com/') or repoval.startswith('http://gitlab.com/') or repoval.startswith('https://gitlab.com/'):
+                            reponame = re.sub('^.*gitlab.com/', '', repoval)
+                            reponame = re.sub('.git$', '', reponame)
+                            layer.vcs_web_url = 'http://gitlab.com/' + reponame
+                            layer.vcs_web_tree_base_url = 'http://gitlab.com/' + reponame + '/tree/%branch%/'
+                            layer.vcs_web_file_base_url = 'http://gitlab.com/' + reponame + '/blob/%branch%/'
+                            layer.vcs_web_commit_url = 'http://gitlab.com/' + reponame + '/commit/%hash%'
+                        elif repoval.startswith('git://bitbucket.org/') or repoval.startswith('http://bitbucket.org/') or repoval.startswith('https://bitbucket.org/'):
                             reponame = re.sub('^.*bitbucket.org/', '', repoval)
                             reponame = re.sub('.git$', '', reponame)
                             layer.vcs_web_url = 'http://bitbucket.org/' + reponame
diff --git a/templates/layerindex/editlayer.html b/templates/layerindex/editlayer.html
index a06c317..dd95ea3 100644
--- a/templates/layerindex/editlayer.html
+++ b/templates/layerindex/editlayer.html
@@ -204,7 +204,7 @@
             this.vcs_web_commit_url = 'http://cgit.openembedded.org/' + reponame + '/commit/?id=%hash%'
             this.vcs_web_type = 'cgit'
         }
-        else if( repoval.indexOf('git.yoctoproject.org/') > -1 ) {
+        else if( repoval.startsWith('git://git.yoctoproject.org/') ) {
             reponame = repoval.replace(/^.*\//, '')
             this.vcs_web_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame
             this.vcs_web_tree_base_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/tree/%path%?h=%branch%'
@@ -212,7 +212,7 @@
             this.vcs_web_commit_url = 'http://git.yoctoproject.org/cgit/cgit.cgi/' + reponame + '/commit/?id=%hash%'
             this.vcs_web_type = 'cgit'
         }
-        else if( repoval.indexOf('github.com/') > -1 ) {
+        else if( repoval.startsWith('git://github.com/') ) {
             reponame = repoval.replace(/^.*github.com\//, '')
             reponame = reponame.replace(/.git$/, '')
             this.vcs_web_url = 'http://github.com/' + reponame
@@ -221,7 +221,7 @@
             this.vcs_web_commit_url = 'http://github.com/' + reponame + '/commit/%hash%/'
             this.vcs_web_type = '(custom)'
         }
-        else if( repoval.indexOf('gitlab.com/') > -1 ) {
+        else if( repoval.startsWith('git://gitlab.com/') ) {
             reponame = repoval.replace(/^.*gitlab.com\//, '')
             reponame = reponame.replace(/.git$/, '')
             this.vcs_web_url = 'http://gitlab.com/' + reponame
@@ -230,7 +230,7 @@
             this.vcs_web_commit_url = 'http://gitlab.com/' + reponame + '/commit/%hash%/'
             this.vcs_web_type = '(custom)'
         }
-        else if( repoval.indexOf('bitbucket.org/') > -1 ) {
+        else if( repoval.startsWith('git://bitbucket.org/') ) {
             reponame = repoval.replace(/^.*bitbucket.org\//, '')
             reponame = reponame.replace(/.git$/, '')
             this.vcs_web_url = 'http://bitbucket.org/' + reponame
-- 
2.17.1


