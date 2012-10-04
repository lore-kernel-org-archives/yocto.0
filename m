Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31A35E0049F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 07:54:22 -0700 (PDT)
Received: by mail-bk0-f48.google.com with SMTP id ik5so358914bkc.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 07:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=/XKUF+hUI4RJ1rzw10qYSMGFzmgeLUJTYLuCRNMW53U=;
	b=a+g4Uglp7eFfsZsAEgCqKVamGepZ/jrYsbZBC+qRhNOY7qJnGvFMJ1NO+tUG78FBBW
	7xXny0YeiDc7d7ivUrGIMEQcVafmsr5K4VzujZep/3+NdO5G6zZlgNnZaauHxHxViR0o
	JxLqZRn3VaVDBmi5E4puwVGxRnIdUyTmBsVG4zZXW18bZegA6yqYYDVjZI2dkNyBzF7+
	6WQ2MuP3jSxx+MXkwZui+wyRgJh+vAfC7xu00b9b7mJK6c5SvMKyXUlQ+UzzSq2FBrVi
	pdYH5UueBm6ai8FSrsTFsbtSkSsc1JoZ8pV16yWTA4Mzyv+8OiW1IBIOFCx1XJRtB7HQ
	TOdw==
Received: by 10.204.5.151 with SMTP id 23mr1816698bkv.3.1349362458692;
	Thu, 04 Oct 2012 07:54:18 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id 9sm5932224bkq.13.2012.10.04.07.54.17
	(version=SSLv3 cipher=OTHER); Thu, 04 Oct 2012 07:54:18 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Oct 2012 16:54:03 +0200
Message-Id: <cover.1349362044.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
Subject: [RFCv2 0/3] [eclipse-poky] Cheat sheet for hello world project
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
X-List-Received-Date: Thu, 04 Oct 2012 14:54:22 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi Jessica,

Please excuse my late reaction, but I was on vacation in August and had some high-priority organisational issues at work in Septmeber. I improved the cheat sheet accroding to your feedback. I used conditional subitems to make it both fit for the "Hello World C++ Autotools Project" and the "Hello World ANSI C Project". The user can now choose its preferred programming language and the cheat sheet adapts itself accordingly. I also took into account that the SDK is now relocatable. 

The patches apply both on the "master" and on the "master-indigo" branches.

Cheers,
Atanas

Atanas Gegov (3):
  plugins/sdk.ide.doc.user: Added plugin for ide specific user help
  feature/sdk: Added user doc plugin
  plugins/sdk.ide.doc.user: Added cheat sheet for hello world project

 features/org.yocto.sdk/feature.xml                 |    8 +
 plugins/org.yocto.sdk.ide.doc.user/.classpath      |    6 +
 plugins/org.yocto.sdk.ide.doc.user/.project        |   28 +++
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +
 .../META-INF/MANIFEST.MF                           |    8 +
 .../OSGI-INF/l10n/bundle.properties                |    7 +
 .../org.yocto.sdk.ide.doc.user/build.properties    |    6 +
 .../cheatsheets/createNewHelloWorldProject.xml     |  222 ++++++++++++++++++++
 plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |   13 ++
 9 files changed, 306 insertions(+), 0 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.classpath
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.project
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclipse.jdt.core.prefs
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle.properties
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/build.properties
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNewHelloWorldProject.xml
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/plugin.xml

-- 
1.7.5.4


