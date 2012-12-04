Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54CE2E0142A
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 01:22:26 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 86AF2400F8;
	Tue,  4 Dec 2012 09:46:56 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 10:22:19 +0100
Message-Id: <49c4eff9354e4a871a58d8f3bc7f4ef90f4f734d.1354608536.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <260dbc9c47e40a233d1810979677e3cc1a70b957.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
	<56d6fb92e4678d78e49b872c45dc678f635aad80.1354608536.git.timo.mueller@bmw-carit.de>
	<15320fff8e0ade9b2c6a8013b9e140aa9236aac7.1354608536.git.timo.mueller@bmw-carit.de>
	<260dbc9c47e40a233d1810979677e3cc1a70b957.1354608536.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
Subject: [PATCH 4/8] plugins/sdk.ide: Remove fControl array that is no longer needed
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

The setCurrentInput method replaces the functionality that was
provided by the fControl array.
---
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   14 --------------
 1 files changed, 0 insertions(+), 14 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 53af8f0..0fbfde0 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -43,7 +43,6 @@ import org.yocto.sdk.ide.preferences.PreferenceConstants;
 public class YoctoUISetting {
 
 	private static final String ENV_SCRIPT_FILE_PREFIX = "environment-setup-";
-	private ArrayList<Control> fControls;
 
 	private SelectionListener fSelectionListener;
 	private ModifyListener fModifyListener;
@@ -66,7 +65,6 @@ public class YoctoUISetting {
 
 	public YoctoUISetting(YoctoUIElement elem)
 	{
-		fControls = new ArrayList<Control>();
 		yoctoUIElement = elem;
 		elem.setStrTargetsArray(getTargetArray(elem));
 
@@ -88,11 +86,8 @@ public class YoctoUISetting {
 
 	private Control addControls(Control fControl, final String sKey, String sValue)
 	{
-
 		fControl.setData(new String[]{sKey,sValue});
-		fControls.add(fControl);
 		return fControl;
-
 	}
 
 	private Control addRadioButton(Composite parent, String label, String key, boolean bSelected) {
@@ -375,15 +370,6 @@ public class YoctoUISetting {
 		return pass;
 	}
 
-
-	public void setfControls(ArrayList<Control> fControls) {
-		this.fControls = fControls;
-	}
-
-	public ArrayList<Control> getfControls() {
-		return fControls;
-	}
-
 	private void updateQemuControlState()
 	{
 		boolean bQemuMode = btnQemu.getSelection();
-- 
1.7.7.6


