Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.12126.1629040577900820510
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 08:16:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jtDhnbkQ;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id d5so2968108qtd.3
        for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 08:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T1M4UrowILLANzbwV4XMT5au+3uZxxFHZxej0EDuVUE=;
        b=jtDhnbkQv51SOf81dJRt6A/sR1aPIqERh+KowvT+4t2+0hBPhG7XLjkVUdCsQgBx1N
         uznvkkYVz1uQo3c0e3QCQw2rXk3IHHVcKnabFPTUmpRiOdb1c1ucu4Dzezx6g9W8Yf7c
         ADt16ATJeJM6meaTxiu60TAY9DvHjUn9ELuvxWPZlHMJdD16xARC5zjoOlyrTYPfqPS1
         gbcBUIUMEIboG3mqLPCYWN4S5jVN3y/LJgs7DCiQqR8SMZXOkJ0CJHcjQuChMyG1SKp0
         h7UyQoVrazND68d+jav4Bsj1hWdJxifVLg8JPpGzHnv4nOhH+INZPwpU8G2/ioTDcXEn
         Q51w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T1M4UrowILLANzbwV4XMT5au+3uZxxFHZxej0EDuVUE=;
        b=YaEQ/KJhHyUybbvqmBiFP8J2gcBXys8svau8EOdRJ9W0+UAdH8U49ORYot3vJy1MXn
         EqdsMnFEg9VyT8Z7zGocBmK0phIwwZDDKz7phCI9ME4DUgdPOkwwFQCWxAE2W78mN568
         x1StpG0EHbpnIiywC9FloKZFb3tu0LPY1PMPOQHCQPLJx/mfcknSJnBvlSa4v1KltdHG
         aO7Mm7xt1JfolgY2+lrHfzaFdiPfVgK+kyC19JTOnM4n16nTGxVNuDLHeqopj8BAO2Xw
         gR96NPkGz+2C3OgsZp93ybOwypT3WWS/gGXmlXCIRLERF2VqSg7hvnzFt+LQAw6SY4Dp
         SOkg==
X-Gm-Message-State: AOAM531/jwnJccoFLsNGNKM6R1bVs57+HBO5+wuWd6i0SVwLFTnEhZ5a
	/mzppNzitQEuVcx9XK2v9DdvfbJGpYSXEg==
X-Google-Smtp-Source: ABdhPJxwSU7Ua8ccQmDlO9FCW/ljjW8eX8/YCWIXDcwOQuFOZTXqwaTEVGJ+MMvqn9FcKqxzQSJxog==
X-Received: by 2002:ac8:5702:: with SMTP id 2mr10225436qtw.65.1629040577081;
        Sun, 15 Aug 2021 08:16:17 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id w1sm3507987qtc.7.2021.08.15.08.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Aug 2021 08:16:16 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/4] poky/poky-tiny: set default kernel to 5.13
Date: Sun, 15 Aug 2021 11:16:11 -0400
Message-Id: <6fbc236a19309e5c0a3734f4aa2ea39d50c081cc.1629040284.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1629040284.git.bruce.ashfield@gmail.com>
References: <cover.1629040284.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c25e50c73a..b8f5f21a31 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -43,7 +43,7 @@ FULL_OPTIMIZATION="-Os -pipe ${DEBUG_FLAGS}"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "5.10%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "5.13%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
-- 
2.19.1

