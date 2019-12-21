Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web12.451.1576950364297694068
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Dec 2019 09:46:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fH2wgAtt;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id x8so6612882pgk.8
        for <yocto@lists.yoctoproject.org>; Sat, 21 Dec 2019 09:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=40uf0SPf856ihxt/yivSTI5or42wEdLTZupaNooG/MQ=;
        b=fH2wgAtt8u7sDE2dkdM6vz8BreDrtiuvYqg8Pi5EFRrcLx8agcUmnqrcOE5WtxiFTO
         TUVNomf9/xmk0lCyrHz3epa2yZ+yS+RlUgydsVxWszOJYvIb9lj4HtiVoYTkL1gcFHz/
         uk0Rw8UVKR47pAGn/MnEhqfkQL0QlmDO1FCPAwoB0+XuLjvHEcertD/SobJ9OgKn+k1e
         ti4E9EDxPMkFs6RMQJkF24t17pP56WuzPLCX5GGoatVrbr5TSUtjRGtf3F2+wSzDZ8FD
         SMH7fbrkRDBon1qMpvG2j8KxNpr7NCp7cUTEW+hr/wRNlwnsGoaNGVYppdWoO7MCH5Nl
         of5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=40uf0SPf856ihxt/yivSTI5or42wEdLTZupaNooG/MQ=;
        b=CV8eZEfDGLaUZ8oigfBYW895qaO2WcJnFF2qDXrw1eO2tXZnHqndkJul62JCe4KOxC
         v0D+DAuiXwu3+tngkhvzYdpRgVKKMd1ZhBDTS/hFV51epMe9ZuXqyyZkjGk9dy4ZYrv0
         ReVR7Kf/EMhu6sZyne8qyJx2JAtHChoCWzufXy4l2u/CkOSJJf+uk4RCK6YrRKs8XW+F
         koxn7JqpPLtc5+KnlPM5ktDtMg4/wdZOjAZQ63x9o+Bk994jHLIdLKK6mQ/77DleLtIn
         GFnCeKXPD6EMTzt6J10nYWqqnEekWfG+MYDb+Uw08GkHqPxuu9f4a7a2Zew0NiHZaQNQ
         No4Q==
X-Gm-Message-State: APjAAAU00QlR2LtITmkfTZMncaOrvmwiypFz8njkPSIzpswk2x9GXLN3
	W74PLme3UAwsELBOpBYCt11YleXYwBo=
X-Google-Smtp-Source: APXvYqxybqutmZ3V9qy/z0c8L2/syCKlqsYTFMG2uYGGwOHdSAlwFY1vxH1SLE2viiuw9RvWiNZLaQ==
X-Received: by 2002:a63:fc01:: with SMTP id j1mr22794052pgi.220.1576950363632;
        Sat, 21 Dec 2019 09:46:03 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id z30sm18202669pff.131.2019.12.21.09.46.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Dec 2019 09:46:03 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] apparmor: add distro check
Date: Sat, 21 Dec 2019 17:46:00 +0000
Message-Id: <20191221174601.25481-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-mac/AppArmor/apparmor_2.13.3.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-mac/AppArmor/apparmor_2.13.3.bb b/recipes-mac/AppArmor/apparmor_2.13.3.bb
index 60d5e68..32230a5 100644
--- a/recipes-mac/AppArmor/apparmor_2.13.3.bb
+++ b/recipes-mac/AppArmor/apparmor_2.13.3.bb
@@ -30,7 +30,8 @@ S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
 
-inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages systemd
+inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages systemd features_check
+REQUIRED_DISTRO_FEATURES = "apparmor"
 
 PACKAGECONFIG ??= "python perl aa-decode"
 PACKAGECONFIG[manpages] = "--enable-man-pages, --disable-man-pages"
-- 
2.17.1

