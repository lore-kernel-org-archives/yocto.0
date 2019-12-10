Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web10.11427.1575991860584760235
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2019 07:31:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BsnkTjOe;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id r81so16510032ilk.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2019 07:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2tvRI2zxXA8iyVReo+Y82oqK4jYMzsW/jilB3tB8FqE=;
        b=BsnkTjOePhaqdqbH8sf+NI+U7iefw3IBgmpc7Lp59sspwionWCZHXZG03DdELatvA5
         ttU17VuosIGEPUohQaCSgQRZAb5+AAlVL6yXOdMrZ/hjM0i8/aCMD+UMY5pQVxEdMz/c
         UPU3S4uZP1lyQwO2GhIY4NjwNAQzDIuWk49hYoU92ePfttAuIBoSZQcFd0x+jxTvTTEV
         bO9wxyk5zvWaoOitnksR7vLpHWTi9klrokPN+qOh8OKTso+xbHvFhD83gRi6GUNhLYpw
         sTif7MWNhY8hc/mYsOyTUsxyt7aRQWgbVapenPrv81tBIntYQTSiBtVw33E37sF4F4tz
         G+rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2tvRI2zxXA8iyVReo+Y82oqK4jYMzsW/jilB3tB8FqE=;
        b=KquLF6nvb38+plKT38gpPIWvVzvFYlif2ltqVtM9YVlfFh7EFRoOfg9IZyLsi8SEU3
         nMkGqaYWpsHpV6qjbHli/DmgCSXn8o+COSRlqxFKYyYuPP4egKSMIB14c6vKAWVCAR7M
         sq4tNftnWBB9g+tE3TSU7Op3S6mMSkHlXq/d4YWbpXEmZ8z+Xr7y/6O0IjlwxMeNYw8c
         KgM6Q2OS+EoSetaVVvlit6nHscdj4psBPWvFnkfEKKpDdpESWthyObdXQxB55foDqVnf
         Wwp2PinEjjunSB1d5AVKjLufdiCOGRX8rSsY1HxZYiZXexyd0mSNFXPJWhyhYiwwZzHF
         485A==
X-Gm-Message-State: APjAAAWJ9VD4/7vmVtVcXcDbyYoBKZo7oXim4RhErFKa67O0WRZbXod/
	B6zIeVSGZec6G33+0KxYziqyVauMgAA=
X-Google-Smtp-Source: APXvYqy86M23ctN5Ny6j4sFj9gCnmJcQVt727T9Pd+XDdJjcOl5AON6PWiK8oQb8dF6WXmlWn3vBAQ==
X-Received: by 2002:a92:5c8a:: with SMTP id d10mr36203527ilg.137.1575991859767;
        Tue, 10 Dec 2019 07:30:59 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id o89sm971384ilb.81.2019.12.10.07.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2019 07:30:59 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-rockchip][PATCH] rk3288: Append GPT image type
Date: Tue, 10 Dec 2019 09:30:54 -0600
Message-Id: <20191210153054.752600-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Appends the GPT image type to IMAGE_FSTYPES instead of overriding. This
allows additional types to be preserved if they are specified in
local.conf

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 conf/machine/include/rk3288.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 08cb561..6e9a09a 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -12,5 +12,5 @@ SERIAL_CONSOLES = "115200;ttyS2"
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 SPL_BINARY ?= "idbloader.img"
 
-IMAGE_FSTYPES = "rockchip-gpt-img"
+IMAGE_FSTYPES += "rockchip-gpt-img"
 IMAGE_CLASSES += "rockchip-gpt-img"
-- 
2.23.0

