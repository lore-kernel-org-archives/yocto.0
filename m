Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 0B2F2E0146D
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:26:19 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 9BD26402D9;
	Fri,  8 Feb 2013 13:45:50 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:26:10 +0100
Message-Id: <8bfea163404050b0be38624f822e9838343fc53d.1360326346.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <2866b7e5be8b3c8ced44bb215a2402ef0881587b.1360326346.git.timo.mueller@bmw-carit.de>
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
In-Reply-To: <cover.1360326346.git.timo.mueller@bmw-carit.de>
References: <cover.1360326346.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v4 13/17] plugins/sdk.ide: Add method to change values of the preference page
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
X-List-Received-Date: Fri, 08 Feb 2013 13:26:19 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

When switching profile the values of the profile are retrieved from
the preference store. The UI is updated using the retrieved values.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java  | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
index 077dc28..105fd9c 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProfileSetting.java
@@ -88,6 +88,10 @@ public class YoctoProfileSetting {
 
 				String selectedItem = sdkCombo.getItem(sdkCombo.getSelectionIndex());
 				profileElement.setSelectedProfile(selectedItem);
+
+				if (preferencePage instanceof YoctoSDKPreferencePage) {
+					((YoctoSDKPreferencePage) preferencePage).switchProfile(selectedItem);
+				}
 			}
 		};
 
-- 
1.7.11.7


