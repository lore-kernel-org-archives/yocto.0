Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.3059.1602957845746121844
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lW1Sn7Pj;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id j8so3242805pjy.5
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=bt/SVAjsV6SHYRBjIBqFwXbF8q0HEWbigwy7MWn+ERg=;
        b=lW1Sn7PjRhcJ+KDlcGwX045ZD7CWgekZZ/pH4m6GTiwPDLcNIRWmBP+BKurT1l3rLm
         tl8x/ppXQDLkaO1u6UtoRMhk11MtTRi1I1uUd9gr6WPYu7ghdGlbUdl+JZwgUyL7ZeL1
         09JRD9iPgI4unsUNzldeIcc3+n43bRQz1y/U13zMwkc5rTnTfiOfNxYoWFWbU/m3xEe/
         kOf7vNDkoLtWgSH24t5GqK4ngmEgp9NIv3WGqZb4n3s9htcWlp2Ho7GUHh9WEO48DKLB
         lrLoqe90Hv0pW/brWfxlG+bdNtNF0xo7dLRMFNMGfzClK5DOQeNDOf02CtRoTbcyexZ5
         lAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=bt/SVAjsV6SHYRBjIBqFwXbF8q0HEWbigwy7MWn+ERg=;
        b=W6TodBiXbGs7cOGNbeJb8vZxBCbdXWDtoRQe0zJCIVRZG0YwSM7ZZwg32qUZoqvvob
         6pTqSB9tXInrS6B/kglX9CMncYfZMTa+6xUGb7chYgPRfilWKqe+tntXINJGcKBJgs/L
         gKx0vcJ9Y9HX0BnU3t1DMcLGqNEOW+luKwjG1c8LoZv0t2zZ3ZvH+Bp6Yr3ug+IUP5UJ
         IESO8iqsb090Rm7mWrVKt2ae5x/jl1lpZ7s67XN/NvrYmf7DoYddoNF60U/nWKcDk4Mh
         AW3//HhwXRZnBcY0a36YN9Bv3K9wg4pRTsuS0nlSDnRnQepmHLSBn0sYuSeRyY9o8S1O
         EeSA==
X-Gm-Message-State: AOAM530tWjjozNbqhzn74fwFJOsee790XQO12L52n2iXZ5s9/nvWtz9x
	H+iOenSqfE/ARIv2iaNBrDnCGGiOBhQ=
X-Google-Smtp-Source: ABdhPJyyyvK7h7+4+qm4lqy6YV/nnYB51GNTDObEXLLta98SxamqkyHJ+rD9qSslgMNuTM8viJ49kQ==
X-Received: by 2002:a17:90a:a394:: with SMTP id x20mr9738923pjp.213.1602957845136;
        Sat, 17 Oct 2020 11:04:05 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.04.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:04:04 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 28/32] layer.conf: use += instead of := to update BBFILES
Date: Sat, 17 Oct 2020 11:03:25 -0700
Message-Id: <4963043a05da763f5a92b21911c0b8940deb28f9.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: Sajjad Ahmed <sajjad_ahmed@mentor.com>

Updating BBFILES with := isn't the standard way and can break
parsing under certain conditions, instead use += which is widely used.

Signed-off-by: Sajjad Ahmed <sajjad_ahmed@mentor.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 63e1cf3ffa26a4e820ec8d882e67e438aa0d23ee)
---
 meta-integrity/conf/layer.conf | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index b4edac3..6072e6d 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -2,8 +2,7 @@
 BBPATH =. "${LAYERDIR}:"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} \
-            ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "integrity"
-- 
2.17.1

