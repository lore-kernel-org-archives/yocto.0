Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
 by mx.groups.io with SMTP id smtpd.web12.12378.1582307681042348148
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 09:54:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GRnUjNKx;
 spf=pass (domain: gmail.com, ip: 209.85.222.194, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f194.google.com with SMTP id a2so2569792qko.12
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 09:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MfW0xLbTRxpRtU4tTdh93LuWjdfXJHxDrYYyPWvtJ54=;
        b=GRnUjNKxFafrrHl9zBa2nQiqgMG0Rt6XuG18oW4UUAlGwRghAk36ZSzSdT7s9DCipl
         q6BsuwP7bNMKlm95CeGtC1MeJu04tskJtpiLO+rmAsmN9E0c9p2bAMnQZHBy09Gr3+ui
         JQr7ODMsqJ5A4nhmwlubUO7C4nJV9HRxgwcBLMMG1rx75nQcHchX9g2j14K7NQjynTve
         Y8Apakp760L5k5Gu/kuTCRa0f5kP2Gq2sdDrhswlGizqJBIXOKOeKMpKGw4r4YNyi/ZK
         Upfwb2RI4UFYc8dgK85rrqQwcy01MHdrqSQVSKcrQ128A3eC6Zv6sZ/ZadFbTGYghmU4
         Gtbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MfW0xLbTRxpRtU4tTdh93LuWjdfXJHxDrYYyPWvtJ54=;
        b=KdWZNM8iE6ZbdHLandT19PbmVO/EKL/BmkxYT2c5zbbQqM7uRTEPw3YlxEl+tHPOUj
         U+b4S13ngDuwaGw9D3NzSbVSUXZH3iVtUJH7BtB5rHNCB5Hjg/5bu5rVCdOR7EIJSAoa
         RcV8i8xfivhlSBH8PWLYxejthXXGBL+vlZXZQKb1eOh+PsQrwLQnhdbvYAUoAtcyvKnB
         tIPk0hTcsAQXU8AB3QzQP1Xm00JboDwEcNJk7GTF4QcJAmHCszLMi6/POa6I61eg5P4W
         mxlJv0UnMGPNdd64goV720a88TfqHFaSoN4E6Y0CBexC9oS8mlKILodzVp9xZ/JBcIy7
         BaMw==
X-Gm-Message-State: APjAAAWQQcx7N0V6AS3k7fWYvXuApWtH+M0ruWcjnAdooujzWFKQc75o
	sxFdyuCxvBrtxA55DFBvUeE=
X-Google-Smtp-Source: APXvYqyBN7WPN6FUoxxkucvedXptplL1604Uq2/42JCHQOWSDv6QCtpNW9k1Upmg2N0Kpx8SLE+22A==
X-Received: by 2002:a37:4b4b:: with SMTP id y72mr34015568qka.175.1582307680204;
        Fri, 21 Feb 2020 09:54:40 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com. [174.113.11.95])
        by smtp.gmail.com with ESMTPSA id c17sm1769770qko.134.2020.02.21.09.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 09:54:39 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/3] poky: bump preferred kernel to v5.4
Date: Fri, 21 Feb 2020 12:54:35 -0500
Message-Id: <3e09f33248a246d7704106e3159f9d57571dfe5c.1582307331.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1582307331.git.bruce.ashfield@gmail.com>
References: <cover.1582307331.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Ensure that the 5.4 LTS kernel is the preferred version for all poky
boards.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 49c2bef407..8111f19caa 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -21,7 +21,7 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "5.2%"
+PREFERRED_VERSION_linux-yocto ?= "5.4%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.19.1

