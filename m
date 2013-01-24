Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57877E014E2
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 0206640283;
	Thu, 24 Jan 2013 15:33:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:32 +0100
Message-Id: <1c7c3a16057f2f7a2aef5fe4a57de42a0120e9d6.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <9869d2f21c4130954187409afc51fad59f63a875.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
	<75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
	<47d5642a5b0675e9e48c8555bb264f2270798542.1358931353.git.timo.mueller@bmw-carit.de>
	<8aa01a9735b1fa23722fd853a4ce79b6a781bd69.1358931353.git.timo.mueller@bmw-carit.de>
	<40dfcc00907e0739cf192b6bdc79a2e5ba1b66f0.1358931353.git.timo.mueller@bmw-carit.de>
	<23bdcff5cc035db6da3007f7ccb24ba7e59a8cc5.1358931353.git.timo.mueller@bmw-carit.de>
	<9869d2f21c4130954187409afc51fad59f63a875.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 08/17] plugins/sdk.ide: Set profile on selection change
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
X-List-Received-Date: Thu, 24 Jan 2013 15:12:45 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

When a profile is selected through the combo box the value of the
profileElement changed to contain the selected profile.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index eecb4ef..f9cd7ce 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -16,7 +16,9 @@ import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
 import org.eclipse.swt.widgets.Combo;
 import org.eclipse.swt.widgets.Composite;
+import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.Group;
+import org.eclipse.swt.widgets.Listener;
 
 public class YoctoProfileSetting {
 	private static final String PROFILES_TITLE = "Preferences.Profiles.Title";
@@ -54,6 +56,27 @@ public class YoctoProfileSetting {
 		sdkConfigsCombo.setLayout(new GridLayout(2, false));
 		sdkConfigsCombo.setLayoutData(new GridData(SWT.FILL, SWT.LEFT, true, false));
 
+		Listener selectionListener = new Listener() {
+			@Override
+			public void handleEvent(Event event) {
+				Object source = event.widget;
+				if (!(source instanceof Combo)) {
+					return;
+				}
+
+				Combo sdkCombo = (Combo) source;
+				if (sdkCombo.getSelectionIndex() < 0) {
+					return;
+				}
+
+				String selectedItem = sdkCombo.getItem(sdkCombo.getSelectionIndex());
+				profileElement.setSelectedProfile(selectedItem);
+			}
+		};
+
+		sdkConfigsCombo.addListener(SWT.Selection, selectionListener);
+		sdkConfigsCombo.addListener(SWT.Modify, selectionListener);
+
 		createNewProfileButton(storeYoctoConfigurationsGroup);
 		createRenameButton(storeYoctoConfigurationsGroup);
 		createRemoveButton(storeYoctoConfigurationsGroup);
-- 
1.7.11.7


