Return-Path: <timothy.t.orling@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C4DDE01246; Thu, 11 Aug 2016 16:30:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A947E01241
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 16:30:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 11 Aug 2016 16:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,507,1464678000"; d="scan'208";a="1012911378"
Received: from timo-fedora.jf.intel.com ([10.7.201.162])
	by orsmga001.jf.intel.com with ESMTP; 11 Aug 2016 16:30:20 -0700
From: Tim Orling <timothy.t.orling@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 16:31:05 -0700
Message-Id: <1470958271-28279-3-git-send-email-timothy.t.orling@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
References: <1470958271-28279-1-git-send-email-timothy.t.orling@linux.intel.com>
Subject: [eclipse-poky][PATCH 2/8] fix the build
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
X-List-Received-Date: Thu, 11 Aug 2016 23:30:21 -0000

- scripts/build.sh: explicitly build org.yocto.utils
- also drop org.eclipse.cdt.debug.mi (upstream change)

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF                       | 2 +-
 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF                     | 1 -
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java                 | 5 -----
 scripts/build.sh                                                   | 7 ++++++-
 4 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
index 4922f30..213d80f 100644
--- a/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF
@@ -16,7 +16,7 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.ui.ide,
  org.eclipse.ui.console,
  org.eclipse.core.filesystem,
- org.yocto.remote.utils;bundle-version="1.0.0"
+ org.yocto.remote.utils
 Eclipse-LazyStart: true
 Bundle-ClassPath: .
 Import-Package: org.eclipse.rse.core.model,
diff --git a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
index b0972ba..92741e0 100644
--- a/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
+++ b/plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF
@@ -14,7 +14,6 @@ Require-Bundle: org.eclipse.ui,
  org.eclipse.rse.ui;bundle-version="3.3.100",
  org.eclipse.rse.subsystems.files.core;bundle-version="3.3.1",
  org.eclipse.cdt.launch.remote;bundle-version="2.4.0",
- org.eclipse.cdt.debug.mi.core;bundle-version="7.3.0",
  org.eclipse.cdt.debug.core;bundle-version="7.3.0",
  org.eclipse.cdt.debug.ui;bundle-version="7.3.0",
  org.eclipse.ui.ide;bundle-version="3.9.0",
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index d49281e..d4ee8ab 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -38,7 +38,6 @@ import org.eclipse.cdt.core.model.CoreModel;
 import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
 import org.eclipse.cdt.core.settings.model.ICProjectDescription;
 import org.eclipse.cdt.debug.core.ICDTLaunchConfigurationConstants;
-import org.eclipse.cdt.debug.mi.core.IMILaunchConfigurationConstants;
 import org.eclipse.cdt.dsf.gdb.IGDBLaunchConfigurationConstants;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.runtime.CoreException;
@@ -337,14 +336,10 @@ public class YoctoSDKUtils {
 			ILaunchConfigurationWorkingCopy w_copy = configType.newInstance(project, configName);
 			Set<String> modes=new HashSet<String>();
 			modes.add("debug");
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_GDB_INIT, sDebugInitFile); // CDI
 			w_copy.setAttribute(IGDBLaunchConfigurationConstants.ATTR_GDB_INIT, sDebugInitFile); // DSF
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB, false); // CDI
 			w_copy.setAttribute(IGDBLaunchConfigurationConstants.ATTR_DEBUGGER_AUTO_SOLIB, false); // DSF
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUG_NAME, strDebugger); // CDI
 			w_copy.setAttribute(IGDBLaunchConfigurationConstants.ATTR_DEBUG_NAME, strDebugger); // DSF
 
-			w_copy.setAttribute(IMILaunchConfigurationConstants.ATTR_DEBUGGER_PROTOCOL, "mi"); // CDI
 
 			w_copy.setAttribute(ICDTLaunchConfigurationConstants.ATTR_PROJECT_NAME, projectName);
 			if (!project.hasNature(YoctoSDKEmptyProjectNature.YoctoSDK_EMPTY_NATURE_ID)) {
diff --git a/scripts/build.sh b/scripts/build.sh
index 4cbb273..c8969b8 100755
--- a/scripts/build.sh
+++ b/scripts/build.sh
@@ -132,14 +132,17 @@ cd ${TOP}
 echo -e "\nGenerate Yocto documentation\n"
 ${GIT_DIR}/scripts/generate-doc.sh ${DOC_REF} ${GIT_DIR} || fail $? "generate documentation"
 
-#build 
+#build
+java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.utils.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.doc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.sdk.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} || fail $? "normal build"
 
 if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}.zip ] &&
+	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.utils-${RELEASE}.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}.zip ]; then
+  cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.utils-${RELEASE}.zip ./org.yocto.bc-${RELEASE}-${DATE}.zip
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}.zip ./org.yocto.bc-${RELEASE}-${DATE}.zip
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}.zip ./org.yocto.doc-${RELEASE}-${DATE}.zip
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}.zip ./org.yocto.sdk-${RELEASE}-${DATE}.zip
@@ -149,12 +152,14 @@ else
 fi
 
 #build archive for update site
+java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.utils.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.bc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.doc.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 java -jar ${LAUNCHER} -application org.eclipse.ant.core.antRunner -buildfile ${BUILDFILE} -DbaseLocation=${ECLIPSE_BASE} -Dbuilder=${GIT_DIR}/features/org.yocto.sdk.headless.build -DbuildDirectory=${BUILD_DIR} -DotherSrcDirectory=${GIT_DIR} -DbuildId=${RELEASE} -Dp2.gathering=true || fail $? "archive build"
 
 #clean up
 if [ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}-group.group.group.zip ] &&
+	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.utils-${RELEASE}-group.group.group.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.bc-${RELEASE}-group.group.group.zip ] &&
 	[ -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.doc-${RELEASE}-group.group.group.zip ]; then
   cp -f ${BUILD_DIR}/I.${RELEASE}/org.yocto.sdk-${RELEASE}-group.group.group.zip ./org.yocto.sdk-${RELEASE}-${DATE}-archive.zip
-- 
2.7.4


