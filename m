Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web09.2154.1624822487053324304
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Jun 2021 12:34:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HYbqVowd;
 spf=pass (domain: gmail.com, ip: 209.85.210.172, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f172.google.com with SMTP id d12so4523516pfj.2
        for <yocto@lists.yoctoproject.org>; Sun, 27 Jun 2021 12:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=RIQZiv+4cKBtkvJy54iyu0WvnOhOmnPaVMzKIlWphqU=;
        b=HYbqVowdSTGsIL5DT32vHrkwilzL2bocaas/5ab2O92SVIWRtyCuz0Noypax+4hbA4
         NnXcuqhRJwQBwOFD3EAJ2qIYYaCJIxqlDtxBsk1VfWqshxRRJgfL85w9omrNGZkW2KZi
         C7p6o3WuDCsGX+CYpdl8y8PM9Svou4dgaP25U38NKuqV7r7jFvA/Ttb78kPpfRcRK/BH
         feVI1TgQ2haKsWKbLCPHet6v7th3ltH86ThJfW/1KGh8pdk0A39aV+1P1gzNCQT+YrfZ
         cxgHJtaRr3QziUyUBzE5yNkPXbWs+WV0U7y7dabgJq5Fy6nG1MkgudqjfzBYk55rnC8m
         yA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=RIQZiv+4cKBtkvJy54iyu0WvnOhOmnPaVMzKIlWphqU=;
        b=YLEYTclyHhGWmNss1VRSZ+ktiN3EN6StV5s0PGYCpNNka6rajtthL6h2iFKPHDEAYD
         qLwBnEpC4iklFoE6vgRV4a24FdD9Jf5UMKZ7IQsQi4yBC1oTBWA/0+YRHbTi+64xSgKb
         FlstHQkJApgAr+OLWevFhQo9+a2p+4gWNE77tTGC3TWWl60yzIm53VMMt+zBOTk9DJMi
         JC0pIkpgXLU5sIv7UF94rQJSI+Rp0+07uKoUlo2UCEtBV6uHdcZBLNntH6dbVpKQGYla
         gUA6syeql++BxRMR99TnXCMYnWCnupIR+lWu8jJ9FzPILrVhCe5oAo4iwHmaIWR80+WV
         byqA==
X-Gm-Message-State: AOAM532h3fjlTdnQmRo+EQ8dwIxKkvwNFADeqUqabqUwsa0jk39WWFlM
	BltGVo94sXeoI6GmyVDwWbay4teMayzLkg==
X-Google-Smtp-Source: ABdhPJymj04AA/82UUJn86QBz3ccVjUNHj3g6ZquY4Zh7PH5oJnbhRQi0SpVVM4Fn+f+pW9/0Zn8tA==
X-Received: by 2002:a63:191d:: with SMTP id z29mr20258524pgl.126.1624822486575;
        Sun, 27 Jun 2021 12:34:46 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:90a0:cfd2:ffe1:efef])
        by smtp.gmail.com with ESMTPSA id e1sm345670pgr.37.2021.06.27.12.34.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jun 2021 12:34:46 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] initramfs-framework: rename files dir
Date: Sun, 27 Jun 2021 12:34:42 -0700
Message-Id: <20210627193442.18651-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210627193442.18651-1-akuster808@gmail.com>
References: <20210627193442.18651-1-akuster808@gmail.com>

Fixes:
ERROR: initramfs-framework-1.0-r4 do_fetch: Fetcher failure for URL: 'file://dmverity'. Unable to fetch URL from any source.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{initramfs-framework => initramfs-framework-dm}/dmverity    | 0
 recipes-core/initrdscripts/initramfs-framework.inc              | 2 +-
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename recipes-core/initrdscripts/{initramfs-framework => initramfs-framework-dm}/dmverity (100%)

diff --git a/recipes-core/initrdscripts/initramfs-framework/dmverity b/recipes-core/initrdscripts/initramfs-framework-dm/dmverity
similarity index 100%
rename from recipes-core/initrdscripts/initramfs-framework/dmverity
rename to recipes-core/initrdscripts/initramfs-framework-dm/dmverity
diff --git a/recipes-core/initrdscripts/initramfs-framework.inc b/recipes-core/initrdscripts/initramfs-framework.inc
index dad9c96..12010bf 100644
--- a/recipes-core/initrdscripts/initramfs-framework.inc
+++ b/recipes-core/initrdscripts/initramfs-framework.inc
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/initramfs-framework-dm:"
 
 SRC_URI_append = "\
     file://dmverity \
-- 
2.17.1

