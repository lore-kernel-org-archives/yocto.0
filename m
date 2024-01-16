Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D7FC47077
	for <webhook@archiver.kernel.org>; Tue, 16 Jan 2024 15:56:45 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.19047.1705420596645426433
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jan 2024 07:56:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=VT32h9L1;
 spf=pass (domain: smile.fr, ip: 209.85.221.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-337b8da1f49so573680f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 07:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1705420594; x=1706025394; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/bW/OIeyXEU4Oj7DCiS28eDk09qYESbKDVYJhAbX5Lc=;
        b=VT32h9L1OVkCQQ4jpiUv1GAHabN2xD8GSCXw8tHAQ4NoH13W/omv7A8FsXbchLptfT
         OIC4IN33+RfWgg8/dVHTJ/Y/o3n8s9WsEMrBzlPqJV3MDuVi4+UacKm+6i87b5QNUlhx
         fCnwC2+T8NUcTYTtUn3aNFo9cTmRJByBBeisGsYRdCXgdb62Zcv8uJq9jrJI9RER+Ji0
         srJnP2aPbgZxjYA3siDVkoVhenNg08Iyf5yywSLk69fgSWw7DLBVitTNvK+02tu8vMiE
         9uGz8Uyf+ysrMZKjP/aw3WkP6MQAUNXZefFVh7bt6r6SU6oD4DJjj2umeUSv8b5jJMzM
         6iRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705420594; x=1706025394;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/bW/OIeyXEU4Oj7DCiS28eDk09qYESbKDVYJhAbX5Lc=;
        b=UtH+NfTqpM48D/UXl3QtRyHTGJ37oVHnWw5kGGqj/2V4QGkGUWhDY2H1SeG9hIQwT0
         sLb7vhjIOcysuJjEMfCTYODfOlO97FiSnofFZvi8rYJvIpIqcrgDEUr2m5S7Lan11eKg
         XZPf3htgGUi0uC9oR0QPr9RNG1mnZ0a+YJ6G9S8rsgsdpkHOq0NUFo4rfp1f/J+haBeX
         D6HCErcl+cf/Xo4vpy9qtZ4WLByo8aYKcGuboNYM48nyqrY55MdCvQYzC+3rEWLSfW4U
         iYjUfwRVCw/SK51tcaPRwqwKXNf0ZDVgIMs9rXG79VQwetR/bLg3r5y8FYnT8U2896WE
         b1Ow==
X-Gm-Message-State: AOJu0YyvfRP3w3UTMc+Wfm4U5p/p/rJk2RxsIT8v4t+Wmed4QLs6X7RZ
	O4KVU9dUNuxELYZIkirGq4MzSWZpsljZ+ufueagrEKvQItNKfA==
X-Google-Smtp-Source: AGHT+IFarwxwlGexQxjuc9JpDIy1hXRpQV5SiNnYRfFkzRRPSuYMwODSwOA5uG9VEJhrrkWAs/2PPg==
X-Received: by 2002:a5d:64cf:0:b0:337:adf1:8b34 with SMTP id f15-20020a5d64cf000000b00337adf18b34mr1227587wri.210.1705420594386;
        Tue, 16 Jan 2024 07:56:34 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.local ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id d13-20020a056000114d00b003379d5d2f1csm9654068wrx.28.2024.01.16.07.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 07:56:34 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][dunfell][PATCH] config.json: Make meta-oe source mirror config wider coverage (polkit)
Date: Tue, 16 Jan 2024 16:55:57 +0100
Message-Id: <20240116155556.3008306-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 15:56:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62169

Some recipes (gnome-settings-daemon, accountsservice) depend on polkit
DISTRO_FEATURES. Set this up so that we get wider source mirror coverage
and fewer warnings.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 1a92c80..74c261b 100644
--- a/config.json
+++ b/config.json
@@ -1102,7 +1102,7 @@
                 "PNBLACKLIST[dvb-apps] = '1'",
                 "PNBLACKLIST[tvheadend] = '1'",
                 "LICENSE_FLAGS_ACCEPTED = 'commercial'",
-                "DISTRO_FEATURES_append = ' pam systemd usrmerge'",
+                "DISTRO_FEATURES_append = ' pam systemd usrmerge polkit'",
                 "FORTRAN_forcevariable = ',fortran'",
                 "RUNTIMETARGET_append_pn-gcc-runtime = ' libquadmath'"
             ],
-- 
2.39.2


