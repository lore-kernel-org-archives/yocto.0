Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9DFBE00889
	for <yocto@yoctoproject.org>; Mon, 24 Feb 2014 03:20:26 -0800 (PST)
Received: by mail-qa0-f49.google.com with SMTP id w8so5935619qac.8
	for <yocto@yoctoproject.org>; Mon, 24 Feb 2014 03:20:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=OzRDtG9SsYIkbLayko9hTaPPxxi5+rRlwLnzrbeBq/0=;
	b=gp64cjIY79osZq2lET8mrRu/cLmI3p/zxeYtMYRUzVgPSqygEjkwTLIVC90iKx1zkG
	JMRjTGUnEz/56QkabFpcA6NbsAW7TLlJWKmFfXLWpn+zSGBrnfFVFUD9xWU6UZyMyc3n
	jKVHLIktHA1C+sNOKoGqs7GhBukp0jiBS21s4tjMDDMYZtx4PPBQ/5VcmxKcjIcnnVxn
	1ZC9qVjBaK6jxWhsVg4zF0O4lTw65j5pLFzzVyKqDJqWcC5A38fM2400X7CoFE4ww6E3
	fPwckuExUhpfKr8phS/9xOO2Of3sz90IduJrLWXlL/2KOcrdF9nsKw2Sntb2gG01Qw+0
	yYxg==
X-Gm-Message-State: ALoCoQnP2iJPV6/1gvT9rLHaOnZiPtM17UD2nRiF0WvngKJj98cnqQtGi/7zNEpwBjo4aVvx1Kbo
X-Received: by 10.140.20.17 with SMTP id 17mr27534426qgi.28.1393240825412;
	Mon, 24 Feb 2014 03:20:25 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id v92sm24957765qge.6.2014.02.24.03.20.23
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Feb 2014 03:20:24 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 24 Feb 2014 13:20:11 +0200
Message-Id: <1393240811-6739-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH v2 1/1] omxplayer: Update to current remote HEAD
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
X-List-Received-Date: Mon, 24 Feb 2014 11:20:26 -0000

No need for mktemp-compatible-with-busybox.patch as the issue was
fixed in current revision.
omxplayer startup bash script needs pgrep so add procps to RDEPENDS.

Change-Id: I1eecd332e8e51dbbf97e25ec6ed133077f137d7b
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 33202dc..526dc86 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -10,12 +10,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
 PR = "r3"
 
-SRCREV = "f666a5dfbec36e2af7cd965558ac8643c86277a6"
+SRCREV = "7af21f596378e5efeceebedff9c4a298e2d06d98"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
            file://0003-Remove-strip-step-in-Makefile.patch \
-           file://mktemp-compatible-with-busybox.patch \
            file://fix-tar-command-with-DIST.patch \
            "
 S = "${WORKDIR}/git"
@@ -68,4 +67,4 @@ FILES_${PN} = "${bindir}/omxplayer* \
 
 FILES_${PN}-dev += "${libdir}/omxplayer/*.so"
 
-RDEPENDS_${PN} += "bash"
+RDEPENDS_${PN} += "bash procps"
-- 
1.8.1.4


