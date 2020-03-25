Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com [209.85.167.66])
 by mx.groups.io with SMTP id smtpd.web10.9331.1585136663268569325
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 04:44:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NA24krS9;
 spf=pass (domain: gmail.com, ip: 209.85.167.66, mailfrom: jonatan.p@gmail.com)
Received: by mail-lf1-f66.google.com with SMTP id t21so1473356lfe.9
        for <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2020 04:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KNKDVX7gmou24WA5OrbjKjCdsyWap1koP9Cnkzd7ILU=;
        b=NA24krS95S11rhzLucHgpJhKiLb278YzUoKsyHAVlzoZtssVTEhMM0hsw9aUxfDvnJ
         LW7DmfkTL3bQtMNGZqAUOBFIO7WFKebpBURuNS6IChecoOl3JsChT9/1p7bFJroNKw6B
         NTsB2BClzLMqhOQMUIe16nQ1rmG+ETewhVJP3y7h5s3jLHoXHyzd5HQ6Tk6Lex3a0hY8
         XiC+lR+gPWvmT382LbvdVvghkECW/pq0CWd6Wr7lueCN45u0OXCfSr+n6Sk731vgsKy8
         FFruYj2DdjgCXjskhMJLDZS2SDgAdjhcI9aN1njdEBEX/ubbnRflBafQ6cbgDhvJXEJW
         o8GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KNKDVX7gmou24WA5OrbjKjCdsyWap1koP9Cnkzd7ILU=;
        b=tcVzKK//TLcyMH2VHHdAgrZrZkCkKJVnJwz7iVIEuLG3FPRsxrhDdJLe8LB5fnzUaA
         SwgWbb9+vDdm1jKD24ktEPjNVk2zNKNIuItb2PuH0NOe9R1BacZB4y/HKwztogAnlqNo
         CEzyTkSzH4SW+LGwcJKnLHo4+xpJX3UoET+Lh7cwpx30ezvh8SYU9SFNBnFhle5kwASW
         HVr2rNS7bjBGkwZsch1d8JRrfx+i2/aAswkAd8X7egYLROEWyxRFyCYWOoeKthowDA/w
         n1kHGi8wlEZfy5ecvfeGh0BCGYAwD2kfZtNGPGQqbdA3/KHpckinGJqaoT6ceLsLcv/u
         4+NA==
X-Gm-Message-State: ANhLgQ157v7IvzvUe3gKyY35Qex8Qw+uYvzW45w6r62tHCStpBQKc88e
	QAfv3j1DVgIKvR5lNUsqn0qkCK19mxU=
X-Google-Smtp-Source: ADFU+vsNVq3cFXvCuVI4kn4qkmt9BA+JtxPqeI2Y9rakgQBDCuZPcykJ/eGjRFrkXQgCvJuljnBqig==
X-Received: by 2002:a19:6f44:: with SMTP id n4mr2044209lfk.59.1585136631306;
        Wed, 25 Mar 2020 04:43:51 -0700 (PDT)
Return-Path: <jonatan.p@gmail.com>
Received: from localhost.localdomain (h-217-237.A357.priv.bahnhof.se. [81.170.217.237])
        by smtp.gmail.com with ESMTPSA id c22sm7182729lja.86.2020.03.25.04.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 04:43:50 -0700 (PDT)
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: =?UTF-8?q?Jonatan=20P=C3=A5lsson?= <jonatan.p@gmail.com>
Subject: [meta-security][PATCH 4/6] sssd: Add missing files to SYSTEMD_SERVICE
Date: Wed, 25 Mar 2020 12:43:17 +0100
Message-Id: <20200325114319.2115155-4-jonatan.p@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200325114319.2115155-1-jonatan.p@gmail.com>
References: <20200325114319.2115155-1-jonatan.p@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

These files are installed when the ssh or curl PACKAGECONFIGs are enabled.

Fixes the following error:

    ERROR: sssd-1.16.4-r0 do_package: QA Issue: sssd: Files/directories were
      installed but not shipped in any package:
        /lib/systemd/system/sssd-kcm.socket
        /lib/systemd/system/sssd-kcm.service
        /lib/systemd/system/sssd-ssh.socket
        /lib/systemd/system/sssd-ssh.service

Signed-off-by: Jonatan Pålsson <jonatan.p@gmail.com>
---
 recipes-security/sssd/sssd_1.16.4.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.4.bb
index 99697fc..9bfcb75 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.4.bb
@@ -99,6 +99,8 @@ INITSCRIPT_NAME = "sssd"
 INITSCRIPT_PARAMS = "start 02 5 3 2 . stop 20 0 1 6 ."
 SYSTEMD_SERVICE_${PN} = " \
     ${@bb.utils.contains('PACKAGECONFIG', 'autofs', 'sssd-autofs.service sssd-autofs.socket', '', d)} \
+    ${@bb.utils.contains('PACKAGECONFIG', 'curl', 'sssd-kcm.service sssd-kcm.socket', '', d)} \
+    ${@bb.utils.contains('PACKAGECONFIG', 'ssh', 'sssd-ssh.service sssd-ssh.socket', '', d)} \
     ${@bb.utils.contains('PACKAGECONFIG', 'sudo', 'sssd-sudo.service sssd-sudo.socket', '', d)} \
     sssd-ifp.service \
     sssd-nss.service \
-- 
2.26.0

