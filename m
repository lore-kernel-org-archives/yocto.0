Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web10.480.1601414415264999059
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 14:20:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=j+zmhqm7;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id o25so4971892pgm.0
        for <yocto@lists.yoctoproject.org>; Tue, 29 Sep 2020 14:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BbnHA6sDbZlQw5LyzzfFFzYGzHzkVGOVYvNcfEqFQJ8=;
        b=j+zmhqm7HB/uwer4ZS79Gyd63eOGvOoeURsmxbgQnJOsZSLlDhEprspb8l4QME+mdV
         upnHVlNDdkn1OzcDY2Mc7LDI/CyUhk68G/rV/6BbQdo81ibtKGMrGDDPmK0cayAMs073
         DNsTq7QJM+bnDT4uf/j8SjAFO66gLQjajHEm7jZpL0Z9cKj8aHdjRepIpw4h18YCuh6L
         oCnhnEhEEaWEz9SDoQqz2oCjDAmddwFS9R23g42bUYOBl6b8xMycFoqHtBAUUGRqiokc
         u/OACUNngw4YjgsLpD7DMPOrYHqPeHDrKdlS5ksdhp7/jU4eednjtnvUMrWAt+SlmnDr
         9I6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BbnHA6sDbZlQw5LyzzfFFzYGzHzkVGOVYvNcfEqFQJ8=;
        b=LKbz4XBuHIz1gU9TqvRqkoF4oQqh6Wo3RuaCO2dE+f5KBO/fxYk145H24YXI4WGoyr
         YhMw3RONuE/qYNfVRooRarrgUVhzivyorxRYtPKOz+PeEe+8itN6c2A7CH4lhez3BlZg
         sMBWFjxWRXOtLnoRTSgOZ3vBatGhjlRns1KWozIG5lJNn+Fg2hopqXUIVoMruXPToubw
         pZGV0/2cGjAkJSLOo5cyq1eT0cs0h1Oka8aagHS2aFA/4aHET9tcy6jIBsszV7WDDrMp
         bNf1fUjiR7bUFjUfqWqskzKonwWgWs5cRKgT547quBIXkA9/0BBliuO+658szydJMsfK
         Ix2g==
X-Gm-Message-State: AOAM5305ekGt0uif9vmIt44i8DwObXXL6vVvh6CHXB53lziqQjCJG1+R
	sQiuzOEehCY6ObDlTY82T+WW2gLH4Qd/0g==
X-Google-Smtp-Source: ABdhPJwasYJ/j7kg37g05UM4eRI4neGaVlrXI5m7Gyfx29UUa03+2po84/yrN4V+rPJ3fzUeKzPW/Q==
X-Received: by 2002:a62:1bc7:0:b029:13e:d13d:a0f6 with SMTP id b190-20020a621bc70000b029013ed13da0f6mr5838257pfb.18.1601414414434;
        Tue, 29 Sep 2020 14:20:14 -0700 (PDT)
Return-Path: <ticotimo@gmail.com>
Received: from thetis.hsd1.or.comcast.net ([2601:1c0:6000:9640:b5b5:12b:d418:abc5])
        by smtp.gmail.com with ESMTPSA id t10sm728367pju.1.2020.09.29.14.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 14:20:13 -0700 (PDT)
From: "Tim Orling" <ticotimo@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <timothy.t.orling@linux.intel.com>
Subject: [PATCH yocto-autobuilder-helper] config.json: QAMAIL_CC => qa-build-notification
Date: Tue, 29 Sep 2020 14:20:01 -0700
Message-Id: <20200929212001.9519-1-ticotimo@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Tim Orling <timothy.t.orling@linux.intel.com>

Replace the hard-coded individual email addresses with
the mailing list created for this purpose:

qa-build-notification@lists.yoctoproject.org

Signed-off-by: Tim Orling <timothy.t.orling@linux.intel.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 9d66d48..d65c0f4 100644
--- a/config.json
+++ b/config.json
@@ -16,7 +16,7 @@
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
 
     "QAMAIL_TO" : "yocto@lists.yoctoproject.org",
-    "QAMAIL_CC" : "otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com",
+    "QAMAIL_CC" : "qa-build-notification@lists.yoctoproject.org",
     "WEBPUBLISH_DIR" : "${BASE_SHAREDDIR}/",
     "WEBPUBLISH_URL" : "https://autobuilder.yocto.io/",
 
-- 
2.25.0

