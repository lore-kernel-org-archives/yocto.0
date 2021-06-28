Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web09.12503.1624893347491808798
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 08:15:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ylym9TRT;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id g4so27846476qkl.1
        for <yocto@lists.yoctoproject.org>; Mon, 28 Jun 2021 08:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=AGrXAyCUy+Zwa7gEVssPuhMPiRqsBW8VkG0Ozl2n9rY=;
        b=Ylym9TRTYSIRkYAnA0zSQCY5vHgffubWGp4WOXFkYO5pcS7sXczhxn+X14tZFYJtmF
         9k2iCqIj1TTI6+iTRWZ5E0O3HvS57ajmcQZus1Y/sSmMoWbCUXxppgz4Y41TLTFFi9Kh
         1JyiTzxoR6UZX/4J10d36l+N7tp2RKF7rAAP33yOJTeniYDxe//ZXygWN+nucxTKucM5
         IzfAfmtc1u7J3zMi5s6KpDKlf8t4cTUA/5xzrSWk0lCr5AaXxpes1DwX0/LaAVdGI4DI
         STaoFswgghwBTXqGTLGUOJyECB3a69PDwo33crhaJnXQReaKd/d7uOkoy0sfwVbgbhQ+
         7nnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AGrXAyCUy+Zwa7gEVssPuhMPiRqsBW8VkG0Ozl2n9rY=;
        b=EnoCgzWSA626q0frnzEckW/K1M8Vmxz5V1skLL0Wo0iOX56tCQEAZBhRvbKfKRGxZC
         S/r/6TgwmychayGjNBtEvpbR12k6BT1HvxNDCry1Xxlq6km6fIHGouCcwRDFXo59Bep7
         4/newIUWSvMk+OQ8ZdG5kkgpN1Krol18vEAdcXOztdeRMml88ldfgRi+I6wvn8Uzbquj
         jQn/2xPvjvf20JAq2210T08KL6EDonTy9rp7u82SMhSdPlZXNMwchGnZbR6aD+zK1wEc
         j1U6D7GlgLT0PfXxA8dqPRxRM4yVm+NLABkFHSsITs/PLr9UwaLcRV+DTo8FauXTEzMO
         ASjw==
X-Gm-Message-State: AOAM530Fi+B00/D8Us43DZlwkS12hVh0L5tFKrWvVkmxG/8iN8k+JaVQ
	iQOO1Vw0KvCIQvJNbdiMyaCr6Mwz/eQRIg==
X-Google-Smtp-Source: ABdhPJwodwFsvbx0o853IJL7Syzt7M0r8jh9pohes9tR6g889/Dkv7z59GEO4/XcedHcpFDbrxgEOw==
X-Received: by 2002:a37:8581:: with SMTP id h123mr25733558qkd.316.1624893346245;
        Mon, 28 Jun 2021 08:15:46 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b13sm4107252qtk.30.2021.06.28.08.15.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 08:15:45 -0700 (PDT)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 2/3] IMAGE_FSTYPES: remove ext4
Date: Mon, 28 Jun 2021 11:15:40 -0400
Message-Id: <20210628151541.26092-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
In-Reply-To: <20210628151541.26092-1-twoerner@gmail.com>
References: <20210628151541.26092-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ext4 IMAGE_FSTYPES does not need to be mentioned explicitly. It will be
automatically generated in cases where it is needed.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rockchip-defaults.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/conf/machine/include/rockchip-defaults.inc b/conf/machine/include/rockchip-defaults.inc
index b41c523..0666119 100644
--- a/conf/machine/include/rockchip-defaults.inc
+++ b/conf/machine/include/rockchip-defaults.inc
@@ -22,4 +22,3 @@ XSERVER = " \
 
 # misc
 SERIAL_CONSOLES ?= "1500000;ttyS2"
-IMAGE_FSTYPES += "ext4"
-- 
2.30.0.rc0

