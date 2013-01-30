Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00FA6E01459
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:56:47 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 5FAEF4029F;
	Wed, 30 Jan 2013 14:16:59 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:56:25 +0100
Message-Id: <1fdde3693253efc9d8bf731be11d5280ace9cd03.1359468548.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <cea3e5f07d1bc7cb7cb52e165d5d414f00097565.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1359468548.git.timo.mueller@bmw-carit.de>
	<940419f475a4c076dd2ead78f93f8b3f510d97d6.1359468548.git.timo.mueller@bmw-carit.de>
	<07b72866269a6dca38c8b4624027ebe246103501.1359468548.git.timo.mueller@bmw-carit.de>
	<f0bbdb07271d4c096067ac640627f26a735c7699.1359468548.git.timo.mueller@bmw-carit.de>
	<f7cfefba2277cefdc676af13088b56b2ae56569f.1359468548.git.timo.mueller@bmw-carit.de>
	<8e152bb34c7e9e61263bc119d4d70e8d911c5265.1359468548.git.timo.mueller@bmw-carit.de>
	<e2166216a995ac252a788b2a0aaa2f36a4f89701.1359468548.git.timo.mueller@bmw-carit.de>
	<cea3e5f07d1bc7cb7cb52e165d5d414f00097565.1359468548.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v2 09/18] plugins/sdk.ide: Add method to allow storing the current settings
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
X-List-Received-Date: Wed, 30 Jan 2013 13:56:47 -0000

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
index b35a167..7949cdf 100644
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
 	private Button btnConfigSaveAs;
 
 	private YoctoProfileElement profileElement;
+	private PreferencePage preferencePage;
 
-	public YoctoProfileSetting(YoctoProfileElement profileElement) {
+	public YoctoProfileSetting(YoctoProfileElement profileElement, PreferencePage preferencePage) {
 		this.profileElement = profileElement;
+		this.preferencePage = preferencePage;
 	}
 
 	public void createComposite(Composite composite) {
@@ -98,6 +101,10 @@ public class YoctoProfileSetting {
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


