Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D1ECE00CCC; Mon, 11 Mar 2019 07:24:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
	[209.85.210.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7BF0E00C38
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 07:24:06 -0700 (PDT)
Received: by mail-pf1-f174.google.com with SMTP id u9so3823933pfn.1
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 07:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=gZ0a/XsRpobIAU1IWIKi+Ea6a0l4jAWqkL0ncHc9kjk=;
	b=OMkRldnH9FYx1tSXWXbGypZWnzbeLNK+ch3vTVv6bX7/uGQWo6dMZgYN/EQpf/+ziF
	zoK6q4D8kGKrSUAc+Ffm/tX4Ge4A7wXm2GvAgAYsz7jVbig05fBqFa1x4zZyDqKnQZBe
	7zT7qMflbJhW9VYxLMeuaz/jB1K/NtTwimNikLS9oy+CqAhQsb8tSWmUpB+ZhDZGI3Nt
	HABdMfBVnXAJFDo3s4j5hWz3m1EqEmR7Ph/kvptbF+jZuxRtvQOkIKlwkOUGeEMOCwRA
	STt4rc7Fg8wDETkGeK7stMHVVyVy/IXQ721sgSU7FysViZsobzFbru9BSuaC55KaGDk3
	H9DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=gZ0a/XsRpobIAU1IWIKi+Ea6a0l4jAWqkL0ncHc9kjk=;
	b=iSS6B/d3OH+9UNeRgyV36Tt7aLzxuFu16E8iA4iNv6s0bLTTUK7rVWdSFxeOHMjwxs
	LHZnh1gts7AkeEOy+1H5Ntmex9YtTjryTAf8GonBp1vlqGKpWr9pf+tHxC79Es0R3HoI
	AYeOfYdocIvff2ZcDLCW7DXoBfDerqGJ39nh3KNSMaSp1jdQxPenpDqJuCFGJRtpFRZU
	v+2h55FAFJEtezO2vov+3t7bVmIivZmnNAHjxNJYfKLRS7ypg8FKTTPQdAttulBEiixp
	hLelHLbFUDFmRQuT8RBHft6mMxswafGlV04zzOOxLlODSaQsUHZV29ra7GMkxIewSf4Z
	X5uA==
X-Gm-Message-State: APjAAAWcahp1EIll31Hm+BA9Uf4GSeCNmUssMwmfLDtqPRiahJMFrD1a
	Cmj/lgSlwWGBEB2op2awnuHR6+uh
X-Google-Smtp-Source: APXvYqwon5iKssWGRr4PI9206B1OpZQOj11yIW5ok0GGjFDscZQgdbjvVyFpXp4i8qx51PeqGXzEMQ==
X-Received: by 2002:a62:38d4:: with SMTP id
	f203mr32876047pfa.143.1552314246041; 
	Mon, 11 Mar 2019 07:24:06 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id y8sm9096188pge.35.2019.03.11.07.24.05
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Mar 2019 07:24:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Mar 2019 07:24:04 -0700
Message-Id: <20190311142404.31584-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] suricata: update to 4.1.3
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
X-List-Received-Date: Mon, 11 Mar 2019 14:24:07 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../suricata/{libhtp_0.5.28.bb => libhtp_0.5.29.bb}         | 0
 recipes-security/suricata/suricata.inc                      | 6 +++---
 .../suricata/{suricata_4.0.6.bb => suricata_4.1.3.bb}       | 5 +++--
 3 files changed, 6 insertions(+), 5 deletions(-)
 rename recipes-security/suricata/{libhtp_0.5.28.bb => libhtp_0.5.29.bb} (100%)
 rename recipes-security/suricata/{suricata_4.0.6.bb => suricata_4.1.3.bb} (97%)

diff --git a/recipes-security/suricata/libhtp_0.5.28.bb b/recipes-security/suricata/libhtp_0.5.29.bb
similarity index 100%
rename from recipes-security/suricata/libhtp_0.5.28.bb
rename to recipes-security/suricata/libhtp_0.5.29.bb
diff --git a/recipes-security/suricata/suricata.inc b/recipes-security/suricata/suricata.inc
index 368b2e0..7be403c 100644
--- a/recipes-security/suricata/suricata.inc
+++ b/recipes-security/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "4.0.6"
+VER = "4.1.3"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "e8e9a401fef3b3ca1027c268c38c8f4b"
-SRC_URI[sha256sum] = "cbab847b33fc625b7a92241fdce2e1ca47b8bb415c9114de70819394229679a4"
+SRC_URI[md5sum] = "35c4a8e6be3910831649a073950195df"
+SRC_URI[sha256sum] = "6cda6c80b753ce36483c6be535358b971f3890b9aa27a58c2d2f7e89dd6c6aa0"
diff --git a/recipes-security/suricata/suricata_4.0.6.bb b/recipes-security/suricata/suricata_4.1.3.bb
similarity index 97%
rename from recipes-security/suricata/suricata_4.0.6.bb
rename to recipes-security/suricata/suricata_4.1.3.bb
index 6c0a109..d6f5937 100644
--- a/recipes-security/suricata/suricata_4.0.6.bb
+++ b/recipes-security/suricata/suricata_4.1.3.bb
@@ -16,7 +16,7 @@ SRC_URI += " \
 SRC_URI[rules.md5sum] = "205c5e5b54e489207ed892c03ad75b33"
 SRC_URI[rules.sha256sum] = "4aa81011b246875a57181c6a0569ca887845e366904bcaf0043220f33bd69798"
 
-inherit autotools-brokensep pkgconfig python-dir systemd ptest
+inherit autotools-brokensep pkgconfig python3-dir systemd ptest
 
 CFLAGS += "-D_DEFAULT_SOURCE"
 
@@ -26,6 +26,7 @@ CACHED_CONFIGUREVARS = "ac_cv_header_htp_htp_h=yes ac_cv_lib_htp_htp_conn_create
 EXTRA_OECONF += " --disable-debug \
     --enable-non-bundled-htp \
     --disable-gccmarch-native \
+    --disable-suricata-update \
     "
 
 PACKAGECONFIG ??= "htp jansson file pcre yaml pcap cap-ng net nfnetlink nss nspr"
@@ -44,7 +45,7 @@ PACKAGECONFIG[jansson] = "--with-libjansson-includes=${STAGING_INCDIR} --with-li
 PACKAGECONFIG[file] = ",,file, file"
 PACKAGECONFIG[nss] = "--with-libnss-includes=${STAGING_INCDIR} --with-libnss-libraries=${STAGING_LIBDIR}, nss, nss," 
 PACKAGECONFIG[nspr] = "--with-libnspr-includes=${STAGING_INCDIR} --with-libnspr-libraries=${STAGING_LIBDIR}, nspr, nspr," 
-PACKAGECONFIG[python] = "--enable-python, --disable-python, python, python" 
+PACKAGECONFIG[python] = "--enable-python, --disable-python, python3, python3" 
 PACKAGECONFIG[unittests] = "--enable-unittests, --disable-unittests," 
 
 export logdir = "${localstatedir}/log"
-- 
2.17.1


