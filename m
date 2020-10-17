Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.3018.1602957850119317083
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uLbCJGh7;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id gv6so3239176pjb.4
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=QiM/TivHiJ8S3dbyFQh45zfMzfJCyrhxI0ThlTnb9Mw=;
        b=uLbCJGh7kpe97XsMqEYKSNuTPnC72WWQkY3GWOAZjo1q5xQ9R+COY5O69HdpvP85sD
         6F0+4bx9HoaiTUOPy9dY/9l5BPrROimBmwbKs2u4JXi991fkKeeDNCHEJMaWZmpNjerr
         X2aFlK5WW2pPbDpRY25ezM++5NDp5v4zsNxv3YUIwXVSTCwZmSt2xoKKfChTD8Ibe0es
         dqFhUrEZ9gJhGQ+YXzvrEAnjwt3lMmiJExKpOiKHd1lw9I4UixS/bazo9JicxWFGtaNY
         P56wxug3qKTTP6rOhBI5fLEMlmHtdkskUZ2Jzdhs7ZOG7uJAZ2dSR0Qu9DT8lz2bZi54
         PRGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=QiM/TivHiJ8S3dbyFQh45zfMzfJCyrhxI0ThlTnb9Mw=;
        b=HUKl4PREFHX0+Ah2Du7Uhs/X++QgDfs2uWxq9otx7OePrUtzYwew3oiXxNsHCY+gbS
         ldchMCE8TvYd7el+7SSwtSHVq502ufMkQS1FHebW9Jn+Cj7m4nQJk7up8gYEWL3Y4diM
         0Uu3FZXqxDezEftLcN6Z5lH5Q67uLsRMsemMeRfcdTzlkQMY5JLZy2FqZFYmQUdbcPB5
         M+lU+45izDbGwFo1q5zoOgJmzPIa/01y8/iAxvHUMkEQp4QSjYBn24RUBEpxCsM4R/sS
         UHZ6sBDoBFivVhz3iSCIPK/3+7aDyBugN2jLK6nCswlME09uZyFq71gw/PJhMBzYhkdG
         0j/g==
X-Gm-Message-State: AOAM531YHzjFQOX1VoCasj+4YU8UrrOTDKIWt5jz12nKl7xugBKBwDGI
	fbdUOv0FTSpD+V2c+sqChvJoMdWYwy4=
X-Google-Smtp-Source: ABdhPJxpxWwTL/Nw909gIGDoNU8oGx1+/sMf8erVmGrULaPrS+OisMANA6hGrzEkVW6ALRTQT5uG3Q==
X-Received: by 2002:a17:90a:fd93:: with SMTP id cx19mr9525084pjb.37.1602957849476;
        Sat, 17 Oct 2020 11:04:09 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.04.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:04:09 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 32/32] apparmor: fix QA warning with systemd enabled
Date: Sat, 17 Oct 2020 11:03:29 -0700
Message-Id: <c74cc97641fd93e0e7a4383255e9a0ab3deaf9d7.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

ERROR: apparmor-2.13.4-r0 do_package: QA Issue: apparmor: Files/directories were installed but not shipped in any package:
  /usr/lib/systemd
  /usr/lib/systemd/system
  /usr/lib/systemd/system/apparmor.service

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
index c1f038f..ba58fc5 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -190,7 +190,7 @@ SYSTEMD_AUTO_ENABLE ?= "enable"
 
 PACKAGES += "mod-${PN}"
 
-FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
+FILES_${PN} += "/lib/apparmor/  ${systemd_system_unitdir} ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
 # Add coreutils and findutils only if sysvinit scripts are in use
-- 
2.17.1

