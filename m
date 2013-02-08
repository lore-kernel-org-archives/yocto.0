Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 20BE6E00527
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:26:17 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 46806400A2;
	Fri,  8 Feb 2013 13:45:49 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:25:59 +0100
Message-Id: <3fec00c8d8c2c4894854c78b4033359aead5409f.1360326346.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <e70ea91624d01d512b1bec5ad97d9ba47f588771.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
	<e70ea91624d01d512b1bec5ad97d9ba47f588771.1360326346.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 02/17] plugins/sdk.ide: Extract labels to private members
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
X-List-Received-Date: Fri, 08 Feb 2013 13:26:17 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Extracting the labels as private members allows the modification of
the label settings after creation. This is will allow disabling and
enabling the labels after creation of the form.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoUISetting.java              | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 0fbfde0..9ec0d85 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -63,6 +63,12 @@ public class YoctoUISetting {
 	private Text textRootLoc;
 	private Combo targetArchCombo;
 
+	private Label root_label;
+	private Label sysroot_label;
+	private Label targetArchLabel;
+	private Label kernel_label;
+	private Label option_label;
+
 	public YoctoUISetting(YoctoUIElement elem)
 	{
 		yoctoUIElement = elem;
@@ -140,10 +146,6 @@ public class YoctoUISetting {
 
 	private void createQemuSetup(final Group targetGroup) throws YoctoGeneralException
 	{
-		Label kernel_label;
-		Label option_label;
-		
-		
 		//QEMU Setup
 		kernel_label= new Label(targetGroup, SWT.NONE);
 		kernel_label.setText("Kernel: ");
@@ -180,8 +182,6 @@ public class YoctoUISetting {
 	}
 	public void createComposite(Composite composite) throws YoctoGeneralException
 	{
-		Label root_label, sysroot_label;
-		
 		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		GridLayout layout = new GridLayout(2, false);
 		composite.setLayout(layout);
@@ -224,7 +224,7 @@ public class YoctoUISetting {
 		btnSysrootLoc = addFileSelectButton(textContainer, textSysrootLoc, PreferenceConstants.SYSROOT);
 
 		updateSDKControlState();
-		Label targetArchLabel= new Label(crossCompilerGroup, SWT.NONE);
+		targetArchLabel = new Label(crossCompilerGroup, SWT.NONE);
 		targetArchLabel.setText("Target Architecture: ");
 
 		targetArchCombo= new Combo(crossCompilerGroup, SWT.READ_ONLY);
-- 
1.7.11.7


