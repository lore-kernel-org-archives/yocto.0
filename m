Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
 by mx.groups.io with SMTP id smtpd.web10.26672.1591610531223891544
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Jun 2020 03:02:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mDrEIRYQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.65, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f65.google.com with SMTP id x1so17557753ejd.8
        for <yocto@lists.yoctoproject.org>; Mon, 08 Jun 2020 03:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hF8P37fRZjeJ5mRNWJQEW51754l0hHBgXG7ejRbXIrE=;
        b=mDrEIRYQm1UCSj6s8l3bmfyOehaW4EQzlBIAPoWtl992hmIhuB1ADpOz2Iw1uU8Ebg
         7+Nfc2CHmqiHGsSxLrsSRC5Rp3Ve53M2LToyus1Lzu6PHjGtnby18PB8d3KXt1J3nNkQ
         Izd0Tf4mJuD5gKxJf4+Jiq0Z16ax6KQK2IFTvBd3n/5fwdiqzh6vLYkeviD0Y1bvdbF7
         Bg5YGej9diBLkSfF/qSJjLx2OE7qufdCrVJsDh6AK4JPLysEJwyqp8/kPHXhv8hYgnXx
         NiRJ/hHdoGv+OxSl52lnvuyPpseGCwEDSrFHCdazsPA761XKQjqqvwCPSzm6+8ugOjet
         xDcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hF8P37fRZjeJ5mRNWJQEW51754l0hHBgXG7ejRbXIrE=;
        b=lhca4ylrjtH2BGbiNxXXMeepk2jy1uxs/MTkFeL7mBpC4SRD7YRIf26lsI25kabLqg
         2ohFgICS5L2j+f+kmIPIfjcttgrJHR7d+ajyeQLNzzw0groDLBoxBELgxyTyzcGdDLza
         eFYLEZlJrK/PQ+03crActWGjY5ge5xpR6xhcXnoGyBex4MuakWYSMrCEyx49W1oHcPUQ
         7XOA+cRSk9jtbiJwxC35fJMJuwj4YCU8ANjAUMwn65YgVyZEfqAzJmpCpyLmsO1J1Jdt
         7B1lxUZjbvVdZBHf8FyzwaDRR/h3Ii4L1yiSBxoQYjGWiOk5JwPvQeI8amBMPAFnXuBF
         CesA==
X-Gm-Message-State: AOAM531y6XYppiBSiRUWAyqXdQLZnzCK/rHwAISOm59LTtIBSnfkdkxG
	8wsSU8lcyVOYOe2TVg7URP5nHf2KaxU=
X-Google-Smtp-Source: ABdhPJxDze0FdGJs0jOn1iS8poRdIlzD0SpY+6f9l0v9wKptBTOCfrlLJ4UQT9aG8GKTu1biQAKzdg==
X-Received: by 2002:a17:906:f53:: with SMTP id h19mr19612341ejj.343.1591610529368;
        Mon, 08 Jun 2020 03:02:09 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.box ([5.28.66.228])
        by smtp.gmail.com with ESMTPSA id z20sm10251470ejb.68.2020.06.08.03.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 03:02:08 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [meta-security][PATCH] apparmor: pull in coreutils/findutils only when not using systemd as init manager
Date: Mon,  8 Jun 2020 12:00:46 +0200
Message-Id: <20200608100046.10153-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The utilities from those packages (xargs, comm) are only used in sysvinit
scripts, and so there is no need to pull them in when systemd is in use.
Both are gpl3 licensed, so this is beneficial for builds where gpl3 is not
allowed.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.4.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.4.bb b/recipes-mac/AppArmor/apparmor_2.13.4.bb
index d6f61b3..552cac7 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.4.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.4.bb
@@ -191,7 +191,8 @@ PACKAGES += "mod-${PN}"
 FILES_${PN} += "/lib/apparmor/ ${sysconfdir}/apparmor ${PYTHON_SITEPACKAGES_DIR}"
 FILES_mod-${PN} = "${libdir}/apache2/modules/*"
 
-RDEPENDS_${PN} +=  "coreutils findutils ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
+# Add coreutils and findutils only if sysvinit scripts are in use
+RDEPENDS_${PN} +=  "${@["coreutils findutils", ""][(d.getVar('VIRTUAL-RUNTIME_init_manager') == 'systemd')]} ${@bb.utils.contains('PACKAGECONFIG','python','python3-core python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
 RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib bash"
 
-- 
2.26.2

