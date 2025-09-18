Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8E2ACAC5A7
	for <webhook@archiver.kernel.org>; Thu, 18 Sep 2025 13:47:33 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web10.14611.1758203247424150394
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Sep 2025 06:47:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EJEY1Q8m;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: emailaddress.ashish@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-32e74ae0306so1651601a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 18 Sep 2025 06:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758203247; x=1758808047; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=16nM0t+oDYXVXblvFndiQ8aHpKHqCPl6eKfXDofg+lE=;
        b=EJEY1Q8mfIxEjfTX+kT4/pLKa33x1k9LZykYvj56Ezy5xB1+oTj0ZkgsuCKUmG65ky
         acuLZT/vI5nEyc6BglJYZAmDVwU0d4D5o9PkuBsx4bDiZoiGvHywGkAIBGC8/+yfw2x7
         BophFK23HswnXryYq2c9+793LOcrej9orwWWO7krpjVxpvy/+XqnUwlsBM+HQCgR++oU
         KBx8kImeLkc5WLO7XUobdDFNKFFQKOzPFW7sYStta2B3WTSMnFDIYmgthVOnTFLIGS8E
         JMBPEaUjix7i+w3DWsTUKueN2gqOqXYok7RkE6WHeEAh8AT7UNhl6YYT7Ofrub4ZKqlj
         Qf6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758203247; x=1758808047;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=16nM0t+oDYXVXblvFndiQ8aHpKHqCPl6eKfXDofg+lE=;
        b=PKdB8pOfn5X0mxrHDTiZRupohQDD19sK09zc4rBPkMVKiPtTJLlEyelqxhe7iFgi79
         jqqCOlqzl0fLACEaj/67LOpIFqOH+gi1X08wDDTRdEuWXQ5zT6suWNHFXpXFzvYwXIB2
         2MXJu7m/3DQvFsr61VSLGLc2kplMgS71/K+awMHXtsfNskoCcNZItMm1huf+d3LMnJsw
         n2mFhvdjQhqLBH6f70uKk8Nm7Q9jXri0bB+4hu7pN5QMBMGdpO/K6eL57bhpBZ+2vr18
         GTUB0ttnZq6yAyOaxUz4bf7AC96NetGN/XzRWZpV2kVvRgEEYg5g4I7owoO6os20Jat9
         qemQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfJ/Wihy/+Ff4Nv0MOqJd9Yj2NKHwSC0dGrikeTaGJTG/ysP4I7YOAlvZG1N3adNr8yy6Zhw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy8/65wJy1uIBrSbC/kCzM5DwP+2tTpx601ZK08dAP+eZ/KyIK7
	2TQkem5QzYiPUEyCBsG9ophA0C/55WQdhioWtsRqdpOcoqukpt82nUyF
X-Gm-Gg: ASbGncvDQJ98qc5T9jW28AVWriFE/lJTrRLK3WpdhfBp1nybkyO4kRgo0bUyExCJMyr
	0/zUFq3rIMzS1uIIrSuE3fGC2QR8xoIHIQwPBc5NQB5j096azAZM3GOqaehzFv85o/mNMkqOqOF
	pdq4OJI35fWyCeVTPbeRKOdoVTQ8ygGUwHW2ZBD3GLaN/5Az0KJX7CUQBVLzN1+G1fmokIpRk8/
	HY6qyCVp4mRqf+W0sOk0Ys3WSnYcmQ5t3CAiidH7rKqdWDsOkGrqvCWr5kNmjYju/MZ8VMPtrLQ
	mbExQK9+iH26nRBTsYZW0SjvyG0Fp16PG1YsW96HgsybmbQXkyl2TCJ5C9FL7vs6S+KUKEnrJFZ
	Z48LfbM8NjkRWC8ar3Lxh
X-Google-Smtp-Source: AGHT+IEXtUwOpMheaVE9Sq7GXcN8VJWzjnTdOlaVIg5vQ0JFsjB5xtz8i1wc+Jbh90tNIBeai1CQkw==
X-Received: by 2002:a17:90b:2cd0:b0:32e:7277:9a81 with SMTP id 98e67ed59e1d1-3305c5d42f6mr4331097a91.4.1758203246588;
        Thu, 18 Sep 2025 06:47:26 -0700 (PDT)
Received: from ashishkumar.. ([2401:4900:1f27:b34:d313:75f4:7791:1cf1])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32ea0fb679asm4267178a91.2.2025.09.18.06.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 06:47:26 -0700 (PDT)
From: AshishKumar Mishra <emailaddress.ashish@gmail.com>
X-Google-Original-From: AshishKumar Mishra
To: openembedded-core@lists.openembedded.org,
	yocto@lists.yoctoproject.org
Cc: Qi.Chen@windriver.com,
	AshishKumar Mishra <emailaddress.ashish@gmail.com>,
	Philip Lorenz <philip.lorenz@bmw.de>,
	Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [PATCH] systemd: backport fix for handle USE_NLS from master
Date: Thu, 18 Sep 2025 19:17:09 +0530
Message-ID: <20250918134710.1170816-1-emailaddress.ashish@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Sep 2025 13:47:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65858

From: AshishKumar Mishra <emailaddress.ashish@gmail.com>

Do not build translations when NLS is disabled.
(From OE-Core rev: 83795ef6c3fa12a863cd20b7ec1a2607606987b6)

This change corresponds to upstream d848b454e64ffbd642590b4bbc378619e1547ad3
from master .
Since the systemd version are different between master & scarthgap
applied the patch manually

Signed-off-by: Philip Lorenz <philip.lorenz@bmw.de>
Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: AshishKumar Mishra <emailaddress.ashish@gmail.com>
---
 meta/recipes-core/systemd/systemd_255.21.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-core/systemd/systemd_255.21.bb b/meta/recipes-core/systemd/systemd_255.21.bb
index e866f9921b..87e186bbfa 100644
--- a/meta/recipes-core/systemd/systemd_255.21.bb
+++ b/meta/recipes-core/systemd/systemd_255.21.bb
@@ -247,6 +247,7 @@ EXTRA_OEMESON += "-Dnobody-user=nobody \
                   -Dmode=release \
                   -Dsystem-alloc-uid-min=101 \
                   -Dsystem-uid-max=999 \
+                  -Dtranslations=${@'false' if d.getVar('USE_NLS') == 'no' else 'true'} \
                   -Dsystem-alloc-gid-min=101 \
                   -Dsystem-gid-max=999 \
                   ${@bb.utils.contains('DISTRO_FEATURES', 'zeroconf', '-Ddefault-mdns=no -Ddefault-llmnr=no', '', d)} \
-- 
2.43.0


