Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.2014.1617162686871659836
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 20:51:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ubkmf6fI;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id s21so8831619pjq.1
        for <yocto@lists.yoctoproject.org>; Tue, 30 Mar 2021 20:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=lA0LSsyMOoA5grc78GRuD05W8Y39w65MtAv2VZinDbw=;
        b=ubkmf6fIZMBxA4O5V1VbKixDQ8XGb+LE3CBOPabpZYmf+JW3hrjktuf1T/YfShC+n3
         vzzGi0sbxA/WmLiIr4haJhMEE6gbE93RGcQWdsDsTc6dbnhVbHwQP8rw/PmXkayd9oLO
         7SgPGwXN2JUcJuJg/8tvwbu6EBDTOLIuPG2p2CmZiYvy3kz1L9QsJpxD2XLUzuNQUKUg
         B3//6ppVRTAYzU8uIQe/keupibh41p5+BPdhHOaxphdB623fObYM6tcUGOMq2CibnVIy
         t8qd/FNa+vMiUP6kHvslWnkizthtOVp4YbNGenahZ5eIaTUeQfcIAfEQ3Rz086/otqwJ
         bu8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=lA0LSsyMOoA5grc78GRuD05W8Y39w65MtAv2VZinDbw=;
        b=T0I3xhwR4VGBUTfv6e1cdZhl83A0JFoPrKsfuSQ+Cttes0cbIe0B1/qh9/q7QMq1r8
         jpvHoMvusRW0/5evy9UrGRgHSDoO4GgQMZV2DGk/1P1G86sdvV9IkzQPEutu7r0Ksvwt
         VoDwp+fxHwAtPJKqR4jTUHkQMy8yAEyT+DK/IOGggZ8thU6GG/aIOlWGGnRTCeA4F2Us
         g9cGwXNVWIOMJs3FR53kHGYLeGcuNsKQddb3tN28GIjZyUctjiu8SX60kAN5RT7EQUNN
         0+5e0AFWif0Y9fvmLN8/rOi6+UHaucfnfjb84REll5a+D624wiTippu+qv4yKDKDiBUQ
         e1+w==
X-Gm-Message-State: AOAM532QKFzWZ7IliFnZ4Ok2FIziPeqdbUH53dkcGEL48V1b5ty+CUuN
	56mkzHI7/lSwyowThJ+VvBm6d0hrphA=
X-Google-Smtp-Source: ABdhPJyBZJ3kL7vGjyLP6fE3o239zQkwxcJhJzBKeNBGWEqOprGwAPecRm0LuHeN0DJgkHAqzkr9pQ==
X-Received: by 2002:a17:902:c643:b029:e7:3c10:4695 with SMTP id s3-20020a170902c643b02900e73c104695mr1394203pls.41.1617162686288;
        Tue, 30 Mar 2021 20:51:26 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:20e0:2ff7:e997:1a04])
        by smtp.gmail.com with ESMTPSA id s8sm500713pjg.29.2021.03.30.20.51.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 20:51:25 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] clamav: fix systemd service install
Date: Tue, 30 Mar 2021 20:51:21 -0700
Message-Id: <20210331035123.15205-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210331035123.15205-1-akuster808@gmail.com>
References: <20210331035123.15205-1-akuster808@gmail.com>

ERROR: clamav-0.104.0-r0 do_package: QA Issue: clamav: Files/directories were installed but not shipped in any package:
  /lib/systemd/system/clamav-daemon.service
    /lib/systemd/system/clamav-clamonacc.service

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/clamav/clamav_0.104.0.bb | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index 9e50466..ba036b0 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -105,7 +105,10 @@ FILES_${PN}-daemon = "${bindir}/clamconf ${bindir}/clamdtop ${sbindir}/clamd \
                         /usr/etc/clamd.conf* \
                         ${systemd_unitdir}/system/clamav-daemon/* \
                         ${docdir}/clamav-daemon/*  ${sysconfdir}/clamav-daemon \
-                        ${sysconfdir}/logcheck/ignore.d.server/clamav-daemon "
+                        ${sysconfdir}/logcheck/ignore.d.server/clamav-daemon \
+                        ${systemd_unitdir}/system/clamav-daemon.service \
+                        ${systemd_unitdir}/system/clamav-clamonacc.service \
+                        "
 
 FILES_${PN}-freshclam = "${bindir}/freshclam \
                         ${sysconfdir}/freshclam.conf*  \
-- 
2.17.1

