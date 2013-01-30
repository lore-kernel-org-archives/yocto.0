Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A94E3E0144A
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:56:46 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 436BB4029E;
	Wed, 30 Jan 2013 14:16:59 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:56:24 +0100
Message-Id: <cea3e5f07d1bc7cb7cb52e165d5d414f00097565.1359468548.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <e2166216a995ac252a788b2a0aaa2f36a4f89701.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1359468548.git.timo.mueller@bmw-carit.de>
	<940419f475a4c076dd2ead78f93f8b3f510d97d6.1359468548.git.timo.mueller@bmw-carit.de>
	<07b72866269a6dca38c8b4624027ebe246103501.1359468548.git.timo.mueller@bmw-carit.de>
	<f0bbdb07271d4c096067ac640627f26a735c7699.1359468548.git.timo.mueller@bmw-carit.de>
	<f7cfefba2277cefdc676af13088b56b2ae56569f.1359468548.git.timo.mueller@bmw-carit.de>
	<8e152bb34c7e9e61263bc119d4d70e8d911c5265.1359468548.git.timo.mueller@bmw-carit.de>
	<e2166216a995ac252a788b2a0aaa2f36a4f89701.1359468548.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v2 08/18] plugins/sdk.ide: Set profile on selection change
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
X-List-Received-Date: Wed, 30 Jan 2013 13:56:46 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

When a profile is selected through the combo box the value of the
profileElement changed to contain the selected profile.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 7476bd3..b35a167 100644
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
 		createSaveAsProfileButton(storeYoctoConfigurationsGroup);
 		createRenameButton(storeYoctoConfigurationsGroup);
 		createRemoveButton(storeYoctoConfigurationsGroup);
-- 
1.7.11.7


