Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57F42E014BD
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 04:32:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 04:32:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,372,1344236400"; d="scan'208";a="218037322"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 04:32:24 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Sep 2012 14:29:19 +0300
Message-Id: <1346844559-3490-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [Yocto #3044]Set JavaSource=1.6 for headless build
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
X-List-Received-Date: Wed, 05 Sep 2012 11:32:40 -0000

- @Override annotations can be used starting with jre >= 1.6
- Headless build plugin limited the java compilation to 1.5 (no matter what the system jdk is)

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../org.yocto.sdk.headless.build/build.properties  |    4 ++--
 .../sdk/remotetools/wizards/bsp/MainPage.java      |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/features/org.yocto.sdk.headless.build/build.properties b/features/org.yocto.sdk.headless.build/build.properties
index 24ccf99..9a3e4d9 100644
--- a/features/org.yocto.sdk.headless.build/build.properties
+++ b/features/org.yocto.sdk.headless.build/build.properties
@@ -247,10 +247,10 @@ javacVerbose=true
 #compilerArg=
 
 # Default value for the version of the source code. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacSource in build.properties
-javacSource=1.5
+javacSource=1.6
 
 # Default value for the version of the byte code targeted. This value is used when compiling plug-ins that do not set the Bundle-RequiredExecutionEnvironment or set javacTarget in build.properties.
-javacTarget=1.5
+javacTarget=1.6
 
 #individualSourceBundles=true
 
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index 861cb08..fea1c76 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -520,12 +520,12 @@ public class MainPage extends WizardPage {
 		BuildLocationListener(String value){
 			this.value = value;
 		}
-		//@Override
+		@Override
 		public void focusGained(FocusEvent e) {
 			value = ((Text)e.getSource()).getText();
 		}
 
-		//@Override
+		@Override
 		public void focusLost(FocusEvent e) {
 			if(!((Text)e.getSource()).getText().equals(value)) {
 				checkBuildDir();
-- 
1.7.9.5


