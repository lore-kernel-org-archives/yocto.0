Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com [209.85.160.196])
 by mx.groups.io with SMTP id smtpd.web11.5074.1598411515144755834
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Aug 2020 20:11:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iNGQEGwb;
 spf=pass (domain: gmail.com, ip: 209.85.160.196, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f196.google.com with SMTP id c12so431787qtn.9
        for <yocto@lists.yoctoproject.org>; Tue, 25 Aug 2020 20:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qm4LeMl1nRwVGG4O3i7URDMdDF1hVdmaynQ03BafrkE=;
        b=iNGQEGwbwqKestkrmyicqRnkOqAG8FRSZC/3QKUK2q7w1n8CMG+oH06tmUpqC+TC7y
         Um7O0fxtnkXK0QnHpE8ZjQvEQtn5LEjzL+xy3pfNc+HOuQg8ZrDCurrU7CbwD+mSMd/m
         3oOKJCPyhQvnqGkh2o1YsfUYKMhR5loGj+nZFZFLXYeVeg0w95N1pVVTCjjz/EbItGfp
         +BfFwclVLW2w7VblRi9LZyW9Y8mScprwSlKP4IRLVegtlT57GwhMp53Z9EC6shXzdIsY
         9evfdMl/eRmNMDPKqg+msX0JD1S2PIZqCikztHD61KP05gjjK47srNL+RsIzwQE1bQEE
         bjDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qm4LeMl1nRwVGG4O3i7URDMdDF1hVdmaynQ03BafrkE=;
        b=cR4MpHH6JHsdfrn21wJzuBb9eZTo7kvvmYDE5spXCsqcEzcVloJzorpLuTHaKJTuL8
         gtgyzdq+8HzXJTbfq2Q76o0V322EjPg2tQeaScWODcKXh1/adIa2p9CGxFjj+ZclYsJx
         HG87PNNtMot9FvKtBQOJSdMJhLTX8icLHQTxPveL/XCqKCHLsjQnBMa2mwT1Q8qrmdrU
         mpD2TiPrMIeau3Sfb3+O0SCid9aE4RMehPg+mU8CpAOWZ2PZXSVx3LKVVwC9bezZmljT
         JvJv/Z/1UTK8AuF5OgAF+/48DoGh8FnGCjaIZlqbBfHx36kvXQTfzamWonZVADYi3XBY
         CTbQ==
X-Gm-Message-State: AOAM530CGBaXg2Oj6Vo7iPExox3HFT1LBlh1pKe/GIiMuMuX/OpWVoAi
	+PA4F2I+8z/PZlc37x41U10=
X-Google-Smtp-Source: ABdhPJz5zwuyzvD3wx/3GvVEfJKuk9/2wyI9/mmSgGMELsixwsp/M8rvQ9AetmYG9A7ApkW29AR9IA==
X-Received: by 2002:ac8:188:: with SMTP id x8mr12285705qtf.372.1598411514210;
        Tue, 25 Aug 2020 20:11:54 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id h20sm691218qkk.79.2020.08.25.20.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Aug 2020 20:11:53 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/2] poky-tiny: set preferred version to 5.8
Date: Tue, 25 Aug 2020 23:11:50 -0400
Message-Id: <20200826031151.6605-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Even though tiny isn't extensively used (it was referencing a
removed kernel version), it still should be updated to the latest.

Build testing passed with the 5.8 kernel, so we make it the
preferred version.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c6d4b88f83..57826037f0 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -38,7 +38,7 @@ TCLIBC = "musl"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "5.0%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "5.8%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
-- 
2.19.1

