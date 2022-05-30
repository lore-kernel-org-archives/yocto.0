Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 066D6C433F5
	for <webhook@archiver.kernel.org>; Mon, 30 May 2022 14:55:01 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.37556.1653922495951524477
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:54:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qd5w0r4r;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id
 v5-20020a17090a7c0500b001df84fa82f8so10934345pjf.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 30 May 2022 07:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YSOizuEiBI+3vPiP80AwQkzg2u07HZHx/hIJ6s8kdzQ=;
        b=Qd5w0r4r819ArOtlN+L2NqYN3y5PuB5MrBjNk3eSKSIaNsPBaFWKaexeifu9Y5zeTZ
         ThlrYoRWrH8kqO8BecGJrXPiThUelAONo5mtFGWCwdBGJZk3ElrRc9wkCzooltriuJWt
         9SxE39ha4RecLYq5OSnKwcrVAGSOSdyFmxncxO5hc2KrakKxNsil004Rc9MsgP5icKpB
         hjGo1wTPGFGoUiNlMe3hkqMRi/tbenlQahXqbFjuAPfui2VwvM7NvyUtmK/ArrbSq0xy
         ouBw0dbCoLzdj17Jw2YeihWpI9HePL7NZeK3/feBoTvDIpCA3SMSvnjVtl8Da1esZPdG
         2qqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YSOizuEiBI+3vPiP80AwQkzg2u07HZHx/hIJ6s8kdzQ=;
        b=EykxqAsbCFZRQrzfo40oZDsaH6LnTIYrGWJKkjbNnkqk9YX5aT+Z7yOMsNN1CmFHwb
         dDSnl54HtlFf0kd767TVN7LnDQXcICzEcQJE1+EtcKZ9lSUMKmefpV68xwF7rglhd4Ri
         W/BxIPivfn3pSoIQE4w1YegwnmTb7XBdlAyotQZQTjeowHfqEacsUlghh7z/cqehUK3E
         KcgphsFNFglIOU6OPOH92+BTbg1C+bo7wcCjVsMr9kp/5plmVc9IkEqoxIv9RNaX34EQ
         eKcLlr+2aMjlSQVad1Nye3hQsZcwlnkTxduVKC2Y9j/krEnVUTbqvq9RL0yY07/PP+Cy
         MUqQ==
X-Gm-Message-State: AOAM5322zCBZagtr5kzB/iFvlMAHMrHx5Pc5exjMjqforK1IUXjR1jiW
	69nK9agF1ZtPfhgOB0SUX6JUTYPYcLg=
X-Google-Smtp-Source: 
 ABdhPJyRlH9Kp+5OXSTLQGP+PJpvJwcWG8d3VREl2iQbovsIbB0NaFbDOU/wASDU68lm9U9Z7yfQyw==
X-Received: by 2002:a17:90a:ab8d:b0:1e0:a082:b2c7 with SMTP id
 n13-20020a17090aab8d00b001e0a082b2c7mr23237726pjq.17.1653922495046;
        Mon, 30 May 2022 07:54:55 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 q13-20020a170902b10d00b00163c9ad14efsm3480339plr.143.2022.05.30.07.54.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 May 2022 07:54:54 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-tpm][PATCH 1/5] swtpm: enable seccomp if DISTRO is enabled
Date: Mon, 30 May 2022 07:52:48 -0700
Message-Id: <20220530145252.4059103-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 May 2022 14:55:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57219

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
index 85e4c5d..db6ceee 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.7.1.bb
@@ -22,6 +22,7 @@ TSS_GROUP="tss"
 
 PACKAGECONFIG ?= "openssl"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
+PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'seccomp', 'seccomp', '', d)}"
 PACKAGECONFIG += "${@bb.utils.contains('BBFILE_COLLECTIONS', 'filesystems-layer', 'cuse', '', d)}"
 PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 # expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
-- 
2.25.1


