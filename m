Return-Path: <seth.boll@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3A75E0045F
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 07:23:31 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id e14so8184206iej.22
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 07:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=8a05GBgZrzUgIEVLnsa4xxjolBhejlyimX97h+Qw//A=;
	b=L2SamXpse7xUyidVohfgk9J2i0RtoVUcvUWnAsEExS4WaIffYzx/ZD4YoiLKiVTc7K
	hS+K8zmQC8x0S3vtYl5QHHQXP2TW0VE+x6BriMDQXZSqh61j8zkCH41ok78rNCm2Ktal
	nQBu42j24LwUQrgg6zV9kFBP4r9vIY3IxGOuqXdhRIPhREsUf9v5oQUbQ/u+lur9mmrS
	Vn/H/YgkaqhvLXNkioW+2K60nPTDeK6LXZwdiFMXSJkrfdyedE2AGMcj2/QzYHRc2m+u
	JQPLc7GU+2dS1I9gRLq3Z0cvWS5Do0K/5DGRM5iO6DhslB9FTP8vw8pzA8HNJtzBh/Uz
	aVLQ==
X-Received: by 10.50.17.9 with SMTP id k9mr2389889igd.3.1382797410581;
	Sat, 26 Oct 2013 07:23:30 -0700 (PDT)
Received: from localhost.localdomain (c-66-41-191-40.hsd1.mn.comcast.net.
	[66.41.191.40])
	by mx.google.com with ESMTPSA id p5sm8566065igj.10.2013.10.26.07.23.29
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 26 Oct 2013 07:23:29 -0700 (PDT)
From: Seth Bollinger <seth.boll@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 26 Oct 2013 09:23:24 -0500
Message-Id: <1382797404-24840-1-git-send-email-seth.boll@gmail.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] ncurses-terminfo: Remove bashism from basic terminfo installation
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
X-List-Received-Date: Sat, 26 Oct 2013 14:23:31 -0000

The vtX terminfo files aren't being copied on systems where bash isn't
the default shell (debian, etc.).  I removed the bash specific syntax
so the files are properly copied on these systems.

Signed-off-by: Seth Bollinger <seth.boll@gmail.com>
---
 meta/recipes-core/ncurses/ncurses.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-core/ncurses/ncurses.inc b/meta/recipes-core/ncurses/ncurses.inc
index 671daf8..01cdf13 100644
--- a/meta/recipes-core/ncurses/ncurses.inc
+++ b/meta/recipes-core/ncurses/ncurses.inc
@@ -174,7 +174,7 @@ shell_do_install() {
 
         # include some basic terminfo files
         # stolen ;) from gentoo and modified a bit
-        for x in ansi console dumb linux rxvt screen sun vt{52,100,102,200,220} xterm-color xterm-xfree86 xterm-256color
+        for x in ansi console dumb linux rxvt screen sun vt52 vt100 vt102 vt200 vt220 xterm-color xterm-xfree86 xterm-256color
         do
                 local termfile="$(find "${D}${datadir}/terminfo/" -name "${x}" 2>/dev/null)"
                 local basedir="$(basename $(dirname "${termfile}"))"
-- 
1.7.10.4


