Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61842C19F2B
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 21:33:19 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web08.1034.1659043991064819395
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BnhEjuGC;
 spf=pass (domain: gmail.com, ip: 209.85.216.52,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id
 15-20020a17090a098f00b001f305b453feso6543209pjo.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 14:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Dfnd9wxAj0kVUtjdjH3vMdVRkQDR/+AxV07Nu2ycjkM=;
        b=BnhEjuGCYwxmnwuhQOmRrkW+iJNQ1aSvkybvesZuMojNVbQ0SxLRa9v5ZF3ksRPDh8
         fjm49QRu+wAFcCgPBN9gVP7z9IIuOShZDypSRapKLyxQDHbGykXc/ELdK41KeUoFYASM
         bPLKQA1fmc6Ux/HLw13kOvULPGvO+0PWrH/i07uqwpWfabB4BGaQCMDiVgVYckT9/m34
         7kXQHx6ylkh2jZDjcwmG/jskgq7j3E03q0Zq3RCziSgGW8eTg2XSb65tCVdKa9LO7Xbp
         k6AJb7lCBZ7AjYJzAIpCXiAZlHPDDadYjTfdCeJ2l2a+u63ithjIu5L3hT8Ky9e5+ORs
         JDCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Dfnd9wxAj0kVUtjdjH3vMdVRkQDR/+AxV07Nu2ycjkM=;
        b=GkCbynbfvFeqyIQL3FHnNn3crzTYCVwRarMxgHgoDisozjHrq94gS0Vyn+w12wDQAe
         Ri9CIMmDf2aHcP5MR0AnmfY7k6PfWsYvHV/BhO0LR9kU2JMPyRwFI9DrqmrXxOtKs3wh
         zLSMGhZt4ChibadCM0QfpFZpAwNayuoBaBS87x/OzX5yrufc7l1eDgalFD9coJZT8KrT
         IsPHDbR7F2HIGZclBNFuuwjFTAhBcFbrjtmWkkDxIfHQ3ixxekzpaglq9ExtTISPSQCa
         5dvFm323aM+G0mciKBUaT093lY0fKeG/H1tdNTKvIp5Ll1XV45MAgICSPuP5LejF+hf0
         W0cg==
X-Gm-Message-State: ACgBeo0ydN5fSou9gkC4Cpuo9xxq+6CJo+D84nHWogeFIax9qS7LfzI3
	SyL6EV6YGn2eFItxgpqgYgA9WRBLYtI=
X-Google-Smtp-Source: 
 AA6agR4gFolM84Ej9lvg2n17WnYVW/GTO/9wCfjJufQU1BodkJHG/c3do5eiyZKnMn5r5bnkWTg89g==
X-Received: by 2002:a17:902:d70f:b0:16d:b32f:411d with SMTP id
 w15-20020a170902d70f00b0016db32f411dmr768987ply.94.1659043990135;
        Thu, 28 Jul 2022 14:33:10 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 b62-20020a62cf41000000b005283f9e9b19sm1207328pfg.180.2022.07.28.14.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 14:33:08 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Upgrade Helper <akuster808@gmail.com>
Subject: [meta-security][PATCH 4/5] sssd: upgrade 2.7.1 -> 2.7.3
Date: Thu, 28 Jul 2022 14:33:00 -0700
Message-Id: <20220728213301.3138-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728213301.3138-1-akuster808@gmail.com>
References: <20220728213301.3138-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 21:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57667

From: Upgrade Helper <akuster808@gmail.com>

add UPSTREAM_CHECK_URI
---
 .../recipes-security/sssd/{sssd_2.7.1.bb => sssd_2.7.3.bb}    | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)
 rename dynamic-layers/networking-layer/recipes-security/sssd/{sssd_2.7.1.bb => sssd_2.7.3.bb} (97%)

diff --git a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.1.bb b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.3.bb
similarity index 97%
rename from dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.1.bb
rename to dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.3.bb
index 71f14a0..95065b3 100644
--- a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.1.bb
+++ b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.3.bb
@@ -26,7 +26,9 @@ SRC_URI = "https://github.com/SSSD/sssd/releases/download/${PV}/sssd-${PV}.tar.g
            file://musl_fixup.patch \
            "
 
-SRC_URI[sha256sum] = "8eebd541a640aec95ed4b2da89713f0cbe8e4edf96895fbb972c0b9d570635c3"
+SRC_URI[sha256sum] = "ab3c3fe2a69cc7b2557715a11000aaf358c0afd65f2828ca47a2d3b2651d871b"
+
+UPSTREAM_CHECK_URI = "https://github.com/SSSD/${BPN}/releases"
 
 inherit autotools pkgconfig gettext python3-dir features_check systemd
 
-- 
2.25.1


