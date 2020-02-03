Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.2836.1580756527924678211
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 11:02:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=myVH5/z/;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: nick83ola@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id a6so19666574wrx.12
        for <yocto@lists.yoctoproject.org>; Mon, 03 Feb 2020 11:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EYRB3Uf6nHXwS+gHw0T4DbUQhSMnoze0rGN1pRQ/FdY=;
        b=myVH5/z/hg6/bXXJKZtR/M6ISp4bcP4dyfbmfih0QdPMcYuUFHCG9/BikUmOrxNjkn
         CRXSHdN9Dkhc/K7bNH3QEUfd8VvpY0YTRO6uL/a0bF5At9ba6k7hRhOu3YjZ9ynTFOZT
         Y39GYSvvu1Ppfik1fKTe0HXyvRSSMZG0vPCnhl1Pzw+DjW5L0ZZlczc5ljDG7LYN5VWm
         KT1adSKZFbY7k2YpqSXmbUY90tZsIdk9Xh368RmEmyR8eDT+5/Q7M1fvuiSLe2kL3rSL
         Tt58+B04SAqsFpLSCvZUWkKdxkt2zjxslhoOg6gIKKEjqu/yfTXIzAHFRGnTj5sl8BFQ
         JqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EYRB3Uf6nHXwS+gHw0T4DbUQhSMnoze0rGN1pRQ/FdY=;
        b=IpeXXLqKU6Y5lCGXYCc+bY9jg0Cqits0co/Miq7iXYzAu0n77NjyfRbGWz8fjpQPgI
         IoQAgATmr0sivT3sFU5aIRMYNLkFX7+fMsoAn69Ajeu0j/ZQxmyv1vJqSTtmeFd3X/Os
         UIG1C4akoUAvJA76EygbQmswTJnOXD+3elDHiMBUPU+wAXUHA1uwdvcmuoZP54dGD9IE
         yS/kjypzvyNOJxbghABcqtSrCwhol/Ri8hWnG2YRnxvzaPkwoCfNag7nlevjmORMGdyT
         bt8ZInmqR1dj9eGarACBeuBxl1WE5HJlrPBbac1WynDNg+WpsbWkJ2RIm7B0S5vPgNNP
         z+NA==
X-Gm-Message-State: APjAAAUCvAKMMhaL1EjZWM5vlyEqIg1T+l6Kx7wq3m1I0hDHP+4Oybxf
	f3T2wobsXRrVOaMcr3BChqrqLAXwx9Y=
X-Google-Smtp-Source: APXvYqyu2VzXft6rc0BGpdzQmQDY+FMl8GHVO/Kyr2dbNPvn0OgdPyJfM13p4XTT1/ffNeUsoV3F4Q==
X-Received: by 2002:adf:db48:: with SMTP id f8mr5597236wrj.146.1580756526044;
        Mon, 03 Feb 2020 11:02:06 -0800 (PST)
Return-Path: <nick83ola@gmail.com>
Received: from nick-bbestie.garage.tyco.com ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id b21sm378562wmd.37.2020.02.03.11.02.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2020 11:02:05 -0800 (PST)
From: "Nicola Lunghi" <nick83ola@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2][PATCH] findutils: fix musl compilation
Date: Mon,  3 Feb 2020 19:01:17 +0000
Message-Id: <20200203190116.10158-1-nick83ola@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

see patch and commit: e42ded0 coreutils: fix musl compilation

Signed-off-by: Nicola Lunghi <nick83ola@gmail.com>
---
 ...charset.alias-when-building-for-musl.patch | 38 +++++++++++++++++++
 .../findutils/findutils_4.2.31.bb             |  1 +
 2 files changed, 39 insertions(+)
 create mode 100644 recipes-extended/findutils/findutils-4.2.31/build-don-t-need-charset.alias-when-building-for-musl.patch

diff --git a/recipes-extended/findutils/findutils-4.2.31/build-don-t-need-charset.alias-when-building-for-musl.patch b/recipes-extended/findutils/findutils-4.2.31/build-don-t-need-charset.alias-when-building-for-musl.patch
new file mode 100644
index 0000000..cf25f28
--- /dev/null
+++ b/recipes-extended/findutils/findutils-4.2.31/build-don-t-need-charset.alias-when-building-for-musl.patch
@@ -0,0 +1,38 @@
+From d7178a76d066afdd487047574ffe840999201de8 Mon Sep 17 00:00:00 2001
+From: Nicola Lunghi <nick83ola@gmail.com>
+Date: Mon, 3 Feb 2020 18:47:03 +0000
+Subject: [PATCH] build: don't need charset.alias when building for musl
+
+Upstream-Status: Inappropriate [required for findutils 4.2.31 (GPLv2) only]
+Signed-off-by: Nicola Lunghi <nick83ola@gmail.com>
+---
+ gnulib/lib/Makefile.am | 9 +++++++--
+ 1 file changed, 7 insertions(+), 2 deletions(-)
+
+diff --git a/gnulib/lib/Makefile.am b/gnulib/lib/Makefile.am
+index 90351b3..1b06b16 100644
+--- a/gnulib/lib/Makefile.am
++++ b/gnulib/lib/Makefile.am
+@@ -471,7 +471,11 @@ all-local: charset.alias ref-add.sed ref-del.sed
+ charset_alias = $(DESTDIR)$(libdir)/charset.alias
+ charset_tmp = $(DESTDIR)$(libdir)/charset.tmp
+ install-exec-local: all-local
+-	test $(GLIBC21) != no || $(mkinstalldirs) $(DESTDIR)$(libdir)
++	case '$(host_os)' in \
++	    linux-musl*) \
++	      : ;;\
++	    *) \
++	test $(GLIBC21) != no || $(mkinstalldirs) $(DESTDIR)$(libdir) ;\
+ 	if test -f $(charset_alias); then \
+ 	  sed -f ref-add.sed $(charset_alias) > $(charset_tmp) ; \
+ 	  $(INSTALL_DATA) $(charset_tmp) $(charset_alias) ; \
+@@ -482,7 +486,8 @@ install-exec-local: all-local
+ 	    $(INSTALL_DATA) $(charset_tmp) $(charset_alias) ; \
+ 	    rm -f $(charset_tmp) ; \
+ 	  fi ; \
+-	fi
++	fi ;\
++	esac
+ 
+ uninstall-local: all-local
+ 	if test -f $(charset_alias); then \
diff --git a/recipes-extended/findutils/findutils_4.2.31.bb b/recipes-extended/findutils/findutils_4.2.31.bb
index 7dee018..5fb1f65 100644
--- a/recipes-extended/findutils/findutils_4.2.31.bb
+++ b/recipes-extended/findutils/findutils_4.2.31.bb
@@ -8,6 +8,7 @@ SRC_URI = "${GNU_MIRROR}/${BPN}/${BP}.tar.gz \
            file://gnulib-extension.patch \
            file://findutils_fix_for_automake-1.12.patch \
            file://findutils-fix-doc-build-error.patch \
+           file://build-don-t-need-charset.alias-when-building-for-musl.patch \
            "
 
 SRC_URI[md5sum] = "a0e31a0f18a49709bf5a449867c8049a"
-- 
2.20.1

