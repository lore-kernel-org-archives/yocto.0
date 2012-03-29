Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA9CFE0059A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:13:49 -0700 (PDT)
Received: by eeke49 with SMTP id e49so951046eek.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 02:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=BQLV16Pt/4LEgeXixeW9FAzRcbK4dXCi9XwdHj8M67c=;
	b=sp6BOM8wtZrLJmMmEaPLPvvK5YmeIfkucx7Dy+rekdRaPnWA1e0BaEnsHALZKU2mcz
	OgTfAIli5IjxiCBQ0eqTuoKVNje2wtTpbNtA1iHEc9RhUD50SmfHVBRrmRcKlzkutSJs
	SjSnCDvCaldPIdc7SI0siUqkltpwJwJy15q7ZIQVYOlIn52ttQvPu3b4q4KwiWVIoHc0
	7mBSidVumge3z49ESotWjFaT2aRrWCxXAfovVfmtxQNQviXcQCJ2eoF84m4GN3S9zgb3
	05s5xlkezgG9KMBQpQpx06FDiXWes/U1eTN+zduJEh9igm7ypzEMCeQlfDtSd1b6KQdA
	OFxA==
Received: by 10.14.28.76 with SMTP id f52mr4630482eea.117.1333012428338;
	Thu, 29 Mar 2012 02:13:48 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id q45sm19407621eem.7.2012.03.29.02.13.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 02:13:47 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Mar 2012 11:13:43 +0200
Message-Id: <cover.1333012363.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Subject: [opkg-utils][PATCH 0/5] Import patches from oe-core
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
X-List-Received-Date: Thu, 29 Mar 2012 09:13:50 -0000

The following changes since commit 002d29bc605d7c2d02e4cf20a43c5277c15f5597:

  [opkg-utils] fix install fail problem  Thanks for khorben's patch :-)  https://docs.openmoko.org/trac/attachment/ticket/2072/patch-opkg-utils_Makefile_install_path.diff (2008-11-03 03:59:59 +0000)

are available in the git repository at:
  git://github.com/shr-project/opkg-utils jansa/pull
  https://github.com/shr-project/opkg-utils/tree/jansa/pull

Christopher Larson (1):
  Use python via the PATH, rather than hardcoding /usr/bin/python

Enrico Scholz (1):
  opkg-make-index: convert mtime to int before comparing it

Khem Raj (1):
  opkg.py: Add knowledge about License field in ipk headers

Richard Purdie (1):
  opkg-make-index: don't error out when some package disappears

Scott Anderson (1):
  arfile.py: handle six digit UIDs

 arfile.py         |    7 ++++++-
 opkg-list-fields  |    2 +-
 opkg-make-index   |   29 ++++++++++++++++++++++++++---
 opkg-show-deps    |    2 +-
 opkg-unbuild      |    2 +-
 opkg-update-index |    2 +-
 opkg.py           |    8 ++++++++
 7 files changed, 44 insertions(+), 8 deletions(-)

-- 
1.7.8.5


