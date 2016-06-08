Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D12BBE00D5B; Wed,  8 Jun 2016 06:21:55 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFAFDE00D46
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:21:22 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 08 Jun 2016 06:21:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,439,1459839600"; d="scan'208";a="824134253"
Received: from mshirsix-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.147.125])
	by orsmga003.jf.intel.com with ESMTP; 08 Jun 2016 06:21:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  9 Jun 2016 01:20:07 +1200
Message-Id: <d0afb94e7861991ceaede4ce51b33cec09aaf4e9.1465391621.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1465391621.git.paul.eggleton@linux.intel.com>
References: <cover.1465391621.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH v2 14/15] update_layer.py: use new-style transaction API
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
X-List-Received-Date: Wed, 08 Jun 2016 13:21:55 -0000

The old transaction API has been removed in Django 1.8 and was
deprecated at 1.6. There's no explicit open transaction, commit or
rollback now - we just wrap the layer operations in
"with transaction.atomic()"; if we need to roll back we just raise a
"dummy" exception.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/update_layer.py | 781 ++++++++++++++++++++++-----------------------
 1 file changed, 389 insertions(+), 392 deletions(-)

diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index bda79cb..fd8d3d4 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -34,6 +34,10 @@ except ImportError:
     sys.exit(1)
 
 
+class DryRunRollbackException(Exception):
+    pass
+
+
 def check_machine_conf(path, subdir_start):
     subpath = path[len(subdir_start):]
     res = conf_re.match(subpath)
@@ -187,429 +191,422 @@ def main():
     # why won't they just fix that?!)
     tinfoil.config_data.setVar('LICENSE', '')
 
-    transaction.enter_transaction_management()
-    transaction.managed(True)
     try:
-        layer = utils.get_layer(options.layer)
-        urldir = layer.get_fetch_dir()
-        repodir = os.path.join(fetchdir, urldir)
-
-        layerbranch = layer.get_layerbranch(options.branch)
-
-        branchname = options.branch
-        branchdesc = options.branch
-        if layerbranch:
-            if layerbranch.actual_branch:
-                branchname = layerbranch.actual_branch
-                branchdesc = "%s (%s)" % (options.branch, branchname)
-
-        # Collect repo info
-        repo = git.Repo(repodir)
-        assert repo.bare == False
-        try:
-            if options.nocheckout:
-                topcommit = repo.commit('HEAD')
-            else:
-                topcommit = repo.commit('origin/%s' % branchname)
-        except:
-            if layerbranch:
-                logger.error("Failed update of layer %s - branch %s no longer exists" % (layer.name, branchdesc))
-            else:
-                logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
-            transaction.rollback()
-            sys.exit(1)
-
-        newbranch = False
-        if not layerbranch:
-            # LayerBranch doesn't exist for this branch, create it
-            newbranch = True
-            layerbranch = LayerBranch()
-            layerbranch.layer = layer
-            layerbranch.branch = branch
-            layerbranch_source = layer.get_layerbranch('master')
-            if not layerbranch_source:
-                layerbranch_source = layer.get_layerbranch(None)
-            if layerbranch_source:
-                layerbranch.vcs_subdir = layerbranch_source.vcs_subdir
-            layerbranch.save()
-            if layerbranch_source:
-                for maintainer in layerbranch_source.layermaintainer_set.all():
-                    maintainer.pk = None
-                    maintainer.id = None
-                    maintainer.layerbranch = layerbranch
-                    maintainer.save()
-                for dep in layerbranch_source.dependencies_set.all():
-                    dep.pk = None
-                    dep.id = None
-                    dep.layerbranch = layerbranch
-                    dep.save()
-
-        if layerbranch.vcs_subdir and not options.nocheckout:
-            # Find latest commit in subdirectory
-            # A bit odd to do it this way but apparently there's no other way in the GitPython API
-            topcommit = next(repo.iter_commits('origin/%s' % branchname, paths=layerbranch.vcs_subdir), None)
-            if not topcommit:
-                # This will error out if the directory is completely invalid or had never existed at this point
-                # If it previously existed but has since been deleted, you will get the revision where it was
-                # deleted - so we need to handle that case separately later
-                if newbranch:
-                    logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
-                elif layerbranch.vcs_subdir:
-                    logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
-                else:
-                    logger.error("Failed to get last revision for layer %s on branch %s" % (layer.name, branchdesc))
-                transaction.rollback()
-                sys.exit(1)
-
-        layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
-        layerdir_start = os.path.normpath(layerdir) + os.sep
-        layerrecipes = Recipe.objects.filter(layerbranch=layerbranch)
-        layermachines = Machine.objects.filter(layerbranch=layerbranch)
-        layerappends = BBAppend.objects.filter(layerbranch=layerbranch)
-        layerclasses = BBClass.objects.filter(layerbranch=layerbranch)
-        if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload:
-            # Check out appropriate branch
-            if not options.nocheckout:
-                out = utils.runcmd("git checkout origin/%s" % branchname, repodir, logger=logger)
-                out = utils.runcmd("git clean -f -x", repodir, logger=logger)
-
-            if layerbranch.vcs_subdir and not os.path.exists(layerdir):
-                if newbranch:
-                    logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
-                else:
-                    logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
-                transaction.rollback()
-                sys.exit(1)
+        with transaction.atomic():
+            layer = utils.get_layer(options.layer)
+            urldir = layer.get_fetch_dir()
+            repodir = os.path.join(fetchdir, urldir)
 
-            if not os.path.exists(os.path.join(layerdir, 'conf/layer.conf')):
-                logger.error("conf/layer.conf not found for layer %s - is subdirectory set correctly?" % layer.name)
-                transaction.rollback()
-                sys.exit(1)
+            layerbranch = layer.get_layerbranch(options.branch)
 
-            logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
+            branchname = options.branch
+            branchdesc = options.branch
+            if layerbranch:
+                if layerbranch.actual_branch:
+                    branchname = layerbranch.actual_branch
+                    branchdesc = "%s (%s)" % (options.branch, branchname)
 
+            # Collect repo info
+            repo = git.Repo(repodir)
+            assert repo.bare == False
             try:
-                config_data_copy = recipeparse.setup_layer(tinfoil.config_data, fetchdir, layerdir, layer, layerbranch)
-            except recipeparse.RecipeParseError as e:
-                logger.error(str(e))
-                transaction.rollback()
+                if options.nocheckout:
+                    topcommit = repo.commit('HEAD')
+                else:
+                    topcommit = repo.commit('origin/%s' % branchname)
+            except:
+                if layerbranch:
+                    logger.error("Failed update of layer %s - branch %s no longer exists" % (layer.name, branchdesc))
+                else:
+                    logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
                 sys.exit(1)
 
-            if layerbranch.vcs_last_rev and not options.reload:
+            newbranch = False
+            if not layerbranch:
+                # LayerBranch doesn't exist for this branch, create it
+                newbranch = True
+                layerbranch = LayerBranch()
+                layerbranch.layer = layer
+                layerbranch.branch = branch
+                layerbranch_source = layer.get_layerbranch('master')
+                if not layerbranch_source:
+                    layerbranch_source = layer.get_layerbranch(None)
+                if layerbranch_source:
+                    layerbranch.vcs_subdir = layerbranch_source.vcs_subdir
+                layerbranch.save()
+                if layerbranch_source:
+                    for maintainer in layerbranch_source.layermaintainer_set.all():
+                        maintainer.pk = None
+                        maintainer.id = None
+                        maintainer.layerbranch = layerbranch
+                        maintainer.save()
+                    for dep in layerbranch_source.dependencies_set.all():
+                        dep.pk = None
+                        dep.id = None
+                        dep.layerbranch = layerbranch
+                        dep.save()
+
+            if layerbranch.vcs_subdir and not options.nocheckout:
+                # Find latest commit in subdirectory
+                # A bit odd to do it this way but apparently there's no other way in the GitPython API
+                topcommit = next(repo.iter_commits('origin/%s' % branchname, paths=layerbranch.vcs_subdir), None)
+                if not topcommit:
+                    # This will error out if the directory is completely invalid or had never existed at this point
+                    # If it previously existed but has since been deleted, you will get the revision where it was
+                    # deleted - so we need to handle that case separately later
+                    if newbranch:
+                        logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
+                    elif layerbranch.vcs_subdir:
+                        logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
+                    else:
+                        logger.error("Failed to get last revision for layer %s on branch %s" % (layer.name, branchdesc))
+                    sys.exit(1)
+
+            layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
+            layerdir_start = os.path.normpath(layerdir) + os.sep
+            layerrecipes = Recipe.objects.filter(layerbranch=layerbranch)
+            layermachines = Machine.objects.filter(layerbranch=layerbranch)
+            layerappends = BBAppend.objects.filter(layerbranch=layerbranch)
+            layerclasses = BBClass.objects.filter(layerbranch=layerbranch)
+            if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload:
+                # Check out appropriate branch
+                if not options.nocheckout:
+                    out = utils.runcmd("git checkout origin/%s" % branchname, repodir, logger=logger)
+                    out = utils.runcmd("git clean -f -x", repodir, logger=logger)
+
+                if layerbranch.vcs_subdir and not os.path.exists(layerdir):
+                    if newbranch:
+                        logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
+                    else:
+                        logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
+                    sys.exit(1)
+
+                if not os.path.exists(os.path.join(layerdir, 'conf/layer.conf')):
+                    logger.error("conf/layer.conf not found for layer %s - is subdirectory set correctly?" % layer.name)
+                    sys.exit(1)
+
+                logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
+
                 try:
-                    diff = repo.commit(layerbranch.vcs_last_rev).diff(topcommit)
-                except Exception as e:
-                    logger.warn("Unable to get diff from last commit hash for layer %s - falling back to slow update: %s" % (layer.name, str(e)))
-                    diff = None
-            else:
-                diff = None
-
-            # We handle recipes specially to try to preserve the same id
-            # when recipe upgrades happen (so that if a user bookmarks a
-            # recipe page it remains valid)
-            layerrecipes_delete = []
-            layerrecipes_add = []
-
-            # Check if any paths should be ignored because there are layers within this layer
-            removedirs = []
-            for root, dirs, files in os.walk(layerdir):
-                for diritem in dirs:
-                    if os.path.exists(os.path.join(root, diritem, 'conf', 'layer.conf')):
-                        removedirs.append(os.path.join(root, diritem) + os.sep)
-
-            if diff:
-                # Apply git changes to existing recipe list
-
-                if layerbranch.vcs_subdir:
-                    subdir_start = os.path.normpath(layerbranch.vcs_subdir) + os.sep
+                    config_data_copy = recipeparse.setup_layer(tinfoil.config_data, fetchdir, layerdir, layer, layerbranch)
+                except recipeparse.RecipeParseError as e:
+                    logger.error(str(e))
+                    sys.exit(1)
+
+                if layerbranch.vcs_last_rev and not options.reload:
+                    try:
+                        diff = repo.commit(layerbranch.vcs_last_rev).diff(topcommit)
+                    except Exception as e:
+                        logger.warn("Unable to get diff from last commit hash for layer %s - falling back to slow update: %s" % (layer.name, str(e)))
+                        diff = None
                 else:
-                    subdir_start = ""
-
-                updatedrecipes = set()
-                dirtyrecipes = set()
-                other_deletes = []
-                other_adds = []
-                for diffitem in diff.iter_change_type('R'):
-                    oldpath = diffitem.a_blob.path
-                    newpath = diffitem.b_blob.path
-                    skip = False
-                    for removedir in removedirs:
-                        # FIXME what about files moved into removedirs?
-                        if oldpath.startswith(removedir):
-                            skip = True
-                            break
-                    if skip:
-                        continue
-                    if oldpath.startswith(subdir_start):
-                        (oldtypename, oldfilepath, oldfilename) = recipeparse.detect_file_type(oldpath, subdir_start)
-                        (newtypename, newfilepath, newfilename) = recipeparse.detect_file_type(newpath, subdir_start)
-                        if oldtypename != newtypename:
-                            # This is most likely to be a .inc file renamed to a .bb - and since
-                            # there may be another recipe deleted at the same time we probably want
-                            # to consider that, so just treat it as a delete and an add
-                            logger.debug("Treating rename of %s to %s as a delete and add (since type changed)" % (oldpath, newpath))
-                            other_deletes.append(diffitem)
-                            other_adds.append(diffitem)
-                        elif oldtypename == 'recipe':
-                            results = layerrecipes.filter(filepath=oldfilepath).filter(filename=oldfilename)
-                            if len(results):
-                                recipe = results[0]
-                                logger.debug("Rename recipe %s to %s" % (recipe, newpath))
-                                recipe.filepath = newfilepath
-                                recipe.filename = newfilename
-                                recipe.save()
-                                update_recipe_file(config_data_copy, os.path.join(layerdir, newfilepath), recipe, layerdir_start, repodir)
-                                updatedrecipes.add(os.path.join(oldfilepath, oldfilename))
-                                updatedrecipes.add(os.path.join(newfilepath, newfilename))
-                            else:
-                                logger.warn("Renamed recipe %s could not be found" % oldpath)
-                                other_adds.append(diffitem)
-                        elif oldtypename == 'bbappend':
-                            results = layerappends.filter(filepath=oldfilepath).filter(filename=oldfilename)
-                            if len(results):
-                                logger.debug("Rename bbappend %s to %s" % (results[0], newfilepath))
-                                results[0].filepath = newfilepath
-                                results[0].filename = newfilename
-                                results[0].save()
-                            else:
-                                logger.warn("Renamed bbappend %s could not be found" % oldpath)
-                                other_adds.append(diffitem)
-                        elif oldtypename == 'machine':
-                            results = layermachines.filter(name=oldfilename)
-                            if len(results):
-                                logger.debug("Rename machine %s to %s" % (results[0], newfilename))
-                                results[0].name = newfilename
-                                results[0].save()
-                            else:
-                                logger.warn("Renamed machine %s could not be found" % oldpath)
-                                other_adds.append(diffitem)
-                        elif oldtypename == 'bbclass':
-                            results = layerclasses.filter(name=oldfilename)
-                            if len(results):
-                                logger.debug("Rename class %s to %s" % (results[0], newfilename))
-                                results[0].name = newfilename
-                                results[0].save()
-                            else:
-                                logger.warn("Renamed class %s could not be found" % oldpath)
-                                other_adds.append(diffitem)
-
-                        deps = RecipeFileDependency.objects.filter(layerbranch=layerbranch).filter(path=oldpath)
-                        for dep in deps:
-                            dirtyrecipes.add(dep.recipe)
+                    diff = None
 
+                # We handle recipes specially to try to preserve the same id
+                # when recipe upgrades happen (so that if a user bookmarks a
+                # recipe page it remains valid)
+                layerrecipes_delete = []
+                layerrecipes_add = []
 
-                for diffitem in itertools.chain(diff.iter_change_type('D'), other_deletes):
-                    path = diffitem.a_blob.path
-                    if path.startswith(subdir_start):
+                # Check if any paths should be ignored because there are layers within this layer
+                removedirs = []
+                for root, dirs, files in os.walk(layerdir):
+                    for diritem in dirs:
+                        if os.path.exists(os.path.join(root, diritem, 'conf', 'layer.conf')):
+                            removedirs.append(os.path.join(root, diritem) + os.sep)
+
+                if diff:
+                    # Apply git changes to existing recipe list
+
+                    if layerbranch.vcs_subdir:
+                        subdir_start = os.path.normpath(layerbranch.vcs_subdir) + os.sep
+                    else:
+                        subdir_start = ""
+
+                    updatedrecipes = set()
+                    dirtyrecipes = set()
+                    other_deletes = []
+                    other_adds = []
+                    for diffitem in diff.iter_change_type('R'):
+                        oldpath = diffitem.a_blob.path
+                        newpath = diffitem.b_blob.path
                         skip = False
                         for removedir in removedirs:
-                            if path.startswith(removedir):
+                            # FIXME what about files moved into removedirs?
+                            if oldpath.startswith(removedir):
                                 skip = True
                                 break
                         if skip:
                             continue
-                        (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
-                        if typename == 'recipe':
-                            values = layerrecipes.filter(filepath=filepath).filter(filename=filename).values('id', 'filepath', 'filename', 'pn')
-                            if len(values):
-                                layerrecipes_delete.append(values[0])
-                                logger.debug("Mark %s for deletion" % values[0])
-                                updatedrecipes.add(os.path.join(values[0]['filepath'], values[0]['filename']))
+                        if oldpath.startswith(subdir_start):
+                            (oldtypename, oldfilepath, oldfilename) = recipeparse.detect_file_type(oldpath, subdir_start)
+                            (newtypename, newfilepath, newfilename) = recipeparse.detect_file_type(newpath, subdir_start)
+                            if oldtypename != newtypename:
+                                # This is most likely to be a .inc file renamed to a .bb - and since
+                                # there may be another recipe deleted at the same time we probably want
+                                # to consider that, so just treat it as a delete and an add
+                                logger.debug("Treating rename of %s to %s as a delete and add (since type changed)" % (oldpath, newpath))
+                                other_deletes.append(diffitem)
+                                other_adds.append(diffitem)
+                            elif oldtypename == 'recipe':
+                                results = layerrecipes.filter(filepath=oldfilepath).filter(filename=oldfilename)
+                                if len(results):
+                                    recipe = results[0]
+                                    logger.debug("Rename recipe %s to %s" % (recipe, newpath))
+                                    recipe.filepath = newfilepath
+                                    recipe.filename = newfilename
+                                    recipe.save()
+                                    update_recipe_file(config_data_copy, os.path.join(layerdir, newfilepath), recipe, layerdir_start, repodir)
+                                    updatedrecipes.add(os.path.join(oldfilepath, oldfilename))
+                                    updatedrecipes.add(os.path.join(newfilepath, newfilename))
+                                else:
+                                    logger.warn("Renamed recipe %s could not be found" % oldpath)
+                                    other_adds.append(diffitem)
+                            elif oldtypename == 'bbappend':
+                                results = layerappends.filter(filepath=oldfilepath).filter(filename=oldfilename)
+                                if len(results):
+                                    logger.debug("Rename bbappend %s to %s" % (results[0], newfilepath))
+                                    results[0].filepath = newfilepath
+                                    results[0].filename = newfilename
+                                    results[0].save()
+                                else:
+                                    logger.warn("Renamed bbappend %s could not be found" % oldpath)
+                                    other_adds.append(diffitem)
+                            elif oldtypename == 'machine':
+                                results = layermachines.filter(name=oldfilename)
+                                if len(results):
+                                    logger.debug("Rename machine %s to %s" % (results[0], newfilename))
+                                    results[0].name = newfilename
+                                    results[0].save()
+                                else:
+                                    logger.warn("Renamed machine %s could not be found" % oldpath)
+                                    other_adds.append(diffitem)
+                            elif oldtypename == 'bbclass':
+                                results = layerclasses.filter(name=oldfilename)
+                                if len(results):
+                                    logger.debug("Rename class %s to %s" % (results[0], newfilename))
+                                    results[0].name = newfilename
+                                    results[0].save()
+                                else:
+                                    logger.warn("Renamed class %s could not be found" % oldpath)
+                                    other_adds.append(diffitem)
+
+                            deps = RecipeFileDependency.objects.filter(layerbranch=layerbranch).filter(path=oldpath)
+                            for dep in deps:
+                                dirtyrecipes.add(dep.recipe)
+
+
+                    for diffitem in itertools.chain(diff.iter_change_type('D'), other_deletes):
+                        path = diffitem.a_blob.path
+                        if path.startswith(subdir_start):
+                            skip = False
+                            for removedir in removedirs:
+                                if path.startswith(removedir):
+                                    skip = True
+                                    break
+                            if skip:
+                                continue
+                            (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
+                            if typename == 'recipe':
+                                values = layerrecipes.filter(filepath=filepath).filter(filename=filename).values('id', 'filepath', 'filename', 'pn')
+                                if len(values):
+                                    layerrecipes_delete.append(values[0])
+                                    logger.debug("Mark %s for deletion" % values[0])
+                                    updatedrecipes.add(os.path.join(values[0]['filepath'], values[0]['filename']))
+                                else:
+                                    logger.warn("Deleted recipe %s could not be found" % path)
+                            elif typename == 'bbappend':
+                                layerappends.filter(filepath=filepath).filter(filename=filename).delete()
+                            elif typename == 'machine':
+                                layermachines.filter(name=filename).delete()
+                            elif typename == 'bbclass':
+                                layerclasses.filter(name=filename).delete()
+
+                    for diffitem in itertools.chain(diff.iter_change_type('A'), other_adds):
+                        path = diffitem.b_blob.path
+                        if path.startswith(subdir_start):
+                            skip = False
+                            for removedir in removedirs:
+                                if path.startswith(removedir):
+                                    skip = True
+                                    break
+                            if skip:
+                                continue
+                            (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
+                            if typename == 'recipe':
+                                layerrecipes_add.append(os.path.join(repodir, path))
+                                logger.debug("Mark %s for addition" % path)
+                                updatedrecipes.add(os.path.join(filepath, filename))
+                            elif typename == 'bbappend':
+                                append = BBAppend()
+                                append.layerbranch = layerbranch
+                                append.filename = filename
+                                append.filepath = filepath
+                                append.save()
+                            elif typename == 'machine':
+                                machine = Machine()
+                                machine.layerbranch = layerbranch
+                                machine.name = filename
+                                update_machine_conf_file(os.path.join(repodir, path), machine)
+                                machine.save()
+                            elif typename == 'bbclass':
+                                bbclass = BBClass()
+                                bbclass.layerbranch = layerbranch
+                                bbclass.name = filename
+                                bbclass.save()
+
+                    for diffitem in diff.iter_change_type('M'):
+                        path = diffitem.a_blob.path
+                        if path.startswith(subdir_start):
+                            skip = False
+                            for removedir in removedirs:
+                                if path.startswith(removedir):
+                                    skip = True
+                                    break
+                            if skip:
+                                continue
+                            (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
+                            if typename == 'recipe':
+                                logger.debug("Mark %s for update" % path)
+                                results = layerrecipes.filter(filepath=filepath).filter(filename=filename)[:1]
+                                if results:
+                                    recipe = results[0]
+                                    update_recipe_file(config_data_copy, os.path.join(layerdir, filepath), recipe, layerdir_start, repodir)
+                                    recipe.save()
+                                    updatedrecipes.add(recipe.full_path())
+                            elif typename == 'machine':
+                                results = layermachines.filter(name=filename)
+                                if results:
+                                    machine = results[0]
+                                    update_machine_conf_file(os.path.join(repodir, path), machine)
+                                    machine.save()
+
+                            deps = RecipeFileDependency.objects.filter(layerbranch=layerbranch).filter(path=path)
+                            for dep in deps:
+                                dirtyrecipes.add(dep.recipe)
+
+                    for recipe in dirtyrecipes:
+                        if not recipe.full_path() in updatedrecipes:
+                            update_recipe_file(config_data_copy, os.path.join(layerdir, recipe.filepath), recipe, layerdir_start, repodir)
+                else:
+                    # Collect recipe data from scratch
+
+                    layerrecipe_fns = []
+                    if options.fullreload:
+                        layerrecipes.delete()
+                    else:
+                        # First, check which recipes still exist
+                        layerrecipe_values = layerrecipes.values('id', 'filepath', 'filename', 'pn')
+                        for v in layerrecipe_values:
+                            root = os.path.join(layerdir, v['filepath'])
+                            fullpath = os.path.join(root, v['filename'])
+                            preserve = True
+                            if os.path.exists(fullpath):
+                                for removedir in removedirs:
+                                    if fullpath.startswith(removedir):
+                                        preserve = False
+                                        break
                             else:
-                                logger.warn("Deleted recipe %s could not be found" % path)
-                        elif typename == 'bbappend':
-                            layerappends.filter(filepath=filepath).filter(filename=filename).delete()
-                        elif typename == 'machine':
-                            layermachines.filter(name=filename).delete()
-                        elif typename == 'bbclass':
-                            layerclasses.filter(name=filename).delete()
-
-                for diffitem in itertools.chain(diff.iter_change_type('A'), other_adds):
-                    path = diffitem.b_blob.path
-                    if path.startswith(subdir_start):
-                        skip = False
-                        for removedir in removedirs:
-                            if path.startswith(removedir):
-                                skip = True
-                                break
-                        if skip:
-                            continue
-                        (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
-                        if typename == 'recipe':
-                            layerrecipes_add.append(os.path.join(repodir, path))
-                            logger.debug("Mark %s for addition" % path)
-                            updatedrecipes.add(os.path.join(filepath, filename))
-                        elif typename == 'bbappend':
-                            append = BBAppend()
-                            append.layerbranch = layerbranch
-                            append.filename = filename
-                            append.filepath = filepath
-                            append.save()
-                        elif typename == 'machine':
-                            machine = Machine()
-                            machine.layerbranch = layerbranch
-                            machine.name = filename
-                            update_machine_conf_file(os.path.join(repodir, path), machine)
-                            machine.save()
-                        elif typename == 'bbclass':
-                            bbclass = BBClass()
-                            bbclass.layerbranch = layerbranch
-                            bbclass.name = filename
-                            bbclass.save()
-
-                for diffitem in diff.iter_change_type('M'):
-                    path = diffitem.a_blob.path
-                    if path.startswith(subdir_start):
-                        skip = False
-                        for removedir in removedirs:
-                            if path.startswith(removedir):
-                                skip = True
-                                break
-                        if skip:
-                            continue
-                        (typename, filepath, filename) = recipeparse.detect_file_type(path, subdir_start)
-                        if typename == 'recipe':
-                            logger.debug("Mark %s for update" % path)
-                            results = layerrecipes.filter(filepath=filepath).filter(filename=filename)[:1]
-                            if results:
+                                preserve = False
+
+                            if preserve:
+                                # Recipe still exists, update it
+                                results = layerrecipes.filter(id=v['id'])[:1]
                                 recipe = results[0]
-                                update_recipe_file(config_data_copy, os.path.join(layerdir, filepath), recipe, layerdir_start, repodir)
-                                recipe.save()
-                                updatedrecipes.add(recipe.full_path())
-                        elif typename == 'machine':
-                            results = layermachines.filter(name=filename)
-                            if results:
-                                machine = results[0]
-                                update_machine_conf_file(os.path.join(repodir, path), machine)
+                                update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
+                            else:
+                                # Recipe no longer exists, mark it for later on
+                                layerrecipes_delete.append(v)
+                            layerrecipe_fns.append(fullpath)
+
+                    layermachines.delete()
+                    layerappends.delete()
+                    layerclasses.delete()
+                    for root, dirs, files in os.walk(layerdir):
+                        if '.git' in dirs:
+                            dirs.remove('.git')
+                        for diritem in dirs[:]:
+                            fullpath = os.path.join(root, diritem) + os.sep
+                            if fullpath in removedirs:
+                                dirs.remove(diritem)
+                        for f in files:
+                            fullpath = os.path.join(root, f)
+                            (typename, _, filename) = recipeparse.detect_file_type(fullpath, layerdir_start)
+                            if typename == 'recipe':
+                                if fullpath not in layerrecipe_fns:
+                                    layerrecipes_add.append(fullpath)
+                            elif typename == 'bbappend':
+                                append = BBAppend()
+                                append.layerbranch = layerbranch
+                                append.filename = f
+                                append.filepath = os.path.relpath(root, layerdir)
+                                append.save()
+                            elif typename == 'machine':
+                                machine = Machine()
+                                machine.layerbranch = layerbranch
+                                machine.name = filename
+                                update_machine_conf_file(fullpath, machine)
                                 machine.save()
+                            elif typename == 'bbclass':
+                                bbclass = BBClass()
+                                bbclass.layerbranch = layerbranch
+                                bbclass.name = filename
+                                bbclass.save()
+
+                for added in layerrecipes_add:
+                    # This is good enough without actually parsing the file
+                    (pn, pv) = split_recipe_fn(added)
+                    oldid = -1
+                    for deleted in layerrecipes_delete:
+                        if deleted['pn'] == pn:
+                            oldid = deleted['id']
+                            layerrecipes_delete.remove(deleted)
+                            break
+                    if oldid > -1:
+                        # Reclaim a record we would have deleted
+                        results = Recipe.objects.filter(id=oldid)[:1]
+                        recipe = results[0]
+                        logger.debug("Reclaim %s for %s %s" % (recipe, pn, pv))
+                    else:
+                        # Create new record
+                        logger.debug("Add new recipe %s" % added)
+                        recipe = Recipe()
+                    recipe.layerbranch = layerbranch
+                    recipe.filename = os.path.basename(added)
+                    root = os.path.dirname(added)
+                    recipe.filepath = os.path.relpath(root, layerdir)
+                    update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
+                    recipe.save()
 
-                        deps = RecipeFileDependency.objects.filter(layerbranch=layerbranch).filter(path=path)
-                        for dep in deps:
-                            dirtyrecipes.add(dep.recipe)
+                for deleted in layerrecipes_delete:
+                    logger.debug("Delete %s" % deleted)
+                    results = Recipe.objects.filter(id=deleted['id'])[:1]
+                    recipe = results[0]
+                    recipe.delete()
 
-                for recipe in dirtyrecipes:
-                    if not recipe.full_path() in updatedrecipes:
-                        update_recipe_file(config_data_copy, os.path.join(layerdir, recipe.filepath), recipe, layerdir_start, repodir)
+                # Save repo info
+                layerbranch.vcs_last_rev = topcommit.hexsha
+                layerbranch.vcs_last_commit = datetime.fromtimestamp(topcommit.committed_date)
             else:
-                # Collect recipe data from scratch
+                logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
+
+            layerbranch.vcs_last_fetch = datetime.now()
+            layerbranch.save()
+
+            if options.dryrun:
+                raise DryRunRollbackException()
 
-                layerrecipe_fns = []
-                if options.fullreload:
-                    layerrecipes.delete()
-                else:
-                    # First, check which recipes still exist
-                    layerrecipe_values = layerrecipes.values('id', 'filepath', 'filename', 'pn')
-                    for v in layerrecipe_values:
-                        root = os.path.join(layerdir, v['filepath'])
-                        fullpath = os.path.join(root, v['filename'])
-                        preserve = True
-                        if os.path.exists(fullpath):
-                            for removedir in removedirs:
-                                if fullpath.startswith(removedir):
-                                    preserve = False
-                                    break
-                        else:
-                            preserve = False
-
-                        if preserve:
-                            # Recipe still exists, update it
-                            results = layerrecipes.filter(id=v['id'])[:1]
-                            recipe = results[0]
-                            update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
-                        else:
-                            # Recipe no longer exists, mark it for later on
-                            layerrecipes_delete.append(v)
-                        layerrecipe_fns.append(fullpath)
-
-                layermachines.delete()
-                layerappends.delete()
-                layerclasses.delete()
-                for root, dirs, files in os.walk(layerdir):
-                    if '.git' in dirs:
-                        dirs.remove('.git')
-                    for diritem in dirs[:]:
-                        fullpath = os.path.join(root, diritem) + os.sep
-                        if fullpath in removedirs:
-                            dirs.remove(diritem)
-                    for f in files:
-                        fullpath = os.path.join(root, f)
-                        (typename, _, filename) = recipeparse.detect_file_type(fullpath, layerdir_start)
-                        if typename == 'recipe':
-                            if fullpath not in layerrecipe_fns:
-                                layerrecipes_add.append(fullpath)
-                        elif typename == 'bbappend':
-                            append = BBAppend()
-                            append.layerbranch = layerbranch
-                            append.filename = f
-                            append.filepath = os.path.relpath(root, layerdir)
-                            append.save()
-                        elif typename == 'machine':
-                            machine = Machine()
-                            machine.layerbranch = layerbranch
-                            machine.name = filename
-                            update_machine_conf_file(fullpath, machine)
-                            machine.save()
-                        elif typename == 'bbclass':
-                            bbclass = BBClass()
-                            bbclass.layerbranch = layerbranch
-                            bbclass.name = filename
-                            bbclass.save()
-
-            for added in layerrecipes_add:
-                # This is good enough without actually parsing the file
-                (pn, pv) = split_recipe_fn(added)
-                oldid = -1
-                for deleted in layerrecipes_delete:
-                    if deleted['pn'] == pn:
-                        oldid = deleted['id']
-                        layerrecipes_delete.remove(deleted)
-                        break
-                if oldid > -1:
-                    # Reclaim a record we would have deleted
-                    results = Recipe.objects.filter(id=oldid)[:1]
-                    recipe = results[0]
-                    logger.debug("Reclaim %s for %s %s" % (recipe, pn, pv))
-                else:
-                    # Create new record
-                    logger.debug("Add new recipe %s" % added)
-                    recipe = Recipe()
-                recipe.layerbranch = layerbranch
-                recipe.filename = os.path.basename(added)
-                root = os.path.dirname(added)
-                recipe.filepath = os.path.relpath(root, layerdir)
-                update_recipe_file(config_data_copy, root, recipe, layerdir_start, repodir)
-                recipe.save()
-
-            for deleted in layerrecipes_delete:
-                logger.debug("Delete %s" % deleted)
-                results = Recipe.objects.filter(id=deleted['id'])[:1]
-                recipe = results[0]
-                recipe.delete()
-
-            # Save repo info
-            layerbranch.vcs_last_rev = topcommit.hexsha
-            layerbranch.vcs_last_commit = datetime.fromtimestamp(topcommit.committed_date)
-        else:
-            logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
-
-        layerbranch.vcs_last_fetch = datetime.now()
-        layerbranch.save()
-
-        if options.dryrun:
-            transaction.rollback()
-        else:
-            transaction.commit()
 
     except KeyboardInterrupt:
-        transaction.rollback()
         logger.warn("Update interrupted, changes to %s rolled back" % layer.name)
         sys.exit(254)
+    except SystemExit:
+        raise
+    except DryRunRollbackException:
+        pass
     except:
         import traceback
         traceback.print_exc()
-        transaction.rollback()
-    finally:
-        transaction.leave_transaction_management()
 
     shutil.rmtree(tempdir)
     sys.exit(0)
-- 
2.5.5


