Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f50.google.com (mail-bk0-f50.google.com
	[209.85.214.50]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 6CFFFE011AF
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 08:12:10 -0800 (PST)
Received: by mail-bk0-f50.google.com with SMTP id jg9so373321bkc.37
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 08:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=ABsgq0vt9qITp61xSBZAGYxHxGzN4OtRLM9RsvEKb1Q=;
	b=ClILWGbSXYhirc4FcY3TlIZfbWkBFcyCEntRmJoMTNaz1poTp9bL9eyMfvzPr8LrgA
	EuU1J7hgbdWh/V3sg/Zk8rq10HoVEPmLY17qegjSS5PJVZkY9zy5cYyqdWCdhrZQBlt8
	j9sKaxcuM7a+LAPrVYfZo5nTOpcSiIoTohDGPVC7VSzZZKWG0vO7tSz1gOTJL8P2Ma/0
	5UAXoLM4sQkoXbhlUAh+ZUnbcHiHhIDdYRrMyQ3WtdpVFRYUpZ2bTh2djIsFhY9Xh74s
	E3F+sFqs6z+hCZ7CPlFgO6Hja1ZznThX75ardLOg1Kw9M2rayInHKSJP2If/D/YQW6rg
	vreg==
X-Received: by 10.204.150.82 with SMTP id x18mr11556108bkv.109.1362586328171; 
	Wed, 06 Mar 2013 08:12:08 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id n1sm8513456bkv.14.2013.03.06.08.12.04
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 Mar 2013 08:12:06 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Mar 2013 17:11:51 +0100
Message-Id: <1362586316-9655-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCHv2 0/5] Refactorings in org.yocto.sdk.ide plugin
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
X-List-Received-Date: Wed, 06 Mar 2013 16:12:10 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

Currently the org.yocto.sdk.ide plugin has the YoctoSDKEmptyProjectNature and
the YoctoSDKProjectNature. The latter is strongly coupled with the Autotools nature
since this is by now the only supported build system. It would be nice if it
is possible to introduce Yocto IDE projects, e.g. projects using CMake for building.

This patch series does some refactoring in the org.yocto.sdk.ide plugin.
This allows a simplified addition of further natures and enables the decoupling
between YoctoSDKProjectNature and the Autotools nature.

The natures and the utils get their own packages.
Some methods and members were also moved to suitable classes.

Cheers,
Atanas

Atanas Gegov (5):
  Moved YoctoSDK natures to their own package
  Moved functionality that does not belong to YoctoSDKProjectNature
  Moved utils to their own package
  Moved nature-related utils in own class
  Export the new subpackages of org.yocto.sdk.ide

 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF     |    2 +
 plugins/org.yocto.sdk.ide/plugin.xml               |    4 +-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   12 +-
 .../yocto/sdk/ide/YoctoSDKEmptyProjectNature.java  |   38 -
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  267 -------
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  623 ----------------
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |   39 +
 .../yocto/sdk/ide/natures/YoctoSDKNatureUtils.java |   39 +
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |  111 +++
 .../ide/preferences/YoctoSDKPreferencePage.java    |    4 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |    2 +-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  758 ++++++++++++++++++++
 .../sdk/ide/utils/YoctoSDKUtilsConstants.java      |   18 +
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |    6 +-
 14 files changed, 984 insertions(+), 939 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKEmptyProjectNature.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKProjectNature.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKEmptyProjectNature.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKNatureUtils.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKProjectNature.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtilsConstants.java

-- 
1.7.9.5


