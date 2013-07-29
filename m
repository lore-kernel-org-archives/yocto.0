Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47A7DE013D1
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 06:35:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 29 Jul 2013 06:35:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,769,1367996400"; d="scan'208";a="274786744"
Received: from ideapad.rb.intel.com ([10.237.105.140])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Jul 2013 06:35:27 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Jul 2013 16:12:36 +0300
Message-Id: <1375103556-22885-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [Upstream patch: org.eclipse.ui]Adjust project location for non-default location
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
X-List-Received-Date: Mon, 29 Jul 2013 13:35:35 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../ide/dialogs/ProjectContentsLocationArea.java   |   19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/bundles/org.eclipse.ui.ide/src/org/eclipse/ui/internal/ide/dialogs/ProjectContentsLocationArea.java b/bundles/org.eclipse.ui.ide/src/org/eclipse/ui/internal/ide/dialogs/ProjectContentsLocationArea.java
index 35cd387..7de5255 100644
--- a/bundles/org.eclipse.ui.ide/src/org/eclipse/ui/internal/ide/dialogs/ProjectContentsLocationArea.java
+++ b/bundles/org.eclipse.ui.ide/src/org/eclipse/ui/internal/ide/dialogs/ProjectContentsLocationArea.java
@@ -23,7 +23,9 @@ import org.eclipse.core.filesystem.IFileInfo;
 import org.eclipse.core.filesystem.URIUtil;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.ResourcesPlugin;
+import org.eclipse.core.runtime.IPath;
 import org.eclipse.core.runtime.IStatus;
+import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.Platform;
 import org.eclipse.jface.dialogs.IDialogSettings;
 import org.eclipse.osgi.util.TextProcessor;
@@ -471,10 +473,27 @@ public class ProjectContentsLocationArea {
 	 *            existing project name.
 	 */
 	public void updateProjectName(String newName) {
+		boolean append = false;
+		if (projectName.isEmpty())
+			append = true;
 		projectName = newName;
 		if (isDefault()) {
 			locationPathField.setText(TextProcessor
 					.process(getDefaultPathDisplayString()));
+		} else {
+			try {
+				URI uri = new URI(locationPathField.getText());
+				IPath path = new Path(uri.getPath());
+				if (!append)
+					path = path.removeLastSegments(1);
+				path = path.addTrailingSeparator();
+				path = path.append(projectName);
+			    URI newURI = new URI(uri.getScheme(), uri.getAuthority(), path.toPortableString(), uri.getQuery(), uri.getFragment());
+				locationPathField.setText(TextProcessor
+						.process(newURI.toString()));
+			} catch (URISyntaxException e) {
+				e.printStackTrace();
+			}
 		}
 
 	}
-- 
1.7.9.5


