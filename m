Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 869DDE014B0
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:26:20 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 25266400A2;
	Fri,  8 Feb 2013 13:45:51 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:26:14 +0100
Message-Id: <6a3483cbc433494d94f52bfed2ff32797b54bb84.1360326346.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <d7cdd7e0ce1a0d9acace7304b5e97b28e04f303e.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
	<e70ea91624d01d512b1bec5ad97d9ba47f588771.1360326346.git.timo.mueller@bmw-carit.de>
	<3fec00c8d8c2c4894854c78b4033359aead5409f.1360326346.git.timo.mueller@bmw-carit.de>
	<55bbacc9719bafa4fba381ca4f8f161adb163269.1360326346.git.timo.mueller@bmw-carit.de>
	<71a8d6fe7cb972095795a24d7405682e52ae88a2.1360326346.git.timo.mueller@bmw-carit.de>
	<d3cfcdee95efc3d46c0561823849afb858f3096c.1360326346.git.timo.mueller@bmw-carit.de>
	<b028abd6861fc1db486627617ab17419dbf7cf58.1360326346.git.timo.mueller@bmw-carit.de>
	<ddb9c6bed6d09559850e4c5d141ae72452c0cab7.1360326346.git.timo.mueller@bmw-carit.de>
	<b42a923a5c10d5b8194f93614abc02b359dbf00b.1360326346.git.timo.mueller@bmw-carit.de>
	<2e551dabad2d725a813c40575628e662cfca15ba.1360326346.git.timo.mueller@bmw-carit.de>
	<77cc790e19ef52b0731dc9d68b63814c17fc725d.1360326346.git.timo.mueller@bmw-carit.de>
	<8d4a09888c692cca0947f6d010a116034afa9525.1360326346.git.timo.mueller@bmw-carit.de>
	<2866b7e5be8b3c8ced44bb215a2402ef0881587b.1360326346.git.timo.mueller@bmw-carit.de>
	<8bfea163404050b0be38624f822e9838343fc53d.1360326346.git.timo.mueller@bmw-carit.de>
	<62b81d56c39d69e23e438986bf151c2aa4389371.1360326346.git.timo.mueller@bmw-carit.de>
	<322e2e98dc047a05cf61ee6c259db06d4b7e7671.1360326346.git.timo.mueller@bmw-carit.de>
	<d7cdd7e0ce1a0d9acace7304b5e97b28e04f303e.1360326346.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 17/17] plugins/sdk.ide: Added profile UI to the preference page
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
X-List-Received-Date: Fri, 08 Feb 2013 13:26:20 -0000

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


