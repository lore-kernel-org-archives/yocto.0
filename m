Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 060A2E01404
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:56:46 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id B6C1A401B4;
	Wed, 30 Jan 2013 14:16:58 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:56:20 +0100
Message-Id: <f0bbdb07271d4c096067ac640627f26a735c7699.1359468548.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <07b72866269a6dca38c8b4624027ebe246103501.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
	<da3b87a039d43a6cf16603b46437c36d4d9635e5.1359468548.git.timo.mueller@bmw-carit.de>
	<940419f475a4c076dd2ead78f93f8b3f510d97d6.1359468548.git.timo.mueller@bmw-carit.de>
	<07b72866269a6dca38c8b4624027ebe246103501.1359468548.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v2 04/18] plugins/sdk.ide: Set value of target array on input change
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

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The value of the target array set in the constructor is now also
affected when the input of the element is changed.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 2e3c830..5bca41a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -303,6 +303,8 @@ public class YoctoUISetting {
 	}
 
 	public void setCurrentInput(YoctoUIElement elem){
+		elem.setStrTargetsArray(getTargetArray(elem));
+
 		btnSDKRoot.setSelection(false);
 		btnPokyRoot.setSelection(false);
 		if(elem.getEnumPokyMode().equals(YoctoUIElement.PokyMode.POKY_SDK_MODE)){
-- 
1.7.11.7


