Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web10.9608.1581195455550251834
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Feb 2020 12:57:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=e+WVHybw;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id y8so1171384pll.13
        for <yocto@lists.yoctoproject.org>; Sat, 08 Feb 2020 12:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=XVpAVVpkSvPjEQT6QKYYq5ipAQzlvLjc3REIYXnsJkI=;
        b=e+WVHybwlmkClfTLYtp8kbxePMpi0QXIW5HeQNfrclU7CdKRY2+y1l6zgI1ZqfefWj
         +coHoaN4avV8JBicGcCfRnMI/U9zSVcBZcwEICRxx1MLrDlqQNEifxQpyS2RdZmUaMzm
         Bqmu9bkWL+HNr3rbU6EjoLyvgrNGUff1vzZ9D4ipWs7P2S3Hmd7ZhjpkKuBoPmAZuzei
         eIv2IwU6TISfT6P04s0b8W8xX9KPi3sL6aHPPgDVn5s6iO3y4FpJv4G4+UxKFuGQk4Ku
         qejKD9vTgKAJ+B0PVCvc2/oFRzfWFpxh2bxgrL3n1WWFKuGF/r1kLrWFocQA6NHyhRR/
         9Q6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=XVpAVVpkSvPjEQT6QKYYq5ipAQzlvLjc3REIYXnsJkI=;
        b=qQ1vjdEUbrz0ugF46hvgfbOLHTPlz2UHYxItHxP41Opz9Hy4C5nepVieR8T/LfcZ5S
         ep6iszILORiq0KUrvHoT0Bhm8+KPwcqrygvDDHCXUkUFxXlMBIwsTvYXPWXd0EaXv42h
         8zOQbD2pVhip6ym8DWqCOQwPkQvp/bWN8jwTWEFBzl0LYpJwNM2CxVmvLjB+8Qk8XeFE
         qChR5mW2gmI2/zUPqVtVJdehectshDm8VL8LTDl0MUBfv0Win36ol1GT8VFIaPRHesaf
         liAmUelh5VKX+2KxjBRdGAhPp2dv+TyfRpGJez0HgHeSACbF0A0ZprPCkj35keuzA7/D
         /vGA==
X-Gm-Message-State: APjAAAVN2SksElVy3/sbQfYdEBjXYF8ht34JKMXshBDYBKPLjrk771Yx
	1COhQ92v6GAWmtWKm9iPUigLadv9
X-Google-Smtp-Source: APXvYqyCjI4xp2WglxD1DuKN83QiN5Lvqtm3LJeDKY0Tw7PMP0GEglAQyezIkb2jB+iTDfQt52ibng==
X-Received: by 2002:a17:902:7089:: with SMTP id z9mr5201687plk.228.1581195454845;
        Sat, 08 Feb 2020 12:57:34 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:2c7a:b2c:b402:2f65])
        by smtp.gmail.com with ESMTPSA id k5sm6839328pju.29.2020.02.08.12.57.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2020 12:57:34 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] tpm2-tss: update to 2.3.2
Date: Sat,  8 Feb 2020 12:57:32 -0800
Message-Id: <20200208205732.24783-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200208205732.24783-1-akuster808@gmail.com>
References: <20200208205732.24783-1-akuster808@gmail.com>

clean up reciped. drop git fetching

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2-tss_2.3.1.bb => tpm2-tss_2.3.2.bb}   | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_2.3.1.bb => tpm2-tss_2.3.2.bb} (72%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb
similarity index 72%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb
index dfdf734..135efed 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb
@@ -8,22 +8,22 @@ DEPENDS = "autoconf-archive-native libgcrypt openssl"
 
 SRCREV = "a99e733ba66c359502689a9c42fd5e02ed1dd7d6"
 
-SRC_URI = "git://github.com/tpm2-software/tpm2-tss.git;branch=2.3.x"
+SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
+SRC_URI[md5sum] = "fb7e6d371959a65dc6d129af81739742"
+SRC_URI[sha256sum] = "82929a0611f39246e09202702a61b54c980ab694626c1f5823520ddf75024fa6"
+SRC_URI[sha1sum] = "c24ce8b20a8686ada775239389292f6d78020668"
+SRC_URI[sha384sum] = "a0c023c024efb6c9906df1e143d692f44433de332b616dc0584c9b4cd4fb0ad544308f291892e91c5a52ef1a4b2abf7f"
+SRC_URI[sha512sum] = "7b679b54f3478c3adee5b6c3135cbe491ffd9f4712991f465edbd6c7d2831e5f1537038ec36f288e9545c719d5d167b61116c924cf5d816220615d0b58a1d436"
 
-inherit autotools-brokensep pkgconfig systemd
-
-S = "${WORKDIR}/git"
+inherit autotools pkgconfig systemd extrausers
 
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
 
-EXTRA_OECONF += "--with-udevrulesdir=${base_prefix}/lib/udev/rules.d/"
+EXTRA_OECONF += "--enable-static --with-udevrulesdir=${base_prefix}/lib/udev/rules.d/"
+EXTRA_OECONF_remove = " --disable-static"
 
-do_configure_prepend () {
-       ./bootstrap
-}
 
-INHERIT += "extrausers"
 EXTRA_USERS_PARAMS = "\
 	useradd -p '' tss; \
 	groupadd tss; \
-- 
2.17.1

