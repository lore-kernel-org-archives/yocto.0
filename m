Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 960A6E008DB; Wed,  2 Mar 2016 22:05:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D944E007DC
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 22:05:34 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 02 Mar 2016 22:05:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,531,1449561600"; d="scan'208";a="58895186"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga004.fm.intel.com with ESMTP; 02 Mar 2016 22:05:30 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Mar 2016 22:05:29 -0800
Message-Id: <1456985129-8768-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [yocto-autbuilder][PATCH] bin/release_scripts/relnotes.py
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
X-List-Received-Date: Thu, 03 Mar 2016 06:05:36 -0000

This is the python version of the relnotes.sh script. It will generate the
release+notes template for major and point releases, including the release
errata, headers for known issues and new features/enhancements, and, most
importantly, the CVE and General fixes for the release.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/relnotes.py | 195 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 195 insertions(+)
 create mode 100755 bin/release_scripts/relnotes.py

diff --git a/bin/release_scripts/relnotes.py b/bin/release_scripts/relnotes.py
new file mode 100755
index 0000000..3c32e28
--- /dev/null
+++ b/bin/release_scripts/relnotes.py
@@ -0,0 +1,195 @@
+'''
+Created on Feb 22, 2016
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
+from sh import git
+from shutil import rmtree, copyfile
+from subprocess import call, Popen
+
+def split_thing(thing, marker):
+    filebits = thing.split(marker)
+    return filebits
+
+def rejoin_thing(thing, marker):
+    filebits = marker.join(thing)
+    return filebits
+
+def release_type(build_id):
+    build_id = build_id.lower()
+    RC = split_thing(build_id, ".")[-1]
+    foo = RC.find("rc")
+    if foo == -1:
+        print "%s doesn't appear to be a valid RC candidate. Check your args." %build_id
+        print "Please use -h or --help for options."
+        sys.exit()
+    chunks = split_thing(build_id, ".") # i.e. split yocto-2.1_m1.rc1
+    chunks.pop()
+    chunks[1] = chunks[1].upper()
+    RELEASE = rejoin_thing(chunks, ".")  # i.e. yocto-2.1_m1
+    REL_ID = split_thing(RELEASE, "-")[-1].upper()
+    RC_DIR = rejoin_thing([RELEASE, RC], ".")
+    relstring = split_thing(REL_ID, "_")
+    if len(relstring) == 1:
+        thing = split_thing(relstring[0], ".")
+        if len(thing) == 3:
+            REL_TYPE = "point"
+        elif len(thing) == 2:
+            REL_TYPE = "major"
+    else:
+        print "We don't generate release notes for Milestone releases."
+        sys.exit()
+
+    if not (RELEASE and RC and REL_ID and REL_TYPE):
+        print "Can't determine the release type. Check your args."
+        print "You gave me: %s" %options.build
+        sys.exit()
+    
+    var_dict = {'RC': RC, 'RELEASE': RELEASE, 'REL_ID': REL_ID, 'RC_DIR': RC_DIR, 'REL_TYPE': REL_TYPE};
+    return var_dict
+
+
+if __name__ == '__main__':
+    
+    os.system("clear")
+    print
+   
+    VHOSTS = "/srv/www/vhosts"
+    AB_BASE = os.path.join(VHOSTS, "autobuilder.yoctoproject.org/pub/releases")
+    DL_BASE = os.path.join(VHOSTS, "downloads.yoctoproject.org/releases/yocto")
+
+    parser = optparse.OptionParser()
+    parser.add_option("-i", "--build-id",
+                      type="string", dest="build",
+                      help="Required. Release candidate name including rc#. i.e. yocto-2.0.rc1, yocto-2.1_M1.rc3, etc.")
+    parser.add_option("-b", "--branch",
+                      type="string", dest="branch",
+                      help="Required for Major and Point releases. i.e. daisy, fido, jethro, etc. We don't do relnotes for milestones.")
+    parser.add_option("-p", "--poky-ver",
+                      type="string", dest="poky",
+                      help="Required for Major and Point releases. i.e. 14.0.0. We don't do relnotes for milestones.")
+    parser.add_option("-r", "--revisions",
+                      type="string", dest="revs",
+                      help="Required. Specify the revision range to use for the git log. i.e. yocto-2.0.1 would use yocto-2.0..HEAD. ")
+
+    (options, args) = parser.parse_args()
+ 
+    if not (options.build and options.branch and options.poky and options.revs):
+        print "You must specify the RC, branch, poky version, and revision range."
+        print "Please use -h or --help for options."
+        sys.exit()
+
+    REL_TYPE = ""
+    POKY_VER = options.poky
+    BRANCH = options.branch
+    REVISIONS = options.revs
+    VARS = release_type(options.build)
+    RC = VARS['RC']
+    RELEASE = VARS['RELEASE']
+    REL_ID = VARS['REL_ID']
+    RC_DIR = VARS['RC_DIR']
+    REL_TYPE = VARS['REL_TYPE']
+    PROJECT_BRANCH = BRANCH
+    TAG = "-".join([BRANCH, POKY_VER])
+    PROJECT_TAG = TAG
+    RC_SOURCE = os.path.join(AB_BASE, RC_DIR)
+    RELEASE_DIR = os.path.join(AB_BASE, RELEASE)
+    RELEASE_NOTES = ".".join(["RELEASE_NOTES", RELEASE])
+    DL_BASE = "http://downloads.yoctoproject.org/releases/yocto"
+    MIRROR_BASE = "http://mirrors.kernel.org/yocto/yocto"
+    HOME = os.getcwd()
+    POKY_REPO = os.path.join(HOME, "poky")
+    GIT_LOG = os.path.join(HOME, "git_log.txt")
+    FIXES = os.path.join(HOME, "FIXES")
+    CVE = os.path.join(HOME, "CVE")
+
+    # Show and Tell
+    listdict = dict.keys(VARS)
+    for line in listdict:
+        print "%s: %s" %(line, VARS[line])
+    print "BRANCH: %s" %BRANCH
+    print "POKY_VER: %s" %POKY_VER
+    print "RELEASE_NOTES: %s" %RELEASE_NOTES
+    #print "AB_BASE: %s" %AB_BASE
+    
+    outpath = os.path.join(HOME, RELEASE_NOTES)
+    outfile = open(outpath, 'w')
+    outfile.write("\n------------------\n%s Errata\n--------------------\n\n" %RELEASE)
+    os.chdir(RELEASE_DIR)
+    files = glob.glob('*.bz2')
+    allfiles = filter(lambda f: os.path.isfile(f), files)
+    found = filter(lambda x: '14.0.1' not in x, allfiles)
+    filelist = filter(lambda z: 'fsl' not in z, found)
+    filelist.sort()
+    for item in filelist:
+        chunks = split_thing(item, ".")
+        new_chunk = split_thing(chunks[0], '-')
+        hash = new_chunk.pop()
+        if new_chunk[0] == 'eclipse':
+            PROJECT_BRANCH = "/".join([new_chunk[2], BRANCH])
+            PROJECT_TAG = "/".join([new_chunk[2], TAG])
+        else:
+            PROJECT_BRANCH = BRANCH
+            PROJECT_TAG = TAG
+        base_name = rejoin_thing(new_chunk, "-")
+        RELEASE_NAME = "-".join([base_name, TAG])
+        files = glob.glob('*.md5sum')
+        md5file = filter(lambda y: RELEASE_NAME in y, files).pop()
+        filepath = os.path.join(RELEASE_DIR, md5file)
+        f = open(filepath, 'r')
+        rawline = f.readline()
+        md5line = split_thing(rawline, " ")
+        md5 = md5line[0]
+        blob = md5line[2]
+        f.close()
+        DL_URL = "/".join([DL_BASE, RELEASE, blob]).strip()
+        MIRROR_URL = "/".join([MIRROR_BASE, RELEASE, blob]).strip()
+        outfile.write("Release Name: %s\n" %RELEASE_NAME)
+        outfile.write("Branch: %s\n" %PROJECT_BRANCH)
+        outfile.write("Tag: %s\n" %PROJECT_TAG)
+        outfile.write("Hash: %s\n" %hash)
+        outfile.write("md5: %s\n" %md5)
+        outfile.write("Download Locations:\n")
+        outfile.write(DL_URL + "\n")
+        outfile.write(MIRROR_URL + "\n\n")
+
+    if REL_TYPE == "major":
+        outfile.write("\n---------------------------\nNew Features / Enhancements\n---------------------------\n\n")
+    outfile.write("\n---------------\n Known Issues\n---------------\n\n")
+    os.chdir(HOME)
+    print "Cloning the poky repo."
+    if not os.path.exists(POKY_REPO):
+        git.clone('ssh://git@git.yoctoproject.org/poky')
+    os.chdir(POKY_REPO)
+    print "Checking out %s branch." %BRANCH
+    git.checkout(BRANCH)
+    format_string = '\"%s\"'
+    os.system('git log --pretty=format:%s %s > %s' %(format_string, REVISIONS, GIT_LOG))
+    os.chdir(HOME)
+    print "Getting Security Fixes."
+    outfile.write("\n---------------\nSecurity Fixes\n---------------\n")
+    with open(GIT_LOG, 'r') as gitlog:
+        lines = gitlog.readlines()
+    for line in lines:
+        if "CVE" in line:
+            outfile.write(line)
+    outfile.write("\n\n---------------\nFixes\n---------------\n")
+    for line in lines:
+        if not "CVE" in line:
+            outfile.write(line)
+    gitlog.close()
+    outfile.close()
-- 
2.7.0


