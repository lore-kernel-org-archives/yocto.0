Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75FDAE01400
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 05:44:56 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 922CA402D6;
	Fri, 21 Jun 2013 13:48:31 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri, 21 Jun 2013 14:44:46 +0200
Message-Id: <0d5013a2d71595ba90a8bf18066d62b8c83d0cad.1371818609.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <2424730fff49a5becf5921c4df6d01a4c9c5d78a.1371818609.git.timo.mueller@bmw-carit.de>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
	<8747086bfca592129ab38a4f0a90182488e5cc9c.1371818609.git.timo.mueller@bmw-carit.de>
	<3febae446e2129227471238802a4185719bddc99.1371818609.git.timo.mueller@bmw-carit.de>
	<eb8b7614daafd5a2c359a83dae533c62e2667bf6.1371818609.git.timo.mueller@bmw-carit.de>
	<8759d4ba2272a2f923431e7d761c8957ac594d60.1371818609.git.timo.mueller@bmw-carit.de>
	<bf0b2d82c7810aac76794cc7ce511e217d447ec3.1371818609.git.timo.mueller@bmw-carit.de>
	<2424730fff49a5becf5921c4df6d01a4c9c5d78a.1371818609.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371818609.git.timo.mueller@bmw-carit.de>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 7/8] plugins/sdk.ide: Add profile switch menu to the project menu
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Jun 2013 12:44:56 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If a project with a yocto nature is selected, the project menu will
show a target profile menu which allows the user to switch the used
target profile of the project.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.sdk.ide/plugin.xml | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index aaa0a35..c082c3a 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -251,6 +251,15 @@
          point="org.eclipse.ui.menus">
       <menuContribution
             allPopups="true"
+            locationURI="menu:project">
+         <menu
+               id="org.yocto.sdk.ide.profiles.menu"
+               label="%command.targetProfileSwitch.label"
+               tooltip="%command.targetProfileSwitch.description">
+         </menu>
+      </menuContribution>
+      <menuContribution
+            allPopups="true"
             locationURI="toolbar:org.eclipse.ui.main.toolbar?after=additions">
          <toolbar
                id="org.yocto.sdk.ide.profiles.toolbar">
@@ -284,6 +293,22 @@
       </menuContribution>
       <menuContribution
             allPopups="false"
+            locationURI="menu:org.yocto.sdk.ide.profiles.menu">
+         <dynamic
+               class="org.yocto.sdk.ide.ProjectSpecificContributionItem"
+               id="org.yocto.sdk.ide.dynamic.projectSpecific.targetProfile">
+         </dynamic>
+         <separator
+               name="org.yocto.sdk.ide.profiles.separator"
+               visible="true">
+         </separator>
+         <dynamic
+               class="org.yocto.sdk.ide.TargetProfileContributionItem"
+               id="org.yocto.sdk.ide.dynamic.targetProfile">
+         </dynamic>
+      </menuContribution>
+      <menuContribution
+            allPopups="false"
             locationURI="menu:org.yocto.sdk.ide.profiles.toolbar.dropdown">
          <dynamic
                class="org.yocto.sdk.ide.ProjectSpecificContributionItem"
-- 
1.8.1.4


