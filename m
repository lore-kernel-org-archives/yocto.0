Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 2CAAEE00738
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2013 06:37:19 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 2AC0740073;
	Wed, 27 Feb 2013 14:55:25 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Wed, 27 Feb 2013 15:37:11 +0100
Message-Id: <cover.1361954280.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 0/5][eclipse-poky] Refactor handling of SDK check errors
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
X-List-Received-Date: Wed, 27 Feb 2013 14:37:19 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

I tried to display the messages resulting from validating the
YoctoUISettings in the message area of the properties/preference pages
instead of showing a dialog. This led to some refactoring of the
validation functionality and also the messages.

If for example the user entered a SDK toolchain directory that doesn't
exist in the global preferences a dialog will show up showing the
error and telling him how he can do "IDE-wide settings". As he is
currently trying to do "IDE-wide settings" this advice is not really
necessary and the dialog can be really annoying.

I split up the messages into a one line error message and an
advice. This message can be shown in the page's message area instead
of opening a dialog with every configuration error. The advice can
still be used when we want to show a dialog to help the user,
e.g. when creating a new project.

On a side note I reactivated the YoctoSDKChecker class and moved all
the validation code from the utils, getting rid of some duplicated and
inconsistent code.

Best regards,
Timo

PS: This patch set is based on "plugins/sdk.ide: Remove profile edit
buttons from property page"

Timo Mueller (5):
  plugins/sdk.ide: Move SDK check functionality to separate class
  plugins/sdk.ide: Refactored the construction of mesages with
    SDKCheckResults
  plugins/sdk.ide: Show SDK check errors in message area
  plugins/sdk.ide: Removed validation from setCurrentInput
  plugins/sdk.ide: Use standard error dialog to show SDK check errors

 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     | 372 +++++++++++----------
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  42 ++-
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |   9 +-
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       | 255 --------------
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  47 +--
 .../ide/preferences/YoctoSDKPreferencePage.java    |  84 +++--
 .../preferences/YoctoSDKProjectPropertyPage.java   |  87 +++--
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  18 +-
 8 files changed, 344 insertions(+), 570 deletions(-)

-- 
1.7.11.7


