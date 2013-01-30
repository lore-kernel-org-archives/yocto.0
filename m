Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E024E0146A
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:56:49 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 5A4B64029C;
	Wed, 30 Jan 2013 14:17:01 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:56:40 +0100
Message-Id: <5ae9bf1ea8a142a93f83bc6c24821692e73c40bb.1359468548.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <60005fbb87b899a1900c0f07426a1fb95a39b9f2.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1359468548.git.timo.mueller@bmw-carit.de>
	<940419f475a4c076dd2ead78f93f8b3f510d97d6.1359468548.git.timo.mueller@bmw-carit.de>
	<07b72866269a6dca38c8b4624027ebe246103501.1359468548.git.timo.mueller@bmw-carit.de>
	<f0bbdb07271d4c096067ac640627f26a735c7699.1359468548.git.timo.mueller@bmw-carit.de>
	<f7cfefba2277cefdc676af13088b56b2ae56569f.1359468548.git.timo.mueller@bmw-carit.de>
	<8e152bb34c7e9e61263bc119d4d70e8d911c5265.1359468548.git.timo.mueller@bmw-carit.de>
	<e2166216a995ac252a788b2a0aaa2f36a4f89701.1359468548.git.timo.mueller@bmw-carit.de>
	<cea3e5f07d1bc7cb7cb52e165d5d414f00097565.1359468548.git.timo.mueller@bmw-carit.de>
	<1fdde3693253efc9d8bf731be11d5280ace9cd03.1359468548.git.timo.mueller@bmw-carit.de>
	<c2c1a361604bdc0c7f05a05247a39f49f08b36d5.1359468548.git.timo.mueller@bmw-carit.de>
	<3bf56fea609743f90d8a6576ab45fc9221859c93.1359466765.git.timo.mueller@bmw-carit.de>
	<a30248904660352ac16ed0179a50f259df16cb0a.1359468548.git.timo.mueller@bmw-carit.de>
	<26825d2d35aab2ecf72c049fabea26fd4c8b90f7.1359466765.git.timo.mueller@bmw-carit.de>
	<884e02683abe31869bc2437d04db8b305ec8abfc.1359466765.git.timo.mueller@bmw-carit.de>
	<0d7a3bd991f07008b9a5e1271800352342070410.1359468548.git.timo.mueller@bmw-carit.de>
	<07f738ec0e99006772601a592b6bf3ebd2799965.1359468548.git.timo.mueller@bmw-carit.de>
	<c4d328e95717425d908e3dfeaba67e90af2f4069.1359466765.git.timo.mueller@bmw-carit.de>
	<7b5fe60bd9f28f769bb1926c37f8dec3b8c89694.1359466765.git.timo.mueller@bmw-carit.de>
	<c4ad24be2ad72e9006e4a9c71297f84d8ed22546.1359468548.git.timo.mueller@bmw-carit.de>
	<6f02c0673e649b05fc0759b1f26631b103788997.1359468548.git.timo.mueller@bmw-carit.de>
	<3084361fc29354d2e7272c59479a008d53b5efe3.1359466765.git.timo.mueller@bmw-carit.de>
	<ed5023548a3992439f72616350eaf9d1eec471a4.1359466765.git.timo.mueller@bmw-carit.de>
	<60005fbb87b899a1900c0f07426a1fb95a39b9f2.1359468548.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v2 17/18] plugins/sdk.ide: Added profile UI to the preference page
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
X-List-Received-Date: Wed, 30 Jan 2013 13:56:50 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Adds the UI elements that allow managing profiles to the preference
page.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java     | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index 8dc089b..fb015ab 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -67,7 +67,9 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 	protected Control createContents(Composite parent) {
 		initializeDialogUnits(parent);
 		final Composite result= new Composite(parent, SWT.NONE);
-		
+
+		yoctoProfileSetting.createComposite(result);
+
 		try {
 			yoctoUISetting.createComposite(result);
 			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
-- 
1.7.11.7


