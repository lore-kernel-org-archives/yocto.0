Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80790E01566
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 06:30:36 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id E054B402D6;
	Thu, 13 Jun 2013 14:34:45 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 13 Jun 2013 15:30:28 +0200
Message-Id: <b28548e17efb788dfd70d6f1ded0615ff5122724.1371123125.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <c7b3c3b51dfe1b1597cc41c44ac34ab57b632c02.1371123125.git.timo.mueller@bmw-carit.de>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
	<53ccaeae06f287489ab1b46e5ebc217149dbcd62.1371123125.git.timo.mueller@bmw-carit.de>
	<d2fcb89f435332b6958583ccd22d2cbaa9a6b05c.1371123125.git.timo.mueller@bmw-carit.de>
	<4b8028eacf1dde7280092810620f4eab86383530.1371123125.git.timo.mueller@bmw-carit.de>
	<7e8f36f370b0c2904b71754d14d7d48b6fb970c5.1371123125.git.timo.mueller@bmw-carit.de>
	<1273d2f43146b4358c82d9ca8b8ee886ce7a5301.1371123125.git.timo.mueller@bmw-carit.de>
	<c7b3c3b51dfe1b1597cc41c44ac34ab57b632c02.1371123125.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371123125.git.timo.mueller@bmw-carit.de>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 7/7] plugins/sdk.ide: Add profile switch menu to the project menu
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
X-List-Received-Date: Thu, 13 Jun 2013 13:30:36 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If a project with a yocto nature is selected, the project menu will
show a target profile menu which allows the user to switch the used
target profile of the project.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 plugins/org.yocto.sdk.ide/plugin.xml | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 9ff8473..c766ba2 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -247,6 +247,15 @@
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
@@ -280,6 +289,27 @@
       </menuContribution>
       <menuContribution
             allPopups="false"
+            locationURI="menu:org.yocto.sdk.ide.profiles.menu">
+         <command
+               commandId="org.yocto.sdk.ide.targetProfile.switch"
+               label="%command.targetProfileSwitch.projectSpeficic.label"
+               style="radio">
+            <parameter
+                  name="org.eclipse.ui.commands.radioStateParameter"
+                  value="project-specific">
+            </parameter>
+         </command>
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
          <command
                commandId="org.yocto.sdk.ide.targetProfile.switch"
-- 
1.8.1.4


