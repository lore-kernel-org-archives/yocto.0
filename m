Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
 by mx.groups.io with SMTP id smtpd.web10.9831.1575664556514158548
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 12:35:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IsFB45ks;
 spf=pass (domain: gmail.com, ip: 209.85.166.195, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f195.google.com with SMTP id g12so7394524ild.2
        for <yocto@lists.yoctoproject.org>; Fri, 06 Dec 2019 12:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=riM71TGk4MpB7YTSGnEZGVknGyXHpTzvray/ejTKUxo=;
        b=IsFB45ks5Lw8+yw1S8iSS4XIE54HFX46Hzcv+WZBji6wG3RDSx/ftpR2jC/dVYYPUk
         +GN2et8L6drYg8CQAWJU8p1sNssvmZgAlFWKqPBd3JtlEBB4xLdRoKpueJm+rTeDIdhZ
         bZ4JNKls9JHkO8GJnhERgkMBkskUGumAk8hBmuwbnX5C7e9Fy5rfYLrx2Zmppd2k3hTJ
         eEAauQdpVbArLpnhGpOJxKm9Jtg7ol9Lu3VwbAMb0R5sBpHQE5jeJd6eazxDTI30m15J
         vVoFEpxCXW3cxb8SXgD3+lQarEuD+O6aw80KRQaxxp2qt5xsyAr0T487iZLO1aTiFAAB
         LHSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=riM71TGk4MpB7YTSGnEZGVknGyXHpTzvray/ejTKUxo=;
        b=qIyARxqH1V4kvEykmbFyJPwfua4xqnk+8oZ8g9MfgcejNMC/cmtC78+AhS6XetcSZh
         QcT5HjQ0hOfnIy+gRT6ftXllmd+/PoMuCyxDSdjTDumq1dmV5jC9/97Lok5hUOqimvEG
         nf0gQ+OXvGvg1lAMYj7T35QwMlGtr735/5W2ZyATjF3uOHh5Ab8aos5vn0AIk2oXfb3H
         jICQQU9s+RuXS34WbjtbmdlHg7lSZkud/GCMxgGuASlg842wX+hlWWKuvMIIGcwARQbt
         650WCqYFcdSYgC1dJjQjuZ75Q7+Q2utJ1K73+33RUlfSnmauM8igKdK4QZnABYSS3P9x
         I/Ag==
X-Gm-Message-State: APjAAAWTy2fCuG2uwSUzR/1WuITQMPC45IiRv5qtoJuT2zOkh6g522/e
	bBN9OF2rT3LPkz7Ajb4o5ZTgT4cEU80=
X-Google-Smtp-Source: APXvYqxN2va5dGPM8NecJlYekgZTfynhzbHHEHHuiF18OkgxyiHiroaC5hShcwDFil7FypXcj41JWQ==
X-Received: by 2002:a05:6e02:1014:: with SMTP id n20mr15762808ilj.221.1575664555655;
        Fri, 06 Dec 2019 12:35:55 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id d84sm4237450ild.0.2019.12.06.12.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2019 12:35:55 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] wayland: Disable DTD validation on i686 MinGW
Date: Fri,  6 Dec 2019 14:35:50 -0600
Message-Id: <20191206203550.1511104-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTD validation can't be built for i686 MinGW because the assembly file
used to encode the DTD string is incompatible (it works fine for x86_64
MinGW though).

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 recipes-graphics/wayland/wayland_%.bbappend | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-graphics/wayland/wayland_%.bbappend b/recipes-graphics/wayland/wayland_%.bbappend
index 3713f2d..bbb1c52 100644
--- a/recipes-graphics/wayland/wayland_%.bbappend
+++ b/recipes-graphics/wayland/wayland_%.bbappend
@@ -1,2 +1,6 @@
+# The assembly file that encodes the DTD string into wayland-scanner is not
+# compatible with i686 MinGW
+PACKAGECONFIG_remove_mingw32_i686 = "dtd-validation"
+
 EXTRA_OECONF_class-nativesdk_mingw32 = "--disable-documentation --disable-libraries"
 
-- 
2.23.0

