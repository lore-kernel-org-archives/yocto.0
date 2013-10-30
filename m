Return-Path: <seth.boll@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64CABE017AF
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 05:16:26 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id as1so2116897iec.13
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 05:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=8a05GBgZrzUgIEVLnsa4xxjolBhejlyimX97h+Qw//A=;
	b=Asi0DwF8t5G9zsOgkSb/WvIkmQcu98yrbBJ9TWk/izY2dPFMmbBlXR/GsT6cqxNKwj
	h61bzBuZ2L1DktShlJupnNZ3IxHyQnB7LI0VQHJYAMYaDi4dz1l27zT78aPU4MqK5W5O
	ldYvqFzPlZN0BYmzO6UlUJ4y3QX6w06219YI0uFdXT6myd13TyC+c2duONXWk3eGn0Ow
	m+ohYkbnZ7Wi889ivCHzQc5Z/mcjxNEfm/yEvoHAy3PKcsr6+4iCypDxjoh05LoJxpY9
	sG8VKnFxdAOfhstoXiVYiDeCHMrsBQ87KR+ldU4Zmjkn1OQJ3h0yt3IEnRbUU9GsLced
	argQ==
X-Received: by 10.50.225.39 with SMTP id rh7mr2194255igc.10.1383135386155;
	Wed, 30 Oct 2013 05:16:26 -0700 (PDT)
Received: from localhost.localdomain (c-66-41-191-40.hsd1.mn.comcast.net.
	[66.41.191.40])
	by mx.google.com with ESMTPSA id o11sm6868116igi.1.2013.10.30.05.16.25
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Oct 2013 05:16:25 -0700 (PDT)
From: Seth Bollinger <seth.boll@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 30 Oct 2013 07:16:12 -0500
Message-Id: <1383135372-17294-1-git-send-email-seth.boll@gmail.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [Resend: PATCH] ncurses-terminfo: Remove bashism from basic terminfo installation
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
X-List-Received-Date: Wed, 30 Oct 2013 12:16:27 -0000

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


