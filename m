Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D019E0155D
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 08:33:49 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id E0663402D6;
	Tue, 25 Jun 2013 16:37:08 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue, 25 Jun 2013 17:33:45 +0200
Message-Id: <cc65d2199349f7d98c4cbe2c7e5aaaede68fd3dc.1372170704.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <3fbc6a267e19288877aeef93675ec0628d139c3d.1372170704.git.timo.mueller@bmw-carit.de>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
	<8919d96da8a2ff55ff0bea99af6ba4f931e79300.1372170704.git.timo.mueller@bmw-carit.de>
	<773e9adacf475c19c2ff25d8812b54a417415dc6.1372170704.git.timo.mueller@bmw-carit.de>
	<38f1a1a86e0d37470ef7779e0be4bf04f941ce10.1372170704.git.timo.mueller@bmw-carit.de>
	<3136367127ec958a69d3f812bf6f6cffb3d23b42.1372170704.git.timo.mueller@bmw-carit.de>
	<9301cceee7ee98f3d4b306ffc7e4df37de2f32c5.1372170704.git.timo.mueller@bmw-carit.de>
	<3fbc6a267e19288877aeef93675ec0628d139c3d.1372170704.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1372170704.git.timo.mueller@bmw-carit.de>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv3 7/8] plugins/sdk.ide: Add profile switch menu to the project menu
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
X-List-Received-Date: Tue, 25 Jun 2013 15:33:49 -0000

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


