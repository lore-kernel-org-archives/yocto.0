Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 510ECE013F9
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 01:22:26 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.57])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 1090A4006A;
	Tue,  4 Dec 2012 09:46:55 +0100 (CET)
From: mail@timomueller.eu
To: yocto@yoctoproject.org
Date: Tue,  4 Dec 2012 10:22:15 +0100
Message-Id: <cover.1354608536.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.7.6
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 0/8][eclipse-poky] Enable setting yocto settings in the project properties dialog
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

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

changing the yocto settings of a project is currently achieved through
a separate dialog. This dialog can be opened via the eclipse menu bar
(project -> change yocto project settings). Typically all project
related settings in eclipse are located in the project properties
dialog.

This patch series adds yocto settings to the project properties
dialog. It also removes the separate dialog. Instead the yocto section
in the project properties is opened if "change yocto project settings"
is selected from the menu bar.

Best regards,
	 Atanas and Timo

Atanas Gegov (4):
  plugins/sdk.ide: Allow using a YoctoUIElement to set the input of a
    yocto settings widget
  plugins/sdk.ide: Create a default YoctoUIElement from the preference
    store
  plugins/sdk.ide: Use new setCurrentInput method to set defaults
  plugins/sdk.ide: Remove fControl array that is no longer needed

Timo Mueller (4):
  plugins/sdk.ide: Added empty yocto preference page to project
    properties
  plugins/sdk.ide: Move modification of yocto project settings to utils
    class
  plugins/sdk.ide: Show yocto ui setting widget in project property
    page
  plugins/sdk.ide: Open project properties instead of standalone yocto
    settings dialog

 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   14 +++
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |   67 ++++++++++++
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   54 +++++++---
 .../yocto/sdk/ide/actions/ReconfigYoctoAction.java |   64 ++---------
 .../yocto/sdk/ide/actions/SDKLocationDialog.java   |   89 ----------------
 .../ide/preferences/YoctoSDKPreferencePage.java    |   51 +---------
 .../preferences/YoctoSDKProjectPropertyPage.java   |  111 ++++++++++++++++++++
 8 files changed, 247 insertions(+), 204 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/SDKLocationDialog.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/preferences/YoctoSDKProjectPropertyPage.java

-- 
1.7.7.6


