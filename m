Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 68A92E01463
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 06:37:21 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id D690540295;
	Wed, 27 Feb 2013 14:55:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 27 Feb 2013 15:37:16 +0100
Message-Id: <a3d185dcd04c38f69779dd78f9ceef22a1e8cbe7.1361954280.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <7cfbfd67bd5cf51db3a143b84f71845458af5e19.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
	<1d77db41ae01d101639ebe358965aa2a43682052.1361954280.git.timo.mueller@bmw-carit.de>
	<33b90639b31373dc0d65e23cdb51cc80b3e81b6e.1361954280.git.timo.mueller@bmw-carit.de>
	<33091cc0031551c2c58e14f6d62ebf429ace2fa6.1361954280.git.timo.mueller@bmw-carit.de>
	<7cfbfd67bd5cf51db3a143b84f71845458af5e19.1361954280.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361954280.git.timo.mueller@bmw-carit.de>
References: <cover.1361954280.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 5/5] plugins/sdk.ide: Use standard error dialog to show SDK check errors
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
X-List-Received-Date: Wed, 27 Feb 2013 14:37:21 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoUISetting.java            | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index ba80cb1..f27019d 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -14,6 +14,8 @@ import java.io.File;
 import java.util.ArrayList;
 
 import org.eclipse.cdt.ui.templateengine.uitree.InputUIElement;
+import org.eclipse.core.runtime.Status;
+import org.eclipse.jface.dialogs.ErrorDialog;
 import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.events.ModifyEvent;
@@ -32,8 +34,6 @@ import org.eclipse.swt.widgets.Display;
 import org.eclipse.swt.widgets.FileDialog;
 import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Label;
-import org.eclipse.swt.widgets.MessageBox;
-import org.eclipse.swt.widgets.Shell;
 import org.eclipse.swt.widgets.Text;
 import org.eclipse.swt.widgets.Widget;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckRequestFrom;
@@ -343,13 +343,11 @@ public class YoctoUISetting {
 		//Show Error Message on the Label to help users.
 		if ((result != SDKCheckResults.SDK_PASS) && showErrorDialog) {
 			Display display = Display.getCurrent();
-			Shell shell = new Shell(display);
-			MessageBox msgBox = new MessageBox(shell, SWT.ICON_ERROR | SWT.OK);
-			msgBox.setText("Yocto Project Configuration Error");
-			msgBox.setMessage(YoctoSDKChecker.getErrorMessage(result, from));
-			msgBox.open();
-			if (shell != null)
-				shell.dispose();
+			ErrorDialog.openError(display.getActiveShell(),
+									"Yocto Project Configuration Error",
+									YoctoSDKChecker.getErrorMessage(result, from),
+									new Status(Status.ERROR, YoctoSDKPlugin.PLUGIN_ID, result.getMessage()));
+
 		}
 
 		return result;
-- 
1.7.11.7


