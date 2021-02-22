Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.36050.1614006867843404806
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 07:14:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NQwDJDtR;
 spf=pass (domain: gmail.com, ip: 209.85.214.172, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f172.google.com with SMTP id e9so7922439plh.3
        for <yocto@lists.yoctoproject.org>; Mon, 22 Feb 2021 07:14:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=Gwre47M0KZc4myxhBqPs6TDlh87IRjGlJmyG/5y5bdA=;
        b=NQwDJDtR3W9mPA+2IWTlhmEh2yI/yFEZ86JvfwR9Xr68qoUw/2kP/VgTcqXypawCYU
         +HhNpeKuB3KnfSg/PERIV+jki/p45coKMW65VVuRs+UgE4U8fWZbTbHgfabalyR8Fr0p
         kUC+amIId+kCqPnK+0QAK7FM8nxlkuy2abu0Yh4NTVJ6gbdxTn5vrVFvGhx0UdPAt7LB
         /5TYvB4Js4rhFR/D1dh5m2fxwwn0tCCs632+sdfuYm3SXEMcwQlTrY9gh9ib320g0XIM
         Lt/t7L5p2+vozMQVtU1cjU+ZG3H6+GFjOvGHpfow/GgVQUlr5pGCZf3be7cG47KzbDFo
         GWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=Gwre47M0KZc4myxhBqPs6TDlh87IRjGlJmyG/5y5bdA=;
        b=U0u9hUVtvEc5bpPEaD9w2yli/fbwAt1bTZPC8cpHijsF+caZUaL/jPygVGxWkuaIFz
         z/PHHk7Ea0bM5/uQ73qjEPfjCZJ4BCLRvlsFbASzTA05OH//chRKU/6V6lo5WzDJmtnJ
         VYVbub7lBCk03wJcJPIOYr68oDHKwOHk3ELcYUzOGqf1DW4bFCkhAf1HYFwMfBTKRdVJ
         jhdlNUt5CW+k6sGUbvbUY1lv30T+xPgPohHOs0R0O86QSO1t+MYtjAmllPalhOnwZLqF
         9pXkP0B937hE8zjOPajxL0GQOmFmPugsF1Uw0fB60ttQyfaYDE0/Y81Ui2kIn2HIuc/l
         mtjA==
X-Gm-Message-State: AOAM531RYrEZaahXNT1cbphI0rF5FiIsHJhYe9jJ7qN7/xT8l/AgvifZ
	pWCtti+rRm9sNOYF0AA7CB7iluC2fOwJJw==
X-Google-Smtp-Source: ABdhPJw1JWeRhiL5mjfPvv1tuzn+SaT/Z2NQsVlottMAgLDghy/Mx0K6RlSdOLNH9PtTyQZ38rm4aQ==
X-Received: by 2002:a17:90a:9918:: with SMTP id b24mr24622746pjp.127.1614006867077;
        Mon, 22 Feb 2021 07:14:27 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e1:8c0f:8c00:9696])
        by smtp.gmail.com with ESMTPSA id 134sm20069288pfc.113.2021.02.22.07.14.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 07:14:26 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/5] apparmor: Inherit python3targetconfig
Date: Mon, 22 Feb 2021 07:14:21 -0800
Message-Id: <20210222151425.13534-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_3.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_3.0.bb b/recipes-mac/AppArmor/apparmor_3.0.bb
index 35e95a0..015205d 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.bb
@@ -39,7 +39,7 @@ PARALLEL_MAKE = ""
 
 COMPATIBLE_MACHINE_mips64 = "(!.*mips64).*"
 
-inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative cpan systemd features_check bash-completion
+inherit pkgconfig autotools-brokensep update-rc.d python3native python3targetconfig perlnative cpan systemd features_check bash-completion
 
 REQUIRED_DISTRO_FEATURES = "apparmor"
 
-- 
2.17.1

