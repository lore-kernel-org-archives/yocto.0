Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-fa0-f53.google.com (mail-fa0-f53.google.com
	[209.85.161.53]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2251CE01503
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 06:09:22 -0800 (PST)
Received: by mail-fa0-f53.google.com with SMTP id w1so16216fad.26
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 06:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=1MNdQZg3YjKoCCigN0TqWZkVdCLiHua/oKKWrKawnNY=;
	b=ZEh5ECwogsilOk2XMawi7R8rBm8x1Xd80Pk5lENliPH0spHfu1Xft8ARX/8/ZkR3vX
	7IRK0hVZw5e9MsdxGTVh/TpNq3uIJTW3PhMnukg+fCFiv6bYnsfK6GGtW0t7CwYeQCfX
	T/Xo9NrcP6vjE9De666AkquqRoPVYgcWgWmOhAO5GYzKUGujZGWTt3tYgXAdrGiu3fDB
	CTn/bmia445D/OCC6pEs3/MkLNxMnhiNoYQZCclTdLWHm3+7A72gvGOfuk7JBZBgJnd6
	OHYbxfU7iYXh5N/NrQ1zRIYMxIYiZBTy9Nb9SareIsCyDv3VJ1qBxsN4S6Whxnf+0oc+
	RwiA==
X-Received: by 10.204.147.136 with SMTP id l8mr13097759bkv.138.1362665360843; 
	Thu, 07 Mar 2013 06:09:20 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm742337bkw.5.2013.03.07.06.09.19
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 06:09:19 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Mar 2013 15:09:06 +0100
Message-Id: <1362665352-8259-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCHv3 0/6] Refactorings in org.yocto.sdk.ide plugin
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
X-List-Received-Date: Thu, 07 Mar 2013 14:09:23 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

Currently the org.yocto.sdk.ide plugin has the YoctoSDKEmptyProjectNature and
the YoctoSDKProjectNature. The latter is strongly coupled with the Autotools nature
since this is by now the only supported build system. It would be nice if it
is possible to introduce other Yocto IDE projects,e.g. projects using CMake
for building.

This patch series does some refactoring in the org.yocto.sdk.ide plugin.
This allows a simplified addition of further natures and enables the decoupling
between YoctoSDKProjectNature and the Autotools nature.

The natures and the utils get their own packages.
Some methods and members were also moved to suitable classes.

Cheers,
Atanas

Atanas Gegov (6):
  Moved YoctoSDK natures to their own package
  Moved functionality that does not belong to YoctoSDKProjectNature
  Moved utils to their own package
  Moved nature-related utils in own class
  Export the new subpackages of org.yocto.sdk.ide
  Performed a whitespaces cleanup

 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF     |    2 +
 plugins/org.yocto.sdk.ide/plugin.xml               |    4 +-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   12 +-
 .../yocto/sdk/ide/YoctoSDKEmptyProjectNature.java  |   38 -
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  267 -------
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  607 ----------------
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |   39 +
 .../yocto/sdk/ide/natures/YoctoSDKNatureUtils.java |   39 +
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |  111 +++
 .../ide/preferences/YoctoSDKPreferencePage.java    |    4 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |    2 +-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  743 ++++++++++++++++++++
 .../sdk/ide/utils/YoctoSDKUtilsConstants.java      |   18 +
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |    6 +-
 14 files changed, 969 insertions(+), 923 deletions(-)
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


