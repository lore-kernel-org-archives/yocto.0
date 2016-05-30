Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4E01E00C4B; Sun, 29 May 2016 21:32:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31718E00C1F
	for <yocto@yoctoproject.org>; Sun, 29 May 2016 21:32:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 May 2016 21:32:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,387,1459839600"; d="scan'208";a="964884354"
Received: from jialelim-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.83])
	by orsmga001.jf.intel.com with ESMTP; 29 May 2016 21:32:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 May 2016 16:31:13 +1200
Message-Id: <c64e4c57a9158c8ae5e49f526c3ff87950d3a94e.1464581354.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1464581354.git.paul.eggleton@linux.intel.com>
References: <cover.1464581354.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1464581354.git.paul.eggleton@linux.intel.com>
References: <cover.1464581354.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/5] update.py: refactor into two separate scripts
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
X-List-Received-Date: Mon, 30 May 2016 04:32:49 -0000

In order to try to avoid problems with leaking memory, context bleeding
from one layer to another, and lay the groundwork for supporting
updating all branches in one operation, split the updating of a single
layer out to its own internal script. This means that the tinfoil
instantiation and metadata parsing is in a completely separate process
per layer.

Implements [YOCTO #9647].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update.py       | 511 ++++--------------------------------------
 layerindex/update_layer.py | 547 +++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 591 insertions(+), 467 deletions(-)
 create mode 100644 layerindex/update_layer.py

diff --git a/layerindex/update.py b/layerindex/update.py
index 7daccef..f7cb25c 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -2,23 +2,20 @@
 
 # Fetch layer repositories and update layer index database
 #
-# Copyright (C) 2013 Intel Corporation
+# Copyright (C) 2013-2016 Intel Corporation
 # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
 #
 # Licensed under the MIT license, see COPYING.MIT for details
 
 
 import sys
-import os.path
+import os
 import optparse
 import logging
-from datetime import datetime
-import re
-import tempfile
-import shutil
+import subprocess
+import signal
 from distutils.version import LooseVersion
 import utils
-import recipeparse
 
 import warnings
 warnings.filterwarnings("ignore", category=DeprecationWarning)
@@ -33,79 +30,21 @@ except ImportError:
     sys.exit(1)
 
 
-def check_machine_conf(path, subdir_start):
-    subpath = path[len(subdir_start):]
-    res = conf_re.match(subpath)
-    if res:
-        return res.group(1)
-    return None
+def reenable_sigint():
+    signal.signal(signal.SIGINT, signal.SIG_DFL)
 
-def split_recipe_fn(path):
-    splitfn = os.path.basename(path).split('.bb')[0].split('_', 2)
-    pn = splitfn[0]
-    if len(splitfn) > 1:
-        pv = splitfn[1]
-    else:
-        pv = "1.0"
-    return (pn, pv)
-
-def update_recipe_file(data, path, recipe, layerdir_start, repodir):
-    fn = str(os.path.join(path, recipe.filename))
+def run_command_interruptible(cmd):
+    """
+    Run a command with output displayed on the console, but ensure any Ctrl+C is
+    processed only by the child process.
+    """
+    signal.signal(signal.SIGINT, signal.SIG_IGN)
     try:
-        logger.debug('Updating recipe %s' % fn)
-        envdata = bb.cache.Cache.loadDataFull(fn, [], data)
-        envdata.setVar('SRCPV', 'X')
-        recipe.pn = envdata.getVar("PN", True)
-        recipe.pv = envdata.getVar("PV", True)
-        recipe.summary = envdata.getVar("SUMMARY", True)
-        recipe.description = envdata.getVar("DESCRIPTION", True)
-        recipe.section = envdata.getVar("SECTION", True)
-        recipe.license = envdata.getVar("LICENSE", True)
-        recipe.homepage = envdata.getVar("HOMEPAGE", True)
-        recipe.bugtracker = envdata.getVar("BUGTRACKER", True) or ""
-        recipe.provides = envdata.getVar("PROVIDES", True) or ""
-        recipe.bbclassextend = envdata.getVar("BBCLASSEXTEND", True) or ""
-        # Handle recipe inherits for this recipe
-        gr = set(data.getVar("__inherit_cache", True) or [])
-        lr = set(envdata.getVar("__inherit_cache", True) or [])
-        recipe.inherits = ' '.join(sorted({os.path.splitext(os.path.basename(r))[0] for r in lr if r not in gr}))
-        recipe.blacklisted = envdata.getVarFlag('PNBLACKLIST', recipe.pn, True) or ""
-        recipe.save()
-
-        # Get file dependencies within this layer
-        deps = envdata.getVar('__depends', True)
-        filedeps = []
-        for depstr, date in deps:
-            found = False
-            if depstr.startswith(layerdir_start) and not depstr.endswith('/conf/layer.conf'):
-                filedeps.append(os.path.relpath(depstr, repodir))
-        from layerindex.models import RecipeFileDependency
-        RecipeFileDependency.objects.filter(recipe=recipe).delete()
-        for filedep in filedeps:
-            recipedep = RecipeFileDependency()
-            recipedep.layerbranch = recipe.layerbranch
-            recipedep.recipe = recipe
-            recipedep.path = filedep
-            recipedep.save()
-    except KeyboardInterrupt:
-        raise
-    except BaseException as e:
-        if not recipe.pn:
-            recipe.pn = recipe.filename[:-3].split('_')[0]
-        logger.error("Unable to read %s: %s", fn, str(e))
-
-def update_machine_conf_file(path, machine):
-    logger.debug('Updating machine %s' % path)
-    desc = ""
-    with open(path, 'r') as f:
-        for line in f:
-            if line.startswith('#@NAME:'):
-                desc = line[7:].strip()
-            if line.startswith('#@DESCRIPTION:'):
-                desc = line[14:].strip()
-                desc = re.sub(r'Machine configuration for( running)*( an)*( the)*', '', desc)
-                break
-    machine.description = desc
+        ret = subprocess.call(cmd, cwd=os.path.dirname(sys.argv[0]), shell=True, preexec_fn=reenable_sigint)
+    finally:
+        signal.signal(signal.SIGINT, signal.SIG_DFL)
+    return ret
+
 
 def main():
     if LooseVersion(git.__version__) < '0.3.1':
@@ -151,13 +90,9 @@ def main():
         parser.print_help()
         sys.exit(1)
 
-    if options.fullreload:
-        options.reload = True
-
     utils.setup_django()
     import settings
-    from layerindex.models import LayerItem, LayerBranch, Recipe, RecipeFileDependency, Machine, BBAppend, BBClass
-    from django.db import transaction
+    from layerindex.models import LayerItem
 
     logger.setLevel(options.loglevel)
 
@@ -225,397 +160,39 @@ def main():
             else:
                 out = utils.runcmd("git fetch", bitbakepath, logger=logger)
 
-        try:
-            (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
-        except recipeparse.RecipeParseError as e:
-            logger.error(str(e))
-            sys.exit(1)
-
-        # Clear the default value of SUMMARY so that we can use DESCRIPTION instead if it hasn't been set
-        tinfoil.config_data.setVar('SUMMARY', '')
-        # Clear the default value of DESCRIPTION so that we can see where it's not set
-        tinfoil.config_data.setVar('DESCRIPTION', '')
-        # Clear the default value of HOMEPAGE ('unknown')
-        tinfoil.config_data.setVar('HOMEPAGE', '')
-        # Set a blank value for LICENSE so that it doesn't cause the parser to die (e.g. with meta-ti -
-        # why won't they just fix that?!)
-        tinfoil.config_data.setVar('LICENSE', '')
-
         # Process and extract data from each layer
+        # We now do this by calling out to a separate script; doing otherwise turned out to be
+        # unreliable due to leaking memory (we're using bitbake internals in a manner in which
+        # they never get used during normal operation).
         for layer in layerquery:
-            transaction.enter_transaction_management()
-            transaction.managed(True)
-            try:
-                urldir = layer.get_fetch_dir()
-                repodir = os.path.join(fetchdir, urldir)
-                if layer.vcs_url in failedrepos:
-                    logger.info("Skipping update of layer %s as fetch of repository %s failed" % (layer.name, layer.vcs_url))
-                    transaction.rollback()
-                    continue
-
-                layerbranch = layer.get_layerbranch(options.branch)
-
-                branchname = options.branch
-                branchdesc = options.branch
-                if layerbranch:
-                    if layerbranch.actual_branch:
-                        branchname = layerbranch.actual_branch
-                        branchdesc = "%s (%s)" % (options.branch, branchname)
-
-                # Collect repo info
-                repo = git.Repo(repodir)
-                assert repo.bare == False
-                try:
-                    if options.nocheckout:
-                        topcommit = repo.commit('HEAD')
-                    else:
-                        topcommit = repo.commit('origin/%s' % branchname)
-                except:
-                    if layerbranch:
-                        logger.error("Failed update of layer %s - branch %s no longer exists" % (layer.name, branchdesc))
-                    else:
-                        logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
-                    transaction.rollback()
-                    continue
-
-                newbranch = False
-                if not layerbranch:
-                    # LayerBranch doesn't exist for this branch, create it
-                    newbranch = True
-                    layerbranch = LayerBranch()
-                    layerbranch.layer = layer
-                    layerbranch.branch = branch
-                    layerbranch_source = layer.get_layerbranch('master')
-                    if not layerbranch_source:
-                        layerbranch_source = layer.get_layerbranch(None)
-                    if layerbranch_source:
-                        layerbranch.vcs_subdir = layerbranch_source.vcs_subdir
-                    layerbranch.save()
-                    if layerbranch_source:
-                        for maintainer in layerbranch_source.layermaintainer_set.all():
-                            maintainer.pk = None
-                            maintainer.id = None
-                            maintainer.layerbranch = layerbranch
-                            maintainer.save()
-                        for dep in layerbranch_source.dependencies_set.all():
-                            dep.pk = None
-                            dep.id = None
-                            dep.layerbranch = layerbranch
-                            dep.save()
-
-                if layerbranch.vcs_subdir and not options.nocheckout:
-                    # Find latest commit in subdirectory
-                    # A bit odd to do it this way but apparently there's no other way in the GitPython API
-                    topcommit = next(repo.iter_commits('origin/%s' % branchname, paths=layerbranch.vcs_subdir), None)
-                    if not topcommit:
-                        # This will error out if the directory is completely invalid or had never existed at this point
-                        # If it previously existed but has since been deleted, you will get the revision where it was
-                        # deleted - so we need to handle that case separately later
-                        if newbranch:
-                            logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
-                        elif layerbranch.vcs_subdir:
-                            logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
-                        else:
-                            logger.error("Failed to get last revision for layer %s on branch %s" % (layer.name, branchdesc))
-                        transaction.rollback()
-                        continue
-
-                layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
-                layerdir_start = os.path.normpath(layerdir) + os.sep
-                layerrecipes = Recipe.objects.filter(layerbranch=layerbranch)
-                layermachines = Machine.objects.filter(layerbranch=layerbranch)
-                layerappends = BBAppend.objects.filter(layerbranch=layerbranch)
-                layerclasses = BBClass.objects.filter(layerbranch=layerbranch)
-                if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload:
-                    # Check out appropriate branch
-                    if not options.nocheckout:
-                        out = utils.runcmd("git checkout origin/%s" % branchname, repodir, logger=logger)
-                        out = utils.runcmd("git clean -f -x", repodir, logger=logger)
-
-                    if layerbranch.vcs_subdir and not os.path.exists(layerdir):
-                        if newbranch:
-                            logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
-                        else:
-                            logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
-                        transaction.rollback()
-                        continue
-
-                    if not os.path.exists(os.path.join(layerdir, 'conf/layer.conf')):
-                        logger.error("conf/layer.conf not found for layer %s - is subdirectory set correctly?" % layer.name)
-                        transaction.rollback()
-                        continue
-
-                    logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
-
-                    try:
-                        config_data_copy = recipeparse.setup_layer(tinfoil.config_data, fetchdir, layerdir, layer, layerbranch)
-                    except recipeparse.RecipeParseError as e:
-                        logger.error(str(e))
-                        transaction.rollback()
-                        continue
-
-                    if layerbranch.vcs_last_rev and not options.reload:
-                        try:
-                            diff = repo.commit(layerbranch.vcs_last_rev).diff(topcommit)
-                        except Exception as e:
-                            logger.warn("Unable to get diff from last commit hash for layer %s - falling back to slow update: %s" % (layer.name, str(e)))
-                            diff = None
-                    else:
-                        diff = None
-
-                    # We handle recipes specially to try to preserve the same id
-                    # when recipe upgrades happen (so that if a user bookmarks a
-                    # recipe page it remains valid)
-                    layerrecipes_delete = []
-                    layerrecipes_add = []
-
-                    # Check if any paths should be ignored because there are layers within this layer
-                    removedirs = []
-                    for root, dirs, files in os.walk(layerdir):
-                        for d in dirs:
-                            if os.path.exists(os.path.join(root, d, 'conf', 'layer.conf')):
-                                removedirs.append(os.path.join(root, d) + os.sep)
-
-                    if diff:
-                        # Apply git changes to existing recipe list
-
-                        if layerbranch.vcs_subdir:
-                            subdir_start = os.path.normpath(layerbranch.vcs_subdir) + os.sep
-                        else:
-                            subdir_start = ""
-
-                        updatedrecipes = set()
-                        for d in diff.iter_change_type('D'):
-                            path = d.a_blob.path
-                            if path.startswith(subdir_start):
-                                skip = False
-                                for d in removedirs:
-                                    if path.startswith(d):
-                                        skip = True
-                                        break
-                                if skip:
-                                    continue
-                                (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
-                                if typename == 'recipe':
-                                    values = layerrecipes.filter(filepath=filepath).filter(filename=filename).values('id', 'filepath', 'filename', 'pn')
-                                    if len(values):
-                                        layerrecipes_delete.append(values[0])
-                                        logger.debug("Mark %s for deletion" % values[0])
-                                        updatedrecipes.add(os.path.join(values[0]['filepath'], values[0]['filename']))
-                                    else:
-                                        logger.warn("Deleted recipe %s could not be found" % path)
-                                elif typename == 'bbappend':
-                                    layerappends.filter(filepath=filepath).filter(filename=filename).delete()
-                                elif typename == 'machine':
-                                    layermachines.filter(name=filename).delete()
-                                elif typename == 'bbclass':
-                                    layerclasses.filter(name=filename).delete()
-
-                        for d in diff.iter_change_type('A'):
-                            path = d.b_blob.path
-                            if path.startswith(subdir_start):
-                                skip = False
-                                for d in removedirs:
-                                    if path.startswith(d):
-                                        skip = True
-                                        break
-                                if skip:
-                                    continue
-                                (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
-                                if typename == 'recipe':
-                                    layerrecipes_add.append(os.path.join(repodir, path))
-                                    logger.debug("Mark %s for addition" % path)
-                                    updatedrecipes.add(os.path.join(filepath, filename))
-                                elif typename == 'bbappend':
-                                    append = BBAppend()
-                                    append.layerbranch = layerbranch
-                                    append.filename = filename
-                                    append.filepath = filepath
-                                    append.save()
-                                elif typename == 'machine':
-                                    machine = Machine()
-                                    machine.layerbranch = layerbranch
-                                    machine.name = filename
-                                    update_machine_conf_file(os.path.join(repodir, path), machine)
-                                    machine.save()
-                                elif typename == 'bbclass':
-                                    bbclass = BBClass()
-                                    bbclass.layerbranch = layerbranch
-                                    bbclass.name = filename
-                                    bbclass.save()
-
-                        dirtyrecipes = set()
-                        for d in diff.iter_change_type('M'):
-                            path = d.a_blob.path
-                            if path.startswith(subdir_start):
-                                skip = False
-                                for d in removedirs:
-                                    if path.startswith(d):
-                                        skip = True
-                                        break
-                                if skip:
-                                    continue
-                                (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
-                                if typename == 'recipe':
-                                    logger.debug("Mark %s for update" % path)
-                                    results = layerrecipes.filter(filepath=filepath).filter(filename=filename)[:1]
-                                    if results:
-                                        recipe = results[0]
-                                        update_recipe_file(config_data_copy, os.path.join(layerdir, filepath), recipe, layerdir_start, repodir)
-                                        recipe.save()
-                                        updatedrecipes.add(recipe.full_path())
-                                elif typename == 'machine':
-                                    results = layermachines.filter(name=filename)
-                                    if results:
-                                        machine = results[0]
-                                        update_machine_conf_file(os.path.join(repodir, path), machine)
-                                        machine.save()
-
-                                deps = RecipeFileDependency.objects.filter(layerbranch=layerbranch).filter(path=path)
-                                for dep in deps:
-                                    dirtyrecipes.add(dep.recipe)
-
-                        for recipe in dirtyrecipes:
-                            if not recipe.full_path() in updatedrecipes:
-                                update_recipe_file(config_data_copy, os.path.join(layerdir, recipe.filepath), recipe, layerdir_start, repodir)
-                    else:
-                        # Collect recipe data from scratch
-
-                        layerrecipe_fns = []
-                        if options.fullreload:
-                            layerrecipes.delete()
-                        else:
-                            # First, check which recipes still exist
-                            layerrecipe_values = layerrecipes.values('id', 'filepath', 'filename', 'pn')
-                            for v in layerrecipe_values:
-                                root = os.path.join(layerdir, v['filepath'])
-                                fullpath = os.path.join(root, v['filename'])
-                                preserve = True
-                                if os.path.exists(fullpath):
-                                    for d in removedirs:
-                                        if fullpath.startswith(d):
-                                            preserve = False
-                                            break
-                                else:
-                                    preserve = False
-
-                                if preserve:
-                                    # Recipe still exists, update it
-                                    results = layerrecipes.filter(id=v['id'])[:1]
-                                    recipe = results[0]
-                                    update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
-                                else:
-                                    # Recipe no longer exists, mark it for later on
-                                    layerrecipes_delete.append(v)
-                                layerrecipe_fns.append(fullpath)
-
-                        layermachines.delete()
-                        layerappends.delete()
-                        layerclasses.delete()
-                        for root, dirs, files in os.walk(layerdir):
-                            if '.git' in dirs:
-                                dirs.remove('.git')
-                            for d in dirs[:]:
-                                fullpath = os.path.join(root, d) + os.sep
-                                if fullpath in removedirs:
-                                    dirs.remove(d)
-                            for f in files:
-                                fullpath = os.path.join(root, f)
-                                (typename, _, filename) = recipeparse.detect_file_type(fullpath, layerdir_start)
-                                if typename == 'recipe':
-                                    if fullpath not in layerrecipe_fns:
-                                        layerrecipes_add.append(fullpath)
-                                elif typename == 'bbappend':
-                                    append = BBAppend()
-                                    append.layerbranch = layerbranch
-                                    append.filename = f
-                                    append.filepath = os.path.relpath(root, layerdir)
-                                    append.save()
-                                elif typename == 'machine':
-                                    machine = Machine()
-                                    machine.layerbranch = layerbranch
-                                    machine.name = filename
-                                    update_machine_conf_file(fullpath, machine)
-                                    machine.save()
-                                elif typename == 'bbclass':
-                                    bbclass = BBClass()
-                                    bbclass.layerbranch = layerbranch
-                                    bbclass.name = filename
-                                    bbclass.save()
-
-                    for added in layerrecipes_add:
-                        # This is good enough without actually parsing the file
-                        (pn, pv) = split_recipe_fn(added)
-                        oldid = -1
-                        for deleted in layerrecipes_delete:
-                            if deleted['pn'] == pn:
-                                oldid = deleted['id']
-                                layerrecipes_delete.remove(deleted)
-                                break
-                        if oldid > -1:
-                            # Reclaim a record we would have deleted
-                            results = Recipe.objects.filter(id=oldid)[:1]
-                            recipe = results[0]
-                            logger.debug("Reclaim %s for %s %s" % (recipe, pn, pv))
-                        else:
-                            # Create new record
-                            logger.debug("Add new recipe %s" % added)
-                            recipe = Recipe()
-                        recipe.layerbranch = layerbranch
-                        recipe.filename = os.path.basename(added)
-                        root = os.path.dirname(added)
-                        recipe.filepath = os.path.relpath(root, layerdir)
-                        update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
-                        recipe.save()
-
-                    for deleted in layerrecipes_delete:
-                        logger.debug("Delete %s" % deleted)
-                        results = Recipe.objects.filter(id=deleted['id'])[:1]
-                        recipe = results[0]
-                        recipe.delete()
-
-                    # Save repo info
-                    layerbranch.vcs_last_rev = topcommit.hexsha
-                    layerbranch.vcs_last_commit = datetime.fromtimestamp(topcommit.committed_date)
-                else:
-                    logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
-
-                layerbranch.vcs_last_fetch = datetime.now()
-                layerbranch.save()
-
-                if options.dryrun:
-                    transaction.rollback()
-                else:
-                    transaction.commit()
-
-                # Slightly hacky way of avoiding memory leaks
-                bb.event.ui_queue = []
-                bb.parse.parse_py.BBHandler.cached_statements = {}
-                bb.codeparser.codeparsercache = bb.codeparser.CodeParserCache()
-                if hasattr(bb.codeparser, 'codecache'):
-                    bb.codeparser.codecache = bb.codeparser.SetCache()
-                bb.fetch._checksum_cache = bb.checksum.FileChecksumCache()
-                bb.fetch.urldata_cache = {}
-                bb.fetch.saved_headrevs = {}
-                bb.parse.__pkgsplit_cache__={}
-                bb.parse.__mtime_cache = {}
-                bb.parse.init_parser(tinfoil.config_data)
-
-            except KeyboardInterrupt:
-                transaction.rollback()
-                logger.warn("Update interrupted, changes to %s rolled back" % layer.name)
+            if layer.vcs_url in failedrepos:
+                logger.info("Skipping update of layer %s as fetch of repository %s failed" % (layer.name, layer.vcs_url))
+
+            urldir = layer.get_fetch_dir()
+            repodir = os.path.join(fetchdir, urldir)
+
+            cmd = 'python update_layer.py -l %s -b %s' % (layer.name, options.branch)
+            if options.reload:
+                cmd += ' --reload'
+            if options.fullreload:
+                cmd += ' --fullreload'
+            if options.nocheckout:
+                cmd += ' --nocheckout'
+            if options.dryrun:
+                cmd += ' -n'
+            if options.loglevel == logging.DEBUG:
+                cmd += ' -d'
+            elif options.loglevel == logging.ERROR:
+                cmd += ' -q'
+            logger.debug('Running layer update command: %s' % cmd)
+            ret = run_command_interruptible(cmd)
+            if ret == 254:
+                # Interrupted by user, break out of loop
                 break
-            except:
-                import traceback
-                traceback.print_exc()
-                transaction.rollback()
-            finally:
-                transaction.leave_transaction_management()
 
     finally:
         utils.unlock_file(lockfile)
 
-    shutil.rmtree(tempdir)
     sys.exit(0)
 
 
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
new file mode 100644
index 0000000..bf1dbb2
--- /dev/null
+++ b/layerindex/update_layer.py
@@ -0,0 +1,547 @@
+#!/usr/bin/env python
+
+# Update layer index database for a single layer
+#
+# Copyright (C) 2013-2016 Intel Corporation
+# Author: Paul Eggleton <paul.eggleton@linux.intel.com>
+#
+# Licensed under the MIT license, see COPYING.MIT for details
+
+
+import sys
+import os
+import optparse
+import logging
+from datetime import datetime
+import re
+import tempfile
+import shutil
+from distutils.version import LooseVersion
+import utils
+import recipeparse
+
+import warnings
+warnings.filterwarnings("ignore", category=DeprecationWarning)
+
+logger = utils.logger_create('LayerIndexUpdate')
+
+# Ensure PythonGit is installed (buildhistory_analysis needs it)
+try:
+    import git
+except ImportError:
+    logger.error("Please install PythonGit 0.3.1 or later in order to use this script")
+    sys.exit(1)
+
+
+def check_machine_conf(path, subdir_start):
+    subpath = path[len(subdir_start):]
+    res = conf_re.match(subpath)
+    if res:
+        return res.group(1)
+    return None
+
+def split_recipe_fn(path):
+    splitfn = os.path.basename(path).split('.bb')[0].split('_', 2)
+    pn = splitfn[0]
+    if len(splitfn) > 1:
+        pv = splitfn[1]
+    else:
+        pv = "1.0"
+    return (pn, pv)
+
+def update_recipe_file(data, path, recipe, layerdir_start, repodir):
+    fn = str(os.path.join(path, recipe.filename))
+    try:
+        logger.debug('Updating recipe %s' % fn)
+        envdata = bb.cache.Cache.loadDataFull(fn, [], data)
+        envdata.setVar('SRCPV', 'X')
+        recipe.pn = envdata.getVar("PN", True)
+        recipe.pv = envdata.getVar("PV", True)
+        recipe.summary = envdata.getVar("SUMMARY", True)
+        recipe.description = envdata.getVar("DESCRIPTION", True)
+        recipe.section = envdata.getVar("SECTION", True)
+        recipe.license = envdata.getVar("LICENSE", True)
+        recipe.homepage = envdata.getVar("HOMEPAGE", True)
+        recipe.bugtracker = envdata.getVar("BUGTRACKER", True) or ""
+        recipe.provides = envdata.getVar("PROVIDES", True) or ""
+        recipe.bbclassextend = envdata.getVar("BBCLASSEXTEND", True) or ""
+        # Handle recipe inherits for this recipe
+        gr = set(data.getVar("__inherit_cache", True) or [])
+        lr = set(envdata.getVar("__inherit_cache", True) or [])
+        recipe.inherits = ' '.join(sorted({os.path.splitext(os.path.basename(r))[0] for r in lr if r not in gr}))
+        recipe.blacklisted = envdata.getVarFlag('PNBLACKLIST', recipe.pn, True) or ""
+        recipe.save()
+
+        # Get file dependencies within this layer
+        deps = envdata.getVar('__depends', True)
+        filedeps = []
+        for depstr, date in deps:
+            found = False
+            if depstr.startswith(layerdir_start) and not depstr.endswith('/conf/layer.conf'):
+                filedeps.append(os.path.relpath(depstr, repodir))
+        from layerindex.models import RecipeFileDependency
+        RecipeFileDependency.objects.filter(recipe=recipe).delete()
+        for filedep in filedeps:
+            recipedep = RecipeFileDependency()
+            recipedep.layerbranch = recipe.layerbranch
+            recipedep.recipe = recipe
+            recipedep.path = filedep
+            recipedep.save()
+    except KeyboardInterrupt:
+        raise
+    except BaseException as e:
+        if not recipe.pn:
+            recipe.pn = recipe.filename[:-3].split('_')[0]
+        logger.error("Unable to read %s: %s", fn, str(e))
+
+def update_machine_conf_file(path, machine):
+    logger.debug('Updating machine %s' % path)
+    desc = ""
+    with open(path, 'r') as f:
+        for line in f:
+            if line.startswith('#@NAME:'):
+                desc = line[7:].strip()
+            if line.startswith('#@DESCRIPTION:'):
+                desc = line[14:].strip()
+                desc = re.sub(r'Machine configuration for( running)*( an)*( the)*', '', desc)
+                break
+    machine.description = desc
+
+def main():
+    if LooseVersion(git.__version__) < '0.3.1':
+        logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
+        sys.exit(1)
+
+
+    parser = optparse.OptionParser(
+        usage = """
+    %prog [options]""")
+
+    parser.add_option("-b", "--branch",
+            help = "Specify branch to update",
+            action="store", dest="branch", default='master')
+    parser.add_option("-l", "--layer",
+            help = "Layer to update",
+            action="store", dest="layer")
+    parser.add_option("-r", "--reload",
+            help = "Reload recipe data instead of updating since last update",
+            action="store_true", dest="reload")
+    parser.add_option("", "--fullreload",
+            help = "Discard existing recipe data and fetch it from scratch",
+            action="store_true", dest="fullreload")
+    parser.add_option("-n", "--dry-run",
+            help = "Don't write any data back to the database",
+            action="store_true", dest="dryrun")
+    parser.add_option("", "--nocheckout",
+            help = "Don't check out branches",
+            action="store_true", dest="nocheckout")
+    parser.add_option("-d", "--debug",
+            help = "Enable debug output",
+            action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
+    parser.add_option("-q", "--quiet",
+            help = "Hide all output except error messages",
+            action="store_const", const=logging.ERROR, dest="loglevel")
+
+    options, args = parser.parse_args(sys.argv)
+    if len(args) > 1:
+        logger.error('unexpected argument "%s"' % args[1])
+        parser.print_help()
+        sys.exit(1)
+
+    if options.fullreload:
+        options.reload = True
+
+    utils.setup_django()
+    import settings
+    from layerindex.models import LayerItem, LayerBranch, Recipe, RecipeFileDependency, Machine, BBAppend, BBClass
+    from django.db import transaction
+
+    logger.setLevel(options.loglevel)
+
+    branch = utils.get_branch(options.branch)
+    if not branch:
+        logger.error("Specified branch %s is not valid" % options.branch)
+        sys.exit(1)
+
+    fetchdir = settings.LAYER_FETCH_DIR
+    if not fetchdir:
+        logger.error("Please set LAYER_FETCH_DIR in settings.py")
+        sys.exit(1)
+
+    bitbakepath = os.path.join(fetchdir, 'bitbake')
+
+    try:
+        (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
+    except recipeparse.RecipeParseError as e:
+        logger.error(str(e))
+        sys.exit(1)
+
+    # Clear the default value of SUMMARY so that we can use DESCRIPTION instead if it hasn't been set
+    tinfoil.config_data.setVar('SUMMARY', '')
+    # Clear the default value of DESCRIPTION so that we can see where it's not set
+    tinfoil.config_data.setVar('DESCRIPTION', '')
+    # Clear the default value of HOMEPAGE ('unknown')
+    tinfoil.config_data.setVar('HOMEPAGE', '')
+    # Set a blank value for LICENSE so that it doesn't cause the parser to die (e.g. with meta-ti -
+    # why won't they just fix that?!)
+    tinfoil.config_data.setVar('LICENSE', '')
+
+    transaction.enter_transaction_management()
+    transaction.managed(True)
+    try:
+        layer = utils.get_layer(options.layer)
+        urldir = layer.get_fetch_dir()
+        repodir = os.path.join(fetchdir, urldir)
+
+        layerbranch = layer.get_layerbranch(options.branch)
+
+        branchname = options.branch
+        branchdesc = options.branch
+        if layerbranch:
+            if layerbranch.actual_branch:
+                branchname = layerbranch.actual_branch
+                branchdesc = "%s (%s)" % (options.branch, branchname)
+
+        # Collect repo info
+        repo = git.Repo(repodir)
+        assert repo.bare == False
+        try:
+            if options.nocheckout:
+                topcommit = repo.commit('HEAD')
+            else:
+                topcommit = repo.commit('origin/%s' % branchname)
+        except:
+            if layerbranch:
+                logger.error("Failed update of layer %s - branch %s no longer exists" % (layer.name, branchdesc))
+            else:
+                logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
+            transaction.rollback()
+            sys.exit(1)
+
+        newbranch = False
+        if not layerbranch:
+            # LayerBranch doesn't exist for this branch, create it
+            newbranch = True
+            layerbranch = LayerBranch()
+            layerbranch.layer = layer
+            layerbranch.branch = branch
+            layerbranch_source = layer.get_layerbranch('master')
+            if not layerbranch_source:
+                layerbranch_source = layer.get_layerbranch(None)
+            if layerbranch_source:
+                layerbranch.vcs_subdir = layerbranch_source.vcs_subdir
+            layerbranch.save()
+            if layerbranch_source:
+                for maintainer in layerbranch_source.layermaintainer_set.all():
+                    maintainer.pk = None
+                    maintainer.id = None
+                    maintainer.layerbranch = layerbranch
+                    maintainer.save()
+                for dep in layerbranch_source.dependencies_set.all():
+                    dep.pk = None
+                    dep.id = None
+                    dep.layerbranch = layerbranch
+                    dep.save()
+
+        if layerbranch.vcs_subdir and not options.nocheckout:
+            # Find latest commit in subdirectory
+            # A bit odd to do it this way but apparently there's no other way in the GitPython API
+            topcommit = next(repo.iter_commits('origin/%s' % branchname, paths=layerbranch.vcs_subdir), None)
+            if not topcommit:
+                # This will error out if the directory is completely invalid or had never existed at this point
+                # If it previously existed but has since been deleted, you will get the revision where it was
+                # deleted - so we need to handle that case separately later
+                if newbranch:
+                    logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
+                elif layerbranch.vcs_subdir:
+                    logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
+                else:
+                    logger.error("Failed to get last revision for layer %s on branch %s" % (layer.name, branchdesc))
+                transaction.rollback()
+                sys.exit(1)
+
+        layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
+        layerdir_start = os.path.normpath(layerdir) + os.sep
+        layerrecipes = Recipe.objects.filter(layerbranch=layerbranch)
+        layermachines = Machine.objects.filter(layerbranch=layerbranch)
+        layerappends = BBAppend.objects.filter(layerbranch=layerbranch)
+        layerclasses = BBClass.objects.filter(layerbranch=layerbranch)
+        if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload:
+            # Check out appropriate branch
+            if not options.nocheckout:
+                out = utils.runcmd("git checkout origin/%s" % branchname, repodir, logger=logger)
+                out = utils.runcmd("git clean -f -x", repodir, logger=logger)
+
+            if layerbranch.vcs_subdir and not os.path.exists(layerdir):
+                if newbranch:
+                    logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
+                else:
+                    logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
+                transaction.rollback()
+                sys.exit(1)
+
+            if not os.path.exists(os.path.join(layerdir, 'conf/layer.conf')):
+                logger.error("conf/layer.conf not found for layer %s - is subdirectory set correctly?" % layer.name)
+                transaction.rollback()
+                sys.exit(1)
+
+            logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
+
+            try:
+                config_data_copy = recipeparse.setup_layer(tinfoil.config_data, fetchdir, layerdir, layer, layerbranch)
+            except recipeparse.RecipeParseError as e:
+                logger.error(str(e))
+                transaction.rollback()
+                sys.exit(1)
+
+            if layerbranch.vcs_last_rev and not options.reload:
+                try:
+                    diff = repo.commit(layerbranch.vcs_last_rev).diff(topcommit)
+                except Exception as e:
+                    logger.warn("Unable to get diff from last commit hash for layer %s - falling back to slow update: %s" % (layer.name, str(e)))
+                    diff = None
+            else:
+                diff = None
+
+            # We handle recipes specially to try to preserve the same id
+            # when recipe upgrades happen (so that if a user bookmarks a
+            # recipe page it remains valid)
+            layerrecipes_delete = []
+            layerrecipes_add = []
+
+            # Check if any paths should be ignored because there are layers within this layer
+            removedirs = []
+            for root, dirs, files in os.walk(layerdir):
+                for d in dirs:
+                    if os.path.exists(os.path.join(root, d, 'conf', 'layer.conf')):
+                        removedirs.append(os.path.join(root, d) + os.sep)
+
+            if diff:
+                # Apply git changes to existing recipe list
+
+                if layerbranch.vcs_subdir:
+                    subdir_start = os.path.normpath(layerbranch.vcs_subdir) + os.sep
+                else:
+                    subdir_start = ""
+
+                updatedrecipes = set()
+                for d in diff.iter_change_type('D'):
+                    path = d.a_blob.path
+                    if path.startswith(subdir_start):
+                        skip = False
+                        for d in removedirs:
+                            if path.startswith(d):
+                                skip = True
+                                break
+                        if skip:
+                            continue
+                        (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
+                        if typename == 'recipe':
+                            values = layerrecipes.filter(filepath=filepath).filter(filename=filename).values('id', 'filepath', 'filename', 'pn')
+                            if len(values):
+                                layerrecipes_delete.append(values[0])
+                                logger.debug("Mark %s for deletion" % values[0])
+                                updatedrecipes.add(os.path.join(values[0]['filepath'], values[0]['filename']))
+                            else:
+                                logger.warn("Deleted recipe %s could not be found" % path)
+                        elif typename == 'bbappend':
+                            layerappends.filter(filepath=filepath).filter(filename=filename).delete()
+                        elif typename == 'machine':
+                            layermachines.filter(name=filename).delete()
+                        elif typename == 'bbclass':
+                            layerclasses.filter(name=filename).delete()
+
+                for d in diff.iter_change_type('A'):
+                    path = d.b_blob.path
+                    if path.startswith(subdir_start):
+                        skip = False
+                        for d in removedirs:
+                            if path.startswith(d):
+                                skip = True
+                                break
+                        if skip:
+                            continue
+                        (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
+                        if typename == 'recipe':
+                            layerrecipes_add.append(os.path.join(repodir, path))
+                            logger.debug("Mark %s for addition" % path)
+                            updatedrecipes.add(os.path.join(filepath, filename))
+                        elif typename == 'bbappend':
+                            append = BBAppend()
+                            append.layerbranch = layerbranch
+                            append.filename = filename
+                            append.filepath = filepath
+                            append.save()
+                        elif typename == 'machine':
+                            machine = Machine()
+                            machine.layerbranch = layerbranch
+                            machine.name = filename
+                            update_machine_conf_file(os.path.join(repodir, path), machine)
+                            machine.save()
+                        elif typename == 'bbclass':
+                            bbclass = BBClass()
+                            bbclass.layerbranch = layerbranch
+                            bbclass.name = filename
+                            bbclass.save()
+
+                dirtyrecipes = set()
+                for d in diff.iter_change_type('M'):
+                    path = d.a_blob.path
+                    if path.startswith(subdir_start):
+                        skip = False
+                        for d in removedirs:
+                            if path.startswith(d):
+                                skip = True
+                                break
+                        if skip:
+                            continue
+                        (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
+                        if typename == 'recipe':
+                            logger.debug("Mark %s for update" % path)
+                            results = layerrecipes.filter(filepath=filepath).filter(filename=filename)[:1]
+                            if results:
+                                recipe = results[0]
+                                update_recipe_file(config_data_copy, os.path.join(layerdir, filepath), recipe, layerdir_start, repodir)
+                                recipe.save()
+                                updatedrecipes.add(recipe.full_path())
+                        elif typename == 'machine':
+                            results = layermachines.filter(name=filename)
+                            if results:
+                                machine = results[0]
+                                update_machine_conf_file(os.path.join(repodir, path), machine)
+                                machine.save()
+
+                        deps = RecipeFileDependency.objects.filter(layerbranch=layerbranch).filter(path=path)
+                        for dep in deps:
+                            dirtyrecipes.add(dep.recipe)
+
+                for recipe in dirtyrecipes:
+                    if not recipe.full_path() in updatedrecipes:
+                        update_recipe_file(config_data_copy, os.path.join(layerdir, recipe.filepath), recipe, layerdir_start, repodir)
+            else:
+                # Collect recipe data from scratch
+
+                layerrecipe_fns = []
+                if options.fullreload:
+                    layerrecipes.delete()
+                else:
+                    # First, check which recipes still exist
+                    layerrecipe_values = layerrecipes.values('id', 'filepath', 'filename', 'pn')
+                    for v in layerrecipe_values:
+                        root = os.path.join(layerdir, v['filepath'])
+                        fullpath = os.path.join(root, v['filename'])
+                        preserve = True
+                        if os.path.exists(fullpath):
+                            for d in removedirs:
+                                if fullpath.startswith(d):
+                                    preserve = False
+                                    break
+                        else:
+                            preserve = False
+
+                        if preserve:
+                            # Recipe still exists, update it
+                            results = layerrecipes.filter(id=v['id'])[:1]
+                            recipe = results[0]
+                            update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
+                        else:
+                            # Recipe no longer exists, mark it for later on
+                            layerrecipes_delete.append(v)
+                        layerrecipe_fns.append(fullpath)
+
+                layermachines.delete()
+                layerappends.delete()
+                layerclasses.delete()
+                for root, dirs, files in os.walk(layerdir):
+                    if '.git' in dirs:
+                        dirs.remove('.git')
+                    for d in dirs[:]:
+                        fullpath = os.path.join(root, d) + os.sep
+                        if fullpath in removedirs:
+                            dirs.remove(d)
+                    for f in files:
+                        fullpath = os.path.join(root, f)
+                        (typename, _, filename) = recipeparse.detect_file_type(fullpath, layerdir_start)
+                        if typename == 'recipe':
+                            if fullpath not in layerrecipe_fns:
+                                layerrecipes_add.append(fullpath)
+                        elif typename == 'bbappend':
+                            append = BBAppend()
+                            append.layerbranch = layerbranch
+                            append.filename = f
+                            append.filepath = os.path.relpath(root, layerdir)
+                            append.save()
+                        elif typename == 'machine':
+                            machine = Machine()
+                            machine.layerbranch = layerbranch
+                            machine.name = filename
+                            update_machine_conf_file(fullpath, machine)
+                            machine.save()
+                        elif typename == 'bbclass':
+                            bbclass = BBClass()
+                            bbclass.layerbranch = layerbranch
+                            bbclass.name = filename
+                            bbclass.save()
+
+            for added in layerrecipes_add:
+                # This is good enough without actually parsing the file
+                (pn, pv) = split_recipe_fn(added)
+                oldid = -1
+                for deleted in layerrecipes_delete:
+                    if deleted['pn'] == pn:
+                        oldid = deleted['id']
+                        layerrecipes_delete.remove(deleted)
+                        break
+                if oldid > -1:
+                    # Reclaim a record we would have deleted
+                    results = Recipe.objects.filter(id=oldid)[:1]
+                    recipe = results[0]
+                    logger.debug("Reclaim %s for %s %s" % (recipe, pn, pv))
+                else:
+                    # Create new record
+                    logger.debug("Add new recipe %s" % added)
+                    recipe = Recipe()
+                recipe.layerbranch = layerbranch
+                recipe.filename = os.path.basename(added)
+                root = os.path.dirname(added)
+                recipe.filepath = os.path.relpath(root, layerdir)
+                update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
+                recipe.save()
+
+            for deleted in layerrecipes_delete:
+                logger.debug("Delete %s" % deleted)
+                results = Recipe.objects.filter(id=deleted['id'])[:1]
+                recipe = results[0]
+                recipe.delete()
+
+            # Save repo info
+            layerbranch.vcs_last_rev = topcommit.hexsha
+            layerbranch.vcs_last_commit = datetime.fromtimestamp(topcommit.committed_date)
+        else:
+            logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
+
+        layerbranch.vcs_last_fetch = datetime.now()
+        layerbranch.save()
+
+        if options.dryrun:
+            transaction.rollback()
+        else:
+            transaction.commit()
+
+    except KeyboardInterrupt:
+        transaction.rollback()
+        logger.warn("Update interrupted, changes to %s rolled back" % layer.name)
+        sys.exit(254)
+    except:
+        import traceback
+        traceback.print_exc()
+        transaction.rollback()
+    finally:
+        transaction.leave_transaction_management()
+
+    shutil.rmtree(tempdir)
+    sys.exit(0)
+
+
+if __name__ == "__main__":
+    main()
-- 
2.5.5


