Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web11.14083.1600225929777006704
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 20:12:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PjNVxYtU;
 spf=pass (domain: gmail.com, ip: 209.85.210.49, mailfrom: akuster808@gmail.com)
Received: by mail-ot1-f49.google.com with SMTP id o8so5356521otl.4
        for <yocto@lists.yoctoproject.org>; Tue, 15 Sep 2020 20:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=R6U0HQqTyZgebYRgVWDJYK3S7Pa7xaep42rHIspScic=;
        b=PjNVxYtUFmlbn83bZR2Tc6CS3Q40M/3tSc2gIN1kZ2Fsz7RUSCBXfhK1cMayDrPES+
         SocFIVD4b/N4mzKjtQOI1h5/xZkaKCUl38J/T5eLhv2YhoM9S7CYkPZBN4GswhLYCW9c
         jOgoAiWqN2hrARW96c0r47yaCuMEQp3GxksHQ/GUVZcs62Oxe/6KcLLgK+h0Y5tdSebo
         tX68JQWPJXE7/FnoVNKNPHLV5DNlvnMHTf3DotcDw/Kkms4Zjp/23JQQgLcYLwfJmuep
         2NREjnAwh3VmhOjS6dd5dnO1u1Irs7XdkFjTf1jeLR4eaOxqLRq4H1f7XHC7vUUeE6WY
         Qr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=R6U0HQqTyZgebYRgVWDJYK3S7Pa7xaep42rHIspScic=;
        b=RVD7OcukR5rehXVAGYroVV8VIar78oU48BbK4GE0yR+XBqU2iTN9Fp6KIyDIdhXFeO
         AG5ClGngNgCkhCUPlKQtK/e99GDd2bJMh0wtxVlVn8D+4K9GIClTel6ikmqNaaqgAjOs
         3CM0q+a/oTJJAWd732RVVuRnCVIrJJkMs5hXYhDbAjzzDoXnqvdWIT7dRBHmZHOaUBZq
         7km5HgrSAgYByYDX8iu95vlV+WEF6aFISOuQV16pHqVHGnutydzGzqfzlo3y01G3/WQ8
         qshRtaRKyp8imYlgPtdEmxOFRWtNMsqtOmZwEvzCh1TUuz++oKSBgscpxmpMLx3jykwk
         7dSA==
X-Gm-Message-State: AOAM533hPRcN8YxhPFmCSiC52oy/iIZRKRwswNbT7+dy33lxZ73DMb/i
	+Jc1X4D4ahg+QNInxlg9vxAnVmyJDRM=
X-Google-Smtp-Source: ABdhPJz8swIF55U9sNtzqPVB+hqxLxX03/xuJLCKYJbDtsjM4cJKhamc4CcnHfCkSW7x0I3bXTCKsQ==
X-Received: by 2002:a9d:57c3:: with SMTP id q3mr14004195oti.146.1600225928977;
        Tue, 15 Sep 2020 20:12:08 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4964:c81b:ad7d:d6d4])
        by smtp.gmail.com with ESMTPSA id j26sm9160576oor.21.2020.09.15.20.12.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 20:12:08 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] apparmor: exclude mips, not supported
Date: Tue, 15 Sep 2020 20:12:05 -0700
Message-Id: <20200916031205.9456-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200916031205.9456-1-akuster808@gmail.com>
References: <20200916031205.9456-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
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

