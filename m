Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web10.1526.1577041825890927766
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Dec 2019 11:10:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z9VjMAsg;
 spf=pass (domain: gmail.com, ip: 209.85.214.171, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id p27so6330300pli.10
        for <yocto@lists.yoctoproject.org>; Sun, 22 Dec 2019 11:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=cw9H/dlKgZ6MLdgqlu8943448kf5XZXNGr+Tmc+UEMM=;
        b=Z9VjMAsgkdt3kvdjdiyIFo73RiL2HmvBgsp36Hj7srDqimAqc0O2r34o8ZW7CGMc7U
         uj1nn883zy3JdC8vd6pf4BEv06dnOcVCO6swJAR/LbSHyo/B8owSaD9FnlbrcJGXwBRG
         4iDv+x7/TXmnS+3tdjHhFCYzV17c/F/es3MAWCqH4upNgjMwSN5LggNv8hG+EzXN5u8D
         O+nkdUuhNrKTBelNf8GRMhOA3tF+acOlYvz9qePJUGhwICq3VsL4W5dQ90zKMglE1D4G
         TuF7erAp9se6KDl+4p5QdOXZvOoPJwzE8NVAWlOzF2/nNTNTQX/HSNgKwsIH9GxWIGIY
         G4NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=cw9H/dlKgZ6MLdgqlu8943448kf5XZXNGr+Tmc+UEMM=;
        b=ECnVdSITo4iCL8VqgorR5uE49u3Ua5eqOvkWxnkBz3POEwtG58p3YBdRvOkmQxhXzA
         kh05hQ3Xfg1pezh7tNKJdFASzRkqL9yG/2cQjO/5dBEhLO9E0U9GCPMvbDcc0jTbD1Mq
         IDEJiX5W/jUytV+3I8C8Q30TztzBBTCewXOnFP1BujyThI2J8UoyZRonhKgSG/1/Q3zW
         lupQPw8AQ6P6U55cx4RZyKUQjxf+TQdUVwNKW9IPGG6MhCLwZrUYaiSdsSwBvQd4mYOU
         aST/fRqgRFJMfp8iA65lvHsXhsbDgKd8M/i463Cl+qZ7Qhxt1YTutmz74mDdBD/nYwGo
         Krvw==
X-Gm-Message-State: APjAAAUFRCFbPLtLYi6QLlrQn5vKwE/WxYOGY/+o2uO2ynUejcyuDtnw
	UEkWqqILoZ801NJ4bd/YmNWicgaWK84=
X-Google-Smtp-Source: APXvYqwwcBoB8SzW28r+PD5UcFFLhEihWZhlJWRfqLIi3gkAQFFwk7xWL1irXbc4OWhilur0ZWFhpA==
X-Received: by 2002:a17:902:b611:: with SMTP id b17mr27189494pls.210.1577041825128;
        Sun, 22 Dec 2019 11:10:25 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id y6sm19338974pgc.10.2019.12.22.11.10.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2019 11:10:24 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] google-authenticator-libpam: update to 1.07
Date: Sun, 22 Dec 2019 19:10:21 +0000
Message-Id: <20191222191023.3913-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...cator-libpam_1.05.bb => google-authenticator-libpam_1.07.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/google-authenticator-libpam/{google-authenticator-libpam_1.05.bb => google-authenticator-libpam_1.07.bb} (91%)

diff --git a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.07.bb
similarity index 91%
rename from recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb
rename to recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.07.bb
index 2181629..98f895c 100644
--- a/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.05.bb
+++ b/recipes-security/google-authenticator-libpam/google-authenticator-libpam_1.07.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 LICENSE = "Apache-2.0"
 
 SRC_URI = "git://github.com/google/google-authenticator-libpam.git"
-SRCREV = "7365ed10d54393fb4c100cac063ae8edb744eac6"
+SRCREV = "c9280f43610ce896f91eafd0f740a4eb4dcecedd"
 
 DEPENDS = "libpam"
 
-- 
2.17.1

