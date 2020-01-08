Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.9065.1578496082767517550
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 07:08:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andre.draszik@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75E03E013EB; Wed,  8 Jan 2020 07:08:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.65 listed in list.dnswl.org]
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com [209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BFA4E013E7
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2020 07:08:01 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id q6so3713647wro.9
        for <yocto@yoctoproject.org>; Wed, 08 Jan 2020 07:08:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lK1hdBibWlO//dqXPhLlGYreWQ0rypoBG8NkwZgH4kg=;
        b=mUyvpXQ2kWW7TyHHAcUCc8g/H8DyYUtUWDEO3ZqRmNaUSK62As6wPddSAz2dxxgJnf
         9y6bIgPgD3mOA7Ue/ybXAYvGjhZUH7h5DZByx38UdzqZRqugL+sPnFQ/gdV9opEuW5ma
         TsGECFFZiFVlb1VAciRCgr3/MqH4sMen1qd/ZBhQSO6RwfmFDh34vkDx3Ee+KQ/o4QNl
         3NH3/2XJ6O2KqPZtKlJzfENjnicf2Z5856Jj87crtwO9J82PFtIaCj7+rawioJrqnezo
         vOlbFQCe61SzOkd+DB5yoYq9XwoHMXGGjLkf0pRWRrGhFj7InLavXL2THK3NBrd8cP/S
         FJ4g==
X-Gm-Message-State: APjAAAUBRW3roIVdWaL+E2PHZMZHHA22q5I3ZCaVIQqKTK1Cb7SsNyAN
	P4oRMStb+BDONpvH/CtuiPBeOeq0
X-Google-Smtp-Source: APXvYqx9MJKKIreKSFQiYvkHretMAPErDVnzZSW+B7mGC2eyFOZL8300XImKXEh/4snVtuVe1caN9g==
X-Received: by 2002:adf:c446:: with SMTP id a6mr4922399wrg.218.1578496080407;
        Wed, 08 Jan 2020 07:08:00 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id a184sm4266907wmf.29.2020.01.08.07.07.59
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 07:07:59 -0800 (PST)
From: "Andr? Draszik" <git@andred.net>
To: yocto@yoctoproject.org
Subject: [yocto][meta-gplv2][PATCH 2/2] diffutils: musl has working malloc() and realloc()
Date: Wed,  8 Jan 2020 15:07:58 +0000
Message-Id: <20200108150758.13856-2-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200108150758.13856-1-git@andred.net>
References: <20200108150758.13856-1-git@andred.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

diffutils tries to run a test program to determine if
malloc() and realloc() work, i.e. whether they fail if
given 0 for size. running a test program doesn't work
when cross-compiling, so it defaults to assuming non-
working malloc() / realloc()

Given they work correctly in musl, we can specify the
test-result, and avoid having to use diffutil's
replacement functions.

Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
---
 recipes-extended/diffutils/diffutils_2.8.1.bb | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-extended/diffutils/diffutils_2.8.1.bb b/recipes-exte=
nded/diffutils/diffutils_2.8.1.bb
index 4aad28f..fc4dfd9 100644
--- a/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -16,6 +16,11 @@ SRC_URI =3D "${GNU_MIRROR}/diffutils/diffutils-${PV}.t=
ar.gz \
 SRC_URI[md5sum] =3D "71f9c5ae19b60608f6c7f162da86a428"
 SRC_URI[sha256sum] =3D "c5001748b069224dd98bf1bb9ee877321c7de8b332c8aad5=
af3e2a7372d23f5a"
=20
+EXTRA_OECONF_libc-musl =3D "\
+    jm_cv_func_working_malloc=3Dyes \
+    jm_cv_func_working_realloc=3Dyes \
+"
+
 do_configure_prepend () {
 	chmod u+w ${S}/po/Makefile.in.in
 }
--=20
2.23.0.rc1

