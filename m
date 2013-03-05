Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3A2A2E01480
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 00:29:29 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 8D42B40238;
	Tue,  5 Mar 2013 08:47:08 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2013 09:29:22 +0100
Message-Id: <7795054b666eb6e5760f9f1f615eaf42b19fb535.1362414084.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <0e1087cc0470b96f7fd4acb8e1abb35c46fcb967.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
	<326c88b1356a7902bd617989dd71fbf51c4dd018.1362414084.git.timo.mueller@bmw-carit.de>
	<0e1087cc0470b96f7fd4acb8e1abb35c46fcb967.1362414084.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 3/5] plugins/sdk.ide: Fix setting layout of parent composite
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
X-List-Received-Date: Tue, 05 Mar 2013 08:29:29 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The layout of the parent composite is set in every yocto settings
element. Depending on the order in which the elements are added to the
composite this may lead to different layouts being used.

Layout of the composite is now set in the preference/property pages
instead of setting this in every child component.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java    | 1 -
 .../src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java              | 1 -
 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java     | 1 -
 .../src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java       | 2 ++
 .../src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java  | 2 ++
 5 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 0f36e99..f56fea4 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -60,7 +60,6 @@ public class YoctoProfileSetting {
 	public void createComposite(Composite composite) {
 		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		GridLayout layout = new GridLayout(2, false);
-		composite.setLayout(layout);
 
 		Group storeYoctoConfigurationsGroup = new Group (composite, SWT.NONE);
 		layout = new GridLayout(1, false);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java
index 13acb8e..2a55a64 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java
@@ -41,7 +41,6 @@ public class YoctoProjectSpecificSetting {
 	public void createComposite(Composite composite) {
 		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		GridLayout layout = new GridLayout(2, false);
-		composite.setLayout(layout);
 
 		Group storeYoctoConfigurationsGroup = new Group (composite, SWT.NONE);
 		layout = new GridLayout(2, false);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index f27019d..3aa38d9 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -184,7 +184,6 @@ public class YoctoUISetting {
 	{
 		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		GridLayout layout = new GridLayout(2, false);
-		composite.setLayout(layout);
 
 		Group crossCompilerGroup= new Group(composite, SWT.NONE);
 		layout= new GridLayout(2, false);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 1a8c8ca..97c602b 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -22,6 +22,7 @@ import org.eclipse.jface.dialogs.MessageDialog;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
+import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.ui.IWorkbench;
@@ -76,6 +77,7 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 	protected Control createContents(Composite parent) {
 		initializeDialogUnits(parent);
 		final Composite composite= new Composite(parent, SWT.NONE);
+		composite.setLayout(new GridLayout(2, false));
 
 		yoctoProfileSetting.createComposite(composite);
 		yoctoUISetting.createComposite(composite);
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
index ca148af..effd432 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java
@@ -16,6 +16,7 @@ import org.eclipse.core.resources.IProject;
 import org.eclipse.core.runtime.IAdaptable;
 import org.eclipse.jface.dialogs.Dialog;
 import org.eclipse.swt.SWT;
+import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.ui.IWorkbenchPropertyPage;
@@ -64,6 +65,7 @@ public class YoctoSDKProjectPropertyPage extends PropertyPage implements
 
 		initializeDialogUnits(parent);
 		final Composite composite = new Composite(parent, SWT.NONE);
+		composite.setLayout(new GridLayout(2, false));
 
 		yoctoProfileSetting.createComposite(composite);
 		yoctoProjectSpecificSetting.createComposite(composite);
-- 
1.7.11.7


