Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46523E0027D
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 08:55:19 -0700 (PDT)
Received: by weyu3 with SMTP id u3so5988892wey.35
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 08:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=3v3koVXdooEh5WtSHZi1awC+QJ2UM1cSHWEeqPQ7kks=;
	b=b60Rn9TO3PpZ9JapMnKpI3xScvuZRQ/oYmuJ8iMOivTn/toULQseLLgXcxEN/aps7I
	gKSGKXm6GPVn8VYNd+xCLvh8PLkJJuVMy4lWngsiEzYqQU45Hg+/3BPgXWgF87VM2Wbw
	C52xHGBQQPd8D0CoIdodgUjAj+iaWJJCX7Suhj89dh4131SabGMGPfhWujY0NBUtUBhj
	085K3pw9tDsOrUBs3IFeLEnN4uVcFjDtcoNJKqsiEyoOeGzdKgQ+oFApu+b4J4CHVzki
	PvOVKjtUIhVd8uo7kHkH7TKt0lb7eQgklJ5m31GnHJS1eOHWAoZMFp7rOd/4NelCywjJ
	zpPw==
Received: by 10.216.242.204 with SMTP id i54mr2770250wer.99.1343145317769;
	Tue, 24 Jul 2012 08:55:17 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPS id 49sm256418eej.10.2012.07.24.08.55.16
	(version=SSLv3 cipher=OTHER); Tue, 24 Jul 2012 08:55:17 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 24 Jul 2012 17:53:49 +0200
Message-Id: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
X-Mailer: git-send-email 1.7.5.4
Subject: [RFC 0/3] Cheat sheet for hello world project
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
X-List-Received-Date: Tue, 24 Jul 2012 15:55:19 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

currently the adt manual contains a description of how to create a new
project (chapter 4.2). Also some videos are explaining how to achieve
this. Eclipse provides a nice way of interactive tutorials with the
cheat sheets and I thought it would be nice to have this kind of
user help. So I have created a cheat sheet for the 'Hello
World C++ Autotools Project' project delivered with the yocto ide. It
guides the user through the process of creating and building the hello
world project. Some operations such as changing to the C/C++
perspective can even be automated helping the user to get started with
the project.

Cheers, Atanas

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
 .../cheatsheets/createNewHelloWorldProject.xml     |  187 ++++++++++++++++++++
 plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |   13 ++
 9 files changed, 271 insertions(+), 0 deletions(-)
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


