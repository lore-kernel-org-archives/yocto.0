Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C24B1E00868
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:35 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id x13so5541162qcv.33
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 02:29:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Mj+IvP0vMAUDmGzF0v2VGF40Pn2eA4zK59elbjn4kBs=;
	b=SF7MVeO8KijobYtq+/lvP51VaYrnEz24q8xSsx1M2jJwXRWTG5Fc9vc65VifLJsK9S
	T0WwqqUzZ3YT/+FjsrrXbjmFS4FJffLoeM37Pqael3Fm6GocZ8PYQrDBs4ODLdyXvyqB
	xD+dwq7JamcLKF69B3EeNPc/F3OA3Ul1WqRkk7R0XFSKSkDsLsPgHkSlsqSYt+zdcDtL
	P00IoDoBDhd7Cb/cMs1ZKkGyaGG4UbzizZBNouhCI0DzONvqQ+to4x1zyljWHXeFSX1W
	5Ecga04X5u8M+6LduVkOFMKkW+LdX/mZADfv8z4pscDokuTywfKbC9bI/5kU1v4NPKHP
	7ZiQ==
X-Gm-Message-State: ALoCoQmvEhrbhrGSlAHaRl3a/ePwfTxBzVbzJagNqAkQRCu0qUhOc3GWGsRP9t5pjTbj6bVfBVWX
X-Received: by 10.224.151.147 with SMTP id c19mr8483759qaw.86.1392978574810;
	Fri, 21 Feb 2014 02:29:34 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id
	k61sm11862511qge.12.2014.02.21.02.29.33 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Feb 2014 02:29:34 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 21 Feb 2014 12:29:08 +0200
Message-Id: <1392978548-31880-7-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
References: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 7/7] omxplayer: Update to current remote HEAD
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
X-List-Received-Date: Fri, 21 Feb 2014 10:29:36 -0000

No need for mktemp-compatible-with-busybox.patch as the issue was
fixed in current revision.

Change-Id: I1eecd332e8e51dbbf97e25ec6ed133077f137d7b
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-multimedia/omxplayer/omxplayer_git.bb | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 33202dc..67af007 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -8,14 +8,13 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 DEPENDS = "libpcre libav virtual/egl boost freetype dbus"
-PR = "r3"
+PR = "r4"
 
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
-- 
1.8.1.4


