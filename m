Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81CABE014E8
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 07:12:45 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.47])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 1FE504029C;
	Thu, 24 Jan 2013 15:33:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 16:12:33 +0100
Message-Id: <a5eee2a7452cca8bd663b5e325ff1248d6ea3262.1358931353.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <1c7c3a16057f2f7a2aef5fe4a57de42a0120e9d6.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1358931353.git.timo.mueller@bmw-carit.de>
	<75fe8c916aee186365c6b4eff31c1bca37a2b444.1358931353.git.timo.mueller@bmw-carit.de>
	<47d5642a5b0675e9e48c8555bb264f2270798542.1358931353.git.timo.mueller@bmw-carit.de>
	<8aa01a9735b1fa23722fd853a4ce79b6a781bd69.1358931353.git.timo.mueller@bmw-carit.de>
	<40dfcc00907e0739cf192b6bdc79a2e5ba1b66f0.1358931353.git.timo.mueller@bmw-carit.de>
	<23bdcff5cc035db6da3007f7ccb24ba7e59a8cc5.1358931353.git.timo.mueller@bmw-carit.de>
	<9869d2f21c4130954187409afc51fad59f63a875.1358931353.git.timo.mueller@bmw-carit.de>
	<1c7c3a16057f2f7a2aef5fe4a57de42a0120e9d6.1358931353.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1358931353.git.timo.mueller@bmw-carit.de>
References: <cover.1358931353.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC 09/17] plugins/sdk.ide: Add method to allow storing the current settings
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

The added method calls the performOK method on the provided preference
page to store the current content of the page.
This callback is needed so the profile UI is able to propagate changes
to the preference page it is part of.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java               | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index f9cd7ce..7c2b8d4 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -10,6 +10,7 @@
  *******************************************************************************/
 package org.yocto.sdk.ide;
 
+import org.eclipse.jface.preference.PreferencePage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
@@ -32,9 +33,11 @@ public class YoctoProfileSetting {
 	private Button btnConfigNew;
 
 	private YoctoProfileElement profileElement;
+	private PreferencePage preferencePage;
 
-	public YoctoProfileSetting(YoctoProfileElement profileElement){
+	public YoctoProfileSetting(YoctoProfileElement profileElement, PreferencePage preferencePage){
 		this.profileElement = profileElement;
+		this.preferencePage = preferencePage;
 	}
 
 	public void createComposite(Composite composite) {
@@ -101,6 +104,10 @@ public class YoctoProfileSetting {
 		btnConfigRename.setText(YoctoSDKMessages.getString(RENAME_PROFILE_TITLE));
 	}
 
+	private void saveChangesOnCurrentProfile() {
+		preferencePage.performOk();
+	}
+
 	private void addConfigs(Combo combo) {
 		for (String profile : profileElement.getProfiles()) {
 			combo.add(profile);
-- 
1.7.11.7


