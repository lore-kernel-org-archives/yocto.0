Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50876E01510
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 10:22:33 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jun 2013 10:23:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348629280"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 10:22:31 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Jun 2013 20:00:08 +0300
Message-Id: <1370451622-10619-8-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370451622-10619-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC refactor 07/21] Store connection for recipe in Recipe Wizard Page
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
X-List-Received-Date: Wed, 05 Jun 2013 17:22:33 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    2 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |    5 ++++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
index c08651a..a4a648e 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizard.java
@@ -61,7 +61,7 @@ public class NewBitBakeFileRecipeWizard extends Wizard implements INewWizard {
 
 	@Override
 	public void addPages() {
-		page = new NewBitBakeFileRecipeWizardPage(selection);
+		page = new NewBitBakeFileRecipeWizardPage(selection, connection);
 		addPage(page);
 	}
 
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
index 61878b9..36ffd4fa 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/NewBitBakeFileRecipeWizardPage.java
@@ -21,6 +21,7 @@ import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.IStructuredSelection;
 import org.eclipse.jface.window.Window;
 import org.eclipse.jface.wizard.WizardPage;
+import org.eclipse.rse.core.model.IHost;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.events.ModifyEvent;
 import org.eclipse.swt.events.ModifyListener;
@@ -72,12 +73,14 @@ public class NewBitBakeFileRecipeWizardPage extends WizardPage {
 	private ISelection selection;
 	private String metaDirLoc;
 	private ArrayList inheritance;
+	private final IHost connection;
 	
-	public NewBitBakeFileRecipeWizardPage(ISelection selection) {
+	public NewBitBakeFileRecipeWizardPage(ISelection selection, IHost connection) {
 		super("wizardPage");
 		setTitle("BitBake Recipe");
 		setDescription("Create a new BitBake recipe.");
 		this.selection = selection;
+		this.connection = connection;
 		element = new BitbakeRecipeUIElement();
 		inheritance = new ArrayList();
 	}
-- 
1.7.9.5


