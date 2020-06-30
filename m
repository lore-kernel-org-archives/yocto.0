Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web12.11411.1593508174626745523
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jun 2020 02:09:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=COP6+uUr;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id dg28so15450049edb.3
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2020 02:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xWPZovrLBOLtiWMIRE3dF0pYE8GoL5L0zwqooa4VeYs=;
        b=COP6+uUrQzaDGJ4ErIIvW7FpEC10nxuwMV88AP46ROnvRz6Woz5IXqwNp8Zh02vpUj
         HwgqzpMxTzjAfPGdvplTzzKgU2HzrKZpftqV9AyVIorie76Y+7q+qGZ2diHzdPkLpuzp
         dR4KNJKcxUSz3sb7ccT2z3m/yoyaLSX1PzYW6QF7CwdGggoUuEzEwOwXcSwgsc60bEJC
         +7NgeLDoLGNUMuHYMQpmMOB9QTZV+ChFJ//nW1hW/2NR+IHL17XaugqeKRELrGi5IPD7
         zFb4rLFtU2h4/FGqygYFgRPx3RJX/hz7X/BuASeMBvgPBUvjqpDgUSpp/HBOR7R3MdFs
         s76Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xWPZovrLBOLtiWMIRE3dF0pYE8GoL5L0zwqooa4VeYs=;
        b=C60uZ1WRTqoTc38VX+bLI7QlRiPu3U5yx2BraZLCy5e+y/x/dHbMlqTnTJ6s+zRKNk
         aRodJmdKTYENeKIHI+/cCUjK34Nk4+gmk+cUF8puQHUgabhL7AqamEDXQxgRKnUkjtSb
         nA7Inu9sWsjBE+wr/VN8SNuCABUfCgyZ8TJaQSDcEgxu+M+o7VyArgfvMhJjBtnGhKN9
         rlHO5t7Sn9yHETZIzER8rtMPUE+JNKFYNmNtC8GRsH99tfl8QTxD8ycx9J3TbCIllLrP
         IBvI3Rm8uQGwfnKM64651wKKIXmBfj8TdQljYFK6BCZ/yMvxqv7aeU7QSHj0KHZV6A2t
         na5A==
X-Gm-Message-State: AOAM530D9pzz6JoBMbJ3mwm37TiVaZCyuldsUxqoevEDEGuM0Fzp2zeo
	7MuqPKUzugQ4dZfbnOpQffhqnShw8JA=
X-Google-Smtp-Source: ABdhPJxUUQLVVg87pxHvd/hmRmF9T/0b4pp+UTcb0q7PRWSgTz95XyFsB0TyOcFz3Jhkw/uz/gEVWA==
X-Received: by 2002:a50:9e02:: with SMTP id z2mr21096977ede.87.1593508172810;
        Tue, 30 Jun 2020 02:09:32 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from linux-f9zs.site ([2a02:2450:1011:56f:b652:c378:b428:fdf])
        by smtp.gmail.com with ESMTPSA id p14sm2090101edr.23.2020.06.30.02.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 02:09:32 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [AUH][PATCH 1/2] emailhandler: actually send messages to cc_list as well
Date: Tue, 30 Jun 2020 11:09:10 +0200
Message-Id: <20200630090911.8813-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 modules/utils/emailhandler.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/modules/utils/emailhandler.py b/modules/utils/emailhandler.py
index 066f013..8c8b85b 100644
--- a/modules/utils/emailhandler.py
+++ b/modules/utils/emailhandler.py
@@ -103,6 +103,8 @@ class Email(object):
         try:
             smtp = SMTP(self.smtp_host, self.smtp_port)
             smtp.sendmail(self.from_addr, to_addr, msg_text)
+            if cc_addr is not None:
+                smtp.sendmail(self.from_addr, cc_addr, msg_text)
             smtp.close()
         except Exception as e:
             E("Could not send email: %s" % str(e))
-- 
2.27.0

