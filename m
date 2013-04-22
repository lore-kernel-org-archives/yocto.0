Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f45.google.com (mail-bk0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE010E014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:06:12 -0700 (PDT)
Received: by mail-bk0-f45.google.com with SMTP id j4so629514bkw.32
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 05:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=xeYFyfbPnY6GeB5gPh73/8pUj4jYeJmXDw3Sj279xqc=;
	b=olYeKSqP4ez4+WUV0yz2LIliwPCwu5Q1MfxLuxxJTNNMlUKYskiupzEKeQpSGFjBad
	jsJmSqEtCO5uM/9PyquYbERxiInnakDK3aw0J4Rvle63NRj4av1CjPycQpYPoYfbEIkt
	jeeC/JjMp8sQz2EoBFwLKKf6jGo2RhkoXS20+/LVyW7LLNSqA3ndFR+6Y40Tmyhf1Gz+
	ID21al36zHnhWvgqOWhsRaaKs6b3q5pVoD+/q8vP3qhJh0oNv/xJ1NB2itSU0YQxFQNm
	AAHyjKZK+7JUTufDx9c1HRXG+2ceH1WY2DIccSAdw9J3ImgJEw3MaxNXLWMYUKXxPe4X
	h9Jw==
X-Received: by 10.205.99.130 with SMTP id cs2mr9894317bkc.118.1366632371126;
	Mon, 22 Apr 2013 05:06:11 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id cv9sm6751434bkb.5.2013.04.22.05.06.09
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 22 Apr 2013 05:06:09 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Apr 2013 14:05:57 +0200
Message-Id: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][RFC 0/6] Introducing a YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Mon, 22 Apr 2013 12:06:13 -0000

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
building in Eclipse) and some template projects. However, I already
wanted to post this series for a review and make sure that the
concept is acceptable, so that we can build on top of it.

Cheers, Atanas

P.S: This patch series apply on the current master "plugins/sdk.ide:
Extracted error message to YoctoSDKMessages"
(7142c5fc82a41a9d5f86c48b289db0ef44f5a897).

Atanas Gegov (6):
  plugins/sdk.ide: Prepared templates for CMake nature
  plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
  plugins/sdk.ide: Enable the creation of CMake projects
  plugins/sdk.ide: Update CMake projects on Yocto settings change
  plugins/sdk.ide: Renamed template process
  plugins/sdk.ide: Fixed whitespace issues

 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   25 +-
 .../ide/natures/YoctoSDKCMakeProjectNature.java    |   92 +++++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    7 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  245 -------------------
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |  256 ++++++++++++++++++++
 .../EmptyCAutotoolsProject/template.xml            |    1 +
 .../EmptyCPPAutotoolsProject/template.xml          |    1 +
 .../HelloWorldCAutotoolsProject/template.xml       |    1 +
 .../HelloWorldCGTKAutotoolsProject/template.xml    |    1 +
 .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
 11 files changed, 384 insertions(+), 247 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjectNature.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoCProjectTemplate.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectTemplateProcess.java

-- 
1.7.9.5


