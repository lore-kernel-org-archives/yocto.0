Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.3040.1602957827903170354
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FOSAC0X3;
 spf=pass (domain: gmail.com, ip: 209.85.214.169, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f169.google.com with SMTP id p11so2902345pld.5
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=pGcDOlMGEKJRsAXb4eHB5jumy0Qwhc0zzE9tuXnt9YY=;
        b=FOSAC0X3/woK7hBncrHvoCHqCr/IzjO3N1+3KEigNLYXJ01hcqA2jTQ7ymB75B3zKk
         rSq9Q/NEwWQcJBqW2iSulHL1RH+8kZkjdJPVJQ8VXyqJAWABciuZ1LwQGtqz153s0wxB
         x34fd8n/n5Pnf2mV36m6VwXlb7pPXzRx8XeQX092xvfHx2ZAdWgAeeqzZd/v/FeEgnqT
         V94+OIFNiqihn6ciwOT3hxkiZqfrxysgfHxmaQbbZ3X/3boI2TQJAwDxTWqqaJhE2Gb1
         RR3XizJt86EblpIWC1CgEnEKy7kC/OpfSe92CKoh/IDqTGy/JuJumIgj7FZtD/rRF2KS
         x6dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=pGcDOlMGEKJRsAXb4eHB5jumy0Qwhc0zzE9tuXnt9YY=;
        b=gErUffynGyJLVkjvkk+dpuUlyGVUlp+1/BrcdxiVkTzhqUhwU+0DEVsn3U/Dg/MbWv
         eHoEnOEHd4pRNT5l8NEuE9rCTG+iy4vTKsgPN+ES0mmwz0YtXUVB5oQ8IUq04+ALi5Ta
         +uorU7VttlwS+Ydo8qF8GnBU7YIU9Di8a8PjlvT6gqyfDmLMKPQK02HQhdN5sxz78Xx6
         tlnvT/p0RIJpLcHmRkGxhnoamzguxRw1tHHoIXcSSDDEusP1DcXabdK77E3Thz4LXQkH
         gB8iDvkgNEnYMlT5Mn4zMHqE6xFSyi9ursOOMurdGxYwMzvPqUUFzB8PVwiKSdQY3074
         0BBQ==
X-Gm-Message-State: AOAM530xj9I+KJEgX0cQUUCO8ca4VPU6MMzAIwGnCZunQdtycSOio/Ek
	e1oMKKSq3oj3uuciBJ3ged2kqSZecBM=
X-Google-Smtp-Source: ABdhPJwI2igE8Bqsphc/VhZSfv7a8zajLDfddm18DqFVyxiLaA+/7sYkjyFcDonvDxfa7wtGCoqV5g==
X-Received: by 2002:a17:90b:4617:: with SMTP id ia23mr10096898pjb.120.1602957827313;
        Sat, 17 Oct 2020 11:03:47 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:46 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 12/32] linux-yocto(-dev): Add dm-verity fragment as needed
Date: Sat, 17 Oct 2020 11:03:09 -0700
Message-Id: <c8d3edb3c48e228edf80815ddb1aa92e6010eb6b.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

Add checks that include dm-verity specific kernel config fragment
when dm-verity-img.bbclass is used.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 6f40921308be358ffce1a4e51a76672ad4168c21)
---
 recipes-kernel/linux/linux-yocto-dev.bbappend | 1 +
 recipes-kernel/linux/linux-yocto_5.%.bbappend | 1 +
 2 files changed, 2 insertions(+)

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
index 39d4e6f..fa536d0 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,2 +1,3 @@
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
diff --git a/recipes-kernel/linux/linux-yocto_5.%.bbappend b/recipes-kernel/linux/linux-yocto_5.%.bbappend
index 39d4e6f..fa536d0 100644
--- a/recipes-kernel/linux/linux-yocto_5.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_5.%.bbappend
@@ -1,2 +1,3 @@
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
-- 
2.17.1

