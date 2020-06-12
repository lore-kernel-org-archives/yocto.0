Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.24906.1591982065094121517
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 10:14:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tdzPrq1u;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id v24so3994896plo.6
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 10:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=WG0kCsiojhej3wvQscnVvWf6IV+NlquDsJBZBo5mfN0=;
        b=tdzPrq1uYfnyBMFFayhZ3Q7OiEK9ODdmyBnHUTq9MiQ9OyLx9yDT9Hd6bQlo07d6Qo
         PLBeZhXmNi2xVjaWPVjYVas5XwmEp4TrjvIwgkEV3PUKh9SsuUqZrh1g/nfoKZQLnIIP
         Wp7LTU5aLNIr2/s+PJUBNd2ALH5mNs8WZwuqtDdHL5WH4WV9IP9OTzsYm0+VJCYSsZg4
         caajqCk3iwYBF14g1Ublk2seK3pA07txOm894OfN4dsMyqt8m6WGJqXhdYcgXxcrN23S
         VqQvqLq8Zo/5q2nHt4ffV+B7Z8ULG5KPf7vVoZe0qBilVyKqZesu59cgJTs3Kc3MLlxf
         yS0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=WG0kCsiojhej3wvQscnVvWf6IV+NlquDsJBZBo5mfN0=;
        b=fCoVkwCRJRdHaeyrH4I+6bGqrbe/ScMvhdH+r+slJFMJ6Pqb34sastKIfzpmLN/cdV
         dHRRUA4ku7YUCGh7geH57LLUI0OJ+NQFnj1D/GrFod7xGXlu/EBvgT+yQhlAxXLe/Z4G
         eRz16IVgJ8fnYU8jgUTS8j6MXUPqieaj53LHGgEisg60vv5sUVEVnLLSs+G8Z1YbdsYA
         kuh+OzgxiMURUuA7BwdovuTabGunSp5LXwuHdkcNSFvBNyiRKuqZvSzRc1X9f4g9Vkdv
         j0tugDKPBO6OVGrzwCezZoe7DpnVMQe9Pf0OLFjE1ii1h0zVkumxxvEeh6b6psq8XHPJ
         LHcw==
X-Gm-Message-State: AOAM5305LZXJzQ4ABksvW/u/oEorz4xUc+PIua0N94ZTc7Q53iNB/Fce
	YWGTzVyQpde2ziFkOhSqU9gmzDkR
X-Google-Smtp-Source: ABdhPJyfMFieCyoS/vIYCXZecYR3DuaxaQAzFx4lDH53MJagVjG8yJu6Lmxlh83dUKfwddjEzF+eFw==
X-Received: by 2002:a17:902:a702:: with SMTP id w2mr3229326plq.128.1591982064413;
        Fri, 12 Jun 2020 10:14:24 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:5030:aa9f:23eb:a3d9])
        by smtp.gmail.com with ESMTPSA id q6sm6687494pff.163.2020.06.12.10.14.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 10:14:23 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/6] tpm2-tss: update to 2.4.1
Date: Fri, 12 Jun 2020 10:14:18 -0700
Message-Id: <20200612171422.3380-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612171422.3380-1-akuster808@gmail.com>
References: <20200612171422.3380-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-tss/{tpm2-tss_2.3.2.bb => tpm2-tss_2.4.1.bb}      | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-tss/{tpm2-tss_2.3.2.bb => tpm2-tss_2.4.1.bb} (82%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.1.bb
similarity index 82%
rename from meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb
rename to meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.1.bb
index 135efed..22b961d 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.3.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_2.4.1.bb
@@ -9,16 +9,13 @@ DEPENDS = "autoconf-archive-native libgcrypt openssl"
 SRCREV = "a99e733ba66c359502689a9c42fd5e02ed1dd7d6"
 
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
-SRC_URI[md5sum] = "fb7e6d371959a65dc6d129af81739742"
-SRC_URI[sha256sum] = "82929a0611f39246e09202702a61b54c980ab694626c1f5823520ddf75024fa6"
-SRC_URI[sha1sum] = "c24ce8b20a8686ada775239389292f6d78020668"
-SRC_URI[sha384sum] = "a0c023c024efb6c9906df1e143d692f44433de332b616dc0584c9b4cd4fb0ad544308f291892e91c5a52ef1a4b2abf7f"
-SRC_URI[sha512sum] = "7b679b54f3478c3adee5b6c3135cbe491ffd9f4712991f465edbd6c7d2831e5f1537038ec36f288e9545c719d5d167b61116c924cf5d816220615d0b58a1d436"
+SRC_URI[sha256sum] = "58d7afcab9ff3daaafb5316e57d2c211118334b470d5a5bc6ceace6f89a1e60d"
 
 inherit autotools pkgconfig systemd extrausers
 
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
+PACKAGECONFIG[fapi] = "--enable-fapi,--disable-fapi,json-c "
 
 EXTRA_OECONF += "--enable-static --with-udevrulesdir=${base_prefix}/lib/udev/rules.d/"
 EXTRA_OECONF_remove = " --disable-static"
-- 
2.17.1

