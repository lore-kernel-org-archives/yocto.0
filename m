Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.7922.1620872663918408444
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 19:24:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oHBetOqs;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id t193so7355660pgb.4
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 19:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KMEH2njjcO4JV3sM80IbZSKZ/X2Wh4tQJ4Zd8/XLhOc=;
        b=oHBetOqsCGWLu/3nXmr+IpJMrhhl1u317T0gX0vOJ1IsHYGlxYjNr3IcsDXtUtYBJQ
         BTg110PUSddS+Xy/+x7nk3KDj6hlETo4A41B1TaFzAvIMVxZ4evT3826FtU/LAiJL/dg
         zQZy5zn7MuYmBYFny+7GljQOaggE0G2pd5IaCDCXQUxB/vL9Z7gYJvPk0YUZ0JHITMbI
         jd/VAgxd5ksXw5WN0oRR+ozevGobtkcTP5yIj7cEhz6WGJJyA0W6uAjJQlryNibG+mUi
         dFcotnBREboM7PoOkCH3SMSlEaMvspHIRvqDrVd41WhEOqLy0CGV89NVaUhn9dr7wgia
         7dcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KMEH2njjcO4JV3sM80IbZSKZ/X2Wh4tQJ4Zd8/XLhOc=;
        b=Jdma5W9IpjKxWXDL1ecfjTlEjWBg4BhAoEGhSi9xdV5E0YasJQU9JVVSvwBpLoBP87
         G21qPxN3Ba/DBbUhbUk5dSrTOymwuI1Ot3qp0MqUFffJd+suFBaGEtC1KXnkFGgRsROH
         S04Sta4WaCe/0mHUXEmvcrXFmvwqAMiBKNfPHhADKaf4UKZoNk7URVW9rGOwYEjcogiG
         rLRz1IO2HEgeT3Tv4WUgZBHZOuL0w14J+4zfTKIYVSEYw7/gayLPhE3HHUhH5bLdHYaq
         YaF47tq2GoPr/wQstYCfrUKzgpZc/etQXUdWLDfPR6bHs0NkRgJDfdcS/8nq4CK9Vjuc
         BlMg==
X-Gm-Message-State: AOAM531UeE9RhNCnE8500mzGy+Eq482Ygc6lAkhKyED8zlroBoBE3Ly4
	vSntWHk02Ipdc+MGCIJWPNJ6GTi6fgY=
X-Google-Smtp-Source: ABdhPJyiMDgdH3jTR+uuRqxPEtWB41A2vUf5qv0fs2+iQ7jYbeQXZzYiDg6mZ5tNMsXZyLdsbBnfpw==
X-Received: by 2002:aa7:81d8:0:b029:28e:6e31:7c9a with SMTP id c24-20020aa781d80000b029028e6e317c9amr38425235pfn.56.1620872662972;
        Wed, 12 May 2021 19:24:22 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id l35sm891626pgm.10.2021.05.12.19.24.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 19:24:22 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][v2][PATCH] suricata: 4.1.x add UPSTREAM_CHECK_URI
Date: Thu, 13 May 2021 02:24:21 +0000
Message-Id: <20210513022421.3370731-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/suricata_4.1.10.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-ids/suricata/suricata_4.1.10.bb b/recipes-ids/suricata/suricata_4.1.10.bb
index 3f7beaa..bf08843 100644
--- a/recipes-ids/suricata/suricata_4.1.10.bb
+++ b/recipes-ids/suricata/suricata_4.1.10.bb
@@ -12,6 +12,8 @@ SRC_URI += " \
     file://run-ptest \
     "
 
+UPSTREAM_CHECK_URI = "www.openinfosecfoundation.org/download"
+
 inherit autotools-brokensep pkgconfig python3-dir systemd ptest
 
 CFLAGS += "-D_DEFAULT_SOURCE -fcommon"
-- 
2.25.1

