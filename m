Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B179AE006E3; Thu,  5 Jan 2017 13:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01076E0049A
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 13:42:28 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 05 Jan 2017 13:42:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,322,1477983600"; d="scan'208";a="1090441053"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.143])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2017 13:42:27 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Jan 2017 15:45:13 -0600
Message-Id: <1483652714-9473-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[PATCH][rrs] 1/2] rrs/tools: Upgrade to use transaction.atomic() in Django 1.6
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
X-List-Received-Date: Thu, 05 Jan 2017 21:42:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Django 1.6 provides a context manager for atomic transactions so
update the way for make db transactions.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 rrs/tools/rrs_distros.py            |  67 ++++++++++-----------
 rrs/tools/rrs_maintainer_history.py | 114 +++++++++++++++++-------------------
 rrs/tools/rrs_unique_recipes.py     |  60 +++++++++----------
 rrs/tools/rrs_upgrade_history.py    |  19 +++---
 rrs/tools/rrs_upstream_history.py   |  74 +++++++++++------------
 5 files changed, 156 insertions(+), 178 deletions(-)

diff --git a/rrs/tools/rrs_distros.py b/rrs/tools/rrs_distros.py
index e0c2def..b28f38d 100755
--- a/rrs/tools/rrs_distros.py
+++ b/rrs/tools/rrs_distros.py
@@ -94,42 +94,37 @@ if __name__=="__main__":
 
     logger.debug("Starting recipe distros update ...")
 
-    transaction.enter_transaction_management()
-    transaction.managed(True)
+    with transaction.atomic():
+        for layerbranch in LayerBranch.objects.all():
+            (tinfoil, d, recipes) = load_recipes(layerbranch, bitbakepath,
+                    fetchdir, settings, logger)
 
-    for layerbranch in LayerBranch.objects.all():
-        (tinfoil, d, recipes) = load_recipes(layerbranch, bitbakepath,
-                fetchdir, settings, logger)
-
-        if not recipes:
-            continue
-
-        from oe import distro_check
-        logger.debug("Downloading distro's package information ...")
-        distro_check.create_distro_packages_list(fetchdir, d)
-        pkglst_dir = os.path.join(fetchdir, "package_lists")
-
-        RecipeDistro.objects.filter(recipe__layerbranch = layerbranch).delete()
-
-        for recipe_data in recipes:
-            pn = recipe_data.getVar('PN', True)
-
-            try:
-                recipe = Recipe.objects.get(pn = pn, layerbranch = layerbranch)
-            except:
-                logger.warn('%s: layer branch %s, NOT found' % (pn,
-                    str(layerbranch)))
+            if not recipes:
                 continue
 
-            distro_info = search_package_in_distros(pkglst_dir, recipe, recipe_data)
-            for distro, alias in distro_info.items():
-                recipedistro = RecipeDistro()
-                recipedistro.recipe = recipe
-                recipedistro.distro = distro
-                recipedistro.alias = alias
-                recipedistro.save()
-                logger.debug('%s: layer branch %s, add distro %s alias %s' % (pn,
-                    str(layerbranch), distro, alias))
-
-    transaction.commit()
-    transaction.leave_transaction_management()
+            from oe import distro_check
+            logger.debug("Downloading distro's package information ...")
+            distro_check.create_distro_packages_list(fetchdir, d)
+            pkglst_dir = os.path.join(fetchdir, "package_lists")
+
+            RecipeDistro.objects.filter(recipe__layerbranch = layerbranch).delete()
+
+            for recipe_data in recipes:
+                pn = recipe_data.getVar('PN', True)
+
+                try:
+                    recipe = Recipe.objects.get(pn = pn, layerbranch = layerbranch)
+                except:
+                    logger.warn('%s: layer branch %s, NOT found' % (pn,
+                        str(layerbranch)))
+                    continue
+
+                distro_info = search_package_in_distros(pkglst_dir, recipe, recipe_data)
+                for distro, alias in distro_info.items():
+                    recipedistro = RecipeDistro()
+                    recipedistro.recipe = recipe
+                    recipedistro.distro = distro
+                    recipedistro.alias = alias
+                    recipedistro.save()
+                    logger.debug('%s: layer branch %s, add distro %s alias %s' % (pn,
+                        str(layerbranch), distro, alias))
diff --git a/rrs/tools/rrs_maintainer_history.py b/rrs/tools/rrs_maintainer_history.py
index 11b1909..0d0073c 100755
--- a/rrs/tools/rrs_maintainer_history.py
+++ b/rrs/tools/rrs_maintainer_history.py
@@ -90,51 +90,66 @@ def maintainer_history(logger):
     commits = utils.runcmd("git log --format='%H' --reverse --date=rfc " +
             MAINTAINERS_INCLUDE_PATH, pokypath, logger=logger)
 
-    transaction.enter_transaction_management()
-    transaction.managed(True)
-    for commit in commits.strip().split("\n"):
-        if RecipeMaintainerHistory.objects.filter(sha1=commit):
-            continue
-
-        logger.debug("Analysing commit %s ..." % (commit))
-
-        (author_name, author_email, date, title) = \
-            get_commit_info(utils.runcmd("git show " + commit, pokypath,
-                logger=logger), logger)
-
-        author = Maintainer.create_or_update(author_name, author_email)
-        rms = RecipeMaintainerHistory(title=title, date=date, author=author,
-                sha1=commit)
-        rms.save()
-        
-        branchname = 'maintainer' + commit 
-        utils.runcmd("git checkout %s -b %s -f" % (commit, branchname),
-                pokypath, logger=logger)
-
-        lines = [line.strip() for line in open(maintainers_full_path)]
-        for line in lines:
-            res = get_recipe_maintainer(line, logger)
-            if res:
-                (pn, name, email) = res
-                qry = Recipe.objects.filter(pn = pn, layerbranch = layerbranch)
-
-                if qry:
-                    m = Maintainer.create_or_update(name, email)
-
+    with transaction.atomic():
+        for commit in commits.strip().split("\n"):
+            if RecipeMaintainerHistory.objects.filter(sha1=commit):
+                continue
+
+            logger.debug("Analysing commit %s ..." % (commit))
+
+            (author_name, author_email, date, title) = \
+                get_commit_info(utils.runcmd("git show " + commit, pokypath,
+                    logger=logger), logger)
+
+            author = Maintainer.create_or_update(author_name, author_email)
+            rms = RecipeMaintainerHistory(title=title, date=date, author=author,
+                    sha1=commit)
+            rms.save()
+
+            branchname = 'maintainer' + commit 
+            utils.runcmd("git checkout %s -b %s -f" % (commit, branchname),
+                    pokypath, logger=logger)
+
+            lines = [line.strip() for line in open(maintainers_full_path)]
+            for line in lines:
+                res = get_recipe_maintainer(line, logger)
+                if res:
+                    (pn, name, email) = res
+                    qry = Recipe.objects.filter(pn = pn, layerbranch = layerbranch)
+
+                    if qry:
+                        m = Maintainer.create_or_update(name, email)
+
+                        rm = RecipeMaintainer()
+                        rm.recipe = qry[0]
+                        rm.maintainer = m
+                        rm.history = rms
+                        rm.save()
+
+                        logger.debug("%s: Change maintainer to %s in commit %s." % \
+                                (pn, m.name, commit))
+                    else:
+                        logger.debug("%s: Not found in layer %s." % \
+                                (pn, layername))
+
+            # set missing recipes to no maintainer
+            m = Maintainer.objects.get(id = 0) # No Maintainer
+            for recipe in Recipe.objects.all():
+                if not RecipeMaintainer.objects.filter(recipe = recipe, history = rms):
                     rm = RecipeMaintainer()
-                    rm.recipe = qry[0]
+                    rm.recipe = recipe
                     rm.maintainer = m
                     rm.history = rms
                     rm.save()
+                    logger.debug("%s: Not found maintainer in commit %s set to 'No maintainer'." % \
+                                    (recipe.pn, rms.sha1))
 
-                    logger.debug("%s: Change maintainer to %s in commit %s." % \
-                            (pn, m.name, commit))
-                else:
-                    logger.debug("%s: Not found in layer %s." % \
-                            (pn, layername))
+            utils.runcmd("git checkout master -f", pokypath, logger=logger)
+            utils.runcmd("git branch -D %s" % (branchname), pokypath, logger=logger)
 
-        # set missing recipes to no maintainer
+        # set new recipes to no maintainer if don't have one
         m = Maintainer.objects.get(id = 0) # No Maintainer
+        rms = RecipeMaintainerHistory.get_last()
         for recipe in Recipe.objects.all():
             if not RecipeMaintainer.objects.filter(recipe = recipe, history = rms):
                 rm = RecipeMaintainer()
@@ -142,27 +157,8 @@ def maintainer_history(logger):
                 rm.maintainer = m
                 rm.history = rms
                 rm.save()
-                logger.debug("%s: Not found maintainer in commit %s set to 'No maintainer'." % \
-                                (recipe.pn, rms.sha1))
-
-        utils.runcmd("git checkout master -f", pokypath, logger=logger)
-        utils.runcmd("git branch -D %s" % (branchname), pokypath, logger=logger)
-
-    # set new recipes to no maintainer if don't have one
-    m = Maintainer.objects.get(id = 0) # No Maintainer
-    rms = RecipeMaintainerHistory.get_last()
-    for recipe in Recipe.objects.all():
-        if not RecipeMaintainer.objects.filter(recipe = recipe, history = rms):
-            rm = RecipeMaintainer()
-            rm.recipe = recipe
-            rm.maintainer = m
-            rm.history = rms
-            rm.save()
-            logger.debug("%s: New recipe not found maintainer set to 'No maintainer'." % \
-                            (recipe.pn))
-
-    transaction.commit()
-    transaction.leave_transaction_management()
+                logger.debug("%s: New recipe not found maintainer set to 'No maintainer'." % \
+                                (recipe.pn))
 
 if __name__=="__main__":
     parser = optparse.OptionParser(usage = """%prog [options]""")
diff --git a/rrs/tools/rrs_unique_recipes.py b/rrs/tools/rrs_unique_recipes.py
index d1f2401..c3b211f 100755
--- a/rrs/tools/rrs_unique_recipes.py
+++ b/rrs/tools/rrs_unique_recipes.py
@@ -46,43 +46,37 @@ if __name__=="__main__":
 
     logger.info('Starting unique recipes ...')
 
-    transaction.enter_transaction_management()
-    transaction.managed(True)
-
     # only keep the major version of recipe
     logger.info('Starting remove of duplicate recipes only keep major version ...')
-    for layerbranch in LayerBranch.objects.all():
-        recipes = {}
-
-        for recipe in Recipe.objects.filter(layerbranch=layerbranch):
-            recipes[recipe.pn] = None
+    with transaction.atomic():
+        for layerbranch in LayerBranch.objects.all():
+            recipes = {}
 
-        for pn in recipes.keys():
-            for recipe in Recipe.objects.filter(layerbranch=layerbranch,
-                    pn=pn):
+            for recipe in Recipe.objects.filter(layerbranch=layerbranch):
+                recipes[recipe.pn] = None
 
-                if recipes[pn] is None:
-                    recipes[pn] = recipe
-                else:
-                    (ppv, _, _) = get_recipe_pv_without_srcpv(recipes[pn].pv,
-                            get_pv_type(recipes[pn].pv))
-                    (npv, _, _) = get_recipe_pv_without_srcpv(recipe.pv,
-                            get_pv_type(recipe.pv))
+            for pn in recipes.keys():
+                for recipe in Recipe.objects.filter(layerbranch=layerbranch,
+                        pn=pn):
 
-                    if npv == 'git':
-                        logger.debug("%s: Removed git recipe without version." \
-                                % (recipe.pn))
-                        recipe.delete()
-                    elif ppv == 'git' or vercmp_string(ppv, npv) == -1:
-                        logger.debug("%s: Removed older recipe (%s), new recipe (%s)." \
-                                % (recipes[pn].pn, recipes[pn].pv, recipe.pv))
-                        recipes[pn].delete()
+                    if recipes[pn] is None:
                         recipes[pn] = recipe
                     else:
-                        logger.debug("%s: Removed older recipe (%s), current recipe (%s)." \
-                                % (recipes[pn].pn, recipe.pv, recipes[pn].pv))
-                        recipe.delete()
-
-
-    transaction.commit()
-    transaction.leave_transaction_management()
+                        (ppv, _, _) = get_recipe_pv_without_srcpv(recipes[pn].pv,
+                                get_pv_type(recipes[pn].pv))
+                        (npv, _, _) = get_recipe_pv_without_srcpv(recipe.pv,
+                                get_pv_type(recipe.pv))
+
+                        if npv == 'git':
+                            logger.debug("%s: Removed git recipe without version." \
+                                    % (recipe.pn))
+                            recipe.delete()
+                        elif ppv == 'git' or vercmp_string(ppv, npv) == -1:
+                            logger.debug("%s: Removed older recipe (%s), new recipe (%s)." \
+                                    % (recipes[pn].pn, recipes[pn].pv, recipe.pv))
+                            recipes[pn].delete()
+                            recipes[pn] = recipe
+                        else:
+                            logger.debug("%s: Removed older recipe (%s), current recipe (%s)." \
+                                    % (recipes[pn].pn, recipe.pv, recipes[pn].pv))
+                            recipe.delete()
diff --git a/rrs/tools/rrs_upgrade_history.py b/rrs/tools/rrs_upgrade_history.py
index 4d417c0..27655d8 100755
--- a/rrs/tools/rrs_upgrade_history.py
+++ b/rrs/tools/rrs_upgrade_history.py
@@ -157,9 +157,10 @@ def do_initial(layerbranch, ct, logger):
     (tinfoil, d, recipes) = load_recipes(layerbranch, bitbakepath,
                             fetchdir, settings, logger, nocheckout=True)
 
-    for recipe_data in recipes:
-        _create_upgrade(recipe_data, layerbranch, '', title,
-                info, logger, initial=True)
+    with transaction.atomic():
+        for recipe_data in recipes:
+            _create_upgrade(recipe_data, layerbranch, '', title,
+                    info, logger, initial=True)
 
     utils.runcmd("git checkout master -f", repodir, logger=logger)
     utils.runcmd("git branch -D %s" % (branch_name_tmp), repodir, logger=logger)
@@ -188,9 +189,10 @@ def do_loop(layerbranch, ct, logger):
                                     repodir, logger=logger)
     info = utils.runcmd("git log  --format='%an;%ae;%ad;%cd' --date=rfc -n 1 " \
                     + ct, destdir=repodir, logger=logger)
-    for recipe_data in recipes:
-        _create_upgrade(recipe_data, layerbranch, ct, title,
-                            info, logger)
+    with transaction.atomic():
+        for recipe_data in recipes:
+            _create_upgrade(recipe_data, layerbranch, ct, title,
+                                info, logger)
 
     utils.runcmd("git checkout master -f", repodir, logger=logger)
     utils.runcmd("git branch -D %s" % (branch_name_tmp), repodir, logger=logger)
@@ -232,8 +234,6 @@ def upgrade_history(options, logger):
                                 logger=logger)
         commit_list = commits.split('\n')
 
-        transaction.enter_transaction_management()
-        transaction.managed(True)
         if options.initial:
             logger.debug("Adding initial upgrade history ....")
 
@@ -255,9 +255,6 @@ def upgrade_history(options, logger):
                 p.start()
                 p.join()
 
-        transaction.commit()
-        transaction.leave_transaction_management()
-
 if __name__=="__main__":
     parser = optparse.OptionParser(usage = """%prog [options]""")
     
diff --git a/rrs/tools/rrs_upstream_history.py b/rrs/tools/rrs_upstream_history.py
index 3db8f38..dfb1604 100755
--- a/rrs/tools/rrs_upstream_history.py
+++ b/rrs/tools/rrs_upstream_history.py
@@ -146,55 +146,51 @@ if __name__=="__main__":
 
     logger.debug("Starting upstream history...")
 
-    transaction.enter_transaction_management()
-    transaction.managed(True)
-    for layerbranch in LayerBranch.objects.all():
-        layer = layerbranch.layer
-        urldir = layer.get_fetch_dir()
-        repodir = os.path.join(fetchdir, urldir)
-        layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
+    with transaction.atomic():
+        for layerbranch in LayerBranch.objects.all():
+            layer = layerbranch.layer
+            urldir = layer.get_fetch_dir()
+            repodir = os.path.join(fetchdir, urldir)
+            layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
 
-        recipe_files = []
-        for recipe in Recipe.objects.filter(layerbranch = layerbranch):
-            file = str(os.path.join(layerdir, recipe.full_path()))
-            recipe_files.append(file)
+            recipe_files = []
+            for recipe in Recipe.objects.filter(layerbranch = layerbranch):
+                file = str(os.path.join(layerdir, recipe.full_path()))
+                recipe_files.append(file)
 
-        (tinfoil, d, recipes) = load_recipes(layerbranch, bitbakepath,
-                fetchdir, settings, logger,  recipe_files=recipe_files)
+            (tinfoil, d, recipes) = load_recipes(layerbranch, bitbakepath,
+                    fetchdir, settings, logger,  recipe_files=recipe_files)
 
-        if not recipes:
-            continue
+            if not recipes:
+                continue
 
-        for recipe_data in recipes:
-            set_regexes(recipe_data)
+            for recipe_data in recipes:
+                set_regexes(recipe_data)
 
-        history = RecipeUpstreamHistory(start_date = datetime.now())
+            history = RecipeUpstreamHistory(start_date = datetime.now())
 
-        from oe.utils import ThreadedPool
-        import multiprocessing
+            from oe.utils import ThreadedPool
+            import multiprocessing
 
-        nproc = min(multiprocessing.cpu_count(), len(recipes))
-        pool = ThreadedPool(nproc, len(recipes))
+            nproc = min(multiprocessing.cpu_count(), len(recipes))
+            pool = ThreadedPool(nproc, len(recipes))
 
-        result = []
-        for recipe_data in recipes:
-            pool.add_task(get_upstream_info, (layerbranch,
-                recipe_data, result))
+            result = []
+            for recipe_data in recipes:
+                pool.add_task(get_upstream_info, (layerbranch,
+                    recipe_data, result))
 
-        pool.start()
-        pool.wait_completion()
+            pool.start()
+            pool.wait_completion()
 
-        history.end_date = datetime.now()
-        history.save()
+            history.end_date = datetime.now()
+            history.save()
 
-        for res in result:
-            (recipe, ru) = res
+            for res in result:
+                (recipe, ru) = res
 
-            ru.history = history
-            ru.save()
+                ru.history = history
+                ru.save()
 
-            logger.debug('%s: layer branch %s, pv %s, upstream (%s)' % (recipe.pn,
-                str(layerbranch), recipe.pv, str(ru)))
-
-    transaction.commit()
-    transaction.leave_transaction_management()
+                logger.debug('%s: layer branch %s, pv %s, upstream (%s)' % (recipe.pn,
+                    str(layerbranch), recipe.pv, str(ru)))
-- 
2.1.4


