Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3B754E014F0
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 00:29:29 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 52AB0401B4;
	Tue,  5 Mar 2013 08:47:08 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2013 09:29:20 +0100
Message-Id: <326c88b1356a7902bd617989dd71fbf51c4dd018.1362414084.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <cover.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 1/5] plugins/sdk.ide: Rephrase error messages
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
X-List-Received-Date: Tue, 05 Mar 2013 08:29:29 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoSDKMessages.properties                 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 4a4fb60..f3ba7e2 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -20,14 +20,14 @@ Poky.SDK.Target.Empty.Advice = You need specify Target Architecture before build
 Poky.Sysroot.Empty = Specified Sysroot Location is empty.
 Poky.Sysroot.Empty.Advice = You need specify Sysroot Location before building any project.
 Poky.Sysroot.Nonexist = Specified Sysroot Location does not exist.
-Poky.Qemu.Kernel.Empty.Advice = You need specify a valid Sysroot Location before building any project.
+Poky.Sysroot.Nonexist.Advice = You need specify a valid Sysroot Location before building any project.
 Poky.Qemu.Kernel.Empty =  Specified QEMU kernel location is emtpy.
 Poky.Qemu.Kernel.Empty.Advice = You need specify QEMU kernel image file Location before building any project.
 Poky.Qemu.Kernel.Nonexist = Specified QEMU kernel image file does not exist.
 Poky.Qemu.Kernel.Empty.Advice = You need specify a valid QEMU kernel image file before building any project.
 Poky.ADT.Sysroot.Wrongversion = The ADT version you're using is too old.
 Poky.ADT.Sysroot.Wrongversion.Advice = OECORE related items are not found in environment setup files.\nPlease upgrade to our latest ADT Version!
-Poky.Env.Script.Nonexist = Specified Build Tree Toolchain Root does not contain any toolchain yet.
+Poky.Env.Script.Nonexist = Specified toolchain directory does not contain a toolchain generated with meta-ide-support.
 Poky.Env.Script.Nonexist.Advice = Please run "bitbake meta-ide-support" to build the toolchain.
 Poky.Toolchain.No.Sysroot = Specified Toolchain Root Location does not contain a sysroot directory.
 Poky.Toolchain.No.Sysroot.Advice = Please install a valid toolchain sysroot.
-- 
1.7.11.7


