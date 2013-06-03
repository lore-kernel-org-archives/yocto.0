Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f54.google.com (mail-bk0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38144E004CF
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 01:30:07 -0700 (PDT)
Received: by mail-bk0-f54.google.com with SMTP id it19so213679bkc.41
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 01:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=qWm0FHIgtl2oGFUfSBQlz55KSZaOSg57NVsl+lohKOM=;
	b=AXZC4WeJJ2jxjRvy9RI6ZzLjRyTy6LF5eU7YI29MDKAJiF2muSqq5kRwusM4c6RLC3
	z7ev8RWeMnYuLu8pScZy/9gg9L/B3N3v++Axzm2IlJKTJxMhTtWdbo/ycx5qAiCo1xbG
	Q+LKl45D3L2NyFhvNfWAmch7q8Lj0qMi9c/cb8+Zc7OGKDM+T1FgJs1JuDtlujSv2T3u
	QJ/f/mcH154Ou0sI098ev+prrVR+56CQZURzYtMQISYU9S8v4m2sq4DPInPudH8ZXABk
	aa1odzlg0pV2FTsLs3ZGzLEKtdk/2xypKl1yfTF+SOSMU/OnU2OMQZS6Y0dhI//vAJuf
	ggAQ==
X-Received: by 10.205.118.203 with SMTP id fr11mr6234255bkc.103.1370248205913; 
	Mon, 03 Jun 2013 01:30:05 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	jm15sm19449666bkb.13.2013.06.03.01.30.04 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Jun 2013 01:30:04 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Jun 2013 10:29:50 +0200
Message-Id: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCH 0/7] Fixed bug in creating remote debug launcher
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
X-List-Received-Date: Mon, 03 Jun 2013 08:30:07 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

this patch series fixes a bug where the remote debug launcher is not correctly
created because not all Yocto natures are added to the project at the point
where the method is being called. The path to the binary was in some cases (by
new CMake project) not correctly set. 

This fix required some code refactoring. Some further refactoring was also done
in order to reduce the complexity of the very large YoctoSDKUtils class.

Cheers,
Atanas

P.S: This patch series apply on the current master "Add remote.utils plugin to
sdk features" (ff4ccb4d65243f2a28eb89c72e9b425702b6c3aa).

Atanas Gegov (7):
  plugins/sdk.ide: Extracted a private method
  plugins/sdk.ide: Extracted launchers creation
  plugins/sdk.ide: Decoupled launcher creation from environment setting
  plugins/sdk.ide: Moved a locally used method
  plugins/sdk.ide: Changed access level modifiers for some methods
  plugins/sdk.ide: Removed unused methods
  plugins/sdk.ide: Moved more locally used methods

 .../managedbuilder/job/ExecuteConfigureJob.java    |   29 +-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   26 +-
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   21 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |   25 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |  119 +++++-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  388 +++++---------------
 .../sdk/ide/utils/YoctoSDKUtilsConstants.java      |    2 +-
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |    2 +
 8 files changed, 306 insertions(+), 306 deletions(-)

-- 
1.7.9.5


