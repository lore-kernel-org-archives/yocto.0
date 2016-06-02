Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA506E00C60; Thu,  2 Jun 2016 02:03:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 969FCE00C49
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 02:03:49 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 02 Jun 2016 02:03:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,405,1459839600"; d="scan'208";a="712708848"
Received: from heimdall.fi.intel.com ([10.237.68.153])
	by FMSMGA003.fm.intel.com with ESMTP; 02 Jun 2016 02:03:46 -0700
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Jun 2016 12:03:41 +0300
Message-Id: <1464858221-27234-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.8.1
Subject: [matchbox-desktop-sato][PATCH] Remove Utilities-folder
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
X-List-Received-Date: Thu, 02 Jun 2016 09:03:51 -0000

Typical result of separate Applications and Utilities is that
Applications only contains a single icon. Applications is also
the default folder: it's a waste of space to have that empty.

Merge all Utilities into Applications.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---

This is a partial fix for [YOCTO #9667] in that a typical
core-image-sato will have Terminal and File Manager icons visible
on the initial screen now, making it easier for newcomers to find
them and allowing faster access to common tools for everyone.

 Applications.directory | 2 +-
 Makefile.am            | 3 +--
 Root.order             | 1 -
 Utilities.directory    | 8 --------
 4 files changed, 2 insertions(+), 12 deletions(-)
 delete mode 100644 Utilities.directory

diff --git a/Applications.directory b/Applications.directory
index 69f6ed1..a7e3501 100644
--- a/Applications.directory
+++ b/Applications.directory
@@ -3,4 +3,4 @@ Name=Applications
 Comment=Applications
 Icon=gnome-applications.png
 Type=Directory
-Match=AudioVideo;Audio;Video;Graphics;Network;Office;meta-fallback;
+Match=AudioVideo;Audio;Video;Graphics;Network;Office;Utility;System;Development;meta-fallback;
diff --git a/Makefile.am b/Makefile.am
index c4f4667..4e6cae2 100644
--- a/Makefile.am
+++ b/Makefile.am
@@ -4,5 +4,4 @@ dist_folder_DATA = \
 	All.directory \
 	Applications.directory \
 	Games.directory \
-	Settings.directory \
-	Utilities.directory
+	Settings.directory
diff --git a/Root.order b/Root.order
index 0c2f3cb..01a86d2 100644
--- a/Root.order
+++ b/Root.order
@@ -1,5 +1,4 @@
 Applications
-Utilities
 Games
 Settings
 All
diff --git a/Utilities.directory b/Utilities.directory
deleted file mode 100644
index 1a73e63..0000000
--- a/Utilities.directory
+++ /dev/null
@@ -1,8 +0,0 @@
-[Desktop Entry]
-Name=Utilities
-Name[de]=Einstellungen
-Comment=Various utilities
-Comment[de]=Verschiedene Hilfsprogramme
-Icon=mbfolder.png
-Type=Directory
-Match=Utility;System;Development;
-- 
2.8.1


