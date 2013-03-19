Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB9C4E006AD
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:09 -0700 (PDT)
Received: by mail-bk0-f53.google.com with SMTP id j10so308752bkw.26
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 09:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=HCFFLEbiO5EhkGPhII9XWoLcID13ONdKdPBT0H3awKA=;
	b=h4LL5FV31ypCIGkKi6q+2tBVxny6flGSCqk2BWsvQ4O9/r2o9fBaosbeGaeixQEGW4
	+ZMCBkHWMvaL03tzMDOQoVDlXNQPcZRoAOusZKO2KE1uqV21XCM79WvYKIcgxs0SHYVl
	KmVP/5EjpFGg0NcNQrCrgyXQUA+IV3yo35Xi3FWztsdvhgnsm9FI6uYgsxD6KEElusVA
	8PJj0y6AKp0dIyXp0yvkkZHI7MpCl3F7/hxH6nhw0+tKTP6l7fvHkn/AirHQzazhgkzE
	R9tyzZFVp9VNzGjeVSD6Fl/wbbC5WA+C7EI/GDr+TUNu2k0Jr8kbBQYITPylKSZ53YIp
	RWiw==
X-Received: by 10.204.244.135 with SMTP id lq7mr9074757bkb.138.1363708928360; 
	Tue, 19 Mar 2013 09:02:08 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id v2sm6616816bkw.5.2013.03.19.09.02.06
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 19 Mar 2013 09:02:07 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Mar 2013 17:01:44 +0100
Message-Id: <1363708911-13002-1-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [eclipse-poky][PATCH 0/7] Introducing a YoctoSDKAutotoolsProjectNature
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
X-List-Received-Date: Tue, 19 Mar 2013 16:02:10 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

this patch series does a refactoring in the project natures. It does not add new
functionality. In detail, this means the following:

Initially, the org.yocto.sdk.ide plugin defined 2 natures:
1/ YoctoSDKProjectNature (every template project has this nature,
strongly coupled with Autotools)
2/ YoctoSDKEmptyProjectNature (additional nature for empty projects)

With this change there are now 3 natures available:
1/ YoctoSDKProjectNature (the "basic" nature,
every Yocto IDE project has this nature)
2/ YoctoSDKAutotoolsProjectNature (requires YoctoSDKProjectNature,
strongly coupled with Autotools, all existing template projects get it)
3/ YoctoSDKEmptyProjectNature (additional nature for empty projects,
requires YoctoSDKProjectNature)

Now it is possible to introduce new type of Yocto projects that
for example use CMake instead of Autotools. These projects still
have the YoctoSDKProjectNature which provides the right environment,
the cross-development profiles, etc.

Cheers,
Atanas

P.S: This patch series apply on the current master "Remove clutter project templates"
(5e20d3c32072ddd91dceb8b2b793ef13f25b915e). However, it should be updated if the
patch currently discussed on the mailing list "[yocto][PATCH v2][eclipse-poky][master]
Add more comprehensive error message for invalid project name" is applied before this
patch series.

Atanas Gegov (7):
  plugins/sdk.ide: Prepared templates for autotools nature
  plugins/sdk.ide: Added a new YoctoSDKAutotoolsProjectNature
  plugins/sdk.ide: Added a check method for the global target profie
  plugins/sdk.ide: Switch to YoctoSDKAutotoolsProjectNature
  plugins/sdk.ide: Renamed the NewYoctoProjectPostProcess
  plugins/sdk.ide: Improved usage of strings in class
  plugins/sdk.ide: Extracted error message to YoctoSDKMessages

 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   28 ++++++-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   13 +++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |    3 +-
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   86 ++++++++++++++++++++
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |   70 ----------------
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    6 +-
 .../NewYoctoAutotoolsProjectPostProcess.java       |   81 ++++++++++++++++++
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |   84 +++++++++++--------
 .../sdk/ide/wizard/NewYoctoProjectPostProcess.java |   73 -----------------
 .../projecttemplates/EmptyCPPProject/template.xml  |    1 +
 .../projecttemplates/EmptyCProject/template.xml    |    1 +
 .../HelloWorldCAutotoolsProject/template.xml       |    3 +-
 .../HelloWorldCGTKProject/template.xml             |    3 +-
 .../HelloWorldCPPAutotoolsProject/template.xml     |    3 +-
 15 files changed, 268 insertions(+), 188 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKAutotoolsProjectNature.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoAutotoolsProjectPostProcess.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/NewYoctoProjectPostProcess.java

-- 
1.7.9.5


