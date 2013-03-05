Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 55594E014DE
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 08:52:02 -0800 (PST)
Received: by mail-wg0-f45.google.com with SMTP id dq12so6146786wgb.12
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 08:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=aQ/iaO85r2HoQgs8ZOWQnn82cZkQjPh2kkY/2SBjJT4=;
	b=dboZRXIQRZgqyngk8Ycn8U4aaFCJhep0Wj6nP7qlKnfc5iJlz7wr8n6GhYH2cYt2s4
	69htcirrBg9k/cCoxB31l6EL/WZnh1hV8ksMoCpMcYGNGDAo8WF/2I1XwmD3KgZFySwq
	V82Y/m4i9rEJqU1A8B9k/EmHW2C9DEExtrFe8CR8AW+8aDliaDut9Dq4gCVlE6na76PT
	sYHYDrVuEOLZ+DDNAF6qBD2ih7V7K5uka0Hfht2cQGQvXadDgz2/PnCrda3HUGu340zi
	e0rIsN3aL0sPqaT5NACf6jlC1hvobj/5NlcnSYI2aGJc7DjsYdpBI5xDZuL+m3UrEhDj
	0wLA==
X-Received: by 10.205.120.15 with SMTP id fw15mr9678544bkc.108.1362502319733; 
	Tue, 05 Mar 2013 08:51:59 -0800 (PST)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id k4sm7357801bkv.18.2013.03.05.08.51.58
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 05 Mar 2013 08:51:58 -0800 (PST)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2013 17:51:44 +0100
Message-Id: <1362502308-7622-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCH 0/4] Refactorings in org.yocto.sdk.ide plugin
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
X-List-Received-Date: Tue, 05 Mar 2013 16:52:02 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

This patch series does some refactoring in the org.yocto.sdk.ide plugin.
The natures and the utils get their own packages. Some methods and members were 
also moved to suitable classes.

Cheers,
Atanas

Atanas Gegov (4):
  Moved YoctoSDK natures to their own package
  Moved functionality that does not belong to YoctoSDKProjectNature
  Moved utils to their own package
  Moved nature-related utils in own class

 plugins/org.yocto.sdk.ide/plugin.xml               |    4 +-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   12 +-
 .../yocto/sdk/ide/YoctoSDKEmptyProjectNature.java  |   38 -
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  267 -------
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  623 ----------------
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |   39 +
 .../yocto/sdk/ide/natures/YoctoSDKNatureUtils.java |   28 +
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |  111 +++
 .../ide/preferences/YoctoSDKPreferencePage.java    |    4 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |    2 +-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  758 ++++++++++++++++++++
 .../sdk/ide/utils/YoctoSDKUtilsConstants.java      |    8 +
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |    6 +-
 13 files changed, 961 insertions(+), 939 deletions(-)
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


