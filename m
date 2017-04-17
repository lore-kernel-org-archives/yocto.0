Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0EECE00777; Sun, 16 Apr 2017 18:12:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C574DE00839
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:12:12 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id q125so6759818wmd.3
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=HX/YVtxE9IstOuNn2+OywEJ4DeLdeY0xRsg5MX17nyk=;
	b=sreVq6NAgK89tnWDu7VYvRpV6ehw7iu+Lk4/JRkBFHQJLpR852OFfm/f+Sl/1hNSPA
	OL/6/70neCdmro2HfKmt87LTCmqwUedwqXYD4NaGVQ8zB5FyLYGhkHxgFtSKWfaPQ+UX
	x7Da4WUw7tS4KQHDRZgqYxlrRPv/f+zNs3btltXoUKTXiGKz2Gd/5whpo99uL2qDEqbx
	EdlHJjssEcW6KJfCGPd4/Pr/0UIviQ6KNiz84D4VJTLF0OI7Bx2ZZx/UYGtD16QKLsEd
	Lw9Ufd3bWFrsZF4/0bHLf7H5k9pIX7uwdG2qe0kw/CHHHd2It+YOkR6UO96zUm4GkHzQ
	hApg==
X-Gm-Message-State: AN3rC/7+jyje8WBmKpgVMuTrS8/2bb7LRdT9oXvt/70EBAAjqIlxDJcb
	GH/syYsdz0Y0je43w2s=
X-Received: by 10.28.55.3 with SMTP id e3mr7241261wma.15.1492391531357;
	Sun, 16 Apr 2017 18:12:11 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id
	w16sm11203929wmd.0.2017.04.16.18.12.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:12:10 -0700 (PDT)
From: Andrei Gherzan <andrei@resin.io>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 02:12:05 +0100
Message-Id: <20170417011206.29137-1-andrei@resin.io>
X-Mailer: git-send-email 2.12.2
Cc: Andrei Gherzan <andrei@resin.io>
Subject: [meta-raspberrypi][PATCH 1/2] omxplayer: Bump to head and fix missing native dependency
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
X-List-Received-Date: Mon, 17 Apr 2017 01:12:26 -0000

Signed-off-by: Andrei Gherzan <andrei@resin.io>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 72297d0..0e0f9ba 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -7,10 +7,10 @@ SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil coreutils-native"
+DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh libomxil coreutils-native curl-native"
 PR = "r4"
 
-SRCREV = "62fb580260adb9b01e5694bb4374fb9a5f6f1021"
+SRCREV = "061425a5eabf6e9ee43229911c073a863d144038"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
-- 
2.12.2


