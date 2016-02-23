Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18532E00D5C; Tue, 23 Feb 2016 13:44:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B13A8E00D38
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:44:32 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 23 Feb 2016 13:44:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,491,1449561600"; d="scan'208";a="751934760"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga003.jf.intel.com with ESMTP; 23 Feb 2016 13:44:31 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Feb 2016 14:40:42 -0800
Message-Id: <1456267247-15726-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
Subject: [yocto-autobuilder][PATCH 1/6] bin/release_scripts/relnotes.sh: Add script to generate release notes template.
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
X-List-Received-Date: Tue, 23 Feb 2016 21:44:34 -0000

This is a capture of the command-line ickiness that we have been
using to generate the basic release notes draft. It's frightfully ugly, but
gets the job done for now.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 bin/release_scripts/relnotes.sh | 82 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100755 bin/release_scripts/relnotes.sh

diff --git a/bin/release_scripts/relnotes.sh b/bin/release_scripts/relnotes.sh
new file mode 100755
index 0000000..a88f0b8
--- /dev/null
+++ b/bin/release_scripts/relnotes.sh
@@ -0,0 +1,82 @@
+#!/bin/bash
+
+# NOTE! This script will blissfully clobber any pre-existing poky repos, 
+# previous release notes with same filename, etc. 
+#
+# This is a quick and ugly script to generate the release notes draft.
+#
+# Usage: ./relnotes.sh <release_ID> <rc#> <branch> <poky-ver>
+# i.e. ./relnotes.sh yocto-2.0.1 rc6 jethro 14.0.1
+#
+# Currently the revision in the git log portion is hard coded. You 
+# will want to change accordingly! 
+# i.e. git log --pretty=format:"%s" yocto-2.0..HEAD |grep CVE >> $HOME/CVE;
+# Change the yocto-2.0 bit to whatever it needs to be for the given release.
+
+
+
+clear
+REL_ID=$1
+RC=$2
+BRANCH=$3
+POKY_VER=$4
+RELEASE=$REL_ID
+VHOSTS="/srv/www/vhosts"
+AB_BASE="$VHOSTS/autobuilder.yoctoproject.org/pub/releases"
+DL_BASE="$VHOSTS/downloads.yoctoproject.org/releases"
+RC_SOURCE="$AB_BASE/$RELEASE.$RC"
+RELEASE_DIR="$AB_BASE/$RELEASE"
+MACHINES="$RELEASE_DIR/machines"
+HOME=~/work/release
+echo "REL_ID: $REL_ID"
+echo "RC: $RC"
+echo "BRANCH: $BRANCH"
+echo "POKY_VER: $POKY_VER"
+echo "RELEASE: $RELEASE"
+echo "AB_BASE: $AB_BASE"
+echo "DL_BASE: $DL_BASE"
+echo "RC_SOURCE: $RC_SOURCE"
+echo "RELEASE_DIR: $RELEASE_DIR"
+echo "MACHINES: $MACHINES"
+echo
+
+if [[ -e $HOME/RELEASENOTES.$RELEASE ]]; then
+    rm -v $HOME/RELEASENOTES.$RELEASE
+fi
+if [[ -e $HOME/CVE ]]; then
+    rm -v $HOME/CVE
+fi
+if [[ -e $HOME/FIXES ]]; then
+    rm -v $HOME/FIXES
+fi
+if [[ -d $HOME/poky ]]; then
+    rm -rvf $HOME/poky
+fi
+
+for x in `ls $RELEASE_DIR/*.bz2.md5sum | grep -v "\-fsl" | grep -v "\-ppc"`; do 
+   layer=`basename $x | sed 's/\-'"$BRANCH"'\-'"$POKY_VER"'.tar.bz2.md5sum//g'`; 
+   tarball=`basename $x |sed 's/\.md5sum//g'`; 
+   ghash=`ls $RELEASE_DIR/$layer*.bz2 | grep -v $BRANCH | sed 's/'"$layer"'-//g' | sed 's/.tar.bz2//g'`;
+   ghash=`basename $ghash`
+   echo "Release Name: " $layer-$BRANCH-$POKY_VER; 
+   echo "Branch: $BRANCH"; 
+   echo "Tag: $BRANCH-$POKY_VER"; 
+   echo "Hash: " $ghash; 
+   echo "md5: `cat $RELEASE_DIR/$tarball.md5sum`"; 
+   echo "Download Locations:"; 
+   echo "http://downloads.yoctoproject.org/releases/yocto/$RELEASE/$tarball"; 
+   echo "http://mirrors.kernel.org/yocto/yocto/$RELEASE/$tarball"; echo ""; 
+done >> $HOME/RELEASENOTES.$RELEASE
+
+git clone git://git.yoctoproject.org/poky;
+cd poky; 
+git checkout $BRANCH; 
+echo -e "\n-------\nSecurity Fixes\n-------" >> $HOME/CVE;
+git log --pretty=format:"%s" yocto-2.0..HEAD |grep CVE >> $HOME/CVE; 
+echo -e "\n-------\nFixes\n-------" >> $HOME/FIXES; 
+git log --pretty=format:"%s" yocto-2.0..HEAD |grep -v CVE >> $HOME/FIXES; 
+cat $HOME/CVE >> $HOME/RELEASENOTES.$RELEASE; cat $HOME/FIXES >> $HOME/RELEASENOTES.$RELEASE
+cd $HOME
+
+
+
-- 
2.4.3


