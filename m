Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7845DE00D19; Thu,  2 Jun 2016 09:27:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27F02E00CFC
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 09:27:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 02 Jun 2016 09:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,407,1459839600"; d="scan'208";a="989772191"
Received: from timo-fedora.jf.intel.com ([10.7.198.51])
	by orsmga002.jf.intel.com with ESMTP; 02 Jun 2016 09:27:53 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  2 Jun 2016 09:27:30 -0700
Message-Id: <1464884850-3426-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1464327696-7473-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1464327696-7473-1-git-send-email-timothy.t.orling@linux.intel.com>
MIME-Version: 1.0
Subject: [eclipse-poky][PATCH v2] Documentation: add check for adt-manual vs sdk-manual build
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
X-List-Received-Date: Thu, 02 Jun 2016 16:27:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #9622]

For older YP releases (prior to krogoth/2.1) adt-manual was the norm.
Since krogoth/2.1, sdk-manual should replace it.

- adt-manual dropped in commit 84abe03de1cff7952b5d0428e7433f094dde2b02
- sdk-manual added in commit ab591831a97a97d405d13ed75e9fb01e0452c292

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
Changes since v1:
- check for presence of adt-manual removal commit for switch to sdk-manual
- should be less brittle than the prior "whitelist" branch/tag name approach

 plugins/org.yocto.doc.user/about.html.in |  8 ++++----
 plugins/org.yocto.doc.user/plugin.xml    |  2 +-
 plugins/org.yocto.doc.user/toc.xml       |  4 ++--
 scripts/generate-doc.sh                  | 29 ++++++++++++++++++++++++++---
 4 files changed, 33 insertions(+), 10 deletions(-)

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
index e3ac3d8..b817d4c 100755
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
@@ -53,10 +62,24 @@ cd ${DOC_DIR}
 git checkout $1 || fail $? "git checkout $1"
 COMMIT_ID=`git rev-parse HEAD`
 
-# build and copy
-DOCS="yocto-project-qs adt-manual kernel-dev \
-      bsp-guide ref-manual dev-manual profile-manual"
+# check yocto-docs branch/tag and build sdk-manual or adt-manual accordingly
+# [YOCTO #9622]
+ADT_REMOVAL_COMMIT=84abe03de1cff7952b5d0428e7433f094dde2b02
+if [ "$(git merge-base ${ADT_REMOVAL_COMMIT} $1)" = "${ADT_REMOVAL_COMMIT}" ]; then
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


