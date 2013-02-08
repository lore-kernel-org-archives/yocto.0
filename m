Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E9A62E004FE
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:28:22 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id E79C440037;
	Fri,  8 Feb 2013 13:47:54 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:28:15 +0100
Message-Id: <cover.1360326418.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v1 0/5][eclipse-poky] Enable target profiles for projects
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
X-List-Received-Date: Fri, 08 Feb 2013 13:28:23 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

this patch set enables projects to make use of the target profiles
proposed in "[RFC v4 00/17][eclipse-poky] Storing yocto settings as
target profiles".

Currently the target profiles are only used to determine the
default settings when creating a new project. Changing the used
profile on an already created projects is not possible, also if the
target profile is changed the projects are not affected.
This patch set enables the use of target profiles in the projects. You
can select the used global profile within the projet properties or use
a project specific configuration. If a global target profile is used
and its values are changed in the eclipse preferences, the projects
using this profile are updated accordingly.

Best regards
Timo

Timo Mueller (5):
  plugins/sdk.ide: Allow storage of yocto settings in project
    preferences
  plugins/sdk.ide: Store profile configuration on project setup
  plugins/sdk.ide: Enable project specific yocto settings
  plugins/sdk.ide: Update projects affected by changes of a target
    profile
  plugins/sdk.ide: Enable the usage of profiles in the project
    properties

 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java |   3 +
 .../yocto/sdk/ide/YoctoProjectSpecificSetting.java |  89 ++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   5 +-
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |   1 +
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       | 149 +++++++++++++++++++++
 .../sdk/ide/preferences/PreferenceConstants.java   |   2 +
 .../ide/preferences/YoctoSDKPreferencePage.java    |  91 ++++++++++++-
 .../preferences/YoctoSDKProjectPropertyPage.java   |  94 ++++++++++---
 8 files changed, 410 insertions(+), 24 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoProjectSpecificSetting.java

-- 
1.7.11.7


