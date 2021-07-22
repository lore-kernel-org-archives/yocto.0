Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web08.7501.1626959467152157200
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 06:11:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=O8zPfpgn;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: koansoftware@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id hd33so8286153ejc.9
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jul 2021 06:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Q14mx5seMYSGncJvnrZWiay3fPeMvuPr3pPhfdmieD4=;
        b=O8zPfpgng1egIlnBBgVDGwOYmPDMh1qEBIF8Yb4rjcaIqAzd/Yvo1xAKTgvtCMvXAD
         NxZAuZWpMVDb7qfsSxXXakFo/5QBnssHEZZ5Nh4+QBwyk0ka2MpKeXEcOW7uDWkQWONT
         hG3uCfsJTSC0H4ufK8Ru9HhPE3mNyQlvzuxKCaoOA4Dtgh9kbz7v0oBBhiEYnRXCct+p
         5orPACM8Z6QI6H0MOAs2UDQ/dRA+XyV+YIiZZk9VFXH6Nd0z2N0KJknN3fr4+zCyrPPL
         4NONA84ORs3en2v0NXxEDKPOoRSL1T4q8TVl/EDyCAsExNd/fWE7+/b5ClLzPrkKayEA
         lSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Q14mx5seMYSGncJvnrZWiay3fPeMvuPr3pPhfdmieD4=;
        b=GmaTdn8dZuAsCbfTlYbKbGeDtchVEinGRtm8+8WjcKijlTVzzgmZRInEmP9m3ko/Bl
         ADKJtS8FqV6T/elljdy+hC3O92sXwjNOspRRfqIIdMKwF8+H2i5Zff4kB0vBDDOEvsFh
         tu57IKZbPu361SC9leCBbLUz2bI/7QEes38G9l5putplBfaVS3jzx+CpSQ1s3XbLXy/W
         0fHF52aGGj2z4/CHKZnpj5iiRdVMX6+aYKF8Cg0OV8igpTAQ8y2aJS5BWrTi20jCgsG4
         veI3CXD04pKfdTPJu60qi6DyLJu15jxBy8+dNrdqRyml+fKCDJpzjCHfK3x39oRv3VWg
         AfUQ==
X-Gm-Message-State: AOAM533+/xS98BZPMFIRDaNG5igH37LTo4vnnwq98tdAEKyZJVablfZi
	ucP+W78Puv9PhqSX5TkHhptjEDcO5BnxwQ==
X-Google-Smtp-Source: ABdhPJzx7jrqnLVGTOClUb/d5VLyUHZ/2db0zmn07D6Or4xjXvWyX66sRg34TE7Ba3PlluEjJLrk1A==
X-Received: by 2002:a17:906:990f:: with SMTP id zl15mr43646178ejb.34.1626959465519;
        Thu, 22 Jul 2021 06:11:05 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from amonra.localdomain (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.gmail.com with ESMTPSA id gn13sm9258216ejc.1.2021.07.22.06.11.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 06:11:05 -0700 (PDT)
From: "Marco Cavallini" <koansoftware@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Marco Cavallini <m.cavallini@koansoftware.com>,
	Marco Cavallini <koansoftware@gmail.com>
Subject: [meta-spdxscanner][PATCH] MAINTAINERS & README.md: Updated the email address where send patches
Date: Thu, 22 Jul 2021 15:10:57 +0200
Message-Id: <20210722131057.30663-1-koansoftware@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Marco Cavallini <m.cavallini@koansoftware.com>

 Was yocto@yoctoproject.org and now is yocto@lists.yoctoproject.org

Signed-off-by: Marco Cavallini <koansoftware@gmail.com>
---
 MAINTAINERS | 2 +-
 README.md   | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 23761bf..ec34c24 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1,7 +1,7 @@
 This file contains a list of maintainers for the meta-spdxscanner layer.
 
 Please submit any patches against meta-spdxscanner to the Yocto Project 
-mailing list (yocto@yoctoproject.org) with'[meta-spdxscanner]' in the 
+mailing list (yocto@lists.yoctoproject.org) with'[meta-spdxscanner]' in the 
 subject.
 
 You may also contact the maintainers directly.
diff --git a/README.md b/README.md
index eb0c389..62b59f5 100644
--- a/README.md
+++ b/README.md
@@ -69,3 +69,7 @@ Note
 - scancode-tk has to install on host development under python2. So, please make sure that python2 exists on your build server.
 - If you want to use scancode.bbclass, There is no need to install anything on your host.
 
+---
+
+Please submit any patches against meta-spdxscanner to the Yocto Project mailing list (yocto@lists.yoctoproject.org) 
+with'[meta-spdxscanner]' in the subject.
\ No newline at end of file
-- 
2.17.1

