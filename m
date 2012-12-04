Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5244DE0141D
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 01:22:26 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 68ACA400E4;
	Tue,  4 Dec 2012 09:46:56 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 10:22:18 +0100
Message-Id: <260dbc9c47e40a233d1810979677e3cc1a70b957.1354608536.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <15320fff8e0ade9b2c6a8013b9e140aa9236aac7.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
	<56d6fb92e4678d78e49b872c45dc678f635aad80.1354608536.git.timo.mueller@bmw-carit.de>
	<15320fff8e0ade9b2c6a8013b9e140aa9236aac7.1354608536.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
Subject: [PATCH 3/8] plugins/sdk.ide: Use new setCurrentInput method to set defaults
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
X-List-Received-Date: Tue, 04 Dec 2012 09:22:26 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Removes the error prone method of using the fControls array and uses
the new YoctoUIElement interface.

Improved method of setting default preferences (globally)
---
 .../ide/preferences/YoctoSDKPreferencePage.java    |   51 +------------------
 1 files changed, 3 insertions(+), 48 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
index b75bdc1..d1c1a72 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKPreferencePage.java
@@ -89,58 +89,13 @@ public class YoctoSDKPreferencePage extends PreferencePage implements IWorkbench
 			return false;
 		}		
 	}
-	
+
 	/*
 	 * @see PreferencePage#performDefaults()
 	 */
 	protected void performDefaults() {
-		IPreferenceStore store= getPreferenceStore();
-		ArrayList<Control> arrControls =  this.yoctoUISetting.getfControls();
-		
-		for (int i = 0; i < arrControls.size(); i++)
-		{
-			Control control = arrControls.get(i);
-			String[] controlData = (String[])control.getData();
-			String sKey = controlData[0];
-			if (control instanceof Button)
-			{
-				sKey = sKey.substring(0, sKey.lastIndexOf("_"));
-			}
-			String sValue = store.getDefaultString(sKey);
-			if (control instanceof Button)
-			{
-				if (sValue.equalsIgnoreCase("true"))
-				{
-					if (controlData[0].endsWith("_1")) //the 1st radio button of the group
-						((Button)control).setSelection(true);
-					else
-						((Button)control).setSelection(false);//the 2nd radio button of the group
-				}
-				else
-				{
-					if (controlData[0].endsWith("_1")) //the 1st radio button of the group
-						((Button)control).setSelection(false);
-					else
-						((Button)control).setSelection(true);//the 2nd radio button of the group
-				}
-			}
-			else if (control instanceof Text)
-			{
-				((Text)control).setText(sValue);
-			}
-			else if (control instanceof Combo)
-			{
-				if (!sValue.isEmpty())
-					((Combo)control).select(Integer.valueOf(sValue).intValue());
-			}
-		}
-
-		try {
-			yoctoUISetting.validateInput(SDKCheckRequestFrom.Preferences, false);
-		} catch (YoctoGeneralException e) {
-			System.out.println("Have you ever set Yocto Project Reference before?");
-			System.out.println(e.getMessage());
-		}
+		YoctoUIElement defaultElement = YoctoSDKUtils.getDefaultElemFromStore();
+		yoctoUISetting.setCurrentInput(defaultElement);
 		super.performDefaults();
 	}
 
-- 
1.7.7.6


