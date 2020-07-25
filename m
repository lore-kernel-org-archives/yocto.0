Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web12.10854.1595688081772234858
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jul 2020 07:41:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mhvqZrC/;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id a9so6844507pjd.3
        for <yocto@lists.yoctoproject.org>; Sat, 25 Jul 2020 07:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=sOJpcJOw0vMESNk9B0rueI/8tPMWk/KoDeiv2oNZEJU=;
        b=mhvqZrC/wGVnZB+Ndzhlwop1bfA/l6Ut4acZ07LkzXfxJc32dX5pk9fKbMd0YX8Y7w
         93E255hbhnEniRnuUJFhKaMIu7wJRpBNL/8MhX4A0tqgmjHCjfaLU12MpwWin2Y77Etc
         VKpI7WMDkBPs44qDFnVjw+hoG0PwnghxgWtZRZSuYjpSCwE6FypprSVFcT6tkaB0Ylyj
         I4lNxY12wXcXAivn0Eh58xFSuR+lON+tjbJORnoftxVsMSNcvxpa7APNE1myPlmtOVbP
         CABSAJgDQEIS4Vsvvx0L+GTTgFh5Q545nf0cRjzjLPFInwfMtZj5wAuRhE5F/v5iiLdg
         9Wlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=sOJpcJOw0vMESNk9B0rueI/8tPMWk/KoDeiv2oNZEJU=;
        b=cpheYdlrww+c5g6umdrlpTjnFhAJD9KzKakx6Lpmn80jZjr9KjD8H0V0u1ATRtbB9E
         cm14JbmHhRXXodLl6M9d9RwJQhgk/Ies9iDufqyg7EcRHIVsZEynd5wg1NsA3YrTYXc+
         DZNNfGVUTr6B8KX/z3TRLP/8TrgnhT/DIyDIrwZf0Bs1yn9qD2bRTYAigk7+y8gkYqZq
         aHb12tLsrHVImuHh38A2NnW28q+0zh8SU7s34UAmgBANqmSmZdBj2LrYeJdhpXSYkEhd
         rUdriEZIZbOZxcVutZlshdfQ94P8UjqB1xbChs6pN/V+NMJSk1zKWSGQKcBxdc8/MS32
         6apw==
X-Gm-Message-State: AOAM53142L1V7n6XHrJkg3yiCtVKNiXfj1vl6xM5SvzfipVUEhsH4FYp
	Mm5SVsiZXUBJWeqD1+ImYMQMFKdttmo=
X-Google-Smtp-Source: ABdhPJxsq14nufH15fD1TX9oS71uKu6yQFXaItk7ImVS2psU5LtOBk9KD0zSK181ncSd39XBkT2QqA==
X-Received: by 2002:a17:902:bb83:: with SMTP id m3mr11373984pls.209.1595688080824;
        Sat, 25 Jul 2020 07:41:20 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id o8sm8721745pjf.37.2020.07.25.07.41.19
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jul 2020 07:41:20 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] libsecomp: rv32/rv64 target builds are not supported yet
Date: Sat, 25 Jul 2020 14:41:17 +0000
Message-Id: <20200725144118.13387-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp_2.4.3.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/libseccomp/libseccomp_2.4.3.bb b/recipes-security/libseccomp/libseccomp_2.4.3.bb
index 9ca41e6..37d3573 100644
--- a/recipes-security/libseccomp/libseccomp_2.4.3.bb
+++ b/recipes-security/libseccomp/libseccomp_2.4.3.bb
@@ -10,6 +10,9 @@ SRC_URI = "git://github.com/seccomp/libseccomp.git;branch=release-2.4 \
            file://run-ptest \
 "
 
+COMPATIBLE_HOST_riscv64 = "null"
+COMPATIBLE_HOST_riscv32 = "null"
+
 S = "${WORKDIR}/git"
 
 inherit autotools-brokensep pkgconfig ptest
-- 
2.17.1

