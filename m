Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15669E01469
	for <yocto@yoctoproject.org>; Wed, 30 Jan 2013 05:56:48 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 579E6400A1;
	Wed, 30 Jan 2013 14:16:58 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 30 Jan 2013 14:56:17 +0100
Message-Id: <da3b87a039d43a6cf16603b46437c36d4d9635e5.1359468548.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1359468548.git.timo.mueller@bmw-carit.de>
References: <cover.1359468548.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v2 01/18] plugins/sdk.ide: Removed unused message
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
X-List-Received-Date: Wed, 30 Jan 2013 13:56:48 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The dialog has been merged with the project settings. Therefor the
message is no longer needed.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties  | 1 -
 1 file changed, 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index b302524..17240e9 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -22,7 +22,6 @@ Poky.Env.Script.Nonexist = Specified Build Tree Toolchain Root does not contain
 Poky.ADT.Sysroot.Wrongversion = OECORE related items are not found in envrionement setup files.\nThe ADT version you're using is too old.\n Please upgrade to our latest ADT Version!
 Poky.Toolchain.Host.Mismatch = Toolchain and host arch mismatch.\n Make sure you use 32bit toolchain for 32bit host and same for 64bit machines!
 Poky.Toolchain.No.Sysroot = There's no sysroots directory under your toolchain directory under /opt/poky!
-Menu.SDK.Dialog.Title       = Yocto Project Settings
 
 
 Menu.SDK.Console.Configure.Message    = The Yocto Project ADT has been successfully set up for this project.\nTo see the environment variables created during setup,\ngo to Project > Properties > C/C++ Build > Environment. 
-- 
1.7.11.7


