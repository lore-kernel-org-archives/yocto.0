Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9AEBE008A4; Sun, 16 Sep 2018 08:57:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32F87E00754
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:21 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id s15-v6so6502200pgv.8
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=cCNZkLiPhiQpGG0mxhE3CRHl0shLUSumQQEt1qNuhmI=;
	b=gNiRilYFu3RG/Zi/tkRGrC+RrQnIIPA2JZrfTWcpencQaPzXaZeTTbwMwxDOsHi5y2
	5nqNf51CH8V3j8HVSFe8CANtrjyWyteF/WSawbL1CNyLx7IqiGk29aY2y0gRQJIRXzbE
	0JzNOlLvKMBeG4+SGqghMzL56O2+IOdHOsdZpFeddSEMTDTLZIxjB8oQrMBKh146RkN8
	nMPzh+LOgnSx+DMo+w8tNrq0hEalLZ4DlxerR97+fDgeqUu429U2UCHxD4/vp+8anbWw
	58Nd1yYFFppH2R27Pklz+jsz+J07xUYT04WUWB0GeQ/O7TLhdEq50SnHOgMfXY1Xbav0
	GggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=cCNZkLiPhiQpGG0mxhE3CRHl0shLUSumQQEt1qNuhmI=;
	b=WasM4VQObAmFiJZSvY1X4xFiIQY5qDeanS13EkElXiihVwNGJTj1gntmvcI1xoWott
	OjfPd8yzIl2LyMPVhwCy5+Pl+V/RnzS5y+sB5a6HHACcphVmqInQU6TMZNzj0IDqx9qb
	F86kRpN2lBkHiHNpsD8NJK2myRzwjqUUwJMfD7Ps+ZHb2sf4do3owG/YK7MgR92St0XO
	4NONo4qU8AhQWw6MIom5ZPhqLvwBlincIZQdjIfD5mD085glUDzAyLANAYsg+jsimAML
	xmF6duBkPGSIdqQnKEvsiDhboenfjEsopprTThmsGfOMuEfr+dYp2qeh2IGLhes5wdpR
	urlg==
X-Gm-Message-State: APzg51DzggCRDocX5fQAbCP+gdFf0m7YhS08OWuNxgEqljm68PlRY/3b
	NvzRDaAhdt1+DUk2hkH+fuCsVwuR
X-Google-Smtp-Source: ANB0VdZm3SIpy+pQIwdaTdknHAs8G+PulsCHm2B8aBurn3s11Dgyz3fmKELaGmnf10nF0xRzFfbi/w==
X-Received: by 2002:a62:591a:: with SMTP id
	n26-v6mr22164005pfb.94.1537113441368; 
	Sun, 16 Sep 2018 08:57:21 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.20
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:56:55 -0700
Message-Id: <20180916155719.9911-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 01/25] sssd: update to 1.16.3
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:22 -0000

Includes:
CVE-2018-10852

see:
https://docs.pagure.org/SSSD.sssd/users/relnotes/notes_1_16_3.html

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/{sssd_1.16.0.bb => sssd_1.16.3.bb} | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename recipes-security/sssd/{sssd_1.16.0.bb => sssd_1.16.3.bb} (93%)

diff --git a/recipes-security/sssd/sssd_1.16.0.bb b/recipes-security/sssd/sssd_1.16.3.bb
similarity index 93%
rename from recipes-security/sssd/sssd_1.16.0.bb
rename to recipes-security/sssd/sssd_1.16.3.bb
index ff5b618..8f7f805 100644
--- a/recipes-security/sssd/sssd_1.16.0.bb
+++ b/recipes-security/sssd/sssd_1.16.3.bb
@@ -1,6 +1,6 @@
 SUMMARY = "system security services daemon"
 DESCRIPTION = "SSSD is a system security services daemon"
-HOMEPAGE = "https://fedorahosted.org/sssd/"
+HOMEPAGE = "https://pagure.io/SSSD/sssd/"
 SECTION = "base"
 LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
@@ -11,8 +11,8 @@ DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
 SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz\
             file://sssd.conf "
 
-SRC_URI[md5sum] = "f721ace2ebfa6744cfea55e3ecd2d82f"
-SRC_URI[sha256sum] = "c581a6e5365cef87fca419c0c9563cf15eadbb682863d648d85ffcded7a3940f"
+SRC_URI[md5sum] = "af4288c9d1f9953e3b3b6e0b165a5ece"
+SRC_URI[sha256sum] = "ee5d17a0c663c09819cbab9364085b9e57faeca02406cc30efe14cc0cfc04ec4"
 
 inherit autotools pkgconfig gettext update-rc.d python-dir distro_features_check
 
-- 
2.17.1


