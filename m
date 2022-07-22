Return-Path: <jatedev@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C19BDC433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 00:52:02 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web12.2799.1658451120634632076
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 17:52:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TyoXst3A;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: jatedev@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id bh13so3165472pgb.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 17:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ToBgqThiX3JAdf7BYeDeWan3wcKBGuY/Oju2osB7Am0=;
        b=TyoXst3Adlc2dJfXcr4Ak17LhWgopU63wX8XBTvKxxtr9ILVTfA4QCw05++WL+vfuX
         EceoEwKZxznbCmuVhfS5REZ3ScZOoB7tuYpMOzKo0biV4IBdZrmGF1hvuQ1OcUdichh0
         dtQB6T6c6yy5dzb75SfpkzjTsegrLWugxS0D2eFBXsXtd8aQoithyI8nlzQMPmp3eIs2
         Oo3eaRRrR4+CqwShFqmaqVjha3jvO0fNn3bRTaPSA7qjFBGyjjHJMoMZtaMuhYWER5TR
         Pv7vDLaTUgbjBWAcPOJSHyqZsifiLKKF0RR4FizbkfS9O7xVsN6Dd7YZyZSyBXwQsECG
         rExQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ToBgqThiX3JAdf7BYeDeWan3wcKBGuY/Oju2osB7Am0=;
        b=cVg1gm5wI61nvdQbBiRz+q6b3yJ9+i0lAcnBSecoAert3x4erebHD85dd4pLeiMalf
         J6qQlXu+EvkUbd3IN/UwbXCrAZ//N2V+FcuFJM4frSk+I6MqywU3QG1SqxxalrB5HURs
         t96Ip7VYImSBM+DwoaT39sLzz0SU6pQVxAgDRCKZ4vGweLQ5KuMzdLysZeWhbFOe/ePc
         q/RHQ9tRanwW8msMI+DM45X4Jz2a30t9it+EeofnQ9Z3Dmz8QiiXK/pf0IMtQX1s2Q3M
         dKeE8+k2WjfCYatQe4hOasJvyTT4gwv3BPuFkYlhqtt7yCf1yAgA3yhrLNeWqpMUjWv5
         wcxA==
X-Gm-Message-State: AJIora+YAG7yhIJVCsxOCESitaqAbM+G2WC4gCdoIfEE/SfUz31dAiLk
	vRz9hCm1swzxHCfda2zRSMvOzhpISSw=
X-Google-Smtp-Source: 
 AGRyM1vp33H7cWkqCp6v1b0sgypixoUbAS26LE7JkOowg3pkp2n3KFBlHOfe2V05sfR97jAqRu9ESg==
X-Received: by 2002:a63:3186:0:b0:41a:64a5:d6a5 with SMTP id
 x128-20020a633186000000b0041a64a5d6a5mr924954pgx.293.1658451119762;
        Thu, 21 Jul 2022 17:51:59 -0700 (PDT)
Received: from localhost.localdomain (71-209-69-44.chyn.qwest.net.
 [71.209.69.44])
        by smtp.gmail.com with ESMTPSA id
 w67-20020a626246000000b0052ac5e304ccsm2361155pfb.194.2022.07.21.17.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 17:51:59 -0700 (PDT)
From: Jate Sujjavanich <jatedev@gmail.com>
To: yocto@lists.yoctoproject.org,
	mark.hatle@kernel.crashing.org,
	jason.wessel@windriver.com
Subject: [meta-openssl102-fips][PATCH] openssl-fips: Exclude variable from
 task hash
Date: Fri, 22 Jul 2022 00:51:57 +0000
Message-Id: <20220722005157.79695-1-jatedev@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 00:52:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57617

Add LAYERPATH_meta-openssl-one-zero-two-fips to vardepsexclude for
do_check_fips to improve sstate reuse

This variable notifies the user of a machine specific path.

Signed-off-by: Jate Sujjavanich <jatedev@gmail.com>
---
 recipes-connectivity/openssl/openssl-fips_2.0.16.bb | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/recipes-connectivity/openssl/openssl-fips_2.0.16.bb b/recipes-connectivity/openssl/openssl-fips_2.0.16.bb
index 7a2949a..582fee1 100644
--- a/recipes-connectivity/openssl/openssl-fips_2.0.16.bb
+++ b/recipes-connectivity/openssl/openssl-fips_2.0.16.bb
@@ -84,6 +84,12 @@ def which(paths, file):
 
 OPENSSL_FIPS_PREBUILT ?= "${FILE_DIRNAME}/${BPN}"
 
+#
+# This variable notifes the user of a machine specific path, so it should not
+# be used in the task hash calculation
+#
+do_check_fips[vardepsexclude] += "LAYERPATH_meta-openssl-one-zero-two-fips"
+
 addtask do_check_fips before do_fetch
 python do_check_fips() {
     if d.getVar('OPENSSL_FIPS_FULLPATH', True) == "":
-- 
2.25.1


