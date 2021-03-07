Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.22364.1615131322389458702
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Mar 2021 07:35:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=E3j5TCyc;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id a22-20020a17090aa516b02900c1215e9b33so1623596pjq.5
        for <yocto@lists.yoctoproject.org>; Sun, 07 Mar 2021 07:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=p8F0zf5d4uCgekRtqzE8DtEECK8CcePVUjZyPf7/W70=;
        b=E3j5TCyc/bpI3GIdaW1FXyG9NiBXbJMCxQYDdRfc26GU5fLtC99h8OFX7JtmmCDMAk
         q0EyCDzN9MtrW/UlCw9o4otveacWwWjylVVwHbbsvCaL34wIdCsRDKHxc3LCOFlFrgx/
         E0izESUoD7aoouxWr2v7xxaDnoYkI1raoORIIksmDT5QNyajN3hJFKoT22yPMYYDW2tm
         gadinpzTksneTZnQQmgqJhgeZ2apfEQNe4jxT9twsv/frBnCsblhI8USsqyHQtFP4gun
         1NYGJClUSBWSF9e0grj/9Vvg1IYQVTflMA7VJ73an5JUDJe+7YIpQcPdPFJEZ6hxVRHL
         8dXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=p8F0zf5d4uCgekRtqzE8DtEECK8CcePVUjZyPf7/W70=;
        b=TD15MJ+j4vM7Y0UIWVgazPKH2/T+iSgSB0c2Y0MSozekQuc6FmFw7I4QBjDUcSn0YP
         ikeeSgogeU4Tf+fo+ALuyaYbnvw/tYbmhDTLwV4wo7iFI8Xip3wx7L8VbrBYolDdN7ZO
         BNRJyT65k5sYUYg4/KP2RXP+2anTyxvqRSl+usXSPF2UJYtkusXE+lQTkl0iP1138SP5
         PawcjIj2AgblZv5u3b4IyaFKDaX9QP6ZhsihtO1Z1QfrfgFblS0NN0o/KA0wc9LW0WRA
         yq6eyQA3o+4P4t3ozA1Ts6nAb1L3lZB/Qv7N7CW77TH3b5fDTC9279nPLB4wwCTb3Fe7
         jMbQ==
X-Gm-Message-State: AOAM530NoBOIprlySAxJVLDqm+FLNIABuX3ScVbNjqkprnHCr7NFt5Cs
	xbRJsoIXiBpysRF6fJG3wYh6nozGZQw=
X-Google-Smtp-Source: ABdhPJxNtLoTWHgHoJQ+mB50ucT2OeeQd403/ZpDlt1Lmua6SUrg1ropl3TEnZ+BNFfaTbhyIrBQxw==
X-Received: by 2002:a17:90a:a584:: with SMTP id b4mr7980449pjq.186.1615131321807;
        Sun, 07 Mar 2021 07:35:21 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:4de0:7e40:32a3:ab29])
        by smtp.gmail.com with ESMTPSA id w26sm4745997pfn.33.2021.03.07.07.35.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Mar 2021 07:35:21 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 3/8] tpm2-abrmd: update to 2.4.0
Date: Sun,  7 Mar 2021 07:35:12 -0800
Message-Id: <20210307153517.5761-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210307153517.5761-1-akuster808@gmail.com>
References: <20210307153517.5761-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2-abrmd/{tpm2-abrmd_2.3.3.bb => tpm2-abrmd_2.4.0.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-abrmd/{tpm2-abrmd_2.3.3.bb => tpm2-abrmd_2.4.0.bb} (97%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.3.bb b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.0.bb
similarity index 97%
rename from meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.3.bb
rename to meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.0.bb
index d2a1c47..edfcce9 100644
--- a/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.3.3.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-abrmd/tpm2-abrmd_2.4.0.bb
@@ -18,7 +18,7 @@ SRC_URI = "\
     file://tpm2-abrmd.default \
 "
 
-SRCREV = "4cdda466010a3699ebe967d990ac715ae3de7d35"
+SRCREV = "4f332013a02c422e186c4aaf127ab6a40b996028"
 
 S = "${WORKDIR}/git"
 
-- 
2.17.1

