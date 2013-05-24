Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25992E01489
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:32 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id b15so2596222eae.16
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 05:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=UHTFRPXXBh5zqdgH5W3S7RgmAQoFFu9robybb/1DuPU=;
	b=NofE97RZfJwRKC3By2MIk7o/FGnoFbLRB9sy9LmbELSjel+N0JZjkm8QyHDAccR745
	oayqna75Q062rq04gJCOMKh1jeVyMZj6pRgLaLD/luqiHQoYflM7LhJMilOENkudGq2N
	8RPnXqwCSKqdW4B088FSaIYM8kHkUgM5svbXLoTFCINm2d34AgZcEcqYw9FHZGy4syD6
	+VBp0wlEjIyDmta8pvFWH+2rLlDvpGXnll8CJ9QUB+UfjSLalDZRYEn4Uo2HcMoOQMr3
	nJnCHdVWyFJut4URiNWagVA/jqDYHhk2/2YhwxUr/6+F//OrHoR7FYs6hftcOjcO02a8
	3poA==
X-Received: by 10.15.82.201 with SMTP id a49mr42581933eez.44.1369397011918;
	Fri, 24 May 2013 05:03:31 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id y10sm23198135eev.3.2013.05.24.05.03.30
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 24 May 2013 05:03:30 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 24 May 2013 14:03:18 +0200
Message-Id: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCH 0/7] Introducing a YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Fri, 24 May 2013 12:03:33 -0000

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

P.S: This patch series apply on the current master "Fix the issue
introduced by code refactoring since DialogHandler inherit IHandler,
execute expect to return an object"
(dd7ab69282f7c9cc18ff06fffaa9681e4b297cfa).


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


