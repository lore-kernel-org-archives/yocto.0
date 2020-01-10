Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.13226.1578676545948130071
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jan 2020 09:15:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andre.draszik@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD1B9E01502; Fri, 10 Jan 2020 09:15:45 -0800 (PST)
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
	*      [209.85.221.66 listed in list.dnswl.org]
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBFA8E01502
	for <yocto@yoctoproject.org>; Fri, 10 Jan 2020 09:15:44 -0800 (PST)
Received: by mail-wr1-f66.google.com with SMTP id d16so2521964wre.10
        for <yocto@yoctoproject.org>; Fri, 10 Jan 2020 09:15:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tDa6NolcLKuJZQxLh2UE58vxqGshBdahCO2h8ik6hrs=;
        b=PAYAtnn/GUfTPHfr4r0H0z8SQlwDLi2NpPXVP/h1oCozpTx32a5BZCYxREFA6SeNvY
         OJg45Q8392fxAObyhvHsKRRh0Lrzkb684OvuM28XR4+hDZQlV8M++SceGlC88sHjWAGm
         keEuktPPJzJJuTMGCd1hcHASy2UYamKfNseuq5WJGuTqzB1Mg2Gz0QzkXojqsoVzyLFH
         h7IKJnmWF2gFILCCF/5WpXiWfaKqkp45taUDOHEhhWFYT8CCXHG/+HVlHxDdRI5ukvyZ
         ggYn4WI414HmZiO6Bn3tgyNpHO7DiQR6INz3sxS/GhoLRIKZHuiI9wikJJGaKkOPuSeY
         U5lw==
X-Gm-Message-State: APjAAAXXFTOrPczBGRKSejMNHSxoP8+4lpEbvD2UVjsRwuF22SKbFUdi
	cLq0u1WnsZKLDD+54hktu0QJ71r4
X-Google-Smtp-Source: APXvYqyV+cmrt20P4XYWjkzFkjBbVc9K2C2C+DIIwRvsbn1WW2zNx8Q+yJvI5kJJmWSPTQzwO6sz1g==
X-Received: by 2002:a5d:6ac2:: with SMTP id u2mr4720321wrw.233.1578676543720;
        Fri, 10 Jan 2020 09:15:43 -0800 (PST)
Received: from 1aq-andre.garage.tyco.com ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id l3sm2674451wrt.29.2020.01.10.09.15.42
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2020 09:15:42 -0800 (PST)
From: "Andr? Draszik" <git@andred.net>
To: yocto@yoctoproject.org
Subject: [yocto][meta-gplv2][PATCH 2/2] coreutils: set some more autotools / m4 test results
Date: Fri, 10 Jan 2020 17:15:41 +0000
Message-Id: <20200110171541.31341-2-git@andred.net>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200110171541.31341-1-git@andred.net>
References: <20200110171541.31341-1-git@andred.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

From: Andr=C3=A9 Draszik <git@andred.net>

While we set test outcomes in oe-core meta/site, this here uses
an old version of gnulib with slightly different variable names
for some of the results:

* jm_cv_func_unlink_busy_text -> gl_cv_func_unlink_busy_text
* jm_cv_have_proc_uptime -> gl_cv_have_proc_uptime
* jm_ac_cv_func_link_follows_symlink -> gl_cv_func_link_follows_symlink
* gl_cv_func_mkdir_trailing_slash_bug -> gl_cv_func_mkdir_trailing_slash_=
works
  (meaning inverted) (defaults to working in recent coreutils when
  cross-compiling
* gl_cv_func_rename_trailing_dest_slash_bug -> gl_cv_func_rename_slash_ds=
t_works
  (meaning inverted) defaults to working in recent coreutils when cross-c=
ompiling
  for linux
* gl_cv_func_rename_trailing_slash_bug -> gl_cv_func_rename_slash_src_wor=
ks
  (meaning inverted) defaults to working in recent coreutils when cross-c=
ompiling
  for linux

This helps to make some tools work in the first place (uptime), but
also avoids useless extra wrappers which coreutils otherwise compiles
in.

While at it, convert to CACHED_CONFIGUREVAR instead of EXTRA_OECONF.

Signed-off-by: Andr=C3=A9 Draszik <git@andred.net>
---
 recipes-core/coreutils/coreutils_6.9.bb | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreu=
tils/coreutils_6.9.bb
index f6017ec..42b4f3c 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -32,9 +32,15 @@ SRC_URI =3D "${GNU_MIRROR}/coreutils/${BP}.tar.bz2 \
 SRC_URI[md5sum] =3D "c9607d8495f16e98906e7ed2d9751a06"
 SRC_URI[sha256sum] =3D "89c2895ad157de50e53298b22d91db116ee4e1dd3fdf4019=
260254e2e31497b0"
=20
-EXTRA_OECONF +=3D "ac_cv_func_getgroups_works=3Dyes \
+CACHED_CONFIGUREVARS =3D "ac_cv_func_getgroups_works=3Dyes \
                  ac_cv_func_strcoll_works=3Dyes \
                  ac_cv_func_working_mktime=3Dyes \
+                 jm_ac_cv_func_link_follows_symlink=3Dno \
+                 jm_cv_func_unlink_busy_text=3Dyes \
+                 jm_cv_have_proc_uptime=3Dyes \
+                 gl_cv_func_mkdir_trailing_slash_bug=3Dno \
+                 gl_cv_func_rename_trailing_slash_bug=3Dno \
+                 gl_cv_func_rename_trailing_dest_slash_bug=3Dno \
                  "
=20
 # acl is not a default feature
--=20
2.23.0.rc1

