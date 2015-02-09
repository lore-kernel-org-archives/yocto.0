Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBE93E0095F; Mon,  9 Feb 2015 15:52:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CBFCE00596
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 15:52:30 -0800 (PST)
Received: by mail-lb0-f175.google.com with SMTP id n10so28686531lbv.6
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 15:52:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=+dUKW9H4gqM9a3pThzDZ7gEoqjx6QXnzQ8cgtnzNRd4=;
	b=bbDEsx3nLDSspUjpXOYWPGCaaM4LQo9C/KPCm6RNsjC6kZNwo0NoOnKj8HMw+jZiEC
	FL+xqhgKd0lbtQZ8NQHXevis94GPopa/+Tbxn+qtXlhkZ+VGOCN/rR3LOwZH1XGCg7kD
	xDhbXlST4EuhC6tPQgy0HJaiOd9E3qwGf0AoXKlZTnfrIGyKWTwxdK7hn/JgXZgwAwiY
	NL2+LLgoKPoASIna6EgPAmu8OBv738Yfldlu1Q06fUYocHdueORzKbWBOEIWR5z9hFpC
	qNXtaTu0vgQ3q9LiQIdAEHMxCxG0E0Jik8Tlrdz58O+/4jdA9twqYvbDJjvnCOUQtRmQ
	CLDA==
X-Gm-Message-State: ALoCoQmo2Gg2Jb0EOA+pmd57ljcw1dEMQc61YhrbQ1Q9mksGVyuqKWc577nCRXMDqwdjj+Bqjc11
X-Received: by 10.112.211.168 with SMTP id nd8mr20271668lbc.18.1423525948027; 
	Mon, 09 Feb 2015 15:52:28 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	lk6sm2380189lac.1.2015.02.09.15.52.27 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Feb 2015 15:52:27 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 10 Feb 2015 00:52:18 +0100
Message-Id: <1423525941-19710-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1423525941-19710-1-git-send-email-andrei@gherzan.ro>
References: <1423525941-19710-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH V2 2/5] omxplayer: Bump SRCREV
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
X-List-Received-Date: Mon, 09 Feb 2015 23:52:38 -0000

Add a patch to fix the pkg-config mechanism in ffmpeg.

Change-Id: Ib506bb4e26a8a0c5c294ed55da0a0da8dc67a2d7
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../omxplayer/omxplayer/use-native-pkg-config.patch   | 19 +++++++++++++++++++
 recipes-multimedia/omxplayer/omxplayer_git.bb         |  7 ++++---
 2 files changed, 23 insertions(+), 3 deletions(-)
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/use-native-pkg-config.patch

diff --git a/recipes-multimedia/omxplayer/omxplayer/use-native-pkg-config.patch b/recipes-multimedia/omxplayer/omxplayer/use-native-pkg-config.patch
new file mode 100644
index 0000000..ed81999
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/use-native-pkg-config.patch
@@ -0,0 +1,19 @@
+Force the pkg-config native tool. Strangely ffmpeg prepends cross_prefix
+to the default value which obviously is wrong.
+
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+
+Index: git/Makefile.ffmpeg
+===================================================================
+--- git.orig/Makefile.ffmpeg
++++ git/Makefile.ffmpeg
+@@ -245,7 +245,8 @@ configure:
+ 			--disable-decoder=idf \
+ 			--enable-decoder=opus \
+ 			--cross-prefix=$(HOST)- \
+-			--disable-stripping
++			--disable-stripping \
++			--pkg-config=pkg-config
+ 
+ .PHONY : clean
+ clean:
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index 41ef339..c71a743 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -7,22 +7,23 @@ SECTION = "console/utils"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
-DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl"
+DEPENDS = "libpcre libav virtual/egl boost freetype dbus openssl samba libssh"
 PR = "r3"
 
-SRCREV = "1817503430b8f195bef12bd7a3542bdd251f8389"
+SRCREV = "18f051d64d9c837edbf718bc4935204583cfa030"
 SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master \
            file://0001-Remove-Makefile.include-which-includes-hardcoded.patch \
            file://0002-Libraries-and-headers-from-ffmpeg-are-installed-in-u.patch \
            file://0003-Remove-strip-step-in-Makefile.patch \
            file://0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch \
            file://fix-tar-command-with-DIST.patch \
+           file://use-native-pkg-config.patch \
            "
 S = "${WORKDIR}/git"
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-inherit autotools-brokensep
+inherit autotools-brokensep pkgconfig
 
 # Needed in ffmpeg configure
 export TEMPDIR = "${S}/tmp"
-- 
2.1.0


