Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37911C54EE9
	for <webhook@archiver.kernel.org>; Fri,  2 Sep 2022 08:05:59 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web12.4079.1662105956955786667
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Sep 2022 01:05:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nboFjF8k;
 spf=pass (domain: gmail.com, ip: 209.85.218.52,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id y3so2321183ejc.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 02 Sep 2022 01:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=cKd946Qb3BjzK0QoQUtZvbnU9Yb/1WBnDbRdZJ9A960=;
        b=nboFjF8k0mc+uf+Qwv3oygeKAlfZNU8A43NYEI5QQYJTz+2WrEWJc6IFPHBlTxuuFD
         3UDpZM/BRWjqIEX3mnX3Qp/2KDSBbF21Zgt5ziItaEZ1lxPTebHSAL10C1sAuoD2I0Ge
         mVtmEqoyD6ESze7EuwU2PQzQ7ozhz75F0FBFEqrVSx89h/4oQATzyEw5BqA5H2y9tq/+
         4XJvzcqnIGu3vBpnW0w1DUVD5Q4vsOJ9+ZPnvxrpeBPGvk9sNMQ9ntEG93SV4wSUybe4
         2uVnPbiqq4e3lsGFBR1E2nDHa92pxdLDE4hl1gZXd7T6ebzoK/mj7PlPPn/REVLYZzYj
         1FHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=cKd946Qb3BjzK0QoQUtZvbnU9Yb/1WBnDbRdZJ9A960=;
        b=4NVSjr+Oj0h/DK2b6eljT79VOiTktC4VFuumxXtTOC/qlDWdtkHwo57Rpn9qPqgVcb
         ptsdxtwbimgJLY997gyKrzugmvo4YATvX4PA14cA08A2C2FMpAUrypjYMvFW4WC9q+wV
         j8VPyj44GqNy6QsZ6/krfEEit5To+8WGmVB0V1jGYc4PdLoBqpQcIdBJkCA+ApJ+hbKz
         Kkd7hD8PQIMjrar+62oWrTogvKR1O5c8UCCSG3wW/zS+ZZv8jfuoQtDMedWJeOuVZLNJ
         8y7aF0OMN+fUbwvZ1A3nc//0ARPQrToMaZCMVIxeRx45Y2j6FU8IHpaAg9tfc5bMrGZV
         pIZg==
X-Gm-Message-State: ACgBeo0HIqIedVfFj8U/fmS+zOayv9bMvKgbfBTF/qoZ36TMb1pcUaiW
	R1fJ7A+pJOCQaJnRSoAmluVCVxlOt3w=
X-Google-Smtp-Source: 
 AA6agR4mZQ1GIcpqLU1s3fefM6Qmre1+rnSViWUnpGReAp1tpu491jnfBQ8BnYvXq7VYfGKlncbyJA==
X-Received: by 2002:a17:906:8a47:b0:741:728e:350b with SMTP id
 gx7-20020a1709068a4700b00741728e350bmr18605702ejc.264.1662105955094;
        Fri, 02 Sep 2022 01:05:55 -0700 (PDT)
Received: from fedora.fritz.box ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 h1-20020a1709062dc100b00740f1a58e0bsm889599eji.30.2022.09.02.01.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 01:05:54 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] scripts/run-patchmetrics: remove
 conf/templateconf.cfg as well between builds
Date: Fri,  2 Sep 2022 10:05:47 +0200
Message-Id: <20220902080547.253827-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Sep 2022 08:05:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57971

With the recent template config changes to oe-core its content is no longer
backwards compatible.

'-f' is to guarantee future compatibility with build setups where the file
is not present.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/run-patchmetrics | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/run-patchmetrics b/scripts/run-patchmetrics
index 1c805ec..50d9214 100755
--- a/scripts/run-patchmetrics
+++ b/scripts/run-patchmetrics
@@ -34,6 +34,7 @@ for branch in master kirkstone dunfell; do
     git -C $PARENTDIR reset origin/$branch --hard
     rm conf/local.conf
     rm conf/bblayers.conf
+    rm -f conf/templateconf.cfg
     rm tmp/ -rf
     unset BB_ENV_PASSTHROUGH_ADDITIONS
     unset BB_ENV_EXTRAWHITE
-- 
2.37.2


