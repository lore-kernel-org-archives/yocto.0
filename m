Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web09.8246.1631854258037935875
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 21:50:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SFp8crYz;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id h3so8426646pgb.7
        for <yocto@lists.yoctoproject.org>; Thu, 16 Sep 2021 21:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gUCRX8CBRSjeRMG7WRZBma3o6Pw9d0n265DqkwDUNrE=;
        b=SFp8crYzeVC6qlTujFdGo/NkMEwqiVnFKA+iLGIcQOu6JtSMkgdSDwrNE0OAFdHXtB
         svyGY3RrWTrtk9JYcDdzKaMn7udYQmZEHn0syG1HRt7Q2tqoKjxJd40J8gp1vl/ZwnMb
         QI1F/UUQZpAcWZOUJNvWYWu/ebciSMKqtkv3Aq3/+TAv+W8RYMfZNZVmOTdbec48t0K0
         8ndG3MCpks0aXsHx9Ajtd50DL2qcz0aIc/wdjBT4g0e0v3hG/thV2/7fBmguHAy6wxt4
         YYx6IBitry94RXsYuW7aJrBJPwZXCH81e5KzAhS/Pjh0RP2t0ikGi6hKMtbxYNl+8xW1
         RLzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gUCRX8CBRSjeRMG7WRZBma3o6Pw9d0n265DqkwDUNrE=;
        b=Hy4prv8Gt/5SPmbEqboJIzBDN1WxuhrUqaPpvWlJplt8uIpuIg5At5mfFiGAReTblV
         12nGbwAazQyOKL8flwIXGgLes0EV5Ij0srpLeYH8vwM6KxltbBj5eZ2zV24BZRRJR2nW
         V0cXXRfopkDyhtVN+rfGhgDfXSyFojtPzDyA46mCAhOhRzwdcuabYa7+9JFHURTulW3O
         l7Cf3t3wABQA7P5Dh822c6hty1UmNHQFybznKPd9t96BR4ZRLKYwGUluaHDWSbP/S+i9
         zgAfjYNKrrIEpncXdzLaGUsJo3oBerCruXzkuHLW3qbLB9JoZqQabre3gm+hhormjiME
         s9ow==
X-Gm-Message-State: AOAM532UhaTfl83mwouZ40PQqT4SQQ+ifU6P6nsqqbauMqe17K3Jzqg0
	yFu4PUGsD9qW4l72dMejDY6OP8+0RjU=
X-Google-Smtp-Source: ABdhPJy2KatRoKTrpH5iOFWzDnTZx9/nwDJy9TVm6C0KQCoRTZD5mMng8jUR2CeNZ376Etc8qkM/uQ==
X-Received: by 2002:a63:6ec9:: with SMTP id j192mr8189410pgc.115.1631854257164;
        Thu, 16 Sep 2021 21:50:57 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e48:889d:1351:d2d2])
        by smtp.gmail.com with ESMTPSA id m28sm4763981pgl.9.2021.09.16.21.50.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 21:50:56 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] tpm-quote-tools: Update SRC_URI
Date: Thu, 16 Sep 2021 21:50:55 -0700
Message-Id: <20210917045055.3334212-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The wget now asks for user info so git clone.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb   | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb b/meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
index 8486d00..53cf8ff 100644
--- a/meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
+++ b/meta-tpm/recipes-tpm/tpm-quote-tools/tpm-quote-tools_1.0.4.bb
@@ -15,9 +15,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=8ec30b01163d242ecf07d9cd84e3611f"
 
 DEPENDS = "libtspi tpm-tools"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/tpmquotetools/${PV}/${BP}.tar.gz"
-
-SRC_URI[md5sum] = "6e194f5bc534301bbaef53dc6d22c233"
-SRC_URI[sha256sum] = "10dc4eade02635557a9496b388360844cd18e7864e2eb882f5e45ab2fa405ae2"
+SRC_URI = "git://git.code.sf.net/p/tpmquotetools/tpm-quote-tools"
+SRCREV = "4511874d5c9b4504bb96e94f8a14bd6c39a36295"
 
+S = "${WORKDIR}/git"
 inherit autotools
-- 
2.25.1

