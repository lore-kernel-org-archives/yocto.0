Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC9EC4332F
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 14:32:38 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web08.10344.1651847558231483661
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FqtL1VhX;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id
 w5-20020a17090aaf8500b001d74c754128so11008088pjq.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=JESunbpbulckUI2fLSzm50ZIMOjOL6BJ57tehsuLh0w=;
        b=FqtL1VhXSUAIruyoznsF7xnBMUmsFuoQeYH9mu1uhg6dDdgRCrwdsQz2nE6QSK6Pf1
         6KL0laR+wsMdY5Zy4/EnCrfCCboFNxIpgcPWRrgVEEBMPxI25dYYg5nigKGUxqGqXmWU
         nnDL3TWWqiW15bgSwOrnwZBCfNCGKwi4hS+TkVCRcXppMr8mP+Iow5/LjLAPWxPysGFC
         vcuznNwOCggGUfPfEQKw3+O5UYlQAefyORIVQ9oVC5LXI7WT++RABODKA8PqWb2k0grE
         fjye+a03LZmgBMTox8I/TEeqat2Bv6RlekHD0r5hytX8gLblFDHz2rT2CWHRqgEVVhJg
         y71Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JESunbpbulckUI2fLSzm50ZIMOjOL6BJ57tehsuLh0w=;
        b=zf+z93kpWL14xpnFdJxKPQcaUGLnZU5G458wefv6Hngtb8kD2kJ1CdPu/lvCZ9E7wR
         08spM5HPSaU3nZAIUX0njgYPdJRJLTWKo6bY12wHFrG31XBqzhE52/OQSxokeo17v4Uv
         SG7FR+MqE6PJUOCrB6q+b7cOLKpIIYhV4O7IMl5llZcWT1ds2fPpFTWoR5T+DPpU+zjV
         eOgJYWY7QUDZMntWcOL2/BSKIpY0yZyEpm3NCmO73ivUlvKpsG6OuLw13EkuKolcOFsO
         UmVQOYrKiYQzg/Pkas4XztVgmPwgqdYG78Ym20Igx0GaYTSVjWkjMd7H50SZ0Je2gOdY
         gMoA==
X-Gm-Message-State: AOAM533vGRi2iD5wemhREmTMIcTU1c7zXnPBl5811DhrQJQMwm1CpKf1
	Fn75QDggXnN3OMcTCbI74JbyU6jXYRgoEQ==
X-Google-Smtp-Source: 
 ABdhPJyEbOh/B0j8/OE2bIYysp0isMFzakpPcMsUJYyiufxzgScTVtxJDAQ71RrktHuOdeJIyphd9Q==
X-Received: by 2002:a17:902:a501:b0:153:f956:29f0 with SMTP id
 s1-20020a170902a50100b00153f95629f0mr3963320plq.120.1651847557422;
        Fri, 06 May 2022 07:32:37 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c35c:fb08:9ca2:8f49])
        by smtp.gmail.com with ESMTPSA id
 196-20020a6300cd000000b003c14af5060dsm3385322pga.37.2022.05.06.07.32.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:32:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/9] packagegroup-core-security: add dynamic
 python pkgs
Date: Fri,  6 May 2022 07:32:25 -0700
Message-Id: <20220506143229.2141000-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506143229.2141000-1-akuster808@gmail.com>
References: <20220506143229.2141000-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 14:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57016

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-core-security.bbappend   | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 dynamic-layers/meta-python/recipes-core/packagegroup/packagegroup-core-security.bbappend

diff --git a/dynamic-layers/meta-python/recipes-core/packagegroup/packagegroup-core-security.bbappend b/dynamic-layers/meta-python/recipes-core/packagegroup/packagegroup-core-security.bbappend
new file mode 100644
index 0000000..828931d
--- /dev/null
+++ b/dynamic-layers/meta-python/recipes-core/packagegroup/packagegroup-core-security.bbappend
@@ -0,0 +1,10 @@
+
+
+RDEPENDS:packagegroup-security-utils += "\
+    python3-privacyidea \
+    python3-fail2ban \
+    "
+
+RDEPENDS:packagegroup-meta-security-ptest-packages += "\
+    python3-fail2ban-ptest \
+    "
-- 
2.25.1


