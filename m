Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web12.7514.1611914847397371253
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 02:07:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=IWM+zrYv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id m2so6385885wmm.1
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 02:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=cIbkX+6DO5Pi5gUHl76aPsZrJ4OfW1ZIjwmmnK+jJJ4=;
        b=IWM+zrYvqPgVZzSYbkHJyhcxcd/KOgvGuS1f8Xt66bXFWXFTi6pkbxXqmxIBnIGyrD
         fe0l8ogMTxHC6JQvJ/r2Rw8xk+uRCPag9UrinrbIO404pLhXbt4RGldxhCII5FGRmLqd
         0IkJKczrY+infd3RgPMOxlWUiaKphazI2bhb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cIbkX+6DO5Pi5gUHl76aPsZrJ4OfW1ZIjwmmnK+jJJ4=;
        b=je0dAY4LTFFlocgMpnn3GbnIdy9fCYaH+QHP7NP1oEhnm5EX2axPN624a0s/qlyz9S
         TcAQMj0esZ9wysE/SM53cHEsUN5C3KLDCJRTLEjPaoFo3xbqTJFH+cFUZlLwZQTaOzdy
         WoBD5fxHcxLFGOLLmozhi9EvGa/K+RDCXhQI5eQvsGfy7ambNuIUN0aieq4cpi/KjVZr
         B5OENh5RP2g6n+zRQIiSRKQvIkjbLIwJd7ClI2OTfRviGgFZ0qX2//PffDdvaQCOqFE+
         RQzyz3icAuy0fFbJh6tj3uy5TghJT6rzjmPU2mL/Ozg8a6ez1a7Uv73qCnuRic3A8xuO
         Qcdg==
X-Gm-Message-State: AOAM530SGfirXjTJRGZ6nQmNWauIHBp0rUyedTDIebBISGU9FEJnYcJA
	ALpli2V5Y3Rz1hzqIhoqYDl66+mTzFH1sw==
X-Google-Smtp-Source: ABdhPJx8wwDNdNbZjaatpJ4THCMuZIkb0NwK86IOt4dpqLJmwGclzk1NrOKnLjzlKhnejOxkwkRpjA==
X-Received: by 2002:a1c:ed0b:: with SMTP id l11mr3025882wmh.47.1611914845916;
        Fri, 29 Jan 2021 02:07:25 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:93ef:509c:4f16:14ff])
        by smtp.gmail.com with ESMTPSA id b2sm9834636wmd.41.2021.01.29.02.07.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 02:07:25 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 2/3] diffutils: Update to work with autoconf 2.70
Date: Fri, 29 Jan 2021 10:07:23 +0000
Message-Id: <20210129100724.1359686-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210129100724.1359686-1-richard.purdie@linuxfoundation.org>
References: <20210129100724.1359686-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../diffutils/diffutils-2.8.1/autoconf270.patch | 17 +++++++++++++++++
 recipes-extended/diffutils/diffutils_2.8.1.bb   |  1 +
 2 files changed, 18 insertions(+)
 create mode 100644 recipes-extended/diffutils/diffutils-2.8.1/autoconf270.patch

diff --git a/recipes-extended/diffutils/diffutils-2.8.1/autoconf270.patch b/recipes-extended/diffutils/diffutils-2.8.1/autoconf270.patch
new file mode 100644
index 0000000..5651675
--- /dev/null
+++ b/recipes-extended/diffutils/diffutils-2.8.1/autoconf270.patch
@@ -0,0 +1,17 @@
+Update to add the required gettext version to work with autoconf 2.70
+
+Upstream-Status: Inappropriate [needed for obsolete GPLv2 version]
+RP - 2021/1/28
+
+Index: diffutils-2.8.1/configure.ac
+===================================================================
+--- diffutils-2.8.1.orig/configure.ac
++++ diffutils-2.8.1/configure.ac
+@@ -62,6 +62,7 @@ AC_CHECK_TYPE(ptrdiff_t, int)
+ AC_CHECK_TYPE(ssize_t, int)
+ jm_AC_TYPE_UINTMAX_T
+ AM_GNU_GETTEXT([external])
++AM_GNU_GETTEXT_VERSION([0.21])
+ XGETTEXT="AWK='$AWK' \$(SHELL) \$(top_srcdir)/exgettext $XGETTEXT"
+ AC_HEADER_DIRENT
+ AC_HEADER_STAT
diff --git a/recipes-extended/diffutils/diffutils_2.8.1.bb b/recipes-extended/diffutils/diffutils_2.8.1.bb
index 7c43c4b..88d189d 100644
--- a/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -11,6 +11,7 @@ SRC_URI = "${GNU_MIRROR}/diffutils/diffutils-${PV}.tar.gz \
            file://0001-Make-it-build-with-compile-time-hardening-enabled.patch \
            file://0002-included-libc-use-mempcpy-instead-of.patch \
            file://0003-context-fix-compilation-with-64bit-time_t-on-32bit-a.patch \
+           file://autoconf270.patch \
            "
 
 SRC_URI[md5sum] = "71f9c5ae19b60608f6c7f162da86a428"
-- 
2.27.0

