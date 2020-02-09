Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.9842.1581269218862139220
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Feb 2020 09:26:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=neYZNhVc;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id n96so3135605pjc.3
        for <yocto@lists.yoctoproject.org>; Sun, 09 Feb 2020 09:26:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=gefZPW7TTX/077ljO0C0L0Ckvl/KYxwf/LYIAQghYt0=;
        b=neYZNhVc4ldgBYnD8ltu5YdU9MgDHbQ76gXYl2octlV6Btz8ORD2srsQTzKMxtuLh1
         mBWGHsVKZbpihf4Pb2WGtwPUMOdV/XSeQ0pG/vaNxCDBR3C4/P6ftj0Yl+aBZAT22Df4
         m8d2Lvp4OehOxROIzSqbae7luSNr+8mZEGWwFfc9kDP4qVP+MhCi8EHn0uy7CQOBC4WX
         klnw6V95tTxZ4UxApxdxW2b77ea/BrrLlkVOap4l3GTqwQwXdCOzUSfgozQCmtB5XfLK
         7V1+91SmBGE644Z76AX1e518IKxHJOc3cRPIqiA6XpG+Lu+Zmjn6oFmQI6HjMkIQXTvW
         NBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=gefZPW7TTX/077ljO0C0L0Ckvl/KYxwf/LYIAQghYt0=;
        b=FfbDuvAcQ9rAeoyxq+/45pTaeNoYHRZ+Lxak/U+fbbzwLCDoB+VCri2A7MMtUc9apg
         LZfobrP6AJpdO/ZlwyJZv2LzGEsq5W+gtbBxz0gDCDXRtKdnd1eMbgaHuuQLdWUjnsjw
         v2Ub/MU0aQtcVQ+WxyurqKiOjnbDe6c7SkqfZMaY5fRIaUtFNTM4JN6VKVAUAF/2+hFe
         rGKPutUbyW+tVtpVfFZQLYkUpFayTpG4Pew/z3vWwOT/lOPTczCGS1EzdJ3aDdcK5xBb
         akVW3oOUQIpPMzXDS3PEoDzBI6hMqiDJkG1JJ+Vg/JnmMSldv+kEItzwcyGmALuciXFP
         3YTQ==
X-Gm-Message-State: APjAAAWPtTm4g4WkRyvVHC94YmW3o/PvwO9Y3rq4MII6EBq4mlrYSTGr
	//debdBUywHG3dKQ2q1Ym31WwoXk
X-Google-Smtp-Source: APXvYqy8PpY6buvpKv320OJOm9aP1kR3zWUyR/nsqr9OKFXWkWqGTRhVNxregx26bRYciSYO/Jtr3g==
X-Received: by 2002:a17:902:9042:: with SMTP id w2mr8980028plz.269.1581269218238;
        Sun, 09 Feb 2020 09:26:58 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:154b:3780:5122:4aa9])
        by smtp.gmail.com with ESMTPSA id x143sm9956609pgx.54.2020.02.09.09.26.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2020 09:26:57 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] tpm2-tools: fix compile issue with new gcc
Date: Sun,  9 Feb 2020 09:26:54 -0800
Message-Id: <20200209172654.1111-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200209172654.1111-1-akuster808@gmail.com>
References: <20200209172654.1111-1-akuster808@gmail.com>

fixes:

releated to issue:
https://github.com/tpm2-software/tpm2-tools/issues/1561

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
index e90dcfe..aee4d3b 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
@@ -15,3 +15,5 @@ SRC_URI[sha384sum] = "396547f400e4f5626d7741d77ec543f312d94e6697899f4c36260d15fa
 SRC_URI[sha512sum] = "25952cf947f0acd16b1a8dbd3ac8573bce85ff970a7e24c290c4f9cd29418e77a3e48ac82c932fbd250887a9303ab301ff92db594c2fffaba47b873382444d26"
 
 inherit autotools pkgconfig bash-completion
+
+CFLAGS_remove = "-O2 "
-- 
2.17.1

