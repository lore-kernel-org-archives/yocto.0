Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.6484.1632411966226302087
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 08:46:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ENyH16tC;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: ptsneves@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id t8so18622445wri.1
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 08:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1bv5blOO97zpVvpfyyBVF/t+5nVDpuuBayag9suXgeU=;
        b=ENyH16tCSp5nvJfOlAajdUIu1CVY+cMSStmG2JKI2O4JLr2EZcj1Q0epnPQIIos4IR
         laqnrszk+lCkbCzi9BaIcuMPpAmnWmL4G6Sl3WQXAtBJbZFowfvgo1qgnzrT9O8NOi1Q
         kFyUmmUyF+tWlKSmYkNPn2f3sIzYJ6J0rpwxhXSkBsDDvFHzQkkA96QJSTPIgV14Y/Ob
         hKsHIZbkeS00KeSGGuzZQyPlpnHQquJlv/R7e5ZsPx5UEnkIkn4Bi3X6eI3LB+TmG+FC
         Kez1D5TXdYBaCJ+BRIxYw8vmOHTn8R/KSvVRYJ7lX7jg04WfXFY/cydhvLKI8Sg8TQWP
         9bbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1bv5blOO97zpVvpfyyBVF/t+5nVDpuuBayag9suXgeU=;
        b=DNmQm1mf7kdtsC3PHSvAg6CrGC5gIb4dVCbfev459QNTlEBwifRG1b+Du4IjJ2r4v6
         KBjhaPHelixfKEuWl5CSU37rZhYeOHZdE1OBdyGA1/eZ7XoGxkJQcbuvw4RoztyW0fkw
         KcAjUHmS2qyu8AtSNT1FU/Nc72kZx3IF0WOaHYLaxJ5uQb1DmH6JOOr4U1WtU6WmPdvW
         qq1Q9fNNiW3ZIdwq23M6Q/4GsdibOZ/Z36Y0tGavlxTWy4PVTzJ9dnAFbdkoc20yp8F/
         KmIBsjPZWEMbCErW/8Vm16qBBehUaiuIv7v1nmun4dYqpHiHGku/qeUtLFg6FtsOB7x5
         2MWQ==
X-Gm-Message-State: AOAM532AAhRNZlIMmRfKSFhGdpPNZgM+2eYv+Px6XU0ZnmOvaaHYiOS4
	LDbnTsZnBKjBTHYN1y7QXeMOkznJGs4IwIs=
X-Google-Smtp-Source: ABdhPJxhCwA+DGY1Ln2PB1pzC0A/Xtkyy+V5kSFfxwqGKHVRtYKCVLTi0F8dvmqDs8K20Wb58vSNAQ==
X-Received: by 2002:a1c:ac03:: with SMTP id v3mr5255141wme.127.1632411964527;
        Thu, 23 Sep 2021 08:46:04 -0700 (PDT)
Return-Path: <ptsneves@gmail.com>
Received: from pneves-XPS-15-9550.Home ([2001:8a0:7dc6:8100:194f:a966:dd1d:b43f])
        by smtp.gmail.com with ESMTPSA id f18sm6558721wrw.63.2021.09.23.08.46.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Sep 2021 08:46:04 -0700 (PDT)
From: "Paulo Neves" <ptsneves@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Christer Fletcher <christer.fletcher@inter.ikea.com>,
	Paulo Neves <paulo.neves1@inter.ikea.com>
Subject: [meta-security][PATCH] dmverity: Make use of DATA_BLOCK_SIZE variable in initrdscript.
Date: Thu, 23 Sep 2021 17:45:49 +0200
Message-Id: <20210923154549.4108832-1-ptsneves@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Christer Fletcher <christer.fletcher@inter.ikea.com>

DATA_BLOCK_SIZE variable was set in dm-verity-img.bbclass at build
time but the initrdscript was not updated to pass the DATA_BLOCK_SIZE
to the veritysetup. Now the functionality is complete.

Signed-off-by: Paulo Neves <paulo.neves1@inter.ikea.com>
---
 recipes-core/initrdscripts/initramfs-framework-dm/dmverity | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-core/initrdscripts/initramfs-framework-dm/dmverity b/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
index 888052c..c815940 100644
--- a/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
+++ b/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
@@ -6,6 +6,7 @@ dmverity_enabled() {
 
 dmverity_run() {
     DATA_SIZE="__not_set__"
+    DATA_BLOCK_SIZE="__not_set__"
     ROOT_HASH="__not_set__"
 
     . /usr/share/misc/dm-verity.env
@@ -49,7 +50,7 @@ dmverity_run() {
     done
 
     veritysetup \
-        --data-block-size=1024 \
+        --data-block-size=${DATA_BLOCK_SIZE} \
         --hash-offset=${DATA_SIZE} \
         create rootfs \
         ${RDEV} \
-- 
2.25.1

