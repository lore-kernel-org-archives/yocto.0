Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web12.12239.1629040579421086443
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 08:16:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=q64ZznsO;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id t66so16530628qkb.0
        for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 08:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OgJox1s9LoccvWqrne7qe+mED//121CLlJT9IACVmo8=;
        b=q64ZznsOWeZEmlS9qMH4BCeV0sL921JsE16GsBp6bDOVWGKWu3o7GTByLocdeZRsDF
         iOurcml9BQbUTULLHmBL22g7ZQMeUNwmKjb4e6xRThnCbPErQdcAsH3f1kds84aNT7Gm
         YjEjdSMf3+VnmvjZ2Gs360dS8Yu5eB6v1WECpL1wpW0QsPCgQeadXtH8bhPsZHjp3Eb3
         jZBe6k3/RlB0He1NUGMwFnVkviiKE51xkHrti222eFx59AaxQQ08qW1TyikENTQIt2PR
         efXohCArEBn1A4tRLGdZ9wm1eSldCZaMRRK8fk86mu8fd8iuMb1rpQAzNjRxGUYocNJ+
         mCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OgJox1s9LoccvWqrne7qe+mED//121CLlJT9IACVmo8=;
        b=C2bLVTRlisuuT9qlUDqetZcMcCf/byMcSVIg0XwSgG/1CHPVpfKRHZ+XfW8+ju+11D
         kYLvJVxgZXjLCJDcgzcSERfQAXPZsfuz7J5SCLe/lSwsVXsLrzYHPBA57Z0h7NrM9MHS
         HrgH0XZ66y36+qJJPMV1/xjmwXNfglf/Ah5z2SYWxPEr3tVxNLQ6SfhG+JSMzELMFlLO
         c0/r8okQzkqXgknzlVzp3LkSRrjfvTmknsKkvqP0Dj5pas6sc4iZwRJbId8urNxzk4w8
         c8OUtxmeukBVy8kZlMKwnwFXzFH5+AIk8UOvOdSNxHuGBPBPhCtVdavk8pQkgTA2zVec
         Bceg==
X-Gm-Message-State: AOAM533Yu4wB8f47e/8PACkX5B+RaFcYGmKT2p4S+UOYSKnUmK6LOwVp
	OEbq9Hk4cH3MRgkGesxMJVs=
X-Google-Smtp-Source: ABdhPJxXBlrsTgeO8ZWPOo6axQABYtKbhs9Cj1eDY/KnLVFeOAnH1aRhEX7OJv4ZXA2S+HmVoqR83g==
X-Received: by 2002:a05:620a:1311:: with SMTP id o17mr11610844qkj.295.1629040578630;
        Sun, 15 Aug 2021 08:16:18 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id w1sm3507987qtc.7.2021.08.15.08.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Aug 2021 08:16:18 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 3/4] yocto-bsp: drop 5.4 bbappend
Date: Sun, 15 Aug 2021 11:16:13 -0400
Message-Id: <c4ad57dac3a49d47ff41a67ebe277e9d11a79f59.1629040284.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1629040284.git.bruce.ashfield@gmail.com>
References: <cover.1629040284.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

5.4 has been removed from oe-core, so we drop our associated
bbappend.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.4.bbappend            | 23 -------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
deleted file mode 100644
index 290aa323eb..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ /dev/null
@@ -1,23 +0,0 @@
-KBRANCH:genericx86  = "v5.4/standard/base"
-KBRANCH:genericx86-64  = "v5.4/standard/base"
-KBRANCH:edgerouter = "v5.4/standard/edgerouter"
-KBRANCH:beaglebone-yocto = "v5.4/standard/beaglebone"
-
-KMACHINE:genericx86 ?= "common-pc"
-KMACHINE:genericx86-64 ?= "common-pc-64"
-KMACHINE:beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine:genericx86 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
-SRCREV_machine:genericx86-64 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
-SRCREV_machine:edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
-SRCREV_machine:beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
-
-COMPATIBLE_MACHINE:genericx86 = "genericx86"
-COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE:edgerouter = "edgerouter"
-COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
-
-LINUX_VERSION:genericx86 = "5.4.94"
-LINUX_VERSION:genericx86-64 = "5.4.94"
-LINUX_VERSION:edgerouter = "5.4.58"
-LINUX_VERSION:beaglebone-yocto = "5.4.58"
-- 
2.19.1

