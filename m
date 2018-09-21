Return-Path: <tworaz666@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91F07E00AC8; Fri, 21 Sep 2018 14:57:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tworaz666[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
	[209.85.208.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08756E00AB9
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 14:57:15 -0700 (PDT)
Received: by mail-lj1-f196.google.com with SMTP id f8-v6so13309795ljk.1
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 14:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=cHb4Hg8+UJSDcGc0/SP7j/2sH9mPs7LwQT9ng5GApXc=;
	b=MPj4CymCMGKCnBjIDvei8YRoaFfQ2/RHx87I8neSIrgpDoKOJjXpQvcYMdhPlfxWzW
	oQSDWa39Jz2Kp6k06inm4FrnIC9TbiiDILvaqKgpNx3m6bMCoaOTLd5xnEyvwB5+1/HE
	VNFjF8UE5dMyFSkaz6dtggF+E/LDFeNbu57hB4XcCo7kfI1AKCaSPVtkH5EToq5JLgw2
	klKaffQR3uaEw57XOeOd4AFe4K/HAXgmsuiyaCIO5YI/XeBJmTnVxM6uAsllVzHnyH8Z
	bJz6BYud9URpzW4R9aTxaAFHO6OgTuZvH721gmkbfPfhJcPEAjXToa+oSDcx4BkEwaTY
	7LOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=cHb4Hg8+UJSDcGc0/SP7j/2sH9mPs7LwQT9ng5GApXc=;
	b=SrRkT8V5TJOjPtONYYx1gR052/L132A1rhXen9H4LUUFou5bAUd9KbYJ3r6YgMD/iK
	cCLqcXLTo49uuwXOiKrEiwUma8rNhKI4F2NpROAD9ftooMvP2YwEoot3afyexXUNMVvN
	GKhW/I7nhoGETDKh0xBZ8qYU4apmko0tANxPu+RzzRRjlAczyjVAR9AqHs1QE9fbPGZz
	YIbRjGaGclvacI4M+jt2zJv63i6PQ5syoC8g0Rk7BHomKFDhx/9psUSlfgdxbLsBOBvr
	TK73feH5la/IK0qlF7fbE3dctCWkyQDCX7KsOAAoJ9rm0AxfbSUgHDCFwauunh2Ky8If
	s6dQ==
X-Gm-Message-State: ABuFfojih6kizfsbbPsBkWU9/RkFMjC8Twnou0qmzLXQatWZmCW/gfpQ
	KJSn/fkHcqt6qe9SdSa1Jxfr3+fR0aY=
X-Google-Smtp-Source: ACcGV60smdzz+GuuxJS4KVDjQOMm8dAOQfhyazh8z/HckI8KGth6oL7SkEqxugVlMBdarq0Clc0asg==
X-Received: by 2002:a2e:7a08:: with SMTP id
	v8-v6mr3614224ljc.121.1537567034622; 
	Fri, 21 Sep 2018 14:57:14 -0700 (PDT)
Received: from stinger.lan (87-206-69-189.dynamic.chello.pl. [87.206.69.189])
	by smtp.gmail.com with ESMTPSA id
	d6-v6sm476087lfk.83.2018.09.21.14.57.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Sep 2018 14:57:13 -0700 (PDT)
From: Piotr Tworek <tworaz666@gmail.com>
X-Google-Original-From: Piotr Tworek <tworaz@tworaz.net>
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2018 23:57:07 +0200
Message-Id: <20180921215707.24721-1-tworaz@tworaz.net>
X-Mailer: git-send-email 2.16.4
Subject: [meta-selinux][PATCH] libselinux: Fix build with musl libc.
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
X-List-Received-Date: Fri, 21 Sep 2018 21:57:16 -0000

From: Piotr Tworek <tworaz666@gmail.com>

Musl libc does not implement file traversal functions from fts.h.
Oe-core provides fts library which implements those. Libselinux makefile
allows us to use such additional library by specifying required linker
flags via FTS_LDLIBS variable.

Signed-off-by: Piotr Tworek <tworaz666@gmail.com>
---
 recipes-security/selinux/libselinux.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index 28c437f..33621cc 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -8,6 +8,7 @@ LICENSE = "PD"
 inherit lib_package pythonnative
 
 DEPENDS += "libsepol python libpcre swig-native"
+DEPENDS_append_libc-musl = " fts"
 RDEPENDS_${PN}-python += "python-core"
 
 PACKAGES += "${PN}-python"
@@ -23,6 +24,7 @@ def get_policyconfigarch(d):
 EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
 
 EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsepol.a'"
+EXTRA_OEMAKE_append_libc-musl = " FTS_LDLIBS=-lfts"
 
 do_compile_append() {
     oe_runmake pywrap -j1 \
-- 
2.16.4


