Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4436BE00C65; Wed, 18 May 2016 12:31:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19560E00B11
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 12:31:40 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 18 May 2016 12:31:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,330,1459839600"; d="scan'208";a="969852558"
Received: from jhibarra-mobl1.zpn.intel.com ([10.219.26.23])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2016 12:31:27 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 18 May 2016 14:32:58 -0500
Message-Id: <1463599978-26944-1-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
Subject: [eclipse-poky][PATCH] OptionsPage.java: improved handling of path concatenation in new project
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
X-List-Received-Date: Wed, 18 May 2016 19:31:44 -0000

When creating a new Yocto Bitbake Commander project, the folder
separator is not being handled corretly. The problem is a folder and
a file to be concatenated are joined as Strings instead of paths.

This patch solves the issue by using a path joioning mechanism instead
of simply concatenating strings.

[Yocto #9648]
---
 .../src/org/yocto/bc/ui/wizards/install/OptionsPage.java                | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index bd91ef9..56d81fb 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -166,7 +166,7 @@ public class OptionsPage extends FiniteStateWizardPage {
 			return false;
 		}
 
-		String projectPath = projectLoc + txtProjectName.getText();
+		String projectPath = new File(projectLoc,txtProjectName.getText()).getPath();
 		File prj_dir=new File(projectPath);
 		if(!prj_dir.isDirectory() || !prj_dir.exists()) {
 			if(!new File(projectPath + File.separator + InstallWizard.VALIDATION_FILE).exists()) {
-- 
2.4.11


