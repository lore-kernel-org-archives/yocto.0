Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3CB3DE014F1
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 00:29:29 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 338A440074;
	Tue,  5 Mar 2013 08:47:08 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2013 09:29:19 +0100
Message-Id: <cover.1362414084.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 0/5][eclipse-poky] Improve SDK check error messages
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
X-List-Received-Date: Tue, 05 Mar 2013 08:29:29 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

these are some minor changes to improve the display of the SDK check
error messages on the property and preference pages.

The 'lifetime' of the error messages has been changed slightly. If an
SDK check failed the error message will now only be shown until the
user changes the settings (typing, selecting). If he does so a new
message is shown asking him to revalidate changes by clicking apply
again.

01..02: Refining error messages
03..05: Clear error message when user changes the settings

Best regards,
Timo

Timo Mueller (5):
  plugins/sdk.ide: Rephrase error messages
  plugins/sdk.ide: Add new error message for unselected target arch
  plugins/sdk.ide: Fix setting layout of parent composite
  plugins/sdk.ide: Relay events from child widgets to the parent
    composite
  plugins/sdk.ide: Inform user that the settings have to revalidated

 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java |  1 -
 .../yocto/sdk/ide/YoctoProjectSpecificSetting.java |  1 -
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |  6 ++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  7 ++--
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      | 40 +++++++++++++++++++---
 .../ide/preferences/YoctoSDKPreferencePage.java    | 28 ++++++++++++++-
 .../preferences/YoctoSDKProjectPropertyPage.java   | 32 ++++++++++++++++-
 7 files changed, 104 insertions(+), 11 deletions(-)

-- 
1.7.11.7


