Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f47.google.com (mail-bk0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 508D3E014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:43 -0700 (PDT)
Received: by mail-bk0-f47.google.com with SMTP id ji1so1167612bkc.20
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=lwptRCuZC8ZiJgw7hHYftFHjc2P0o0Li4oUdQKOzXfc=;
	b=fVveXLgLJTnr9C5+Jlof41YlbNwRK93Z5LLdr8A3MxSnxglR9QjxqMSc06Y6V9QRS2
	kISaUFhAydZDEDQe/o1vGU6WzZmTV/N2VUJkLPC1aFeKtUHDsZeBCPvH5DtNsG32X0TJ
	eUkyzrokZPIngAhOO5LgvLv0aAD+H8TeU9vQ4L0F1pgci+GJ7QsYFtuLOgwuZdFwYQs4
	reYt6Rv1IfCT1BZT/HgIRvVQu9y5zz8zHEcoCmSedEAJptYy3aspVyGw5E8TDrxyZ3yA
	aU9SePWDoAC2+Pmk/zNCpOcEgnr2nFhQGxxgJm3jNDWqFaaQK0CO4j3Dnwq0GJvzBX7U
	6+tg==
X-Received: by 10.204.80.200 with SMTP id u8mr3922853bkk.107.1366893162403;
	Thu, 25 Apr 2013 05:32:42 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id cv9sm1541605bkb.5.2013.04.25.05.32.39
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 05:32:40 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 14:32:26 +0200
Message-Id: <1366893153-9880-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][RFCv2 0/7] Introducing a YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Thu, 25 Apr 2013 12:32:43 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

This patch series introduces a YoctoSDKCMakeProjectNature as a new
nature for CMake-based Yocto Projects in the IDE. It requires the
basic YoctoSDKProjectNature and is an alternative to the
YoctoSDKAutotoolsProjectNature.

This does not affect the currently existing Autotools template
projects.

Upcoming patch series will add the last missing parts for having CMake
projects in the IDE: a ManagedBuilder for CMake (CMake toolchain for
building in Eclipse) and some template projects.

Cheers, Atanas

P.S: This patch series apply on the current master "Display progress
bar while running systemtap script"
(0006f3194e0050bb69887cece970df7a820b8c30).

Atanas Gegov (7):
  plugins/sdk.ide: Prepared templates for CMake nature
  plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
  plugins/sdk.ide: Enable the creation of CMake projects
  plugins/sdk.ide: Update CMake projects on Yocto settings change
  plugins/sdk.ide: Renamed template process
  plugins/sdk.ide: Fixed whitespace issues
  plugins/sdk.ide: Extracted member variables

 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   25 +-
 .../ide/natures/YoctoSDKCMakeProjectNature.java    |   92 +++++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    7 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  245 ------------------
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |  267 ++++++++++++++++++++
 .../EmptyCAutotoolsProject/template.xml            |    1 +
 .../EmptyCPPAutotoolsProject/template.xml          |    1 +
 .../HelloWorldCAutotoolsProject/template.xml       |    1 +
 .../HelloWorldCGTKAutotoolsProject/template.xml    |    1 +
 .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
 11 files changed, 395 insertions(+), 247 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java

-- 
1.7.9.5


