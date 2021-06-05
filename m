Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.17457.1622930581149902619
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jun 2021 15:03:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BSAqXQb9;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id l10-20020a17090a150ab0290162974722f2so8015569pja.2
        for <yocto@lists.yoctoproject.org>; Sat, 05 Jun 2021 15:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LL+2S57yw1Zestd6kGOuv07vkGG9kept+H5md265MoE=;
        b=BSAqXQb9a4IsDhlSnSMmPIta8THemk7hjnzf5off+hoJ63smsACnpFegJon2h3ZOWX
         KsV0OTrgJqVto6Fq61weSdGieHgETgyTPuMffi85Z7P7ApnRrzwtkUDcjHV3jGaPvS4B
         eha5Wx4DAdG7fQdmmJDvJoX+RSIzBGhQwMoDtifZeSbaquszqbDgSG0eCRUmhVb/4p63
         jP6dbn1fSEmrd3wU59WDKhdQBV4bqcMSsY9zJh+p3Koc7PrC6S9A929YWIVEQsabHe6H
         zemCS0bog0tWt6TwKYUH5Z8X2PU7LvIzokdBd3F8BC5VdmBpUxc2SXexO3P2yrVfV9ct
         OlCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LL+2S57yw1Zestd6kGOuv07vkGG9kept+H5md265MoE=;
        b=Euseq79+ybpgNmDjxf3NiR23vJwWn/l3ImvqV+qxdyTjPHzzOshipWi3jUWDCODC7H
         J4AvgJkcMEnGjeYuvOCzU4Vb7WQplg1P9LTm8eijPFT+aQaQeggRJcpFQqcVHLJ2wwUM
         Nvg2wW8YwECcYDLZ9sqQen9h/BNCanY2VCHMELFn9UV8/3wHI7WfsLfAx9owpdK+vdjp
         WOUp604OVUUxV8O/XVSlyV0KKAEmjkVFDearxx3cfVbAd+N1AOTlvmlThlIzMIZQuVHt
         Ah9HJL8dm0hcHJMLlXax4Pfbr3QNatmnB0+dDKhREqh65eGEzEoyUz9y8xAUc1+yoX+9
         EdVQ==
X-Gm-Message-State: AOAM531hKRV6CVH4EYFd/udYLd5j+uiRCTBBPFj5t6M80Dx2ngRMsKXL
	hNBLtifjtn94Jh/94aUDjgkXC3ACDCLW9w==
X-Google-Smtp-Source: ABdhPJyoqRRLG3DCHbwqXY97IOKOG3J5QTBWdUVJSxNxaX7Rm/7ah/rSAZ7c53FVX0fT1tHI5r/Diw==
X-Received: by 2002:a17:90b:8c4:: with SMTP id ds4mr12268126pjb.65.1622930580307;
        Sat, 05 Jun 2021 15:03:00 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t23sm5264678pgj.9.2021.06.05.15.02.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 15:02:59 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 0/7] YCL cleanups
Date: Sat,  5 Jun 2021 22:02:51 +0000
Message-Id: <20210605220258.414233-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series superceeds the privious set to help
pass the check-layer scrip.

Armin Kuster (7):
  meta-security: add sanity check
  meta-security/recipe-kernel: use sanity check
  linux-yocto-dev: drop bbappend
  meta-tpm: add layer sanity check
  meta-tpm/linux-yocto: use sanity support
  meta-integrity: add sanity check
  meta-integrity/recipe-kernel: use sanity check

 README                                        | 18 ++++++++++++++++++
 classes/sanity-meta-security.bbclass          | 10 ++++++++++
 conf/layer.conf                               |  4 ++++
 meta-integrity/README.md                      | 18 +++++++++++++++++-
 .../classes/sanity-meta-integrity.bbclass     | 10 ++++++++++
 meta-integrity/conf/layer.conf                |  4 ++++
 .../recipes-kernel/linux/linux-%.bbappend     |  6 +-----
 .../recipes-kernel/linux/linux_ima.inc        |  5 +++++
 meta-tpm/README                               | 19 +++++++++++++++++++
 meta-tpm/classes/sanity-meta-tpm.bbclass      | 10 ++++++++++
 meta-tpm/conf/layer.conf                      |  4 ++++
 .../linux/linux-yocto_5.%.bbappend            | 18 +-----------------
 .../recipes-kernel/linux/linux-yocto_tpm.inc  | 17 +++++++++++++++++
 recipes-kernel/linux/linux-yocto_5.%.bbappend |  4 +---
 ...-dev.bbappend => linux-yocto_security.inc} |  0
 15 files changed, 121 insertions(+), 26 deletions(-)
 create mode 100644 classes/sanity-meta-security.bbclass
 create mode 100644 meta-integrity/classes/sanity-meta-integrity.bbclass
 create mode 100644 meta-integrity/recipes-kernel/linux/linux_ima.inc
 create mode 100644 meta-tpm/classes/sanity-meta-tpm.bbclass
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_tpm.inc
 rename recipes-kernel/linux/{linux-yocto-dev.bbappend => linux-yocto_security.inc} (100%)

-- 
2.25.1

