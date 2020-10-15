Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web10.6042.1602739600233765176
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Oct 2020 22:26:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=o8ylKWSB;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id d28so1869725ote.1
        for <yocto@lists.yoctoproject.org>; Wed, 14 Oct 2020 22:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=8TUeBOZkeq9l36rHyl9znwIrSKc69SLY4Vaq7fn0nD8=;
        b=o8ylKWSB2PqqV91c0bucR+P2UQNEgnUeSw/3LoCPUXytYGw23ZXrx20yVvAJrAfuOf
         RkVoXglzNDWLlM/1CYl3OghcX7SRI1zMeOUgNzqFyp07lvwXw019ZeZuAnP6X4Ox9kvw
         fT4bPyl11OWAWzDzcUQ1rPTRhShO4GU75YvLgLGyeP0BmHh+6dj7oiDB7hxgal1boVGa
         BlLLXUkTyawTwhKG43HiAH7sWD9oid6S5lCyye7kakUZc/MNr3kv7+J6xa31h7VzDRlM
         3CHUm/ftaHGTNcIFswlGKEkx4oOxFy9h47xqNSYLYwXhQiv2WI2GLnyCNPvyXZ6KNUnJ
         DtsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=8TUeBOZkeq9l36rHyl9znwIrSKc69SLY4Vaq7fn0nD8=;
        b=OBetyMegH+RsfW62QUY8DofaHkQaM2eqoNxwYzpzsxVTRsW5t3FYgM/AmAE4o6pLQd
         d/9l2/SI0XALy8Lkl7F/bmE7RglhhIPcx66y0oahsgygeZikkr1+MluOVaz3kmjT/ir7
         5+H9YDA8k8P6YWyoDnhZroGVP6zfx+mB6DyI3jQTcu8weKBKF3KoJH0sQlZcuEO9cX+e
         dxx4Mts+rTNEjxMr/eZmuBIuR3zJYkNoVepsnp0XnuWCcneLU9mhRC1EmbmhvrwPSqEc
         Nm3oSaVyD09uXc9T+qqrmHI5zwz8kYn777JVgqVFAkrwRO+yxXz9ZwIYyfSxhkFUVnPK
         4ORg==
X-Gm-Message-State: AOAM530B6Af5dlTqzQGLHj9cO1BZCJwsjAGLRGWy1ZPo/GOfl3dHPYJ2
	RwFb2bu7ph0ORR4Cjh2288afgV+Bexc=
X-Google-Smtp-Source: ABdhPJzDzf6KNQlUqvzAiIxaeK2Bi4ORv3Vex5Kj/gFWLS2OY/fJrQg3JJSHKNNw6/M2AxXj9vgkFg==
X-Received: by 2002:a05:6830:1f01:: with SMTP id u1mr1493838otg.271.1602739599460;
        Wed, 14 Oct 2020 22:26:39 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:20b4:de17:4e9:6126])
        by smtp.gmail.com with ESMTPSA id l3sm679049oth.36.2020.10.14.22.26.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2020 22:26:39 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/5] tpm2-tools: update to 4.3.0
Date: Wed, 14 Oct 2020 22:26:33 -0700
Message-Id: <20201015052634.23810-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201015052634.23810-1-akuster808@gmail.com>
References: <20201015052634.23810-1-akuster808@gmail.com>

LIC_FILES_CHKSUM changes do to added Copyright

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{tpm2-pkcs11_1.2.0.bb => tpm2-pkcs11_1.3.0.bb}            | 0
 .../tpm2-tools/{tpm2-tools_4.1.3.bb => tpm2-tools_4.3.0.bb}   | 4 ++--
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename meta-tpm/recipes-tpm2/tpm2-pkcs11/{tpm2-pkcs11_1.2.0.bb => tpm2-pkcs11_1.3.0.bb} (100%)
 rename meta-tpm/recipes-tpm2/tpm2-tools/{tpm2-tools_4.1.3.bb => tpm2-tools_4.3.0.bb} (64%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.2.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.3.0.bb
similarity index 100%
rename from meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.2.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.3.0.bb
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.3.0.bb
similarity index 64%
rename from meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb
rename to meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.3.0.bb
index ae01d5e..5bd26ab 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.3.0.bb
@@ -1,13 +1,13 @@
 SUMMARY = "Tools for TPM2."
 DESCRIPTION = "tpm2-tools"
 LICENSE = "BSD-3-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"
+LIC_FILES_CHKSUM = "file://doc/LICENSE;md5=a846608d090aa64494c45fc147cc12e3"
 SECTION = "tpm"
 
 DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
 
 SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
 
-SRC_URI[sha256sum] = "bb5d3310620e75468fe33dbd530bd73dd648c70ec707b4579c74d9f63fc82704"
+SRC_URI[sha256sum] = "ae009b3495b44a16faa3d94d41ac9c9d99c71723482efad53c5eea17eeed80fc"
 
 inherit autotools pkgconfig bash-completion
-- 
2.17.1

