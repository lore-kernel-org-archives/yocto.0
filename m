Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web10.3014.1602957843410016242
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WtaRba/b;
 spf=pass (domain: gmail.com, ip: 209.85.210.176, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id x13so3417700pfa.9
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=NjX4o5i+ExA5+ARr+b6LjsTVZTs94TCAfy2iJrMiDj4=;
        b=WtaRba/bXMLkPfTK76osQTvL1H/uzLgNpD08LsLzyXRCMyvYcpA2WiTAFAF5AdNDqW
         ixGrpho1/OZo+v8iA+Ljrf34d3tg8h0Z2RWAtXu4DrtT+mDjtFHsUhWHpNxcCWuXU7TN
         ka2gAbb7VRAhymE6wXFoFlaafFNhEt3TwCW0TAlondJ8od1YqTc+1jUzO0Y2xv0bLAjf
         +C1xb2ttqHazDA+aA1T2u1LK0MCoTNODiYhCtfL1E4iJD0Z2R6JRrkTIj2zhaNmB3pTg
         vJ0ghs0MgrFiFzNGWClVGO+k6ccUPHuf7MruIkvDT3g2RNQJ0dluK6TX4nuu8eg6NdkI
         Djgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=NjX4o5i+ExA5+ARr+b6LjsTVZTs94TCAfy2iJrMiDj4=;
        b=b8alync3w7+9HzQU0STRDB9jH2IlR27RcmUf/4uioYEo7GCKQ43t6K2kFBExXcvNLg
         NgtggsNpQ8Tz5BFi2/gDV+1MpE8y2KEzoBf7L60yQjcdG9AYYcJ6t0jYzpaglZ4s1Ihm
         w80ndLhDWyXBEAzLtEfo3J4FbTieWz7A8w2kJmlqaZK6pY8q3vm4KWJ2BUOhNmatIUjC
         SifwBMm6F3OzCxQjFNcGoxB8kwqc9391WoAO/VUTE+jfkHXUo3eL8jxOPvJJ9s0WNGfg
         9+qDmhzV07dmidPEpsx423R2wG0+x5SaZpreRXV1x4IUFNbNj4jFSTQm/2EIE6BXwjGw
         O1Eg==
X-Gm-Message-State: AOAM531AxgjEmC13usZ18e9NBJflHeDKOu/W/Y4+/8kh/f8GuJk9tDDj
	GJmnK4Ef63lgz9FFDNDVmDc5MMLdnlY=
X-Google-Smtp-Source: ABdhPJx1URkQByD8Lb6u+AREl2EgsHELKVzLRejN7DlEAq5IsETTyTneFWVn3+vWt7dTgrgddU1Qsw==
X-Received: by 2002:a62:7d15:0:b029:155:29ed:db4c with SMTP id y21-20020a627d150000b029015529eddb4cmr9619410pfc.77.1602957842727;
        Sat, 17 Oct 2020 11:04:02 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.04.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:04:02 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 26/32] packagegroup-core-security: remove clamav from musl image
Date: Sat, 17 Oct 2020 11:03:23 -0700
Message-Id: <d2b9de25cbd9fa1a93205b9ef3ef57129c87ee33.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 496a734c14fc72250979a4e7eb69c5d541ffd870)
---
 recipes-security/packagegroup/packagegroup-core-security.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 72ca0f4..fd6da9e 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -39,6 +39,7 @@ RDEPENDS_packagegroup-security-scanners = "\
     checksecurity \
     ${@bb.utils.contains_any("TUNE_FEATURES", "riscv32 riscv64", "", " clamav clamav-freshclam clamav-cvd",d)} \
     "
+RDEPENDS_packagegroup-security-scanners_remove_libc-musl = "clamav clamav-freshclam clamav-cvd"
 
 SUMMARY_packagegroup-security-audit = "Security Audit tools "
 RDEPENDS_packagegroup-security-audit = " \
-- 
2.17.1

