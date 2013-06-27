Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64874E01554
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 01:24:05 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 94CCE40059;
	Thu, 27 Jun 2013 09:27:17 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 27 Jun 2013 10:23:57 +0200
Message-Id: <cover.1372314464.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv4 0/7][eclipse-poky] Add target profile quick switch
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
X-List-Received-Date: Thu, 27 Jun 2013 08:24:06 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

Changes in v4:
- Rebase of patch series

Changes in v3:
- Only grey out project specific profile if not configured.
- Fix Bug where multiple menu item could be selected at the same time

Changes in v2:
Handle error when project specific profile is not configure more
gracefully. Instead of showing an error message the button is now
greyed out.

From original cover letter
<snip>
if a user wants to change the used target profile of a project he
currently has to open the project preferences. This can be tedious if
he has to switch the profile often.

This is a small addition which allows the user to quickly switch the
used target profile of a project. Instead of having to open the
project preferences the user can select the project in the navigator
and then choose the desired target profile from a drop-down menu in
the toolbar or from the project menu.
</snip>

01: Small i18n fix
02..04: Refactoring the project specific utils
05..06: Introduce the target profile toolbar switch
07: Adds the target profile switch to the project menu

Best regards,
Timo

Timo Mueller (7):
  plugins/sdk.ide: Use an internationalized dialog title
  plugins/sdk.ide: Extract project specific util methods
  plugins/sdk.ide: Move project specific util methods
  plugins/sdk.ide: Remove project context from method names
  plugins/sdk.ide: Add command to switch the target profile
  plugins/sdk.ide: Add profile switch menu to the toolbar
  plugins/sdk.ide: Add profile switch menu to the project menu

 .../OSGI-INF/l10n/bundle.properties                |   4 +
 plugins/org.yocto.sdk.ide/plugin.xml               | 100 ++++++++-
 .../sdk/ide/ProjectSpecificContributionItem.java   |  69 ++++++
 .../sdk/ide/TargetProfileContributionItem.java     | 126 +++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   4 +
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   3 +-
 .../sdk/ide/actions/ProfileSwitchHandler.java      | 134 ++++++++++++
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   3 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |  11 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   | 128 +----------
 .../sdk/ide/utils/ProjectPreferenceUtils.java      | 240 +++++++++++++++++++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java | 118 ----------
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |   3 +-
 13 files changed, 698 insertions(+), 245 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/ProjectPreferenceUtils.java

-- 
1.8.1.4


