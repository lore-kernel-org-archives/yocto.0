Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15083E00831; Thu,  6 Oct 2016 14:14:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6CB1E0077E
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 14:14:24 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP; 06 Oct 2016 14:14:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,454,1473145200"; d="scan'208";a="17063727"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga005.jf.intel.com with ESMTP; 06 Oct 2016 14:14:24 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Oct 2016 14:16:21 -0700
Message-Id: <1475788581-18883-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [eclipse-poky][Mars] Drop bc from build
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
X-List-Received-Date: Thu, 06 Oct 2016 21:14:31 -0000

[YOCTO #10032]

BitBake Commander has been bit-rotting for years and it was decided to
deprecate it in 2.1. Drop it from the build.

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 features/org.yocto.sdk.site/category.xml |  4 ++++
 features/org.yocto.sdk.site/site.xml     |  2 ++
 scripts/build.sh                         | 11 +++++------
 3 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/features/org.yocto.sdk.site/category.xml b/features/org.yocto.sdk.site/category.xml
index f98fc4e..33e3d62 100644
--- a/features/org.yocto.sdk.site/category.xml
+++ b/features/org.yocto.sdk.site/category.xml
@@ -6,14 +6,18 @@
    <feature url="features/org.yocto.sdk.source_@featureVersion@.jar" id="org.yocto.sdk.source" version="@featureVersion@">
       <category name="Yocto Project SDK"/>
    </feature>
+<!-- Deprecated [YOCTO #10032]
    <feature url="features/org.yocto.bc_@bcfeatureVersion@.jar" id="org.yocto.bc" version="@bcfeatureVersion@">
       <category name="Yocto Project Bitbake Commander"/>
    </feature>
+-->
    <feature url="features/org.yocto.doc_@docFeatureVersion@.jar" id="org.yocto.doc" version="@docFeatureVersion@">
       <category name="Yocto Project Documentation"/>
    </feature>
    <category-def name="Yocto Project SDK" label="Yocto Project SDK Plug-in"/>
+<!-- Deprecated [YOCTO #10032]
    <category-def name="Yocto Project Bitbake Commander" label="Yocto Project Bitbake Commander Plug-in"/>
+-->
    <category-def name="Yocto Project Documentation" label="Yocto Project Documentation plug-in"/>
    <repository-reference location="http://download.eclipse.org/tm/updates/4.0/" enabled="true" />
 </site>
diff --git a/features/org.yocto.sdk.site/site.xml b/features/org.yocto.sdk.site/site.xml
index b0507b0..fa00cd2 100644
--- a/features/org.yocto.sdk.site/site.xml
+++ b/features/org.yocto.sdk.site/site.xml
@@ -7,10 +7,12 @@
       <category name="Yocto Project SDK"/>
    </feature>
    <category-def name="Yocto Project SDK" label="Yocto Project SDK plug-in"/>
+<!-- Deprecated [YOCTO #10032]
    <feature url="features/org.yocto.bc_@bcGenVersion@.jar" id="org.yocto.bc" version="@bcGenVersion@">
       <category name="Yocto Project Bitbake Commander"/>
    </feature>
    <category-def name="Yocto Project Bitbake Commander" label="Yocto Project Bitbake Commander plug-in"/>
+-->
    <feature url="features/org.yocto.doc_@docGenVersion@.jar" id="org.yocto.doc" version="@docGenVersion@">
       <category name="Yocto Project Documentation"/>
    </feature>
diff --git a/scripts/build.sh b/scripts/build.sh
index cc696e7..21cfd54 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -132,15 +132,14 @@ cd ${TOP}
 echo -e "\nGenerate Yocto documentation\n"
 ${GIT_DIR}/scripts/generate-doc.sh ${DOC_REF} ${GIT_DIR} || fail $? "generate documentation"
 
-#build 
-java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
+#build
+java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.utils.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.doc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.sdk.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 
 if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}.zip ] &&
-	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}.zip ] &&
+	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.utils-${RELEASE}.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}.zip ]; then
-  cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}.zip ./org.yocto.bc-${RELEASE}-${DATE}.zip
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}.zip ./org.yocto.doc-${RELEASE}-${DATE}.zip
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}.zip ./org.yocto.sdk-${RELEASE}-${DATE}.zip
   rm -rf ${BUILD_DIR}
@@ -149,13 +148,13 @@ else
 fi
 
 #build archive for update site
-java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
+java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.utils.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.doc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.sdk.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 
 #clean up
 if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}-group.group.group.zip ] &&
-	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}-group.group.group.zip ] &&
+	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.utils-${RELEASE}-group.group.group.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}-group.group.group.zip ]; then
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}-group.group.group.zip ./org.yocto.sdk-${RELEASE}-${DATE}-archive.zip
   rm -rf ${BUILD_TOP}
-- 
2.7.4


