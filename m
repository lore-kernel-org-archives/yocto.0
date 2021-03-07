Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web08.22548.1615131325086655779
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 07:35:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=twWCIVJd;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id t9so1685927pjl.5
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 07:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=B2FE1wAkkq4dzPDpj7V7vzuvxopXGvsaEG3NnuTXh+g=;
        b=twWCIVJd8SSb9tmmcKRPoUjdT8dpu9NEcWocKstHxY/AzjJ4b8PBShh055OL3aNyK1
         6RxzfueRcPUKwRcc+YQK6+D1uGMKijYvDRG/KurCGgRgs4qKpHBLPtkFiwgPUqDYBO1b
         b3VGupWQlSp3yjo4E0Jtl+jVpTiOJBtHABywptQETnpMmdeP2YrViTSByisZTRAxedrL
         748GZhenyVly57Bp3gyruj24q63M5cq9TBtxcUb3E6FL2zpw2h3z+l1PbcBOO6XoxG44
         Qmok5zwtve0LNt/Sln97SELWG5cU+bqkqwpjkD29PYd3F5ZFMY3aik053po5RDhunX+q
         UJkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=B2FE1wAkkq4dzPDpj7V7vzuvxopXGvsaEG3NnuTXh+g=;
        b=CK+vuyqn/QwP98z0Y1fnXaXyDZINtsHVC+VE7fdALQSNPhcEd2Tu0Ifk7ntrHPxLBp
         q/G+qNlaTIINCePCrO1Z2EVBX9/Xkz5Befff/tyQRrnxnKOkGxFkasVPdtXER7/nfetB
         1QlL6LySd+5dat4r4HhgNGbMZSdBXPrgEZcsn+B6sQl/4rq+ZIqhS3dy/PRF6BbF9oLK
         8m2VAKgSdzEDas7gKeGpth8oEoNgTTp3WEibtBHQYmFJwFGNDcbaayMlgurytJQN1yND
         QVpkL0cf35KVe4+YCanEXvNv5Gpp4GlY3y74R7qsE4Bj4NyMaGtyxGmrv/dX/Wwj67QH
         V5yg==
X-Gm-Message-State: AOAM530ErEnGuUj12kTVtFeVtxZeigYgW4LSHI6WtJsY6yrSDI7/vW9C
	bUdN+wR/llegTs2bMbx9DdoMLWKd5B8=
X-Google-Smtp-Source: ABdhPJzhntyTsrAk9Wg5s2l18Lrtej8jEXp+w2nFCi9PZnaQ0Uuj/nip8oOVybaXyxz7Pj9CPYFYiw==
X-Received: by 2002:a17:902:8ec1:b029:dc:8ae1:7a22 with SMTP id x1-20020a1709028ec1b02900dc8ae17a22mr17024967plo.6.1615131324175;
        Sun, 07 Mar 2021 07:35:24 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4de0:7e40:32a3:ab29])
        by smtp.gmail.com with ESMTPSA id w26sm4745997pfn.33.2021.03.07.07.35.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 07:35:23 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 6/8] tpm2-pkcs11: update to 1.5.0
Date: Sun,  7 Mar 2021 07:35:15 -0800
Message-Id: <20210307153517.5761-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210307153517.5761-1-akuster808@gmail.com>
References: <20210307153517.5761-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-pkcs11/{tpm2-pkcs11_1.4.0.bb => tpm2-pkcs11_1.5.0.bb}  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-pkcs11/{tpm2-pkcs11_1.4.0.bb => tpm2-pkcs11_1.5.0.bb} (96%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.5.0.bb
similarity index 96%
rename from meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.5.0.bb
index 6beb67a..d53d4fa 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.5.0.bb
@@ -10,7 +10,7 @@ SRC_URI = "git://github.com/tpm2-software/tpm2-pkcs11.git;branch=1.X \
            file://bootstrap_fixup.patch \
            file://0001-remove-local-binary-checkes.patch"
 
-SRCREV = "78bbf6a0237351830d0c3923b25ba0b57ae0b7e9"
+SRCREV = "5d583351028eebd470f50ec35db5dcf00533df31"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

