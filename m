Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com [209.85.208.195])
 by mx.groups.io with SMTP id smtpd.web12.11832.1583412494439964404
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Mar 2020 04:48:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LwA57sVU;
 spf=pass (domain: gmail.com, ip: 209.85.208.195, mailfrom: jonatan.p@gmail.com)
Received: by mail-lj1-f195.google.com with SMTP id f13so5934769ljp.0
        for <yocto@lists.yoctoproject.org>; Thu, 05 Mar 2020 04:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9S2SccGsZwOZ7OXFYPbabPdLLPFI/qmSOS/JoZ/2tWA=;
        b=LwA57sVUg/U3zUeFYuke/+XGGK+wiBeE97Tn1w6iwGztunTrB4hWT7sRYJcAHTv7e2
         B8/T4k0o8cuLiAuAyt+OqtmlpMcf16OJ2u+2W6fxYH/HAJXw3s8qN2Nu/ya5KSMreiYA
         scIGKNFo6zvHRz/H1+RAxyvYT7+4JXfWVGl/UjFgNh5ORZIKG3FPkm/6XgL0og0NfeQd
         0ct9I/PocRwEsDY4Xi0OWIdThmtbh8R4r4S7o+83WJSWCj/NnXCHzMNolyIg8LcBMSAw
         62wWwhJfrgqgr2PdRT4bQP3cr929PrYsBuQd5xzvq8dt5CcMZUIUiU3BzQydjjtW+OjH
         lm4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9S2SccGsZwOZ7OXFYPbabPdLLPFI/qmSOS/JoZ/2tWA=;
        b=bVunPklscJu8eQnOUDHSBmvjd+PPWn3FVbRwRPW5/0SUa5KaGTncJVba1JhTP8vrSF
         KIO59F4eU11irnyH7KW69YGKZSMwbTykmKVy8FZVLHAx6+5es/ZWxNU2zJ7jpj1woSwY
         5KHU2R42S0xJVmI1adGrV8YUduRngCuMYpHvHk56QY/SgsECrUgtV8MfBcr1zETS9r53
         F0t6KFoJC0qzOrYAtHbjvwmWGjAPGW0db5oZOFEJVLMhrhQ6sC4XfxAI7CitHXIutF4X
         NjyOiJZZDMcv2FaG8WiNSQyVurTAlAw2N+V2WGgPFU7A/82Bm7QratU2+X2nAl2grfBa
         E0Qg==
X-Gm-Message-State: ANhLgQ0Hsmo0791mJ4bL54ULSYDBQk5OlzS/bIjpQdlpLyO9RWtYGwBt
	y5HVW4RrO+NOjHoW3PybM+05+OVC
X-Google-Smtp-Source: ADFU+vtZlQPgHrUrVXx4G4n5NWmy+O+Hvk6X/5HhP0k2BCHSJDwHDtbQ8Na55cgumoDvc3ky005s0Q==
X-Received: by 2002:a05:651c:545:: with SMTP id q5mr5152902ljp.139.1583412492165;
        Thu, 05 Mar 2020 04:48:12 -0800 (PST)
Return-Path: <jonatan.p@gmail.com>
Received: from X1.jptk.se ([2a02:aa1:101f:619d:9533:e6b4:96e9:5f67])
        by smtp.gmail.com with ESMTPSA id x62sm2147926lff.58.2020.03.05.04.48.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2020 04:48:11 -0800 (PST)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH 1/3] sssd: Add PACKAGECONFIG for python2
Date: Thu,  5 Mar 2020 13:47:38 +0100
Message-Id: <20200305124740.2582832-1-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fixes the following build error:

    .. snip ..
    | checking for python2... no
    | checking for python3... (cached) python3.8
    | configure: error:
    | The program python2 was not found in search path.
    | Please ensure that it is installed and its directory is included in the search
    | path. It is required for building python2 bindings. If you do not want to build
    | them please use argument --without-python2-bindings when running configure.
    | WARNING: exit code 1 from a shell command.

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index c381c32..9feba14 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -33,6 +33,7 @@ PACKAGECONFIG[ssh] = "--with-ssh, --with-ssh=no, "
 PACKAGECONFIG[samba] = "--with-samba, --with-samba=no, samba"
 PACKAGECONFIG[selinux] = "--with-selinux, --with-selinux=no --with-semanage=no, libselinux"
 PACKAGECONFIG[manpages] = "--with-manpages, --with-manpages=no"
+PACKAGECONFIG[python2] = "--with-python2-bindings, --without-python2-bindings, python, python"
 PACKAGECONFIG[python3] = "--with-python3-bindings, --without-python3-bindings"
 PACKAGECONFIG[nss] = "--with-crypto=nss, ,nss,"
 PACKAGECONFIG[cyrpto] = "--with-crypto=libcrypto, , libcrypto"
-- 
2.25.1

