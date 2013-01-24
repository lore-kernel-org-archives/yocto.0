Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5109AE014DD
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:44 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 29D9B400E4;
	Thu, 24 Jan 2013 15:33:24 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:26 +0100
Message-Id: <75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 02/17] plugins/sdk.ide: Extract labels to private members
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
X-List-Received-Date: Thu, 24 Jan 2013 15:12:44 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Extracting the labels as private members allows the modification of
the label settings after creation. This is will allow disabling and
enabling the labels after creation of the form.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoUISetting.java             | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 0fbfde0..a4a3c09 100644
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
@@ -180,8 +182,7 @@ public class YoctoUISetting {
 	}
 	public void createComposite(Composite composite) throws YoctoGeneralException
 	{
-		Label root_label, sysroot_label;
-		
+
 		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		GridLayout layout = new GridLayout(2, false);
 		composite.setLayout(layout);
@@ -224,7 +225,7 @@ public class YoctoUISetting {
 		btnSysrootLoc = addFileSelectButton(textContainer, textSysrootLoc, PreferenceConstants.SYSROOT);
 
 		updateSDKControlState();
-		Label targetArchLabel= new Label(crossCompilerGroup, SWT.NONE);
+		targetArchLabel = new Label(crossCompilerGroup, SWT.NONE);
 		targetArchLabel.setText("Target Architecture: ");
 
 		targetArchCombo= new Combo(crossCompilerGroup, SWT.READ_ONLY);
-- 
1.7.11.7


