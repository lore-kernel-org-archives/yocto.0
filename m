Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2C4CE007B5; Fri, 22 Jan 2016 10:06:30 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88DEAE00444
	for <yocto@yoctoproject.org>; Fri, 22 Jan 2016 10:06:22 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Jan 2016 10:06:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,332,1449561600"; d="scan'208";a="866338116"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga001.jf.intel.com with ESMTP; 22 Jan 2016 10:06:22 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Jan 2016 11:03:11 -0800
Message-Id: <1453489391-27737-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
Subject: [PATCH] /bin/release_scripts: Release automation scripts
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
X-List-Received-Date: Fri, 22 Jan 2016 18:06:30 -0000

[YOCTO #8942]

This is the initial commit of the release.py and misc component scripts which
form the basis for release automation work. The release.py script may be used
to stage and publish a major, point, or milestone release. The various
standalone scriptlet perform individual steps of parts of the release
 process and are handy for clean up, incremental staging, and testing.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/README              |  40 +++
 bin/release_scripts/convert_symlinks.py | 131 +++++++++
 bin/release_scripts/gen_md5.py          |  95 +++++++
 bin/release_scripts/nuke_cruft.py       |  92 +++++++
 bin/release_scripts/purge_unloved.py    |  84 ++++++
 bin/release_scripts/release.py          | 475 ++++++++++++++++++++++++++++++++
 bin/release_scripts/rsync.py            | 176 ++++++++++++
 7 files changed, 1093 insertions(+)
 create mode 100644 bin/release_scripts/README
 create mode 100755 bin/release_scripts/convert_symlinks.py
 create mode 100755 bin/release_scripts/gen_md5.py
 create mode 100755 bin/release_scripts/nuke_cruft.py
 create mode 100755 bin/release_scripts/purge_unloved.py
 create mode 100755 bin/release_scripts/release.py
 create mode 100755 bin/release_scripts/rsync.py

diff --git a/bin/release_scripts/README b/bin/release_scripts/README
new file mode 100644
index 0000000..dbc51fc
--- /dev/null
+++ b/bin/release_scripts/README
@@ -0,0 +1,40 @@
+The release.py script is intended to help more efficiently and consistently 
+publish releases. The script works for Major, Point, and Milestone releases.
+
+To invoke the script, run "python release.py <options>. Available options are:  
+
+
+    -i, --build-id    Required for all release types. Build id of release 
+                      including rc#. i.e. yocto-2.0.rc1, yocto-2.1_M1.rc3, etc.
+    -b, --branch      Required for Major and Point releases. i.e. daisy, fido, jethro, etc.
+    -p, --poky-ver    Required for Major and Point releases. Not used for Milestones. i.e. 14.0.0
+
+Example: 
+
+$ python release.py -i yocto-2.0.rc3 -b jethro -p 14.0.0 
+
+The script will take the release candidate name and determine the source and 
+target directories, as well as the type of release, etc., to prepare for staging 
+the release. 
+
+The script will then do the following:
+
+1) Rsync the rc candidate to a staging dir where all work happens
+2) Convert the symlink in build-appliance dir.
+3) In machines dir, convert the symlinks, delete the files we do not want to 
+   publish, and generate fresh md5sums after link conversion.
+4) For major and point releases, repackage the poky and eclipse tarballs using 
+   branch and poky version.
+5) For major and point releases, publish the eclipse plugins.
+6) For major and point releases, create the BSP tarballs. 
+7) For major and point releases, generate the master md5sum file for the release.
+8) Sync the staging directory to downloads directory.
+
+Currently, the ADT release sync and the release notes must still be done manually 
+and copied over to the release download directories accordingly. Future enhancements
+will address these two release steps.
+
+
+
+
+
diff --git a/bin/release_scripts/convert_symlinks.py b/bin/release_scripts/convert_symlinks.py
new file mode 100755
index 0000000..21aaf04
--- /dev/null
+++ b/bin/release_scripts/convert_symlinks.py
@@ -0,0 +1,131 @@
+import os
+import optparse
+import sys
+import hashlib
+import glob
+import os.path
+import shutil
+from shutil import rmtree, copyfile
+from subprocess import call
+
+def print_vars():
+    print "AB_BASE: %s" %AB_BASE
+    print "RELEASE_DIR: %s" %RELEASE_DIR
+    print "MACHINES: %s" %MACHINES
+    print
+    return
+
+
+def get_list(dirname):
+    dirlist = os.listdir(dirname)
+    dirlist.sort()
+    return dirlist
+
+def split_thing(thing, marker):
+    filebits = thing.split(marker)
+    return filebits
+
+def rejoin_thing(thing, marker):
+    filebits = marker.join(thing)
+    return filebits
+
+
+def convert_symlinks(dirname):
+    thing = os.path.split(dirname)[1]
+    if thing == "qemu":
+        dirlist = get_list(dirname)
+        for dir in dirlist:
+            qemu_dir = os.path.join(MACHINES, dirname, dir)
+            print "Converting symlinks in %s" %qemu_dir
+            convert_symlinks(qemu_dir)
+    else:
+        print "Converting symlinks in %s" %dirname
+        link_list = []
+        for root, dirs, files in os.walk(dirname, topdown=True):
+            for name in files:
+                filename = (os.path.join(root, name))
+                if os.path.islink(filename):
+                    src_file = os.path.realpath(filename)
+                    link_list.append([filename, src_file])
+        for line in link_list:
+            os.remove(line[0])
+            try:
+               copyfile(line[1], line[0])
+            except IOError:
+                print "Error: %s is missing or isn\'t a real file" %line[1]
+            else:
+                print line[0]
+        for line in link_list:
+            if os.path.exists(line[1]):
+               os.remove(line[1])
+    print
+    return
+
+
+def nuke_cruft(dirname, ext_list):
+    thing = os.path.split(dirname)[1]
+    if thing == "qemu":
+        dirlist = get_list(dirname)
+        for dir in dirlist:
+            qemu_dir = os.path.join(MACHINES, dirname, dir)
+            nuke_cruft(qemu_dir, CRUFT_LIST)
+    else:
+        foo = dirname.find("p1022")
+        if foo == -1:
+            # NOT P1022ds
+            for ext in ext_list:
+                print "Deleting %s files" %ext
+                os.system("rm -f %s/%s" %(dirname, ext))
+        else:
+            # IS P1022ds
+            for ext in ext_list:
+                if ext != "*.tar.gz":
+                    print "Deleting %s files" %ext
+                    os.system("rm -f %s/%s" %(dirname, ext))
+    print
+    return
+
+
+if __name__ == '__main__':
+    
+    os.system("clear")
+    print
+
+    # This is for testing convenience
+    HOME_BASE = "/home/tgraydon/work/release"
+    AB_BASE = HOME_BASE
+
+    # This is the legit set of vars used for production release
+    #VHOSTS = "/srv/www/vhosts"
+    #AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
+
+ 
+    parser = optparse.OptionParser()
+    parser.add_option("-d", "--dirname",
+                      type="string", dest="dirname",
+                      help="Required. Name of the staging dir. i.e. yocto-2.0, yocto-2.1_M1, etc.")
+                     
+    (options, args) = parser.parse_args()
+ 
+    if options.dirname:
+        if options.dirname.find("rc") == -1 and options.dirname.find("RC") == -1:
+            print options.dirname
+            RELEASE_DIR = os.path.join(AB_BASE, options.dirname)
+            MACHINES = os.path.join(RELEASE_DIR, "machines")
+        else:
+            print "Hey! You can't touch an RC candidate! Check your args!"
+            sys.exit()
+    else:
+        print "Huh? Check your args."
+        print "Please use -h or --help for options."
+        sys.exit()
+         
+    if os.path.exists(MACHINES):
+        dirlist = get_list(MACHINES)
+        for dirname in dirlist:
+            dirname = os.path.join(MACHINES, dirname)
+            convert_symlinks(dirname)
+    else:
+        print "Graciously declining to do anything. I don't know what %s is." %RELEASE_DIR
+
+
diff --git a/bin/release_scripts/gen_md5.py b/bin/release_scripts/gen_md5.py
new file mode 100755
index 0000000..ae78242
--- /dev/null
+++ b/bin/release_scripts/gen_md5.py
@@ -0,0 +1,95 @@
+#!/usr/bin/python
+
+import os
+import optparse
+import sys
+import hashlib
+import glob
+import os.path
+import shutil
+from shutil import rmtree, copyfile
+from subprocess import call
+
+
+def split_thing(thing, marker):
+    filebits = thing.split(marker)
+    return filebits
+
+def rejoin_thing(thing, marker):
+    filebits = marker.join(thing)
+    return filebits
+
+def get_md5sum(path, blocksize = 4096):
+    f = open(path, 'rb')
+    md5sum = hashlib.md5()
+    buffer = f.read(blocksize)
+    while len(buffer) > 0:
+        md5sum.update(buffer)
+        buffer = f.read(blocksize)
+    f.close()
+    return md5sum.hexdigest()
+
+
+def gen_md5sum(dirname):
+    print
+    print "Generating md5sums for files in %s...." %dirname
+    for root, dirs, files in os.walk(dirname, topdown=True):
+        for name in files:
+            filename = (os.path.join(root, name))
+            md5sum = get_md5sum(filename)
+            md5_file = ".".join([filename, 'md5sum'])
+            md5str = md5sum + " " + name
+            print md5str
+            f = open(md5_file, 'w')
+            f.write(md5str)
+            f.close()
+    return
+
+def print_vars():
+    print "AB_BASE: %s" %AB_BASE
+    print "RELEASE_DIR: %s" %RELEASE_DIR
+    print "MACHINES: %s" %MACHINES
+    print
+    return
+
+
+if __name__ == '__main__':
+    
+    os.system("clear")
+    print
+    
+    # This is for testing convenience
+    HOME_BASE = "/home/tgraydon/work/release"
+    AB_BASE = HOME_BASE
+
+    # This is the legit set of vars used for production release
+    #VHOSTS = "/srv/www/vhosts"
+    #AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
+
+    parser = optparse.OptionParser()
+    parser.add_option("-d", "--dirname",
+                      type="string", dest="dirname",
+                      help="Required. Name of the staging dir for which to generate machine md5ums. i.e. yocto-2.0, yocto-2.1_M1, etc.")
+                     
+    (options, args) = parser.parse_args()
+ 
+    if options.dirname:
+        if options.dirname.find("rc") == -1 and options.dirname.find("RC") == -1:
+            print options.dirname
+            RELEASE_DIR = os.path.join(AB_BASE, options.dirname)
+            MACHINES = os.path.join(RELEASE_DIR, "machines")
+        else:
+            print "Hey! You can't touch an RC candidate! Check your args!"
+            sys.exit()
+    else:
+        print "Huh? Check your args."
+        print "Please use -h or --help for options."
+        sys.exit()
+         
+    print_vars()
+    if os.path.exists(MACHINES):
+        gen_md5sum(MACHINES)
+    else:
+        print "Graciously declining to do anything. I don't know what %s is." %RELEASE_DIR
+
+
diff --git a/bin/release_scripts/nuke_cruft.py b/bin/release_scripts/nuke_cruft.py
new file mode 100755
index 0000000..f28e6cb
--- /dev/null
+++ b/bin/release_scripts/nuke_cruft.py
@@ -0,0 +1,92 @@
+#!/usr/bin/python
+
+import os
+import optparse
+import sys
+import hashlib
+import glob
+import os.path
+import shutil
+from shutil import rmtree, copyfile
+from subprocess import call
+
+def get_list(dirname):
+    dirlist = os.listdir(dirname)
+    dirlist.sort()
+    return dirlist
+
+def nuke_cruft(dirname, ext_list):
+    #TODO: handle corner case of multiple dte stamps in machines dir
+    #print "Nuking unwanted files in %s" %dirname
+    thing = os.path.split(dirname)[1]
+    #print thing
+    if thing == "qemu":
+        print "Bada Bing. Qemu!"
+        dirlist = get_list(dirname)
+        #print dirlist
+        for dir in dirlist:
+            qemu_dir = os.path.join(MACHINES, dirname, dir)
+            #print qemu_dir
+            nuke_cruft(qemu_dir, CRUFT_LIST)
+    else:
+        foo = dirname.find("p1022")
+        if foo == -1:
+            # NOT P1022ds
+            for ext in ext_list:
+                print "Deleting %s files" %ext
+                os.system("rm -f %s/%s" %(dirname, ext))
+        else:
+            # IS p1022ds
+            for ext in ext_list:
+                if ext != "*.tar.gz":
+                    print "Deleting %s files" %ext
+                    os.system("rm -f %s/%s" %(dirname, ext))
+    print
+    return
+
+
+if __name__ == '__main__':
+    
+    os.system("clear")
+    print
+
+    # This is for testing convenience
+    HOME_BASE = "/home/tgraydon/work/release"
+    AB_BASE = HOME_BASE
+
+    # This is the legit set of vars used for production release
+    #VHOSTS = "/srv/www/vhosts"
+    #AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
+
+    # List of the files in machines directories that we delete from all releases
+    CRUFT_LIST = ['*.md5sum', '*.tar.gz', '*.iso']
+ 
+    parser = optparse.OptionParser()
+    parser.add_option("-d", "--dirname",
+                      type="string", dest="dirname",
+                      help="Required. Name of the staging dir. i.e. yocto-2.0, yocto-2.1_M1, etc.")
+                     
+    (options, args) = parser.parse_args()
+ 
+    if options.dirname:
+        if options.dirname.find("rc") == -1 and options.dirname.find("RC") == -1:
+            print options.dirname
+            RELEASE_DIR = os.path.join(AB_BASE, options.dirname)
+            MACHINES = os.path.join(RELEASE_DIR, "machines")
+        else:
+            print "Hey! You can't touch an RC candidate! Check your args!"
+            sys.exit()
+    else:
+        print "Huh? Check your args."
+        print "Please use -h or --help for options."
+        sys.exit()
+         
+    if os.path.exists(MACHINES):
+        dirlist = get_list(MACHINES)
+        for dirname in dirlist:
+            dirname = os.path.join(MACHINES, dirname)
+            nuke_cruft(dirname, CRUFT_LIST)
+    else:
+        print "Graciously declining to do anything. I don't know what %s is." %RELEASE_DIR
+
+
diff --git a/bin/release_scripts/purge_unloved.py b/bin/release_scripts/purge_unloved.py
new file mode 100755
index 0000000..96810f8
--- /dev/null
+++ b/bin/release_scripts/purge_unloved.py
@@ -0,0 +1,84 @@
+#!/usr/bin/python
+
+import os
+import optparse
+import argparse
+import sys
+import hashlib
+import glob
+import os.path
+import shutil
+from shutil import rmtree, copyfile
+from subprocess import call
+
+
+def print_vars():
+    print "AB_BASE: %s" %AB_BASE
+    print "RELEASE_DIR: %s" %RELEASE_DIR
+    print
+    return
+
+def purge_unloved():
+    print
+    print "Purging unwanted directories..."
+    for target in UNLOVED:
+        target = target.rstrip()
+        print "Deleting: %s/%s" %(RELEASE_DIR, target)
+        os.system('rm -rf %s/%s' %(RELEASE_DIR, target))
+    return
+
+def split_thing(thing, marker):
+    filebits = thing.split(marker)
+    return filebits
+
+def rejoin_thing(thing, marker):
+    filebits = marker.join(thing)
+    return filebits
+
+if __name__ == '__main__':
+    
+    os.system("clear")
+    print
+    
+    # This is for testing convenience
+    HOME_BASE = "/home/tgraydon/work/release"
+    AB_BASE = HOME_BASE
+    DL_BASE = os.path.join(HOME_BASE, "downloads")
+    ADT_DEV = os.path.join(HOME_BASE, "adtrepo-dev")
+    ADT_BASE = os.path.join(HOME_BASE, "adtrepo")
+
+    # This is the legit set of vars used for production release
+    #VHOSTS = "/srv/www/vhosts"
+    #AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
+    #DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
+    #ADT_SRC = os.path.join(VHOSTS, "adtrepo-dev")
+    #ADT_BASE = os.path.join(VHOSTS, "adtrepo.yoctoproject.org")
+
+    # List of the directories we delete from all releases
+    UNLOVED = ['rpm', 'deb', 'ptest', 'adt-installer-QA']
+
+    parser = optparse.OptionParser()
+    parser.add_option("-d", "--dirname",
+                      type="string", dest="dirname",
+                      help="Required. Name of the staging dir you want to clean up. i.e. yocto-2.0, yocto-2.1_M1, etc.")
+                     
+    (options, args) = parser.parse_args()
+ 
+    if options.dirname:
+        # Figure out the release name, type of release, and generate some vars, do some basic validation
+        if options.dirname.find("rc") == -1 and options.dirname.find("RC") == -1:
+            print options.dirname
+            RELEASE_DIR = os.path.join(AB_BASE, options.dirname)
+        else:
+            print "Hey! You can't touch an RC candidate! Check your args!"
+            sys,exit()
+    else:
+        print "Huh? Check your args."
+        print "Please use -h or --help for options."
+        sys.exit()
+    
+    print_vars()
+    if os.path.exists(RELEASE_DIR):
+        purge_unloved()
+    else:
+        print "Graciously declining to delete anything. I don't know what %s is." %RELEASE_DIR
diff --git a/bin/release_scripts/release.py b/bin/release_scripts/release.py
new file mode 100755
index 0000000..27ee409
--- /dev/null
+++ b/bin/release_scripts/release.py
@@ -0,0 +1,475 @@
+'''
+Created on Jan 7, 2016
+
+__author__ = "Tracy Graydon"
+__copyright__ = "Copyright 2016, Intel Corp."
+__credits__ = ["Tracy Graydon"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Tracy Graydon"
+__email__ = "tracy.graydon@intel.com"
+'''
+
+import os
+import optparse
+import sys
+import hashlib
+import glob
+import os.path
+import shutil
+from shutil import rmtree, copyfile
+from subprocess import call
+
+def print_vars():
+    print "RELEASE: %s" %RELEASE
+    print "REL_TYPE: %s" %REL_TYPE
+    print "RC_DIR: %s" %RC_DIR
+    print "REL_ID: %s" %REL_ID
+    print "RC: %s" %RC
+    if MILESTONE != "":
+        print "Milestone: %s" %MILESTONE
+    if POKY_VER != "":
+        print "POKY_VER: %s" %POKY_VER
+    else:
+       print "POKY_VER: undefined!"
+    if BRANCH:
+        print "BRANCH: %s" %BRANCH
+    else:
+        print "BRANCH: undefined!"
+
+    print "DL_BASE: %s" %DL_BASE
+    if RC_SOURCE != "":
+        print "RC_SOURCE: %s" %RC_SOURCE
+    print "RELEASE_DIR: %s" %RELEASE_DIR
+    print "ECLIPSE_DIR: %s" %ECLIPSE_DIR
+    print "PLUGIN_DIR: %s" %PLUGIN_DIR
+    print "DL_DIR: %s" %DL_DIR
+    print
+    return
+
+def sanity_check(source, target):
+    if not os.path.exists(source):
+       print
+       print "SOURCE dir %s does NOT EXIST." %source
+       print
+       sys.exit()
+    if not os.listdir(source):
+       print
+       print "SOURCE dir %s is EMPTY" %source
+       print
+    if os.path.exists(target):
+       print
+       print "I can't let you do it, Jim. The TARGET directory %s exists." %target
+       print
+       sys.exit()
+    return
+
+
+def sync_it(source, target, exclude_list):
+    print "Syncing %s to %s" %(source, target)
+    sanity_check(source, target)
+    source = source + "/"
+    if exclude_list:
+        exclusions = ['--exclude=%s' % x.strip() for x in exclude_list]
+        print "Exclusions: %s" %exclusions
+        print
+        exclude = "--exclude=" + os.path.join(RELEASE_DIR, exclude_list[0])
+        length = len(exclude_list)
+        for i in range(1, length):
+            exclude = exclude + " " + "--exclude=" + os.path.join(RELEASE_DIR, exclude_list[i])
+        print "Exclude: %s" %exclude
+        command = "rsync -avrl " + exclude + source + " " + target
+        os.system("rsync -avrl --exclude=deb --exclude=rpm --exclude=ptest --exclude=adt-installer-QA '%s' '%s'" %(source, target))
+    else:
+        os.system("rsync -avrl '%s' '%s'" %(source, target))
+    print
+    return
+
+def purge_unloved():
+    print
+    print "Purging unwanted directories..."
+    for target in UNLOVED:
+        target = target.rstrip()
+        print "Deleting: %s/%s" %(RELEASE_DIR, target)
+        os.system('rm -rf %s/%s' %(RELEASE_DIR, target))
+    return
+
+def get_list(dirname):
+    dirlist = os.listdir(dirname)
+    dirlist.sort()
+    return dirlist
+
+def split_thing(thing, marker):
+    filebits = thing.split(marker)
+    return filebits
+
+def rejoin_thing(thing, marker):
+    filebits = marker.join(thing)
+    return filebits
+
+def fix_tarballs():
+    print
+    print "Repackaging poky and eclipse tarballs...."
+    os.chdir(RELEASE_DIR)
+    os.mkdir(TARBALL_DIR)
+    #os.mkdir("%s" %TARBALL_DIR)
+    os.system("mv %s/*.tar.bz2 %s" %(RELEASE_DIR, TARBALL_DIR))
+    os.system("rm *.md5sum")
+    os.chdir(TARBALL_DIR)
+    dirlist = get_list(TARBALL_DIR)
+    for blob in dirlist:
+        print "Original Tarball: %s" %blob
+        chunks = split_thing(blob, ".")
+        filename = chunks[0]
+        basename = split_thing(filename, "-")
+        index = len(basename)-1
+        basename[index] = POKY_VER
+        new_name = rejoin_thing(basename, "-")
+        chunks[0] = new_name
+        new_blob = rejoin_thing(chunks, ".")
+        print "New Tarball: %s" %new_blob
+        os.system("tar jxf %s" %blob)
+        os.system("mv %s %s" %(filename, new_name))
+        os.system("rm -rf %s/.git*" %new_name)
+        os.remove(blob)
+        os.system("tar jcf %s %s" %(new_blob, new_name))
+        rmtree(new_name)
+        os.symlink(new_blob, blob)
+        os.system("md5sum %s > %s.md5sum" %(new_blob, new_blob))
+        print
+    os.system("mv * %s" %RELEASE_DIR)
+    os.chdir(RELEASE_DIR)
+    os.rmdir(TARBALL_DIR)
+    print
+    return
+
+def get_md5sum(path, blocksize = 4096):
+    f = open(path, 'rb')
+    md5sum = hashlib.md5()
+    buffer = f.read(blocksize)
+    while len(buffer) > 0:
+        md5sum.update(buffer)
+        buffer = f.read(blocksize)
+    f.close()
+    return md5sum.hexdigest()
+
+def convert_symlinks(dirname):
+    thing = os.path.split(dirname)[1]
+    if thing == "qemu":
+        dirlist = get_list(dirname)
+        for dir in dirlist:
+            qemu_dir = os.path.join(MACHINES, dirname, dir)
+            print "Converting symlinks in %s" %qemu_dir
+            convert_symlinks(qemu_dir)
+    else:
+        print "Converting symlinks in %s" %dirname
+        link_list = []
+        for root, dirs, files in os.walk(dirname, topdown=True):
+            for name in files:
+                filename = (os.path.join(root, name))
+                if os.path.islink(filename):
+                    src_file = os.path.realpath(filename)
+                    link_list.append([filename, src_file])
+        for line in link_list:
+            os.remove(line[0])
+            try:
+               copyfile(line[1], line[0])
+            except IOError:
+                print "Error: %s is missing or isn\'t a real file" %line[1]
+            else:
+                print line[0]
+        for line in link_list:
+            if os.path.exists(line[1]):
+               os.remove(line[1])
+    print
+    return
+
+def find_dupes(dirname, platform):
+    print "\nLooking for duplicate files in %s" %dirname
+    file_list = []
+    md5sum_list = []
+    for root, dirs, files in os.walk(dirname, topdown=True):
+        for name in files:
+            filename = (os.path.join(root, name))
+            md5sum = get_md5sum(filename)
+            file_list.append((filename, md5sum))
+            md5sum_list.append(md5sum)
+    s=set(md5sum_list)
+    d=[]
+    for x in file_list:
+        if x[1] in s:
+            s.remove(x[1])
+        else:
+            d.append(x[1])
+    for dupe in d:
+        for tup in file_list:
+            if tup[1] == dupe:
+                dupe_name = split_thing(tup[0],"/")
+                filename = dupe_name[-1]
+                if filename.find(platform) == -1:
+                    print "Deleting %s" %tup[0]
+                    os.remove(tup[0])
+    return
+
+def make_bsps(bsp_list, bsp_dir):
+    print "\nCreating bsps.....\n"
+    if not os.path.exists(bsp_dir):
+        os.mkdir(bsp_dir)
+    else:
+        print "BSP tarball dir exists! Skipping BSP creation."
+        return
+    poky_blob = os.path.join(RELEASE_DIR, POKY_TARBALL)
+    blob_dir = split_thing(POKY_TARBALL, ".")
+    blob_dir = rejoin_thing(blob_dir[:-2], ".")
+    os.chdir(bsp_dir)
+    for dirname in bsp_list:
+        platform_dir = os.path.join(MACHINES, dirname)
+        if os.path.exists(platform_dir):
+            if not os.path.exists(dirname):
+                print "Creating %s bsp dir" %dirname
+                os.mkdir(dirname)
+            target = os.path.join(dirname, POKY_TARBALL)
+            copyfile(poky_blob, target)
+            os.chdir(dirname)
+            print "Unpacking poky tarball."
+            os.system("tar jxf %s" %POKY_TARBALL)
+            oldblob = POKY_TARBALL
+            chunks = split_thing(oldblob, "-")
+            chunks[0] = dirname
+            new_blob = rejoin_thing(chunks, "-")
+            new_dir = split_thing(blob_dir, "-")
+            new_dir[0] = dirname
+            new_dir = rejoin_thing(new_dir, "-")
+            bin_dir = os.path.join(new_dir, "binary")
+            shutil.move(blob_dir, new_dir)
+            os.remove(POKY_TARBALL)
+            os.mkdir(bin_dir)
+            print "Getting binary files"
+            os.system("rsync -arl %s/%s/ %s" %(MACHINES, dirname, bin_dir))
+            bsp_bin = os.path.join(bsp_dir, dirname, bin_dir)
+            nuke_cruft(bin_dir, BSP_JUNK)
+            bsp_path = os.path.join(bsp_dir, dirname, bin_dir)
+            find_dupes(bsp_path, dirname)
+            print "Creating BSP tarball"
+            os.system("tar jcf %s %s" %(new_blob, new_dir))
+            rmtree(new_dir)
+            print "Copying %s BSP tarball to machines dir" %new_blob
+            shutil.copy(new_blob, platform_dir)
+            os.chdir(bsp_dir)
+        print
+    os.chdir(RELEASE_DIR)
+    rmtree(bsp_dir)
+    return
+
+def nuke_cruft(dirname, ext_list):
+    thing = os.path.split(dirname)[1]
+    if thing == "qemu":
+        dirlist = get_list(dirname)
+        for dir in dirlist:
+            qemu_dir = os.path.join(MACHINES, dirname, dir)
+            nuke_cruft(qemu_dir, CRUFT_LIST)
+    else:
+        foo = dirname.find("p1022")
+        if foo == -1:
+            # NOT P1022ds
+            for ext in ext_list:
+                print "Deleting %s files" %ext
+                os.system("rm -f %s/%s" %(dirname, ext))
+        else:
+            # IS P1022ds
+            for ext in ext_list:
+                if ext != "*.tar.gz":
+                    print "Deleting %s files" %ext
+                    os.system("rm -f %s/%s" %(dirname, ext))
+    print
+    return
+
+def pub_eclipse(EDIR, PDIR):
+    print "\nPublishing Eclipse plugins."
+    sanity_check(EDIR, PDIR)
+    os.system("mkdir -p %s" %PDIR)
+    for root, dirs, files in os.walk(EDIR, topdown=True):
+        for name in dirs:
+            target_dir = os.path.join(PDIR, name)
+            os.system("mkdir -p %s" %target_dir)
+            source_dir = os.path.join(EDIR, name)
+            filelist = get_list(source_dir)
+            found = filter(lambda x: 'archive' in x, filelist).pop()
+            source = os.path.join(EDIR, name, found)
+            target = os.path.join(target_dir, found)
+            print "Source: %s" %source
+            print "Target: %s" %target
+            copyfile(source, target)
+            os.chdir(target_dir)
+            os.system("unzip -o '%s'" %found)
+            os.system("rm -vf %s" %found)
+            print
+    return
+
+def gen_md5sum(dirname):
+    print
+    print "Generating md5sums for files in %s...." %dirname
+    for root, dirs, files in os.walk(dirname, topdown=True):
+        for name in files:
+            filename = (os.path.join(root, name))
+            md5sum = get_md5sum(filename)
+            md5_file = ".".join([filename, 'md5sum'])
+            md5str = md5sum + " " + name
+            print md5str
+            f = open(md5_file, 'w')
+            f.write(md5str)
+            f.close()
+    return
+
+def gen_rel_md5(dirname, md5_file):
+    os.chdir(RELEASE_DIR)
+    print "Generating master md5sum file %s" %md5_file
+    f = open(md5_file, 'w')
+    for root, dirs, files in os.walk(dirname, topdown=True):
+        for name in files:
+            filename = (os.path.join(root, name))
+            ext = split_thing(name, ".")[-1]
+            if not (ext == "md5sum" or ext == "txt"):
+                relpath = split_thing(filename, RELEASE_DIR)
+                relpath.pop(0)
+                relpath = relpath[0]
+                relpath = split_thing(relpath, "/")
+                relpath.pop(0)
+                relpath = rejoin_thing(relpath, "/")
+                relpath = "./" + relpath
+                print relpath
+                md5sum = get_md5sum(filename)
+                print md5sum
+                md5str = md5sum + " " + relpath
+                print md5str
+                f.write(md5str + '\n')
+    f.close()
+    return
+
+
+if __name__ == '__main__':
+    
+    os.system("clear")
+    print
+   
+    # This is for testing convenience
+    #HOME_BASE = "/home/tgraydon/work/release"
+    #AB_BASE = HOME_BASE
+    #DL_BASE = os.path.join(HOME_BASE, "downloads")
+
+    # This is the legit set of vars used for production release
+    VHOSTS = "/srv/www/vhosts"
+    AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
+    DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
+
+    # List of the directories we delete from all releases
+    UNLOVED = ['rpm', 'deb', 'ptest', 'adt-installer-QA']
+    # List of the files in machines directories that we delete from all releases
+    CRUFT_LIST = ['*.md5sum', '*.tar.gz', '*.iso']
+    # List of the platforms for which we want to generate BSP tarballs. Major and point releases.
+    BSP_LIST = ['beaglebone', 'edgerouter', 'genericx86', 'genericx86-64', 'mpc8315e-rdb', 'p1022ds']
+    # List of files we do not want to include in the BSP tarballs.
+    BSP_JUNK = ['*.manifest', '*.tar.bz2', '*.tgz', '*.iso', '*.md5sum', '*.tar.gz', '*-dev-*', '*-sdk-*']
+
+    parser = optparse.OptionParser()
+    parser.add_option("-i", "--build-id",
+                      type="string", dest="build",
+                      help="Required. Release candidate name including rc#. i.e. yocto-2.0.rc1, yocto-2.1_M1.rc3, etc.")
+    parser.add_option("-b", "--branch",
+                      type="string", dest="branch",
+                      help="Required for Major and Point releases. i.e. daisy, fido, jethro, etc.")
+    parser.add_option("-p", "--poky-ver",
+                      type="string", dest="poky",
+                      help="Required for Major and Point releases. i.e. 14.0.0")
+                     
+    (options, args) = parser.parse_args()
+ 
+    REL_TYPE = ""
+    MILESTONE = ""
+    if options.poky:
+        POKY_VER = options.poky
+    else:
+        POKY_VER = ""
+    if options.branch:
+        BRANCH = options.branch
+    else:
+        BRANCH = ""
+
+
+    if options.build:
+        # Figure out the release name, type of release, and generate some vars, do some basic validation
+        chunks = split_thing(options.build, ".")
+        chunks.pop()
+        RELEASE = rejoin_thing(chunks, ".")
+        rel_thing = split_thing(options.build, "-")
+        RC = split_thing(options.build, ".")[-1].lower()
+        RC_DIR = RELEASE + "." + RC
+        REL_ID = split_thing(RELEASE, "-")[-1]
+        milestone = split_thing(REL_ID, "_")
+        if len(milestone) == 1:
+            thing = split_thing(milestone[0], ".")
+            if len(thing) == 3:
+                REL_TYPE = "point"
+            elif len(thing) == 2:
+                REL_TYPE = "major"
+            if options.poky and options.branch:
+                POKY_VER = options.poky
+                BRANCH = options.branch
+            else:
+                print "You can't have a major or point release without a branch and a poky version. Check your args."
+                print "Please use -h or --help for options."
+                sys.exit()
+        else:
+            MILESTONE = milestone.pop()
+            REL_TYPE = "milestone"
+    else:
+        print "Build ID is a required argument."
+        print "Please use -h or --help for options."
+        sys.exit()
+    
+    RC_SOURCE = os.path.join(AB_BASE, RC_DIR)
+    PLUGIN_DIR = os.path.join(DL_BASE, "eclipse-plugin", REL_ID)
+    RELEASE_DIR = os.path.join(AB_BASE, RELEASE)
+    DL_DIR = os.path.join(DL_BASE, RELEASE)
+    MACHINES = os.path.join(RELEASE_DIR, "machines")
+    BSP_DIR = os.path.join(RELEASE_DIR, 'bsptarballs')
+    TARBALL_DIR = os.path.join(RELEASE_DIR, "tarballs")
+    POKY_TARBALL = "poky-" + POKY_VER + ".tar.bz2"
+    ECLIPSE_DIR = os.path.join(RELEASE_DIR, "eclipse-plugin")
+    BUILD_APP_DIR = os.path.join(RELEASE_DIR, "build-appliance")
+    REL_MD5_FILE = RELEASE + ".md5sum"
+ 
+    print_vars()
+
+    # For all releases:
+    # 1) Rsync the rc candidate to a staging dir where all work happens
+    sync_it(RC_SOURCE, RELEASE_DIR, UNLOVED)
+    
+    # 2) Convert the symlinks in build-appliance dir.
+    convert_symlinks(BUILD_APP_DIR)
+
+    # 3) In machines dir, convert the symlinks, delete the cruft
+    dirlist = get_list(MACHINES)
+    for dirname in dirlist:
+        dirname = os.path.join(MACHINES, dirname)
+        convert_symlinks(dirname)
+        nuke_cruft(dirname, CRUFT_LIST)
+    gen_md5sum(MACHINES)
+    
+    # For major and point releases
+    if REL_TYPE == "major" or REL_TYPE == "point":
+        # 4) Fix up the eclipse and poky tarballs
+        fix_tarballs()
+
+        # 5) Publish the eclipse stuff
+        pub_eclipse(ECLIPSE_DIR, PLUGIN_DIR)
+
+        # 6) Make the bsps
+        make_bsps(BSP_LIST, BSP_DIR)
+
+    # 7) Generate the master md5sum file for the release (for all releases)
+    gen_rel_md5(RELEASE_DIR, REL_MD5_FILE)
+    
+    # 8) sync to downloads
+    sync_it(RELEASE_DIR, DL_DIR, "")
+
diff --git a/bin/release_scripts/rsync.py b/bin/release_scripts/rsync.py
new file mode 100755
index 0000000..e6e9021
--- /dev/null
+++ b/bin/release_scripts/rsync.py
@@ -0,0 +1,176 @@
+#!/usr/bin/python
+
+import os
+import optparse
+import argparse
+import sys
+import hashlib
+import glob
+import os.path
+import shutil
+from shutil import rmtree, copyfile
+from subprocess import call
+
+def print_vars():
+    print "RELEASE: %s" %RELEASE
+    print "REL_TYPE: %s" %REL_TYPE
+    print "RC_DIR: %s" %RC_DIR
+    print "REL_ID: %s" %REL_ID
+    print "RC: %s" %RC
+    if MILESTONE != "":
+        print "Milestone: %s" %MILESTONE
+    if POKY_VER != "":
+        print "POKY_VER: %s" %POKY_VER
+    if BRANCH:
+        print "BRANCH: %s" %BRANCH
+
+    #print "HOME_BASE: %s" %HOME_BASE
+    #print "AB_BASE: %s" %AB_BASE
+    #print "DL_BASE: %s" %DL_BASE
+    #print "ADT_SRC: %s" %ADT_SRC
+    #print "ADT_BASE: %s" %ADT_BASE
+    #print "RC_SOURCE: %s" %RC_SOURCE
+    #print "ECLIPSE_DIR: %s" %ECLIPSE_DIR
+    #print "PLUGIN_DIR: %s" %PLUGIN_DIR
+    #print "RELEASE_DIR: %s" %RELEASE_DIR
+    #print "MACHINES: %s" %MACHINES
+    #print "ADT_DIR: %s" %ADT_DIR
+    #print "TARBALL_DIR: %s" %TARBALL_DIR
+    #print "BUILD_APP_DIR: %s" %BUILD_APP_DIR
+    #print "UNLOVED: %s" %UNLOVED
+    #print "CRUFT_LIST: %s" %CRUFT_LIST
+    print
+    return
+
+def sanity_check(source, target):
+    if not os.path.exists(source):
+       print
+       print "SOURCE dir %s does NOT EXIST." %source
+       print
+       sys.exit()
+    if not os.listdir(source):
+       print
+       print "SOURCE dir %s is EMPTY" %source
+       print
+    if os.path.exists(target):
+       print
+       print "I can't let you do it, Jim. The TARGET directory %s exists." %target
+       print
+       sys.exit()
+    return
+
+def sync_it(source, target, exclude_list):
+    print "SOURCE: %s" %source
+    print "Target: %s" %target
+    #sanity_check(source, target)
+    source = source + "/"
+    #os.mkdir("%s" %target)
+    if exclude_list:
+        exclusions = ['--exclude=%s' % x.strip() for x in exclude_list]
+        print "Exclusions: %s" %exclusions
+        print
+        exclude = "--exclude=" + os.path.join(RELEASE_DIR, exclude_list[0])
+        #print "Exclude: %s" %exclude
+        length = len(exclude_list)
+        for i in range(1, length):
+            #print exclude_list[i]
+            exclude = exclude + " " + "--exclude=" + os.path.join(RELEASE_DIR, exclude_list[i])
+        print "Exclude: %s" %exclude
+        command = "rsync -avrl " + exclude + source + " " + target
+        #print command
+        #os.system (command)
+        os.system("rsync -avrl --exclude=deb --exclude=rpm --exclude=ptest --exclude=adt-installer-QA '%s' '%s'" %(source, target))
+    else:
+        print "No exclude list"
+        #os.system("rsync -avrl '%s' '%s'" %(source, target))
+
+def split_thing(thing, marker):
+    filebits = thing.split(marker)
+    return filebits
+
+def rejoin_thing(thing, marker):
+    filebits = marker.join(thing)
+    return filebits
+
+
+if __name__ == '__main__':
+    
+    os.system("clear")
+    print
+    
+    parser = optparse.OptionParser()
+    parser.add_option("-i", "--build-id", type="string", dest="build", help="build id of release including rc#. i.e. yocto-2.0.rc1, yocto-2.1_M1.rc3, etc.")
+    parser.add_option("-b", "--branch", type="string", dest="branch", help="branch for the release. i.e. daisy, fido, jethro, etc.")
+    parser.add_option("-p", "--poky-ver", type="string", dest="poky", help="poky version for the release. i.e. 14.0.0")
+
+    (options, args) = parser.parse_args()
+ 
+    REL_TYPE = ""
+    MILESTONE = ""
+    POKY_VER = ""
+    BRANCH = ""
+
+    if options.build:
+        chunks = split_thing(options.build, ".")
+        chunks.pop()
+        RELEASE = rejoin_thing(chunks, ".")  # yocto-2.1_M1
+        rel_thing = split_thing(options.build, "-")
+        #prefix = rel_thing[0]
+        #print "Prefix: %s" %prefix
+        RC = split_thing(options.build, ".")[-1].lower()
+        RC_DIR = RELEASE + "." + RC
+        REL_ID = split_thing(RELEASE, "-")[-1]
+        milestone = split_thing(REL_ID, "_")
+        if len(milestone) == 1:
+            thing = split_thing(milestone[0], ".")
+            if len(thing) == 3:
+                REL_TYPE = "point"
+            elif len(thing) == 2:
+                REL_TYPE = "major"
+            if options.poky and options.branch:
+                POKY_VER = options.poky
+                BRANCH = options.branch
+            else:
+                print "You can't have a major or point release without a branch and a poky version. Check your args."
+                print_vars()
+                sys.exit()
+        else:
+            MILESTONE = milestone.pop()
+            REL_TYPE = "milestone"
+    else:
+        print "Please use -h or --help for options."
+        sys.exit()
+    
+    # This is for testing convenience
+    HOME_BASE = "/home/tgraydon/work/release"
+    AB_BASE = HOME_BASE
+    DL_BASE = HOME_BASE
+    ADT_SRC = os.path.join(HOME_BASE, "adtrepo-dev")
+    ADT_BASE = os.path.join(HOME_BASE, "adt")
+
+    # This is the legit set of vars used for production release
+    #VHOSTS = "/srv/www/vhosts"
+    #AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
+    #DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases")
+    #ADT_SRC = os.path.join(VHOSTS, "adtrepo-dev")
+    #ADT_BASE = os.path.join(VHOSTS, "adtrepo.yoctoproject.org")
+
+    RC_SOURCE = os.path.join(AB_BASE, RC_DIR)
+    PLUGIN_DIR = os.path.join(DL_BASE, "eclipse-plugin", REL_ID)
+    RELEASE_DIR = os.path.join(AB_BASE, RELEASE)
+    MACHINES = os.path.join(RELEASE_DIR, "machines")
+    BSP_DIR = os.path.join(RELEASE_DIR, 'bsptarballs')
+    ADT_DIR = os.path.join(ADT_BASE, REL_ID)
+    TARBALL_DIR = os.path.join(RELEASE_DIR, "tarballs")
+    POKY_TARBALL = "poky-" + POKY_VER + ".tar.bz2"
+    ECLIPSE_DIR = os.path.join(RELEASE_DIR, "eclipse-plugin")
+    BUILD_APP_DIR = os.path.join(RELEASE_DIR, "build-appliance")
+    UNLOVED = ['rpm', 'deb', 'ptest', 'adt-installer-QA']
+    CRUFT_LIST = ['*.md5sum', '*.tar.gz', '*.iso']
+    BSP_LIST = ['beaglebone', 'edgerouter', 'genericx86', 'genericx86-64', 'mpc8315e-rdb', 'p1022ds']
+    BSP_JUNK = ['*.manifest', '*.tar.bz2', '*.tgz', '*.iso', '*.md5sum', '*.tar.gz', '*-dev-*', '*-sdk-*']
+
+    print_vars()
+
+    sync_it(RC_SOURCE, RELEASE_DIR, UNLOVED)
+
-- 
2.4.3


