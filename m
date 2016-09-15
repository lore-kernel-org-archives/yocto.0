Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4796AE0093B; Thu, 15 Sep 2016 13:47:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F67BE0081E
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 13:47:53 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 15 Sep 2016 13:47:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,340,1470726000"; d="scan'208";a="879521278"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga003.jf.intel.com with ESMTP; 15 Sep 2016 13:47:53 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Sep 2016 13:48:59 -0700
Message-Id: <1473972539-6270-1-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [eclipse-poky][PATCH] Drop bc from build
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
X-List-Received-Date: Thu, 15 Sep 2016 20:47:57 -0000

[YOCTO #10032]

BitBake Commander has been bit-rotting for years and it was decided to
deprecated it in 2.1. Drop it from the build.

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 features/org.yocto.sdk.site/category.xml | 4 ++++
 features/org.yocto.sdk.site/site.xml     | 2 ++
 scripts/build.sh                         | 6 ------
 3 files changed, 6 insertions(+), 6 deletions(-)

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
index c8969b8..48ef94e 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -134,16 +134,12 @@ ${GIT_DIR}/scripts/generate-doc.sh ${DOC_REF} ${GIT_DIR} || fail $? "generate do
 
 #build
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.utils.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
-java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.doc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.sdk.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 
 if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.utils-${RELEASE}.zip ] &&
-	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}.zip ]; then
-  cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.utils-${RELEASE}.zip ./org.yocto.bc-${RELEASE}-${DATE}.zip
-  cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}.zip ./org.yocto.bc-${RELEASE}-${DATE}.zip
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}.zip ./org.yocto.doc-${RELEASE}-${DATE}.zip
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}.zip ./org.yocto.sdk-${RELEASE}-${DATE}.zip
   rm -rf ${BUILD_DIR}
@@ -153,14 +149,12 @@ fi
 
 #build archive for update site
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.utils.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
-java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.doc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.sdk.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 
 #clean up
 if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}-group.group.group.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.utils-${RELEASE}-group.group.group.zip ] &&
-	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}-group.group.group.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}-group.group.group.zip ]; then
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}-group.group.group.zip ./org.yocto.sdk-${RELEASE}-${DATE}-archive.zip
   rm -rf ${BUILD_TOP}
-- 
2.7.4


