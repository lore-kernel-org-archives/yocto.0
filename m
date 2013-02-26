Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 416EEE004AB
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 05:49:25 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 4E99440050;
	Tue, 26 Feb 2013 14:07:35 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue, 26 Feb 2013 14:49:17 +0100
Message-Id: <cover.1361867924.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 0/5][eclipse-poky] Rename target profiles and handle global changes
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
X-List-Received-Date: Tue, 26 Feb 2013 13:49:26 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

this implements two of Jessica's comments regarding the target
profiles that have been introduced recently.

01..02: Small cleanup work
03:     Changes the name of target profiles to cross development
        profiles
04..05: If a global profile is updated this will also update affected
        projects. Also a warning is shown to the user.

Best regards,
Timo

Timo Mueller (5):
  Added eclipse bin folders to gitignore
  plugins/sdk.ide: Remove exception that is never thrown
  plugin/sdk.ide: Change name of target profiles to cross development
    profiles
  plugin/sdk.ide: Added methods for comparing UIElements
  plugin/sdk.ide: Update projects on profile update

 .gitignore                                         |  1 +
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  | 16 +++---
 .../src/org/yocto/sdk/ide/YoctoUIElement.java      | 58 ++++++++++++++++++++++
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  4 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    | 32 +++++++++---
 5 files changed, 95 insertions(+), 16 deletions(-)
 create mode 100644 .gitignore

-- 
1.7.11.7


