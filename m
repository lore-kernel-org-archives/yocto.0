Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C8D7E00E01; Thu, 26 May 2016 22:35:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D4DAE00D49
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 22:35:08 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 26 May 2016 22:35:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,372,1459839600"; d="scan'208";a="815847835"
Received: from timo-fedora.jf.intel.com ([10.7.198.51])
	by orsmga003.jf.intel.com with ESMTP; 26 May 2016 22:35:07 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 26 May 2016 22:41:36 -0700
Message-Id: <1464327696-7473-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.5.5
MIME-Version: 1.0
Subject: [eclipse-poky][PATCH] Documentation: add check for adt-manual vs sdk-manual build
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
X-List-Received-Date: Fri, 27 May 2016 05:35:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #9622]

For older YP releases (prior to krogoth/2.1) adt-manual was the norm.
Since krogoth/2.1, sdk-manual should replace it.

- adt-manual dropped in commit 84abe03de1cff7952b5d0428e7433f094dde2b02
- sdk-manual added in commit ab591831a97a97d405d13ed75e9fb01e0452c292

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 plugins/org.yocto.doc.user/about.html.in |  8 ++++----
 plugins/org.yocto.doc.user/plugin.xml    |  2 +-
 plugins/org.yocto.doc.user/toc.xml       |  4 ++--
 scripts/generate-doc.sh                  | 28 +++++++++++++++++++++++++---
 4 files changed, 32 insertions(+), 10 deletions(-)

diff --git a/plugins/org.yocto.doc.user/about.html.in b/plugins/org.yocto.doc.user/about.html.in
index 3040859..5188d3c 100644
--- a/plugins/org.yocto.doc.user/about.html.in
+++ b/plugins/org.yocto.doc.user/about.html.in
@@ -53,12 +53,12 @@
 		<br />
 		<br />
 		<strong>
-			Yocto Project Application Developer's Guide:
+			Yocto Project Software Development Kit (SDK) Developer's Guide:
 		</strong>
 		<br />
 		<br />
-			This manual shows you how to setup and use the Application Development
-			Toolkit (ADT) and stand-alone cross-development toolchains so you can
+			This manual shows you how to setup and use the Software Development
+			Kit (SDK) and stand-alone cross-development toolchains so you can
 			develop user-space applications.
 		<br />
 		<br />
@@ -72,7 +72,7 @@
 				git://git.yoctoproject.org/yocto-docs
 			</a>
 		<br />
-			<em>Commit:</em> @COMMIT_ID-adt-manual@
+			<em>Commit:</em> @COMMIT_ID-sdk-manual@
 		<br />
 		<br />
 		<strong>
diff --git a/plugins/org.yocto.doc.user/plugin.xml b/plugins/org.yocto.doc.user/plugin.xml
index 8e87ce7..c7754de 100644
--- a/plugins/org.yocto.doc.user/plugin.xml
+++ b/plugins/org.yocto.doc.user/plugin.xml
@@ -8,7 +8,7 @@
 			primary="true">
 		</toc>
 		<toc
-			file="html/adt-manual-toc.xml"
+			file="html/sdk-manual-toc.xml"
 			primary="false">
 		</toc>
 		<toc
diff --git a/plugins/org.yocto.doc.user/toc.xml b/plugins/org.yocto.doc.user/toc.xml
index 86fbe29..a390084 100644
--- a/plugins/org.yocto.doc.user/toc.xml
+++ b/plugins/org.yocto.doc.user/toc.xml
@@ -3,8 +3,8 @@
    <topic label="Yocto Project Quick Start">
       <link toc="html/yocto-project-qs-toc.xml"/>
    </topic>
-   <topic label="Yocto·Project·Application·Developer&apos;s·Guide">
-      <link toc="html/adt-manual-toc.xml"/>
+   <topic label="Yocto Project Software Development Kit (SDK) Developer&apos;s Guide">
+      <link toc="html/sdk-manual-toc.xml"/>
    </topic>
    <topic label="Yocto Project Development Manual">
       <link toc="html/dev-manual-toc.xml"/>
diff --git a/scripts/generate-doc.sh b/scripts/generate-doc.sh
index e3ac3d8..fc59356 100755
--- a/scripts/generate-doc.sh
+++ b/scripts/generate-doc.sh
@@ -22,6 +22,15 @@ fail ()
   exit ${retval}
 }
 
+safe_sed()
+{
+  if [ "$1" ] && [ "$2" ]; then
+     sed -e "$1" $2 > $2.tmp && mv $2.tmp $2 || fail $? "safe_sed $1 $2"
+  else
+     fail 1 "usage: safe_sed \"s/from/to/\" /path/to/file"
+  fi
+}
+
 CHECKOUT_TAG=0
 while getopts ":h" opt; do
 	case $opt in
@@ -53,10 +62,23 @@ cd ${DOC_DIR}
 git checkout $1 || fail $? "git checkout $1"
 COMMIT_ID=`git rev-parse HEAD`
 
-# build and copy
-DOCS="yocto-project-qs adt-manual kernel-dev \
-      bsp-guide ref-manual dev-manual profile-manual"
+# check yocto-docs branch/tag and build sdk-manual or adt-manual accordingly
+# [YOCTO #9622]
+if [ "$1" = "master" ] || [ "$1" = "krogoth" ] || [ "$1" = "yocto-2.1" ]; then
+  DOCS="yocto-project-qs sdk-manual kernel-dev \
+        bsp-guide ref-manual dev-manual profile-manual"
+else
+  DOCS="yocto-project-qs adt-manual kernel-dev \
+        bsp-guide ref-manual dev-manual profile-manual"
+  safe_sed "s/sdk-manual/adt-manual/" ${DOC_PLUGIN_DIR}/plugin.xml
+  safe_sed "s/sdk-manual/adt-manual/" ${DOC_PLUGIN_DIR}/about.html.in
+  safe_sed "s/Software Development Kit (SDK)/Application/" ${DOC_PLUGIN_DIR}/about.html.in
+  safe_sed "s/(SDK)/(ADT)/" ${DOC_PLUGIN_DIR}/about.html.in
+  safe_sed "s/sdk-manual/adt-manual/" ${DOC_PLUGIN_DIR}/toc.xml
+  safe_sed "s/Software Development Kit (SDK)/Application/" ${DOC_PLUGIN_DIR}/toc.xml
+fi
 
+# build and copy
 cd documentation
 for DOC in ${DOCS}; do
 	make DOC=${DOC} eclipse
-- 
2.5.5


