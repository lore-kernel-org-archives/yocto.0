Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4426FE006C6
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 15:38:49 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 05 Dec 2012 15:38:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,224,1355126400"; d="scan'208";a="176702475"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by AZSMGA002.ch.intel.com with ESMTP; 05 Dec 2012 15:38:48 -0800
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Wed,  5 Dec 2012 15:38:03 -0800
Message-Id: <07b0e677bac9a2fc73ff97b20d70849976f65345.1354750505.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1354750505.git.nitin.a.kamble@intel.com>
References: <cover.1354750505.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] create-pull-request: detect trailing white space
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Dec 2012 23:38:49 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Add logic in the create-pull-request to detect the trailing white space
inserted by patches.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 scripts/create-pull-request |   13 ++++++++++++-
 1 files changed, 12 insertions(+), 1 deletions(-)

diff --git a/scripts/create-pull-request b/scripts/create-pull-request
index 9a8913d..c35c427 100755
--- a/scripts/create-pull-request
+++ b/scripts/create-pull-request
@@ -173,7 +173,6 @@ mkdir $ODIR
 # Generate the patches and cover letter
 git format-patch -M40 --subject-prefix="$PREFIX" -n -o $ODIR --thread=shallow --cover-letter $RELATIVE_TO..$COMMIT_ID > /dev/null
 
-
 # Customize the cover letter
 CL="$ODIR/0000-cover-letter.patch"
 PM="$ODIR/pull-msg"
@@ -229,3 +228,15 @@ Review their content, especially the summary mail:
 When you are satisfied, you can send them with:
     send-pull-request -a -p $ODIR
 EOM
+
+# Check the patches for trailing white space
+echo 
+egrep -nH -e "^\+\s+$" $ODIR/* > /dev/null
+if [ $? -ne 1 ]; then
+	echo "WARNING: Trailing white space detected at these locations"
+	egrep -nH -e "^\+\s+$" $ODIR/* 
+else
+	echo "Note: No trailing white space is detected in these patches :)"
+fi
+
+
-- 
1.7.3.4


