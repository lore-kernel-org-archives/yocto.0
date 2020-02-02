Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web10.593.1580661638339595886
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 08:40:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nZGVDx3u;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id gv17so5293420pjb.1
        for <yocto@lists.yoctoproject.org>; Sun, 02 Feb 2020 08:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=jG00l89Iyi07jiAaFi0oLL0+/lC8LL5kPRbc9PE+S7k=;
        b=nZGVDx3uWhKIB2zTehQGDe5Yp5GPwSq6p8pMdCo44OQt2seWQsuIPnDUV0Xcy2hBJe
         dxx6x8fVlIMZHilgMllyiiSgyt6infFq2KUA0YqALmsLFFv74t6XjfECQoISW3iC9Veh
         ++UT9I4pbIBa+QRAtKMzEFHp+r56Umc7QkHN5DuYdmwpcSMaG7bBdr/kLnA4vmrK6tDJ
         Y2wkR1rg5aP7rWkVH+9bvrj1kN79DEB0LUAvQkZMaq6do1LAcWVMHshXuAMACMbO3ZXc
         5dPSTTWmgkd4dys/yyEgEVYvU2SXBHKBpWFBCSWeIbKE25CtMpbU0zGQICoTWxsbb3tp
         HBBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=jG00l89Iyi07jiAaFi0oLL0+/lC8LL5kPRbc9PE+S7k=;
        b=fUs9l9hfnq5M7WJa2fvdIkJBtMmDxYxNxTpnD28VuB+VkoBoUwH1bU8TZzvJqzKRGs
         SRKsN8KED7LwuFI1p2lQclOdG/fcsK9WcoHEZjd5eDkn3qDwhDTnLG19bQyOUwcc0j49
         XyGJ6pulpBlfPPmHWtMM1K37y1kF/Lerj4luzDVJspVtqqhc5tHLvbD+Z5k/1sqdIfdT
         KhUtMv04/POX751hDmnre2hxOmHOMynDFGlmZ20Gjrs26m2ixmmQ3G82JLe2pxDJs7bC
         WgBYx3KM4XKuhToUYIENJr+La7DUFu46gLPlFxInKmyCmKA5euY5LB5doEnJk3kaPZqu
         +klQ==
X-Gm-Message-State: APjAAAX7k9YOihiCKo/dyZSLqn/7Bb/ItkbFGW1/bAeGQQiasl084kgw
	ji5MuKMiGGf0IuWbLxBKiN4FvJva
X-Google-Smtp-Source: APXvYqzpmSPlevRIlYUfvmOYhPuJzxFaMdtdCjFfky4kqntdyy6kTlbhFWDhuSN1PYHZb8FrdUtvxQ==
X-Received: by 2002:a17:90a:2486:: with SMTP id i6mr25412641pje.9.1580661636956;
        Sun, 02 Feb 2020 08:40:36 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0::afc])
        by smtp.gmail.com with ESMTPSA id v4sm18174562pgo.63.2020.02.02.08.40.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2020 08:40:36 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] ecryptfs-utils: search nspr header files in ${STAGING_INCDIR}/nspr directory
Date: Sun,  2 Feb 2020 08:40:33 -0800
Message-Id: <20200202164033.14722-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202164033.14722-1-akuster808@gmail.com>
References: <20200202164033.14722-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index e45ee0b..d8cd06f 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -41,7 +41,7 @@ PACKAGECONFIG[nss] = "--enable-nss,--disable-nss,nss,"
 PACKAGECONFIG[pam] = "--enable-pam,--disable-pam,libpam,"
 
 do_configure_prepend() {
-    export NSS_CFLAGS="-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
+    export NSS_CFLAGS="-I${STAGING_INCDIR}/nspr -I${STAGING_INCDIR}/nss3"
     export NSS_LIBS="-L${STAGING_BASELIBDIR} -lssl3 -lsmime3 -lnss3 -lsoftokn3 -lnssutil3"
     export KEYUTILS_CFLAGS="-I${STAGING_INCDIR}"
     export KEYUTILS_LIBS="-L${STAGING_LIBDIR} -lkeyutils"
-- 
2.17.1

