Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FC2DE00DBA; Tue,  2 Jan 2018 21:42:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC317E00DE3
	for <yocto@yoctoproject.org>; Tue,  2 Jan 2018 21:42:26 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w035gPb5013046
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 2 Jan 2018 21:42:25 -0800
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Tue, 2 Jan 2018 21:42:25 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Wed, 3 Jan 2018 13:42:25 +0800
Message-ID: <9babe5f0cf160cd76f3e43ad5a54e3636ff8706c.1514957938.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1514957938.git.liezhi.yang@windriver.com>
References: <cover.1514957938.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 4/5] update_layer.py: use it as a module
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
X-List-Received-Date: Wed, 03 Jan 2018 05:42:30 -0000
Content-Type: text/plain

It had been split to a separate tool and use subprocess to run it to avoid
tinfoil issues (e.g., can't be shutdown correctly in old version), but the
utils.setup_django() cost a lot of time which made it a little slow, use
mulitprocessing.Process() to run it as function can avoid both issues (tinfoil
and slow issues).

And remove bitbake modules when swith branch since it is may not be compatible
between branches.

This can save about 5 minutes in my testing when "update.py -b <branch>",
with parallel fetch and this, we can reduce the time from more than 9mins to
less than 3 mins.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 layerindex/update.py       | 115 +++++++++++++++++++--------------------------
 layerindex/update_layer.py | 103 +++++++++-------------------------------
 2 files changed, 70 insertions(+), 148 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index d6488f0..e13c9ab 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -21,6 +21,9 @@ import utils
 import operator
 import re
 import multiprocessing
+import update_layer
+import copy
+import imp
 
 import warnings
 warnings.filterwarnings("ignore", category=DeprecationWarning)
@@ -34,61 +37,15 @@ except ImportError:
     logger.error("Please install PythonGit 0.3.1 or later in order to use this script")
     sys.exit(1)
 
-
-def reenable_sigint():
-    signal.signal(signal.SIGINT, signal.SIG_DFL)
-
-def run_command_interruptible(cmd):
-    """
-    Run a command with output displayed on the console, but ensure any Ctrl+C is
-    processed only by the child process.
-    """
-    signal.signal(signal.SIGINT, signal.SIG_IGN)
+def call_update_layer(options, queue):
+    ret = 1
+    output = ""
     try:
-        process = subprocess.Popen(
-            cmd, cwd=os.path.dirname(sys.argv[0]), shell=True, preexec_fn=reenable_sigint, stdout=subprocess.PIPE, stderr=subprocess.STDOUT
-        )
-
-        reader = codecs.getreader('utf-8')(process.stdout, errors='surrogateescape')
-        buf = ''
-        while True:
-            out = reader.read(1, 1)
-            if out:
-                sys.stdout.write(out)
-                sys.stdout.flush()
-                buf += out
-            elif out == '' and process.poll() != None:
-                break
-
+        ret, output = update_layer.main(options, queue)
+    except Exception:
+        raise
     finally:
-        signal.signal(signal.SIGINT, signal.SIG_DFL)
-    return process.returncode, buf
-
-
-def prepare_update_layer_command(options, branch, layer, initial=False):
-    """Prepare the update_layer.py command line"""
-    if branch.update_environment:
-        cmdprefix = branch.update_environment.get_command()
-    else:
-        cmdprefix = 'python3'
-    cmd = '%s update_layer.py -l %s -b %s' % (cmdprefix, layer.name, branch.name)
-    if options.reload:
-        cmd += ' --reload'
-    if options.fullreload:
-        cmd += ' --fullreload'
-    if options.nocheckout:
-        cmd += ' --nocheckout'
-    if options.dryrun:
-        cmd += ' -n'
-    if initial:
-        cmd += ' -i'
-    if options.loglevel == logging.DEBUG:
-        cmd += ' -d'
-    elif options.loglevel == logging.ERROR:
-        cmd += ' -q'
-    if options.keep_temp:
-        cmd += ' --keep-temp'
-    return cmd
+        queue.put([ret, output])
 
 def update_actual_branch(layerquery, fetchdir, branch, options, update_bitbake, bitbakepath):
     """Update actual branch for layers and bitbake in database"""
@@ -266,6 +223,7 @@ def main():
     try:
         lockfn = os.path.join(fetchdir, "layerindex.lock")
         lockfile = utils.lock_file(lockfn)
+        update_log_path = update_layer.update_log_path
         if not lockfile:
             logger.error("Layer index lock timeout expired")
             sys.exit(1)
@@ -315,8 +273,15 @@ def main():
             # We now do this by calling out to a separate script; doing otherwise turned out to be
             # unreliable due to leaking memory (we're using bitbake internals in a manner in which
             # they never get used during normal operation).
+            update_layer_options = copy.copy(options)
             last_rev = {}
             for branch in branches:
+                # The bitbake modules are not compatible between branches, so
+                # remove them, they will be imported again when needed.
+                for name, module in sys.modules.copy().items():
+                    if '__file__' in module.__dict__ and module.__file__.startswith(bitbakepath):
+                        logger.debug('Removing module %s' % name)
+                        del sys.modules[name]
                 # If layer_A depends(or recommends) on layer_B, add layer_B before layer_A
                 deps_dict_all = {}
                 layerquery_sorted = []
@@ -333,16 +298,22 @@ def main():
                         collections_done.add((layerbranch.collection, layerbranch.version))
 
                 for layer in layerquery:
-                    cmd = prepare_update_layer_command(options, branchobj, layer, initial=True)
-                    logger.debug('Running layer update command: %s' % cmd)
-                    ret, output = run_command_interruptible(cmd)
-                    logger.debug('output: %s' % output)
-                    if ret != 0:
+                    logger.info('Getting initial data for layer %s', layer.name)
+                    update_layer_options.initial = True
+                    update_layer_options.layers = layer.name
+                    update_layer_options.branch = branch
+                    queue = multiprocessing.Queue()
+                    p = multiprocessing.Process(target=call_update_layer, args=(update_layer_options, queue,))
+                    p.start()
+                    ret, initial_data = queue.get()
+                    p.join()
+                    logger.debug('initial_data: %s' % initial_data)
+                    if ret != 0 or not initial_data:
                         continue
-                    col = re.search("^BBFILE_COLLECTIONS = \"(.*)\"", output, re.M).group(1) or ''
-                    ver = re.search("^LAYERVERSION = \"(.*)\"", output, re.M).group(1) or ''
-                    deps = re.search("^LAYERDEPENDS = \"(.*)\"", output, re.M).group(1) or ''
-                    recs = re.search("^LAYERRECOMMENDS = \"(.*)\"", output, re.M).group(1) or ''
+                    col = initial_data[0]
+                    ver = initial_data[1]
+                    deps = initial_data[2]
+                    recs = initial_data[3]
 
                     deps_dict = utils.explode_dep_versions2(bitbakepath, deps + ' ' + recs)
                     if len(deps_dict) == 0:
@@ -382,6 +353,7 @@ def main():
                         logger.error("Known collections: %s" % collections_done)
                         sys.exit(1)
 
+                update_layer_options.initial = False
                 for layer in layerquery_sorted:
                     layerupdate = LayerUpdate()
                     layerupdate.update = update
@@ -399,10 +371,18 @@ def main():
                                 layerupdate.save()
                         continue
 
-                    cmd = prepare_update_layer_command(options, branchobj, layer)
-                    logger.debug('Running layer update command: %s' % cmd)
+                    logger.info('Updating layer %s on branch %s' % (layer.name, branch))
+                    update_layer_options.layers = layer.name
+                    update_layer_options.branch = branch
+                    # Refresh update log
+                    with open(update_log_path, 'w') as f:
+                        pass
+                    queue = multiprocessing.Queue()
+                    p = multiprocessing.Process(target=call_update_layer, args=(update_layer_options, queue,))
+                    p.start()
+                    ret, output = queue.get()
+                    p.join()
                     layerupdate.started = datetime.now()
-                    ret, output = run_command_interruptible(cmd)
                     layerupdate.finished = datetime.now()
 
                     # We need to get layerbranch here because it might not have existed until
@@ -412,7 +392,8 @@ def main():
                     if layerbranch:
                         last_rev[layerbranch] = layerbranch.vcs_last_rev
                         layerupdate.layerbranch = layerbranch
-                        layerupdate.log = output
+                        with open(update_log_path, 'r') as f:
+                            layerupdate.log = f.read()
                         if not options.dryrun:
                             layerupdate.save()
 
@@ -421,6 +402,8 @@ def main():
                         break
         finally:
             utils.unlock_file(lockfile)
+            if os.path.exists(update_log_path):
+                os.remove(update_log_path)
 
     finally:
         update.log = ''.join(listhandler.read())
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 307c43a..329c30c 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -1,5 +1,3 @@
-#!/usr/bin/env python
-
 # Update layer index database for a single layer
 #
 # Copyright (C) 2013-2016 Intel Corporation
@@ -21,19 +19,17 @@ import itertools
 import utils
 import recipeparse
 import layerconfparse
+import git
+import settings
 
 import warnings
 warnings.filterwarnings("ignore", category=DeprecationWarning)
 
-logger = utils.logger_create('LayerIndexUpdate')
-
-# Ensure PythonGit is installed (buildhistory_analysis needs it)
-try:
-    import git
-except ImportError:
-    logger.error("Please install PythonGit 0.3.1 or later in order to use this script")
-    sys.exit(1)
-
+logger = logging.getLogger('LayerIndexUpdate')
+# Save messages to file, so that we can save them to database
+update_log_path = '%s/update_log.%s' % (settings.TEMP_BASE_DIR, str(os.getpid()) + ".log")
+update_log_handler = logging.FileHandler(update_log_path)
+logger.addHandler(update_log_handler)
 
 class DryRunRollbackException(Exception):
     pass
@@ -198,58 +194,10 @@ def update_distro_conf_file(path, distro, d):
     else:
         distro.description = desc
 
-def main():
-    if LooseVersion(git.__version__) < '0.3.1':
-        logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
-        sys.exit(1)
-
-
-    parser = optparse.OptionParser(
-        usage = """
-    %prog [options]""")
-
-    parser.add_option("-b", "--branch",
-            help = "Specify branch to update",
-            action="store", dest="branch", default='master')
-    parser.add_option("-l", "--layer",
-            help = "Layer to update",
-            action="store", dest="layer")
-    parser.add_option("-r", "--reload",
-            help = "Reload recipe data instead of updating since last update",
-            action="store_true", dest="reload")
-    parser.add_option("", "--fullreload",
-            help = "Discard existing recipe data and fetch it from scratch",
-            action="store_true", dest="fullreload")
-    parser.add_option("-n", "--dry-run",
-            help = "Don't write any data back to the database",
-            action="store_true", dest="dryrun")
-    parser.add_option("", "--nocheckout",
-            help = "Don't check out branches",
-            action="store_true", dest="nocheckout")
-    parser.add_option("-i", "--initial",
-            help = "Print initial values parsed from layer.conf only",
-            action="store_true")
-    parser.add_option("-d", "--debug",
-            help = "Enable debug output",
-            action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
-    parser.add_option("-q", "--quiet",
-            help = "Hide all output except error messages",
-            action="store_const", const=logging.ERROR, dest="loglevel")
-    parser.add_option("", "--keep-temp",
-            help = "Preserve temporary directory at the end instead of deleting it",
-            action="store_true")
-
-    options, args = parser.parse_args(sys.argv)
-    if len(args) > 1:
-        logger.error('unexpected argument "%s"' % args[1])
-        parser.print_help()
-        sys.exit(1)
-
+def main(options, queue):
     if options.fullreload:
         options.reload = True
 
-    utils.setup_django()
-    import settings
     from layerindex.models import LayerItem, LayerBranch, Recipe, RecipeFileDependency, Machine, Distro, BBAppend, BBClass
     from django.db import transaction
 
@@ -258,16 +206,15 @@ def main():
     branch = utils.get_branch(options.branch)
     if not branch:
         logger.error("Specified branch %s is not valid" % options.branch)
-        sys.exit(1)
 
     fetchdir = settings.LAYER_FETCH_DIR
     if not fetchdir:
         logger.error("Please set LAYER_FETCH_DIR in settings.py")
-        sys.exit(1)
+        return (1, '')
 
     bitbakepath = os.path.join(fetchdir, 'bitbake')
 
-    layer = utils.get_layer(options.layer)
+    layer = utils.get_layer(options.layers)
     urldir = layer.get_fetch_dir()
     repodir = os.path.join(fetchdir, urldir)
 
@@ -295,13 +242,13 @@ def main():
                 layerbranch.delete()
         else:
             logger.info("Skipping update of layer %s - branch %s doesn't exist" % (layer.name, branchdesc))
-        sys.exit(1)
+        return (1, '')
 
     try:
         (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
     except recipeparse.RecipeParseError as e:
         logger.error(str(e))
-        sys.exit(1)
+        return(1, '')
     logger.debug('Using temp directory %s' % tempdir)
     # Clear the default value of SUMMARY so that we can use DESCRIPTION instead if it hasn't been set
     tinfoil.config_data.setVar('SUMMARY', '')
@@ -349,7 +296,7 @@ def main():
                         logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
                     else:
                         logger.error("Failed to get last revision for layer %s on branch %s" % (layer.name, branchdesc))
-                    sys.exit(1)
+                    return (1, '')
 
             layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
             layerdir_start = os.path.normpath(layerdir) + os.sep
@@ -369,11 +316,11 @@ def main():
                         logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layer.name, branchdesc, layerbranch.vcs_subdir))
                     else:
                         logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layer.name, branchdesc))
-                    sys.exit(1)
+                    return (1, '')
 
                 if not os.path.exists(os.path.join(layerdir, 'conf/layer.conf')):
                     logger.error("conf/layer.conf not found for layer %s - is subdirectory set correctly?" % layer.name)
-                    sys.exit(1)
+                    return (1, '')
 
                 logger.info("Collecting data for layer %s on branch %s" % (layer.name, branchdesc))
 
@@ -382,13 +329,13 @@ def main():
                 if not layer_config_data:
                     logger.info("Skipping update of layer %s for branch %s - conf/layer.conf may have parse issues" % (layer.name, branchdesc))
                     layerconfparser.shutdown()
-                    sys.exit(1)
+                    return (1, '')
                 utils.set_layerbranch_collection_version(layerbranch, layer_config_data, logger=logger)
+                initial_data = []
                 if options.initial:
-                    # Use print() rather than logger.info() since "-q" makes it print nothing.
                     for i in ["BBFILE_COLLECTIONS", "LAYERVERSION", "LAYERDEPENDS", "LAYERRECOMMENDS"]:
-                        print('%s = "%s"' % (i, utils.get_layer_var(layer_config_data, i, logger)))
-                    sys.exit(0)
+                        initial_data.append(utils.get_layer_var(layer_config_data, i, logger))
+                    return (0, initial_data)
                 utils.add_dependencies(layerbranch, layer_config_data, logger=logger)
                 utils.add_recommends(layerbranch, layer_config_data, logger=logger)
                 layerbranch.save()
@@ -397,7 +344,7 @@ def main():
                     config_data_copy = recipeparse.setup_layer(tinfoil.config_data, fetchdir, layerdir, layer, layerbranch)
                 except recipeparse.RecipeParseError as e:
                     logger.error(str(e))
-                    sys.exit(1)
+                    return (1, '')
 
                 if layerbranch.vcs_last_rev and not options.reload:
                     try:
@@ -732,10 +679,6 @@ def main():
             if options.dryrun:
                 raise DryRunRollbackException()
 
-
-    except KeyboardInterrupt:
-        logger.warn("Update interrupted, changes to %s rolled back" % layer.name)
-        sys.exit(254)
     except SystemExit:
         raise
     except DryRunRollbackException:
@@ -752,8 +695,4 @@ def main():
     else:
         logger.debug('Deleting temp directory')
         shutil.rmtree(tempdir)
-    sys.exit(0)
-
-
-if __name__ == "__main__":
-    main()
+    return(0, '')
-- 
2.7.4


