Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web08.12210.1629040580358316270
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 08:16:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VaDSpPEy;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id c6so12362240qtv.5
        for <yocto@lists.yoctoproject.org>; Sun, 15 Aug 2021 08:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m8M9aqhjTLtOOrQdaN/0MMYLPXJSMCo9gipuDJaSw48=;
        b=VaDSpPEyC3TJTW0q/aOrkOKPNAzTE9Dq4BG6+Wq3KGyEzn0Ri6pzMkk09uHiGWngK+
         h2UHwBE/cCD8Evm2C/7skgmw1hNNfq5XAeGte47DC3U6AuJsImxSDppNNC6lxzyGOxwr
         jrfRMse6lae2VfnPDxM8Eldvh8tSbbZ9hlqejB2QDXC4zqb5fF9iIr8lNPc69zjomDs7
         iUJbxvU7qII7wiJVt0bP+eDgsxwQFDdDINIQ49kQrHLnLsOgYff0QoaCBV6UtaBp2HTs
         tef4atW4qLpX0YjCLq3DnnnRdZleXM5RVMSt5oE7wq5ZvBAcRYsVrTlcydMBVkwjUcnG
         H21Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m8M9aqhjTLtOOrQdaN/0MMYLPXJSMCo9gipuDJaSw48=;
        b=DEML0e4DhHKTpeHsspbDUoHtD2oUROz9y+ehxgN+moJHCnM6kVGHBp2nuUB0CERULa
         GYR4xAvUBGS1JroYpWQt0JI4HcWZtxILYObCOv5SF6A7CzTw74YIhWn4GS/M845WQLLm
         wH6KPsIWyT1FN/cW0hKvfbk11gBEPIyM6n14JaXPJ+g14rTTPEYhP48eM40FLSxiN42d
         K+nBNJMNVMKwYhq0M97usA7H3uJadsl4dVsaAnfBJ7I95/tr0MgVwnXtMUH2mpcgEgV9
         E1mIIUHZx8or/XNOkY/imXsZgzskozDwCLqxFt0v8HnlHsISYs+W8+/SpCU8AOVAIuIP
         a2fA==
X-Gm-Message-State: AOAM531tkDZXF0XtVcn93+VTdOExXzh0Ac3dI7Y1QpbgMYMIJQWmBoSH
	v4Ovx4tC1wI6pnZilMIztW8=
X-Google-Smtp-Source: ABdhPJyFK5JwMDSyGwd4ezgZ6HOWMvJz8YnOxgp8k+QCLXwDfY9XKoEjvAsnFZlyu6W2d/NA30p50w==
X-Received: by 2002:a05:622a:5cc:: with SMTP id d12mr10240973qtb.183.1629040579546;
        Sun, 15 Aug 2021 08:16:19 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id w1sm3507987qtc.7.2021.08.15.08.16.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Aug 2021 08:16:19 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 4/4] poky-alt: switch default kernel to 5.10
Date: Sun, 15 Aug 2021 11:16:14 -0400
Message-Id: <47566bbf15f45fc4283b4cfd909b1fc065b19d5b.1629040284.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1629040284.git.bruce.ashfield@gmail.com>
References: <cover.1629040284.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

5.4 has been dropped from oe-core release/development, so we switch
the alt-config to use 5.10.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index 9c2d7753a1..0de2013826 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -2,7 +2,7 @@
 DISTRO_FEATURES:append = " pam"
 
 # Use the LTSI Kernel
-PREFERRED_VERSION_linux-yocto = "5.4%"
+PREFERRED_VERSION_linux-yocto = "5.10%"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES:append:pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
-- 
2.19.1

