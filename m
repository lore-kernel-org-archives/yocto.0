Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF9D6E00855; Mon, 30 Nov 2015 13:55:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7850EE007C9
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 13:55:08 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Nov 2015 13:55:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,366,1444719600"; d="scan'208";a="863625729"
Received: from unknown (HELO jalamego-MOBL2.zpn.intel.com) ([10.219.5.142])
	by fmsmga002.fm.intel.com with ESMTP; 30 Nov 2015 13:55:07 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 30 Nov 2015 15:54:29 -0600
Message-Id: <1448920469-15479-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [eclipse-poky][PATCH] OptionsPage.java: Allow BC Project name to be other than poky folder
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
X-List-Received-Date: Mon, 30 Nov 2015 21:55:09 -0000

Fixes [Yocto 8407]

This change allows a new Yocto Project Bitbake Commander project
to be named as desired, not as the poky folder.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 .../src/org/yocto/bc/ui/wizards/install/OptionsPage.java     | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index bd91ef9..582d301 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -130,7 +130,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 	@Override
 	
 	protected void updateModel() {
-		model.put(InstallWizard.INSTALL_DIRECTORY, txtProjectLocation.getText()+File.separator+txtProjectName.getText());
+		model.put(InstallWizard.INSTALL_DIRECTORY, txtProjectLocation.getText());
 		model.put(InstallWizard.PROJECT_NAME, txtProjectName.getText());
 	}
 
@@ -166,13 +166,9 @@ public class OptionsPage extends FiniteStateWizardPage {
 			return false;
 		}
 
-		String projectPath = projectLoc + txtProjectName.getText();
-		File prj_dir=new File(projectPath);
-		if(!prj_dir.isDirectory() || !prj_dir.exists()) {
-			if(!new File(projectPath + File.separator + InstallWizard.VALIDATION_FILE).exists()) {
-				setErrorMessage("Directory " + txtProjectLocation.getText() + txtProjectName.getText() + " is an invalid poky directory.");
-				return false;
-			}
+		if(!new File(projectLoc + File.separator + InstallWizard.VALIDATION_FILE).exists()) {
+			setErrorMessage("Directory " + txtProjectLocation.getText() + " is an invalid poky directory.");
+			return false;
 		}
 
 		try {
-- 
1.8.4.5


