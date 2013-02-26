Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id A4A9CE006C3
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 05:49:25 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 886E3400AC;
	Tue, 26 Feb 2013 14:07:35 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue, 26 Feb 2013 14:49:19 +0100
Message-Id: <c6a14985367e7e7d057250b89bd07552302e03af.1361867924.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <25b0cc70b24171a329c3a29139970bfacec9e080.1361867924.git.timo.mueller@bmw-carit.de>
References: <cover.1361867924.git.timo.mueller@bmw-carit.de>
	<25b0cc70b24171a329c3a29139970bfacec9e080.1361867924.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361867924.git.timo.mueller@bmw-carit.de>
References: <cover.1361867924.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 2/5] plugins/sdk.ide: Remove exception that is never thrown
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
X-List-Received-Date: Tue, 26 Feb 2013 13:49:25 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>


Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 5bca41a..f7e7a3a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -144,7 +144,7 @@ public class YoctoUISetting {
 		return button;
 	}		
 
-	private void createQemuSetup(final Group targetGroup) throws YoctoGeneralException
+	private void createQemuSetup(final Group targetGroup)
 	{
 		//QEMU Setup
 		kernel_label= new Label(targetGroup, SWT.NONE);
@@ -180,7 +180,7 @@ public class YoctoUISetting {
 		*/
 		
 	}
-	public void createComposite(Composite composite) throws YoctoGeneralException
+	public void createComposite(Composite composite)
 	{
 		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		GridLayout layout = new GridLayout(2, false);
-- 
1.7.11.7


