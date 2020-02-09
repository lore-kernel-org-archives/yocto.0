Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web12.9968.1581269218138179703
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Feb 2020 09:26:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kWa1TMBo;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id n7so2489580pfn.0
        for <yocto@lists.yoctoproject.org>; Sun, 09 Feb 2020 09:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=XVpAVVpkSvPjEQT6QKYYq5ipAQzlvLjc3REIYXnsJkI=;
        b=kWa1TMBo+OEfLsN0Nhqjx2/wVxxSt0TarvYtMlCrLZlDKmSRFzvHi+aogFTakLfkHv
         czXgPYPVcuDDH+lcCCofmgfJdrw1i0RuOzGwIxbf1DrRR3h/0xjOopXWedEzuxCujgnC
         fQ0kLvpR9Gs3S4jIb6qrbU3hhsqxZadKj5mI09y4dmS2lnw1vcYr8nczefngR16hqesX
         T61VVBqK9C+gUhNLj3CAPTSl8k59ckdpgU7lUQtha0pNoV7c+tj52DbbZDzpOY3x2OQg
         JuYb+09Q09+BZl8okITd+JwwD2OF04AaWBTQt/fPrfkmIqzYMf53bsiJrPkbBIedcQUO
         Ed1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=XVpAVVpkSvPjEQT6QKYYq5ipAQzlvLjc3REIYXnsJkI=;
        b=W+OwJ3MKcK4xr6OtkB5faXQ7ZEVZScYGcrYBOuTK+W6dZNMuocIhJVGGwNLMffDq97
         CEUVIoSRa1MUKoH7Z9lOT+2cLLi3+E0MwuYPSLLCEif1V9xphO2PQ9G7wp8in+1zAzQX
         TpYqlp2FrUEaSA03VQQQhTlfh9qAcgFabDVRmxydEvLe+VA6ODErXnSMQw5D4u6ex8NF
         KYZ/q2z7zQEKgiTYUzFxHC2tmCJJC5FomgHkmehjcLBaT9I+d63iEkvgnc6i533o1Jzn
         b6ERlgeTGmAZeOfOY73BfEOOMhRPEw5WEP9NKtEesBazkkqFoQ9ZFcAKfeVGCytyOWfA
         IzBQ==
X-Gm-Message-State: APjAAAVoJNrZ4rTxmiroDp9eGDRzP+UOBQqNmRN+BeRb9lG0EzyjDqAb
	6LhvE8qNp+877fi6Y+Dps0OEvZNo
X-Google-Smtp-Source: APXvYqwl5ubhZmT7mkc7q/3Fba/jbuUocvm9rPKFy+W0Sw5OEgYCQK825Gr6QaHgw0xdW08NqMSR/A==
X-Received: by 2002:a63:591f:: with SMTP id n31mr10027064pgb.108.1581269217300;
        Sun, 09 Feb 2020 09:26:57 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:154b:3780:5122:4aa9])
        by smtp.gmail.com with ESMTPSA id x143sm9956609pgx.54.2020.02.09.09.26.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2020 09:26:56 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] tpm2-tss: update to 2.3.2
Date: Sun,  9 Feb 2020 09:26:53 -0800
Message-Id: <20200209172654.1111-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200209172654.1111-1-akuster808@gmail.com>
References: <20200209172654.1111-1-akuster808@gmail.com>

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

