Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F56DE010E9; Thu, 19 Jul 2018 06:18:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A518FE010E9
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 06:17:56 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jul 2018 06:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,374,1526367600"; d="scan'208";a="73712027"
Received: from wulili-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.50.201])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2018 06:17:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jul 2018 15:17:33 +0200
Message-Id: <0ddaf26bd81af0f1e4bb8b0c1fbaf391bb9f4f77.1532006209.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1532006209.git.paul.eggleton@linux.intel.com>
References: <cover.1532006209.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/3] Add minimal tests for update script
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
X-List-Received-Date: Thu, 19 Jul 2018 13:18:00 -0000

Up to this point we haven't had any regression tests for the layer
index, but the application (in particular the update script) has become
rather complicated, and we have had a few regressions, so here are some
tests. I've implemented them using pytest and pytest-django; I chose
pytest since we are starting from scratch here and I like the idea of
pytest's fixtures among other features. Annoyingly though because of our
use of separate scripts that need to perform database operations I had
to hack around some of the behaviour of pytest-django, which is clearly
not designed with this kind of structure in mind, but that's taken care
of now. Note that I've only considered backend testing for the moment,
there's not yet a strategy for testing the UI.

To run the tests you simply run "pytest" in the root of the repository.
You will need to have a working configuration set in settings.py (a
database needs to be set, but won't actually be used), and if you're
using MariaDB/MySQL then you'll need the READ COMMITTED transaction
isolation mode selected.

At the moment there are only a few basic tests for the update script
and a bunch of comments describing some we should add. The tests use
a newly added synthetic meta-layerindex-test layer on
git.yoctoproject.org so we can have something with known and fairly
static content. I expect we will extend these tests in the near future.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .gitignore           |   1 +
 pytest.ini           |   4 +
 tests/test_update.py | 195 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 200 insertions(+)
 create mode 100644 pytest.ini
 create mode 100644 tests/test_update.py

diff --git a/.gitignore b/.gitignore
index 0010cdb6..edfc2ac1 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,4 +1,5 @@
 *.pyc
 *.db3
 *.swp
+.pytest_cache
 venv/
diff --git a/pytest.ini b/pytest.ini
new file mode 100644
index 00000000..c067b059
--- /dev/null
+++ b/pytest.ini
@@ -0,0 +1,4 @@
+[pytest]
+DJANGO_SETTINGS_MODULE = settings
+norecursedirs = .git layers
+
diff --git a/tests/test_update.py b/tests/test_update.py
new file mode 100644
index 00000000..e00775d4
--- /dev/null
+++ b/tests/test_update.py
@@ -0,0 +1,195 @@
+# layerindex-web - tests for update script
+#
+# Copyright (C) 2018 Intel Corporation
+#
+# Licensed under the MIT license, see COPYING.MIT for details
+
+# NOTE: requires pytest-django. Run using "pytest" from the root
+# of the repository (add -s to avoid suppressing the output of commands
+# when working on the tests)
+
+# NOTE: for these tests to work with MySQL / MariaDB and Django 1.11, you will need
+# to set the transaction isolation mode to READ COMMITTED (basically set
+# transaction-isolation = READ-COMMITTED in the [mysqld] section of /etc/my.cnf)
+
+# NOTE: we cannot practically save and restore the database between tests (since
+# we want these tests to work with any database backend) nor use transactions
+# (since we need to launch the update script which uses a separate database
+# connection), thus these tests cannot depend upon eachother - i.e. they must
+# not touch the test layer(s) in a manner that would affect any other test. In
+# practice that means separate recipes for each test.
+
+import sys
+import os
+import shutil
+import subprocess
+import pytest
+
+basepath = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
+
+def run_cmd(cmd, cwd=None):
+    if not cwd:
+        cwd = basepath
+    subprocess.check_call(cmd, stderr=subprocess.STDOUT, shell=True, cwd=cwd)
+
+@pytest.fixture(autouse=True)
+def enable_db_access_for_all_tests(db):
+    pass
+
+@pytest.fixture
+def db_access_without_rollback_and_truncate(request, django_db_setup, django_db_blocker):
+    django_db_blocker.unblock()
+    request.addfinalizer(django_db_blocker.restore)
+
+@pytest.fixture(scope="module")
+def backup_settings(tmpdir_factory):
+    stmpdir = tmpdir_factory.mktemp('settings')
+    settingsfile = os.path.join(basepath, 'settings.py')
+    backupfile = os.path.join(stmpdir, 'settings.bak')
+    shutil.copy(settingsfile, backupfile)
+    yield settingsfile
+    shutil.copy(backupfile, settingsfile)
+
+@pytest.fixture(scope="module")
+def hack_settings(backup_settings):
+    # It's horrific to have to do this, but we need to have additional
+    # scripts connect to the testing database and not whatever's in settings.py
+    # on disk right now, and this appears to be the only real way to do that
+    from django.conf import settings
+    with open(backup_settings, 'a') as f:
+        f.write('\nDATABASES = %s\n' % settings.DATABASES)
+
+@pytest.fixture(scope="module")
+def import_layer(hack_settings):
+    run_cmd("layerindex/tools/import_layer.py git://git.openembedded.org/openembedded-core -s meta openembedded-core")
+    run_cmd("layerindex/tools/import_layer.py git://git.yoctoproject.org/meta-layerindex-test -s meta-layerindex-test")
+    run_cmd("layerindex/update.py -l meta-layerindex-test")
+
+def test_example_recipe(import_layer):
+    from layerindex.models import Branch, LayerItem, LayerBranch
+    layer = LayerItem.objects.get(name='meta-layerindex-test')
+    layerbranch = LayerBranch.objects.get(layer__name='meta-layerindex-test')
+    found = False
+    for recipe in layerbranch.recipe_set.all():
+        if recipe.pn == 'example':
+            if found:
+                assert False, 'Duplicate example recipe in database'
+            assert recipe.pv == '0.1'
+            assert recipe.summary == 'Example recipe'
+            assert recipe.description == 'An example recipe used to test the OE layer index update script'
+            assert recipe.license == 'MIT'
+            assert recipe.filename == 'example_0.1.bb'
+            assert recipe.filepath == 'recipes-example/example'
+            # section is currently relying on what's set by bitbake.conf
+            assert recipe.section == 'base'
+            assert recipe.provides.split() == ['example']
+            assert recipe.blacklisted == ''
+            # homepage bugtracker bbclassextend inherits
+            # dependencies
+            found = True
+    if not found:
+        assert False, "Expected 'example' recipe not in database"
+
+@pytest.fixture()
+def repo(db_access_without_rollback_and_truncate):
+    from layerindex.models import LayerItem
+    from django.conf import settings
+    fetchdir = settings.LAYER_FETCH_DIR
+    layer = LayerItem.objects.get(name='meta-layerindex-test')
+    urldir = layer.get_fetch_dir()
+    repodir = os.path.join(fetchdir, urldir)
+    yield repodir
+
+def test_move_recipe_out(import_layer, repo, db_access_without_rollback_and_truncate):
+    from layerindex.models import LayerBranch, Recipe
+    layerbranch = LayerBranch.objects.get(layer__name='meta-layerindex-test')
+    recipe = layerbranch.recipe_set.filter(pn='moveme').first()
+    assert recipe, 'No moveme recipe found'
+    os.makedirs(os.path.join(repo, 'meta-layerindex-othertest/recipes-somethingelse/moveme'))
+    run_cmd('tree', cwd=repo)
+    run_cmd('git mv meta-layerindex-test/recipes-example/moveme/moveme_0.1.bb meta-layerindex-othertest/recipes-somethingelse/moveme/moveme_0.1.bb', cwd=repo)
+    run_cmd('git commit -m "Move recipe to a different layer"', cwd=repo)
+    run_cmd("layerindex/update.py -d -l meta-layerindex-test --nofetch --nocheckout")
+    # Recipe should have been deleted by update script
+    with pytest.raises(Recipe.DoesNotExist):
+        recipe.refresh_from_db()
+
+def test_delete_recipe(import_layer, repo, db_access_without_rollback_and_truncate):
+    from layerindex.models import LayerBranch, Recipe
+    layerbranch = LayerBranch.objects.get(layer__name='meta-layerindex-test')
+    recipe = layerbranch.recipe_set.filter(pn='deleteme').first()
+    assert recipe, 'No deleteme recipe found'
+    run_cmd('git rm meta-layerindex-test/recipes-example/deleteme/deleteme_0.1.bb', cwd=repo)
+    run_cmd('git commit -m "Delete recipe"', cwd=repo)
+    run_cmd("layerindex/update.py -d -l meta-layerindex-test --nofetch --nocheckout")
+    # Recipe should have been deleted by update script
+    with pytest.raises(Recipe.DoesNotExist):
+        recipe.refresh_from_db()
+
+def test_upgrade_recipe(import_layer, repo, db_access_without_rollback_and_truncate):
+    # FIXME this test is a little simplistic
+    from layerindex.models import LayerBranch, Recipe
+    layerbranch = LayerBranch.objects.get(layer__name='meta-layerindex-test')
+    recipe = Recipe.objects.filter(layerbranch=layerbranch, pn='upgrademe').first()
+    assert recipe, 'No upgrademe recipe found'
+    oldid = recipe.id
+    run_cmd('git mv meta-layerindex-test/recipes-example/upgrademe/upgrademe_0.1.bb meta-layerindex-test/recipes-example/upgrademe/upgrademe_0.2.bb', cwd=repo)
+    run_cmd('git commit -m "Upgrade recipe"', cwd=repo)
+    run_cmd("layerindex/update.py -d -l meta-layerindex-test --nofetch --nocheckout")
+    recipe = Recipe.objects.filter(layerbranch=layerbranch, pn='upgrademe').first()
+    assert recipe.id == oldid
+    assert recipe.pv == "0.2"
+    assert recipe.filename == 'upgrademe_0.2.bb'
+    assert recipe.filepath == 'recipes-example/upgrademe'
+
+def test_add_recipe(import_layer, repo, db_access_without_rollback_and_truncate):
+    from layerindex.models import LayerBranch, Recipe
+    layerbranch = LayerBranch.objects.get(layer__name='meta-layerindex-test')
+    recipe = Recipe.objects.filter(layerbranch=layerbranch, pn='addme').first()
+    assert not recipe, 'addme recipe found when it should not have been'
+    os.makedirs(os.path.join(repo, 'meta-layerindex-test/recipes-example/addme'))
+    with open(os.path.join(repo, 'meta-layerindex-test/recipes-example/addme/addme_0.5.bb'), 'w') as f:
+        f.write('SUMMARY = "Brand new recipe"\n')
+        f.write('LICENSE = "MIT"\n')
+    run_cmd('git add meta-layerindex-test/recipes-example/addme/addme_0.5.bb', cwd=repo)
+    run_cmd('git commit -m "Add recipe"', cwd=repo)
+    run_cmd("layerindex/update.py -d -l meta-layerindex-test --nofetch --nocheckout")
+    # Recipe should have been deleted by update script
+    recipe = Recipe.objects.filter(layerbranch=layerbranch, pn='addme').first()
+    assert recipe, 'addme recipe not found'
+    assert recipe.pv == "0.5"
+    assert recipe.summary == "Brand new recipe"
+    assert recipe.license == "MIT"
+
+
+
+# FIXME test recipe modify
+# FIXME test recipe upgrade with inc merge?
+# FIXME test patches
+# FIXME test sources
+# FIXME test inherits
+
+# FIXME test distro add
+# FIXME test distro rename
+# FIXME test distro modify
+# FIXME test distro delete
+
+# FIXME test machine add
+# FIXME test machine rename
+# FIXME test machine modify
+# FIXME test machine delete
+
+# FIXME test bbappend add
+# FIXME test bbappend rename
+# FIXME test bbappend delete
+
+# FIXME test bbclass add
+# FIXME test bbclass rename
+# FIXME test bbclass delete
+
+# FIXME test modify bbclass updates dependent recipes
+# FIXME test modify inc updates dependent recipes
+
+# FIXME 'adding' a group of layers 'out of order' e.g. layer1 - require layer 5 and 4..  layer 2 - require layer 3 and 4, layer 3 - require layer 5, layer 4 require layer 5, layer 5 (no requirements)
+
+# FIXME test REST API (different module!)
-- 
2.17.1


