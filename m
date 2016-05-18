Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF33BE00CBC; Wed, 18 May 2016 13:28:01 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B04BE00BE0
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 13:28:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 May 2016 13:27:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,330,1459839600"; d="scan'208";a="983988501"
Received: from jhibarra-mobl1.zpn.intel.com ([10.219.26.23])
	by fmsmga002.fm.intel.com with ESMTP; 18 May 2016 13:27:52 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 15:29:24 -0500
Message-Id: <1463603364-2016-1-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
Subject: [eclipse-poky][PATCH v2] OptionsPage.java: improved handling of path concatenation in new project
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
X-List-Received-Date: Wed, 18 May 2016 20:28:01 -0000

When creating a new Yocto Bitbake Commander project, the folder
separator is not being handled corretly. The problem is a folder and
a file to be concatenated are joined as Strings instead of paths.

This patch solves the issue by using a path joioning mechanism instead
of simply concatenating strings.

[Yocto #9648]
---
 .../src/org/yocto/bc/ui/wizards/install/OptionsPage.java            | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index bd91ef9..3a2caa0 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -166,17 +166,17 @@ public class OptionsPage extends FiniteStateWizardPage {
 			return false;
 		}
 
-		String projectPath = projectLoc + txtProjectName.getText();
+		String projectPath = new File(projectLoc,txtProjectName.getText()).getPath();
 		File prj_dir=new File(projectPath);
 		if(!prj_dir.isDirectory() || !prj_dir.exists()) {
 			if(!new File(projectPath + File.separator + InstallWizard.VALIDATION_FILE).exists()) {
-				setErrorMessage("Directory " + txtProjectLocation.getText() + txtProjectName.getText() + " is an invalid poky directory.");
+				setErrorMessage("Directory " + projectPath + " is an invalid poky directory.");
 				return false;
 			}
 		}
 
 		try {
-			URI location = new URI("file://" + txtProjectLocation.getText()+File.separator+txtProjectName.getText());
+			URI location = new URI("file://" + projectPath);
 			IStatus status = ResourcesPlugin.getWorkspace().validateProjectLocationURI(proj, location);
 			if (!status.isOK()) {
 				setErrorMessage(status.getMessage());
-- 
2.4.11


