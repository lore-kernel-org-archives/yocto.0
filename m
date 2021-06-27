Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web10.2168.1624822484949784955
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Jun 2021 12:34:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pvdc79j+;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id u14so6945584pga.11
        for <yocto@lists.yoctoproject.org>; Sun, 27 Jun 2021 12:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=vyF+Y1TAaeHkJxQRvytH74pL3jrc9rTOVqtLok5/Vv0=;
        b=pvdc79j+On5j9H06X7ApoxmktlL4aFD2GaFCMUqv8MmciROdGFwnusAlGmSbuT/BQU
         0D/SrJot0B6zDgAEqKieaSEUZAKrmLI5JLPVwp+8NV51KhDkxGexztBubg/SE0zaTz8U
         U1jiJLS+Kc9uPhotAkKFsXeECZgi/LSx8ANsQ1njJ/7KMWBgQi3nH06Dj6gNwdq110nI
         YW89L2FnYvMq8JtuoWOzsoV432As0ibB7znXO2ZK9205Ek42lUaODwY7WNyCjRk3I9wm
         PhD07ACuUwTNkSesI0BBuSTXbnalRtT7BaKmrhKFmhlD9BduZISJlgax3lG2A92m4Zu7
         /TMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=vyF+Y1TAaeHkJxQRvytH74pL3jrc9rTOVqtLok5/Vv0=;
        b=lXh0vZwx7EAAwYHYvBB2w4LWctvQ33q/ekeuXtKSFIGSQm0jDaaabxVhWHo6P8XNb+
         xfAS9qIDe8qtTflVSPX9j9EjBdSkHcKoY14hDq/Qu3BhYUyiipUKNvl0jwIF51Tbuaar
         xRRo4jC/NjewSEs+IdSWRdcWcF+HJzIEqp6ejDygRArjyDjPGMbDdhsTdAerHajYvRLW
         Ka9j7cAA3BcqpeY92e1rCP+HxJsW7kvioc0WicpdN+vEJW6dXk13LmKCVP0FVARNLMNE
         V07/cCaTm6fFavXfiU1TH+e+wz52E3BthJi+d9DSUugaW18atZsBcO+r3lC/COqEwL1l
         OGGA==
X-Gm-Message-State: AOAM533snVWHrx8Ko5+0RdUnVWJVlmjZia8YOOKjeMz/aaQ+uW6MvTNo
	ESXbQ0t0lkmkG1arQ2v0/rLxPpHMFvwtAw==
X-Google-Smtp-Source: ABdhPJy8jtMH+vqM+KjSKYpc4i3nm+ZlfHclekFqlMVhgcZdCIxwEwKO9ukSocBbqEMGctGr5XVqzQ==
X-Received: by 2002:a63:4002:: with SMTP id n2mr19704694pga.124.1624822484253;
        Sun, 27 Jun 2021 12:34:44 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:90a0:cfd2:ffe1:efef])
        by smtp.gmail.com with ESMTPSA id e1sm345670pgr.37.2021.06.27.12.34.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jun 2021 12:34:43 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] initramfs-framework: fix typo in conditional
Date: Sun, 27 Jun 2021 12:34:39 -0700
Message-Id: <20210627193442.18651-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/initrdscripts/initramfs-framework_1.0.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend b/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
index dc74e01..f5d476e 100644
--- a/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
+++ b/recipes-core/initrdscripts/initramfs-framework_1.0.bbappend
@@ -1 +1 @@
-require ${@bb.utils.contains('IMAGE_CLASSES', 'dm-verity', 'initramfs-framework.inc', '', d)}
+require ${@bb.utils.contains('IMAGE_CLASSES', 'dm-verity-img', 'initramfs-framework.inc', '', d)}
-- 
2.17.1

