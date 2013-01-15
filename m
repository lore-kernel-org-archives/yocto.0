Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EE34E0147C
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 06:56:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jan 2013 06:56:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,473,1355126400"; d="scan'208";a="277134943"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.62])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2013 06:56:00 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 15 Jan 2013 16:42:48 +0200
Message-Id: <1358260969-4551-8-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1358260969-4551-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1358260969-4551-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH v2 4/5] Disable "Finish" when project location is invalid
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
X-List-Received-Date: Tue, 15 Jan 2013 14:56:02 -0000

- when Bitbake project location is invalid, an error should be displayed and "finish" button disabled

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |   10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
index a103d2b..7a705aa 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/OptionsPage.java
@@ -88,8 +88,13 @@ public class OptionsPage extends FiniteStateWizardPage {
 			@Override
 			public void reportError(String errorMessage, boolean infoOnly) {
 				setMessage(errorMessage);
-				validatePage();
-				updateModel();
+				if (validatePage()) {
+	                updateModel();
+	                setPageComplete(true);
+	                return;
+	            }
+
+	            setPageComplete(false);
 			}
 		};
 
@@ -181,7 +186,6 @@ public class OptionsPage extends FiniteStateWizardPage {
 					setErrorMessage("A project with the name " + projName + " already exists");
 					return false;
 				}
-				//FIXME : do not throw exception when illegal characters show in URI ->show error on page
 				URI location = new URI("file:" + URI_SEPARATOR + URI_SEPARATOR + convertToRealPath(projectLoc) + URI_SEPARATOR + txtProjectName.getText());
 
 				IStatus status = ResourcesPlugin.getWorkspace().validateProjectLocationURI(proj, location);
-- 
1.7.9.5


