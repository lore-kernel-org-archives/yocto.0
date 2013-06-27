Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4011DE01560
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 01:24:07 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 8605F402D6;
	Thu, 27 Jun 2013 09:27:18 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 27 Jun 2013 10:24:04 +0200
Message-Id: <df35f48d8811e46e4acf63a0eac52ca0ad5d6114.1372314464.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1c5c8bfee45d95311dbe26b1b20e4f452dafcdff.1372314464.git.timo.mueller@bmw-carit.de>
References: <cover.1372314464.git.timo.mueller@bmw-carit.de>
	<1bcad6582a7e2d4e865215207111c53a7d000f3b.1372314464.git.timo.mueller@bmw-carit.de>
	<e3e663e2bbd7e990891913d9442dbd7afcda5c5d.1372314464.git.timo.mueller@bmw-carit.de>
	<43b46ea27a933e068ca04f0c75175c4b4a522668.1372314464.git.timo.mueller@bmw-carit.de>
	<d4cd4e06d77498346972bfc7bbe34d4af9c77294.1372314464.git.timo.mueller@bmw-carit.de>
	<d4efa85346c431d9b40ff5907dfcf1552f6a3ec2.1372314464.git.timo.mueller@bmw-carit.de>
	<1c5c8bfee45d95311dbe26b1b20e4f452dafcdff.1372314464.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1372314464.git.timo.mueller@bmw-carit.de>
References: <cover.1372314464.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv4 7/7] plugins/sdk.ide: Add profile switch menu to the project menu
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
X-List-Received-Date: Thu, 27 Jun 2013 08:24:07 -0000

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


