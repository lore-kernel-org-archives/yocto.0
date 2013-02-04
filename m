Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ECD0E011AF
	for <yocto@yoctoproject.org>; Sun,  3 Feb 2013 23:35:58 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 0EE87400A2;
	Mon,  4 Feb 2013 07:55:50 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Mon,  4 Feb 2013 08:35:49 +0100
Message-Id: <c4ad24be2ad72e9006e4a9c71297f84d8ed22546.1359962724.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <07f738ec0e99006772601a592b6bf3ebd2799965.1359962724.git.timo.mueller@bmw-carit.de>
References: <cover.1359962724.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1359962724.git.timo.mueller@bmw-carit.de>
	<940419f475a4c076dd2ead78f93f8b3f510d97d6.1359962724.git.timo.mueller@bmw-carit.de>
	<07b72866269a6dca38c8b4624027ebe246103501.1359962724.git.timo.mueller@bmw-carit.de>
	<f0bbdb07271d4c096067ac640627f26a735c7699.1359962724.git.timo.mueller@bmw-carit.de>
	<f7cfefba2277cefdc676af13088b56b2ae56569f.1359962724.git.timo.mueller@bmw-carit.de>
	<8e152bb34c7e9e61263bc119d4d70e8d911c5265.1359962724.git.timo.mueller@bmw-carit.de>
	<e2166216a995ac252a788b2a0aaa2f36a4f89701.1359962724.git.timo.mueller@bmw-carit.de>
	<cea3e5f07d1bc7cb7cb52e165d5d414f00097565.1359962724.git.timo.mueller@bmw-carit.de>
	<1fdde3693253efc9d8bf731be11d5280ace9cd03.1359962724.git.timo.mueller@bmw-carit.de>
	<c2c1a361604bdc0c7f05a05247a39f49f08b36d5.1359962724.git.timo.mueller@bmw-carit.de>
	<a30248904660352ac16ed0179a50f259df16cb0a.1359962724.git.timo.mueller@bmw-carit.de>
	<0d7a3bd991f07008b9a5e1271800352342070410.1359962724.git.timo.mueller@bmw-carit.de>
	<07f738ec0e99006772601a592b6bf3ebd2799965.1359962724.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359962724.git.timo.mueller@bmw-carit.de>
References: <cover.1359962724.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v3 14/18] plugins/sdk.ide: Add method to rename a profile and its preference store
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
X-List-Received-Date: Mon, 04 Feb 2013 07:35:58 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

When renaming a profile the current values are stored in the profile's
new preference store.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java  | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 105fd9c..2767d7a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -182,6 +182,10 @@ public class YoctoProfileSetting {
 				String newProfileName = profileNameDialog.getValue();
 				profileElement.rename(selectedItem, profileNameDialog.getValue());
 
+				if (preferencePage instanceof YoctoSDKPreferencePage) {
+					((YoctoSDKPreferencePage) preferencePage).renameProfile(selectedItem, newProfileName);
+				}
+
 				sdkConfigsCombo.setItem(selectedIndex, newProfileName);
 				sdkConfigsCombo.select(selectedIndex);
 			}
-- 
1.7.11.7


