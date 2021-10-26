Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07A9C433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 15:02:46 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web08.13478.1635260566200293913
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 08:02:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DCyTPOU8;
 spf=pass (domain: gmail.com, ip: 209.85.215.182,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id q187so14431072pgq.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 08:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9ZEsA7TQbEHbiE1YrV6cLDDWDT3cOGAzKv3sHp5qzkg=;
        b=DCyTPOU8LtyQro/lqfDDNJULqWbglTBSmAwj0Sw1LPCGKEA/5rlnwsBKN6a44sYM/6
         e5SWgMPZvD3Mfow0QPrJT66GWGqoJgc39N8EJw+1pc8fkrFN3GGqwQTbKU8Ng5WcMjTd
         P2ZGSsOH3gZjZgnlGIy7yK6vDWnkeD8XzkYPbLNXaNczZ9iiwV9wicQZhPJifGTh/T2G
         iG97Ai7xi8ZA9kaEvlm7YQKwVLDL31emhtHUEMQlHZbFltcczp0hSLY7H9AnPPDBsanv
         cItQSJ8jSlVxn5Znbrd5+Z4DZPMIdR4iwp5dj6wbba6Eqx7+R2XhGK4157mzCZ/gy/N7
         96Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9ZEsA7TQbEHbiE1YrV6cLDDWDT3cOGAzKv3sHp5qzkg=;
        b=Fw6i6XlR/k2HoVNSZghdRXzJuGWb+zw6q7ncuQGvzH2w2Dnkb0/UBimO719AYQ9hNf
         KwTqHs7NMUWhVyRY0HASFTB0KDQatJWKOFueT05VyVzgczXyWpLD6fURzouYdPn38Og3
         9AKJbdKvr1ZUWyRYNNihfICWg/rh0dfTgQzchZ9KGh2rw6FRDtocwM/wpvFtJC7zfc+s
         BrVYPx0pTIFUVk9gdcTz2fGGyx4C4rJbRF7aqyJJRW9OLw10ivmAUING0/iKM//3FCHv
         EnhkMaUYP/FF1CoFaEv/zzoTa32WfM1YndcyTZ2UaJHMeOc3NNdZvE3zAcJrdA1qA9DB
         5slw==
X-Gm-Message-State: AOAM530PZvSdVc9R2eq0/OTKToq0mngHUpxktMDhsH2TAcQpHAms0MA2
	ufdRh/LJCo/5E/Xes3sbsLIgRpZbsPw=
X-Google-Smtp-Source: 
 ABdhPJzlx0SeqDORcPUwnTXT6wCoCg7/NCHQAnLbi2fYKHUruH+Co6UKDaILa9yqLAxiaqKv7pGFCQ==
X-Received: by 2002:a63:384f:: with SMTP id
 h15mr19066678pgn.348.1635260565204;
        Tue, 26 Oct 2021 08:02:45 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:bc55:5a93:ebf6:406e])
        by smtp.gmail.com with ESMTPSA id
 c15sm13764523pfv.66.2021.10.26.08.02.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 08:02:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] tpm2-openssl: add new pkg
Date: Tue, 26 Oct 2021 08:02:43 -0700
Message-Id: <20211026150243.1486730-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 15:02:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55168

openssl 3.x support for tpm2 tss function found in tpm2-ssl

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-openssl/tpm2-openssl_1.0.bb     | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.0.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.0.bb b/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.0.bb
new file mode 100644
index 0000000..f6a694c
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.0.bb
@@ -0,0 +1,11 @@
+SUMMARY = "Provider for integration of TPM 2.0 to OpenSSL 3.0"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=b75785ac083d3c3ca04d99d9e4e1fbab"
+
+SRC_URI = "git://github.com/tpm2-software/tpm2-openssl.git;protocol=https;branch=master"
+
+SRCREV = "66e34f9e45c3697590cced1e4d3f35993a822f8b"
+
+S = "${WORKDIR}/git"
+
+inherit pkgconfig
-- 
2.25.1


