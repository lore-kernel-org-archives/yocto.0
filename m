Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.2610.1617769356489806615
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 21:22:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jQi0axi0;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id p10so3554993pld.0
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 21:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7Mobqnmezx8ZV5fvzijSVHVPyWoeY5+vNgL1GSqTFsc=;
        b=jQi0axi0sCXCLgINX7TzTYMWqw/dzIesGms37CdIXIDwcInExvNDRR/7K0XE3HojMN
         c5xqA6N6yrIeVI9puUdSTRlr/DM6SLNOucv4eYGJB5Qs0yhPYlI1iXJDJ5dVWagnEojh
         04q78GOYVuVociRCdjyTnLdxJc1hwq4+34n8cXbu9QEC6JvLItD5X2S1013n6Jkng1ez
         dAqlMGNQuSvo9k4wXbLMlr/ji34xdDUqu+3TNslJc5dIiCiOzRiPZCbdIc6DTtH6dHox
         koG+iMT3gl4qldFUhj2I8INoWslvqk4I4k6tYi9urHioRaA6gGWFPUzfC0vxR1Tk4/UK
         8Dqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7Mobqnmezx8ZV5fvzijSVHVPyWoeY5+vNgL1GSqTFsc=;
        b=PzjDOcgzLJMGw/eVZa1icE26jXCI81K1AovLNsG5MBXW/7eljgrlKys4sndnYP8WKK
         Lc74lEZ6XdtRnujib442e5gIhm+/sTsVFcTVydZrAs4ZFrJwe904RgsjRRT+ACusiPUF
         aYdUpaqRJ1AvSSCZzZ3azoZOWkK7E2Hb2KjHSbn1n+kaqw6TUeK0KJbMDOL4f0xZYF1s
         imwpOO/4GtnSEggYyMnUJ4Btzbm+6vm1qsSCwvoHhTJilNCM5whWW9tpZ0j6H1Azidhj
         c4VMdhPgmTwiYHhum5myqzV33Us+85Aq/KCu/B4Wi2dw9NCDqKKB7hwdPRWRqWv7wanU
         hQHA==
X-Gm-Message-State: AOAM532V0i3iBGHjglMk8FMPidn1PYj4fBud5c/E+pp/Wb3LRxq30aQY
	UhOdBJTDZUhplbH7rKmlYHlNWqgPcNk=
X-Google-Smtp-Source: ABdhPJyoghs7ZxGSKIFUkMA7EDlB07D03Ef7R1YXiwg3wsqAG+vkeHrvOe17BvV9tr+so8ZUPGB4/A==
X-Received: by 2002:a17:90b:16cd:: with SMTP id iy13mr1508005pjb.46.1617769355622;
        Tue, 06 Apr 2021 21:22:35 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v134sm19722791pfc.182.2021.04.06.21.22.35
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 21:22:35 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/5] python3-suricata-update: update to 1.2.1
Date: Wed,  7 Apr 2021 04:22:29 +0000
Message-Id: <20210407042232.3373253-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210407042232.3373253-1-akuster808@gmail.com>
References: <20210407042232.3373253-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...a-update_1.1.1.bb => python3-suricata-update_1.2.1.bb} | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)
 rename recipes-ids/suricata/{python3-suricata-update_1.1.1.bb => python3-suricata-update_1.2.1.bb} (69%)

diff --git a/recipes-ids/suricata/python3-suricata-update_1.1.1.bb b/recipes-ids/suricata/python3-suricata-update_1.2.1.bb
similarity index 69%
rename from recipes-ids/suricata/python3-suricata-update_1.1.1.bb
rename to recipes-ids/suricata/python3-suricata-update_1.2.1.bb
index 732ca9a..bbdce69 100644
--- a/recipes-ids/suricata/python3-suricata-update_1.1.1.bb
+++ b/recipes-ids/suricata/python3-suricata-update_1.2.1.bb
@@ -5,11 +5,13 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
-SRCREV = "9630630ffc493ca26299d174ee2066aa1405b2d4"
-SRC_URI = "git://github.com/OISF/suricata-update;branch='master-1.1.x'"
+SRCREV = "50e857f75e576e239d8306a6ac55946a1ce252a6"
+SRC_URI = "git://github.com/OISF/suricata-update;branch='master-1.2.x'"
 
 S = "${WORKDIR}/git"
 
 inherit python3native python3targetconfig setuptools3
 
-RDEPENDS_${PN} = "python3-pyyaml"
+RDEPENDS_${PN} = "python3-pyyaml python3-logging python3-compression"
+
+BBCLASSEXTEND = "native nativesdk"
-- 
2.25.1

