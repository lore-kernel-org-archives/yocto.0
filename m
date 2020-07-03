Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
 by mx.groups.io with SMTP id smtpd.web12.368.1593734448187667297
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 17:00:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=EH5mUro3;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.210.66, mailfrom: jpuhlman@mvista.com)
Received: by mail-ot1-f66.google.com with SMTP id n24so23231635otr.13
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 17:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UStLpDfyaGTzX4PMK97NZ6u7ZOw68T2rTsSZg4PK/7k=;
        b=EH5mUro3TYdorRbmc0piVpPzSP5gHn2xIlA3yjLuw6YjFJtHoN58EQOlhTYecbTyfp
         EV3FWFakas0lVPn1gXVZYcUcnHYtFeOMj59/ELgMJm9sUVGl89j/FweElApBvD3WEKUp
         VD/sTxxyQLmVrjcd0cVj7XXfFGt0FFeMFvNlR1Zf+qTVWfVUjI5OJsI0zobpByYZkS6X
         DOp0unE7ChKnaD/8ZozZMZtUxJbIurxLVHnxLo5XJaxUs9t3O/5m6rQG+K/J77unLUAN
         23SccTi556ERvcO7Gv8PC5Lnth0tEgVLSHSoK440owp4RIycpi7999YKz72LDCP30tOQ
         9WCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UStLpDfyaGTzX4PMK97NZ6u7ZOw68T2rTsSZg4PK/7k=;
        b=s5ww+yPqQ41QGNxplAa0de+2p3AVeZ7XvsLJvRS2mTDWFNj/3eo0zu6c3xOOU77HzZ
         jBY9sAc5VMniXJkMfq8rtnO0ShF6gkKvoqsjDHWXTa4T9MhfCUeHmwcFYyeSsIoywdQq
         PPVXTZUmHoC23C4/rLWr07gRG7k9hsMHMf1zHrpthb+tBNjWZgEXiMVuecEEAZq65cvn
         +mFDS/YClF2/HuIcMM1OPiB+JWBILptLz+ElVj7z90hYPeXwDc/bb33fHl6NzetZvvJo
         Eyt2kybOhgoPiQmX6q+b/+PtxHPQF6Jc/cIE+IVijzdmCA9O6eupBj8zlUBGXGC+km0d
         0/Uw==
X-Gm-Message-State: AOAM532XSZU8lo3in8+e2pyKKeEMglhfVMmPuBty9ktKpsUHCFZHgSa8
	VXzZXYZgDkELWtSJYuhrCINJxem+3kU=
X-Google-Smtp-Source: ABdhPJwx8BqCRU277gfXC8hsCOp6/RY3Qi0sUagoYeNQ5GIE8luIgSQ40h/uvA30AsQiidga312/GA==
X-Received: by 2002:a9d:6e14:: with SMTP id e20mr16951523otr.89.1593734447099;
        Thu, 02 Jul 2020 17:00:47 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id y125sm3126534oiy.9.2020.07.02.17.00.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 17:00:46 -0700 (PDT)
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 26E082A0924; Thu,  2 Jul 2020 17:00:45 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
	Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][master|dunfell][PATCH 1/2] apparmor: pull in coreutils/findutils only when not using systemd as init manager
Date: Thu,  2 Jul 2020 17:00:42 -0700
Message-Id: <20200703000043.9774-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Alexander Kanavin <alex.kanavin@gmail.com>

The utilities from those packages (xargs, comm) are only used in sysvinit
scripts, and so there is no need to pull them in when systemd is in use.
Both are gpl3 licensed, so this is beneficial for builds where gpl3 is not
allowed.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
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
2.20.1

