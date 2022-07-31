Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2488DC19F2C
	for <webhook@archiver.kernel.org>; Sun, 31 Jul 2022 05:49:49 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web09.10724.1659246583689221851
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 22:49:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XJR+YWYx;
 spf=pass (domain: gmail.com, ip: 209.85.216.45,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id
 o5-20020a17090a3d4500b001ef76490983so8886662pjf.2
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 22:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=tWF3Clg8ZUae5aC+FfV0kwprAN/N0GYnXDno5pKP6ac=;
        b=XJR+YWYxTf9YsOpnVDk50Vis7wi0oEFtEDP9WVy9lVISfJw10OcP1+L5OW5R/5+IOV
         kN3Wq9pS9/h19sC/bfaM6w0fqKg0CSInoQ/9AjZ53u2xq9261vZPjJZ3QajlRX+FqqoB
         Gekbnq4OHIhIZwvVxH+0VHbpuuTPy+k4FF//7gPTT00fNX7fUeKLm9GKxy6qBFF3s3cK
         K0IMD+4aO5WAh6JCuUNBcr3cu5g57w8zJRjasVZM3wqFe+hmkpGVdbmGnPgqVynFbZvM
         bxif7zJTmq3DQvKayoXhf3cHavGJ2Z7jEfQPxtkmy+LIsTFqSHkJyMWe5Cj/LRJj3jg/
         iaig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tWF3Clg8ZUae5aC+FfV0kwprAN/N0GYnXDno5pKP6ac=;
        b=Y1ByWs+89ipyywNEJaMu1GG5vUmyGkAS+7RXz248cmMIV5Wtw3ACpgzjV/DVe6MNAV
         c5A9cLV1j5sKYAmwl6bNWpXOqYgR0zehOebhqbyDYt55ZRwLTpLFYca+O7E0EcHlCRxx
         +lOLAgUwL8NBoxl53qcy4sTG81IXOj5OX1+3Oi8KmzYc0bEtvTKgVE2if/Q4A1683Qig
         tI0n3m824OFmD7PVnQBSsOYx7+7vP2pn+Vm6NSAR9paYzPpd4ZfitumbpVyd4Nu1Mp+b
         dKsRbivpr4cy/RwcLYuTh+QzNtrtyKJO8VEwaoV3E4PuBrLNrnNzhipdkUoUpbMuo2R/
         YmqQ==
X-Gm-Message-State: ACgBeo30LWAu3voSYJuC7KzcY3CahlPJrFojRw+Bbyb+70pt8YXcr5eu
	RkDGKJxTm2Dm4wigvBHX6w6ONRhp4s8=
X-Google-Smtp-Source: 
 AA6agR5GkTcuGQgIpJnduBRTvFbH/SZWndNk8IeyfuhdorT3Gd8iLMJ7RRcxZCY2/o9uahjqQtzMxQ==
X-Received: by 2002:a17:90b:4b8c:b0:1f4:d530:8898 with SMTP id
 lr12-20020a17090b4b8c00b001f4d5308898mr5874854pjb.38.1659246582626;
        Sat, 30 Jul 2022 22:49:42 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 az13-20020a17090b028d00b001f30b5bb378sm6039202pjb.15.2022.07.30.22.49.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 22:49:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] ibmswtpm2: fix UPSTREAM_CHECK
Date: Sat, 30 Jul 2022 22:47:37 -0700
Message-Id: <20220731054739.2199164-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731054739.2199164-1-akuster808@gmail.com>
References: <20220731054739.2199164-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 31 Jul 2022 05:49:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57704

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
index 09b652d..c2cdf6a 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
@@ -21,7 +21,7 @@ SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
 
 SRC_URI[sha256sum] = "55145928ad2b24f34be6a0eacf9fb492e10e0ea919b8428c721fa970e85d6147"
 
-UPSTREAM_CHECK_REGEX = "libtpm(?P<pver>).tar.gz"
+UPSTREAM_CHECK_URI = "https://sourceforge.net/projects/ibmswtpm2/files/"
 
 S = "${WORKDIR}/src"
 
-- 
2.25.1


