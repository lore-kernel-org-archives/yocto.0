Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web12.2939.1602957838699172611
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=r+0DjYni;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id t18so2921542plo.1
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=loxyxutNqkTVGXKWozTiWRUDkIqJb41aES3oqbLuEW8=;
        b=r+0DjYniNj2t5jZsF21mHA5U3CXlzsN3GNL2VG9rdO51QhJZHB2dj99l21rouf/pOJ
         jrF73PAmQpRy/+XAB9jkLpFdtBl72gxZPdHUyLh9iY2IMozkWGBMSJ0xSftcs8tx+lJJ
         Q2Z9LNwmbuLOXhmXfH8D14J5ShLnlZs7AYlNbTWsWUlQL2RdDzRrbkIYOMCNKbh+sAw6
         3FKnbyQcWoF2syEpxrghIto38yZvFBS2KIoFjjDSNcVzMeMu/zRXFEpVHVbYGpLXaM8q
         d3zS21lYU4tpmkfnBUKn9BAX6T48qUxUJIUMelhvaHJ1VUff0gjgWAUf201mS0AGy0AV
         TYww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=loxyxutNqkTVGXKWozTiWRUDkIqJb41aES3oqbLuEW8=;
        b=G6OaeIj+E9cI06HnyBecLxUpa01ZTI6URbOUuOTfWsO+bMSo4LVWlewn7xmmcuUirH
         cwJI2UjM8WIo+1bRSeUZwSB96SU3/H2zgGPG0A1fETtNTLdWHwIrMuHaep+uvvo/FCP6
         9uqiey3HKofc2XCuRRW8kDb4fR3SyPZAiOpG4WinGHInQ6t0seaDjUE/ZN/8ksSRhJJm
         AHeZmcz25R6ZDesU7U8oWzzyMadGU2ce4j46mwSoF19qZ4CNtDHF0h0X84r7okVKQzBi
         GYFEmKoLcCSFHh+R/ywXQPEsqMsJTpHj9//j9bvzX0GPkw4U+z+DP16ocKgd1R3Mxl5r
         n4xg==
X-Gm-Message-State: AOAM532nFRAQQcmyaOU0Bu0sF+1E7lAwt78tRevMqJzmV1pske00GOx6
	x/B5L6834oSU9n/GPaPQPb2s13MMpHM=
X-Google-Smtp-Source: ABdhPJxQPoG8vV1haufZMTCClEap2A7QCudIGpouRzmXNmXWHKi+8N527lATfr1ExKiYQs01mVu/Jw==
X-Received: by 2002:a17:90b:4d0d:: with SMTP id mw13mr9735733pjb.36.1602957838095;
        Sat, 17 Oct 2020 11:03:58 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:57 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 21/32] apparmor: exclude mips64, not supported
Date: Sat, 17 Oct 2020 11:03:18 -0700
Message-Id: <aa5a6f7d12aef90db0de84be05b2be76ecf88f90.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit f176756890766bc9a6a00fe83bfe8e3c9bc13d07)
---
 recipes-mac/AppArmor/apparmor_2.13.4.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
index 552cac7..dcdc1f7 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -30,6 +30,8 @@ S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
 
+COMPATIBLE_MACHINE_mips64 = "(!.*mips64).*"
+
 inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages systemd features_check
 REQUIRED_DISTRO_FEATURES = "apparmor"
 
-- 
2.17.1

