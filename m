Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web09.2153.1624822485660690388
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Jun 2021 12:34:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TsX1ttm4;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id u14so6945603pga.11
        for <yocto@lists.yoctoproject.org>; Sun, 27 Jun 2021 12:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=5p8HsIkugdPyE5s9McLfZTGkgOQOG54R5VXi7qC2j3Q=;
        b=TsX1ttm4I3Iehcx8knm78soJZw8Zd4tUQngEcu3/w+RV18S1bfwxAqlS7H7tNfaPUi
         UFQgyLU80s44j79GzSQxwXtzXT01RomyrIWMX8Lyzs/hIzWhZm9sHEVBDtTmq9UA2irK
         Ss7JPvFjtCFEB58uWhOkjcEJRft8+rfZB8mtI+LQiQtLbUg8NC6gczik1yvMvaxhQgth
         xm75H5rAAklrPFjOtva7YCrAE+uxGiJKPIF3qWn7o1ISobyT9sVzIUfveXcdfZJFGMrG
         PKQaWOBjhjBR+pa+Taz0cFaZyZ5jZHPwM9WxYQmzqXv6N//COk0sMzPXqAtAqqBGXWLO
         iREw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=5p8HsIkugdPyE5s9McLfZTGkgOQOG54R5VXi7qC2j3Q=;
        b=Fmcs3NFnyWSL5frmy/LQHk/UljkfM/UM6+eEqFNJlpw0g+Vif5PuLQunN/NFbIV2lX
         GgQ4j7qXahaJiJOghKBPcMD/5VKdY0Ulya1fb5U2prc77DL7VXo4qhBh0Uwf+/V3/peq
         2frVMpJt6P3wDcX7BDi4EigYg/rym+31UmepkFO+86Gax186NsUafmrz+piv0v/kTt47
         UtNEMhO4JJltsTz1pfSzSP3iMlZL7ZxDT68Z92TfkekgEu5odaOgbzwWXH4C5q41nI17
         SYgML8AcmlT1QLwho0r0AYW3FUgL8kzrUaSvtg4Xa52jGD/dHF4xE+8oX6oNNLDkoXLW
         79bw==
X-Gm-Message-State: AOAM5301cC776kBQbG/cGVe88gZfc19tzGbTvE2YnWnt8KPI1n3azQFK
	dv98HC0ZLcs51kJTiM6rntNILxulo31h8w==
X-Google-Smtp-Source: ABdhPJz1ya0Jc/EI/XJRhZsSVil2JwNxf+V7BYcA0/JXj+UJnn4rLzNGJ3CWJacbq/6kSYYp9OxggA==
X-Received: by 2002:a62:3543:0:b029:301:aaae:8785 with SMTP id c64-20020a6235430000b0290301aaae8785mr21768327pfa.20.1624822484987;
        Sun, 27 Jun 2021 12:34:44 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:90a0:cfd2:ffe1:efef])
        by smtp.gmail.com with ESMTPSA id e1sm345670pgr.37.2021.06.27.12.34.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jun 2021 12:34:44 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] ssshgaurd: add packaage
Date: Sun, 27 Jun 2021 12:34:40 -0700
Message-Id: <20210627193442.18651-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210627193442.18651-1-akuster808@gmail.com>
References: <20210627193442.18651-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sshguard/sshguard_2.4.2.bb | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 recipes-security/sshguard/sshguard_2.4.2.bb

diff --git a/recipes-security/sshguard/sshguard_2.4.2.bb b/recipes-security/sshguard/sshguard_2.4.2.bb
new file mode 100644
index 0000000..bd7f979
--- /dev/null
+++ b/recipes-security/sshguard/sshguard_2.4.2.bb
@@ -0,0 +1,11 @@
+SUMARRY=" Intelligently block brute-force attacks by aggregating system logs "
+HOMEPAGE = "https://www.sshguard.net/"
+LIC_FILES_CHKSUM = "file://COPYING;md5=47a33fc98cd20713882c4d822a57bf4d"
+LICENSE = "BSD-1-Clause"
+
+
+SRC_URI="https://sourceforge.net/projects/sshguard/files/sshguard/${PV}/sshguard-${PV}.tar.gz"
+
+SRC_URI[sha256sum] = "2770b776e5ea70a9bedfec4fd84d57400afa927f0f7522870d2dcbbe1ace37e8"
+
+inherit autotools-brokensep
-- 
2.17.1

