Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.2916.1602957820548388263
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iCGhwJ1+;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id f5so3410696pgb.1
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=vBlz6pL2F7PWGkwoT7k/AtZMZHGme4umKcMh3AlwTDg=;
        b=iCGhwJ1+reQpHNSGw8Q0+FrXCEffDXWV9oQKoYEHfIFLfAfO8V3CbUOV1+agC4bs1R
         z10TkpzDMmscyiDRnuhfZM5kbC6a6wCaylElYxO6bfct6J1ezcQWRMEO/7iUG39b4Rmt
         Nf/k2qi5rfuO+l5vvm9StoHG0tgb6Jw8NrDq3V5RkTNLQTQdKz2t2iSGz4Bab3HSpWWp
         PeqYBl2jaF33YMr3JTuZnQUDNwLvub7l5YXGYopVmaMjLlAJTaE4HwXiKz92gr//WxHH
         cNwywl1Py9H99pa+mKs/q/kORMy78F61y/rwpj+aIWWzN2UG+U9fvfgEGlwkbkTbCP+t
         Ixow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=vBlz6pL2F7PWGkwoT7k/AtZMZHGme4umKcMh3AlwTDg=;
        b=MmNg+d7WnEyw3jkt7l9siUfV2CDzAu73utChJutlwWDvhLONarMeaHUP6HHhgNNCsj
         37pf7J+IRDBWPw56dH3t3lU1AHRFG65cA1mwAfFAmfM+TxaPQvm2AyZaDZiyO9yEAgpX
         NEnbMZJNQ6ClbjfM/jWxwWkOk87kCWMeUxAvhDtHrYgnIlyHili6Haz7/t2ocUm7R7Bz
         KjW+D1DGxjHIt5Bvi7hPmypyYYdv+OYaTtOQcCTk6doXGipG8iLq5m++LXFpANj+36Nw
         GGqnikPFdpmSYl6Br5snmfZJNw8ZTKjv7XuW9EVWfPDiGF6pDmDHo3rMJHxJ9VPvCb4T
         gYlw==
X-Gm-Message-State: AOAM533A78wG2Cci/BMJwQYLjUS0N22CPJz38SDHSqHM741yDmIbLlg3
	n1E2eMAs3rt7+lKRw2HxpikL1JY4x/0=
X-Google-Smtp-Source: ABdhPJz+QweNgOdnD1MhT+gEyl3qjxzRLpPYkf63uUK6dXWYYIVGTO8sW+h6oIe4jwhwNnZqaBz1Xw==
X-Received: by 2002:a63:cc53:: with SMTP id q19mr7935370pgi.339.1602957819943;
        Sat, 17 Oct 2020 11:03:39 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:39 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 04/32] libsecomp: rv32/rv64 target builds are not supported yet
Date: Sat, 17 Oct 2020 11:03:01 -0700
Message-Id: <bb321aa1d760e9fa1635137bee0c8c726fa9868b.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit b5a5cbe1f511468af0b0673f88c83c3dd1c77da3)
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

