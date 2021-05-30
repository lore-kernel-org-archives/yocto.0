Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web10.34137.1622395107409670472
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 May 2021 10:18:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dpwhqmdg;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id 69so4039906plc.5
        for <yocto@lists.yoctoproject.org>; Sun, 30 May 2021 10:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=bYlLK5Hhtvm2NKg2xtiANOWufdEF0Qnw06D9gQH8dQQ=;
        b=dpwhqmdgMHPPILKcFSQGf8Sje/pPOpQJH6LHueeVwxlYWRl91fCrkzlo9xiwkIQsNm
         ouSWlqtlaeSNnr8m46LXlO7JLG4VeZ2+4w2+z6bq1Nv8O3u/74W+hE0l8OqIdxOj1sXv
         kD1b8raH50ZVBlPuBfsbe4A85vmC/gEkG42KDZr203KQTraQxkaqiKFekyKZk4iNcAki
         AjNvr7o5w27efGBH/o/LKn4aVFOPcRZ7RBjw1aHrIW8v897urGjuRhRVjNhaiVnegAer
         jBS6g+joZ7giIizFe4bdc3o6HMdqUNDwvDpeqh2rbC26/ysOBpwR8qgWIMzG4n97bMn4
         TlOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bYlLK5Hhtvm2NKg2xtiANOWufdEF0Qnw06D9gQH8dQQ=;
        b=k9v+UeUzd+u9GENjhMg/9qbA0D7WpXSG+EgA5qfPr/k2sJjpTR1VBmvWFqpLZ5tlPl
         OJDG0/MeV43Iaz9YSptwQWLTZpaB1Cp6PXdZjTY56bJwtD1Kk/svIqnpBAirEHY2HG3I
         qJkru+xN6mNtxZsPhjPVK6YE4ywJK99wF/GQnnqOvGSeKrniA4WgXJwmOsiakqAKKT/A
         rvF5Wfk90YDgJ2J/TO8kMFseMuTTOQiQkGFbaUjpp+9dI69D96zM1EoYp39zeSV7bKUf
         un7g47prLkLDxVDkVM6AunTF8Z0GJKE5px3DOv7/4o6adb1sySuxwG4KBeLgpcLBh+R/
         Didw==
X-Gm-Message-State: AOAM530lT/nWKzolOZ2vFqsQLJH1gbzX0oM+UZdgOBWvnbY+SHAjZZ+E
	QNIGYjrmdCx+OZKmSiMVAhzQQXJD5ydnRA==
X-Google-Smtp-Source: ABdhPJyQz7RXMCI4BEuTHCWeY3p6MrXgjXVLmVYRdr+E3jWIe2HMQoUETNlc8YJf5SM1+wFX7IhTCw==
X-Received: by 2002:a17:903:4106:b029:fd:9cea:7008 with SMTP id r6-20020a1709034106b02900fd9cea7008mr16843214pld.47.1622395106853;
        Sun, 30 May 2021 10:18:26 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x1sm8572548pjk.37.2021.05.30.10.18.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 May 2021 10:18:26 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/5] linux-%_5.%.bbappend: drop recipe
Date: Sun, 30 May 2021 17:18:21 +0000
Message-Id: <20210530171824.571143-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.24.3
In-Reply-To: <20210530171824.571143-1-akuster808@gmail.com>
References: <20210530171824.571143-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-%_5.%.bbappend | 4 ----
 1 file changed, 4 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-%_5.%.bbappend

diff --git a/recipes-kernel/linux/linux-%_5.%.bbappend b/recipes-kernel/linux/linux-%_5.%.bbappend
deleted file mode 100644
index 6bc40cd..0000000
--- a/recipes-kernel/linux/linux-%_5.%.bbappend
+++ /dev/null
@@ -1,4 +0,0 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "yama", " features/yama/yama.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
-- 
2.24.3

