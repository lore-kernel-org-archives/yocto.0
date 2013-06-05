Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0D76E0155A
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:39 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629348"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:38 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:13 +0300
Message-Id: <1370451622-10619-13-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 12/21] Store metadata location as URI instead of String
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:39 -0000

- use URI to store meta-data location
- initialize metadata location with projectLocation/meta

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../bc/ui/wizards/BitbakeRecipeUIElement.java      |   15 +++++++++++----
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |   19 +++++++++++++++++--
 2 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/BitbakeRecipeUIElement.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/BitbakeRecipeUIElement.java
index 9699117..8bbc113 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/BitbakeRecipeUIElement.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/BitbakeRecipeUIElement.java
@@ -12,6 +12,9 @@ package org.yocto.bc.ui.wizards;
 
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.swt.widgets.Text;
+
+import java.net.URI;
+import java.net.URISyntaxException;
 import java.util.ArrayList;
 
 public class BitbakeRecipeUIElement {
@@ -27,7 +30,7 @@ public class BitbakeRecipeUIElement {
 	private String srcuri;
 	private String md5sum;
 	private String sha256sum;
-	private String metaDir;
+	private URI metaDir;
 	private ArrayList inheritance;
 
 	public BitbakeRecipeUIElement()
@@ -44,7 +47,11 @@ public class BitbakeRecipeUIElement {
 		this.md5sum = "";
 		this.sha256sum = "";
 		this.inheritance = new ArrayList();
-		this.metaDir = "";
+		try {
+			this.metaDir = new URI("");
+		} catch (URISyntaxException e) {
+			e.printStackTrace();
+		}
 	}
 
 	public String getContainer() {
@@ -135,11 +142,11 @@ public class BitbakeRecipeUIElement {
 		this.inheritance = value;
 	}
 	
-	public String getMetaDir() {
+	public URI getMetaDir() {
 		return metaDir;
 	}
 	
-	public void setMetaDir(String value) {
+	public void setMetaDir(URI value) {
 		metaDir = value;
 	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index c9b39be..e9dc53f 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -15,6 +15,7 @@ import org.eclipse.core.resources.IContainer;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.resources.ResourcesPlugin;
+import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.Path;
 import org.eclipse.core.runtime.IPath;
 import org.eclipse.jface.viewers.ISelection;
@@ -36,6 +37,9 @@ import org.eclipse.swt.widgets.FileDialog;
 import org.eclipse.swt.widgets.Label;
 import org.eclipse.swt.widgets.Text;
 import org.eclipse.ui.dialogs.ContainerSelectionDialog;
+import org.yocto.bc.ui.Activator;
+import org.yocto.bc.ui.model.ProjectInfo;
+import org.yocto.remote.utils.RemoteHelper;
 
 import java.util.HashMap;
 import java.util.Hashtable;
@@ -53,6 +57,7 @@ import java.io.FileInputStream;
 import java.io.InputStream;
 import java.io.FilenameFilter;
 import java.security.MessageDigest;
+import java.lang.reflect.InvocationTargetException;
 import java.math.BigInteger;
 import java.net.URI;
 import java.net.URISyntaxException;
@@ -75,7 +80,7 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private BitbakeRecipeUIElement element;
 	
 	private ISelection selection;
-	private String metaDirLoc;
+	private URI metaDirLoc;
 	private ArrayList inheritance;
 	private final IHost connection;
 
@@ -213,7 +218,17 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 		}
 		
 		IProject project = container.getProject();
-		metaDirLoc = project.getLocation().toString() + "/meta";
+		ProjectInfo projInfo = null;
+		try {
+			projInfo = Activator.getProjInfo(project.getLocationURI());
+		} catch (InvocationTargetException e) {
+			e.printStackTrace();
+		} catch (CoreException e) {
+			e.printStackTrace();
+		} catch (InterruptedException e) {
+			e.printStackTrace();
+		}
+		metaDirLoc = RemoteHelper.createNewURI(projInfo.getOriginalURI(), "meta");
 	
 		if (fileName.length() == 0) {
 			updateStatus("File name must be specified");
-- 
1.7.9.5


