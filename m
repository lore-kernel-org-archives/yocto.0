Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CD8C43334
	for <webhook@archiver.kernel.org>; Sat, 25 Jun 2022 20:17:56 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.23624.1656188273922047967
 for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jun 2022 13:17:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=U0W8g6Vo;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id r20so7617104wra.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 25 Jun 2022 13:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L2kRugYWAw1ivoRjCxc3NHiFHjjFfpOBXtmoI3Nwxww=;
        b=U0W8g6Vo8G+XuyjTmufoby9Tun5sPaC0v9fWgI6PC44/n2V1Nr39RQii+Ccxz3mpUa
         lQmHOTYOf79+roFdXgMASSE2/Ar3COQaCJJh5THXeG499H2RtwQxFa10idV9mRhFeaKl
         TpvRrvAFqPxhtijDvLEVX20gD0TDNGLbjGKEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=L2kRugYWAw1ivoRjCxc3NHiFHjjFfpOBXtmoI3Nwxww=;
        b=nykjENlye0j4kqXti/JL7OHWlI7f99zoHKhFlcsDo+JC/YAEQ/h/d+gcGm/mVYaTYu
         yuyh4dlvxQ1OKSxTuKxnWmD5Yfa6IGoJdpjX3tgrSwDl7DTDLhGYkJHZ1jUOmcY6Cv/H
         VT23VfFebG6TNORZVQaEezNtkC9cNM7y2e2mVUpft81xNCHp600Aj7XjNYod9ghpMlNk
         BX+9+T+Rtdym2JaFpRYbS2fDjCMRMHOKZJ5iotK1K+Ixd9LIjCzjFdibd/y21tub9mwq
         NorSz1wliFx9vWaHG+JQxJzJYLX/L0pcP/TBa3W2qD0rSKYYEwtWD7hQstzIjlER3a4U
         SnGQ==
X-Gm-Message-State: AJIora+/f6nZt4I05yx+hV+dCCIkTKFsU/6YzLTgOJfE4MQXunB5yJ4R
	AEQRItPc+xTmOyigbf6oqCnxX9cfbA0Bgw==
X-Google-Smtp-Source: 
 AGRyM1t0mbcSednF7KLASktJ9hlxd+WyUX1QdJV5+NsSp7LLmxPkksHc6g8r0kGosc1BYjPKHQcgzg==
X-Received: by 2002:a5d:528e:0:b0:21b:b85b:5873 with SMTP id
 c14-20020a5d528e000000b0021bb85b5873mr5116244wrv.191.1656188271993;
        Sat, 25 Jun 2022 13:17:51 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:2873:558:fe47:ee6f])
        by smtp.gmail.com with ESMTPSA id
 w9-20020a5d6089000000b0020e5b4ebaecsm5998621wrt.4.2022.06.25.13.17.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Jun 2022 13:17:51 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Enable memres bitbake
Date: Sat, 25 Jun 2022 21:17:50 +0100
Message-Id: <20220625201750.319839-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 25 Jun 2022 20:17:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57388

We could do with wider exposure of testing of this so enable on the
autobuilder by default.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index d01319f..de32fb1 100644
--- a/config.json
+++ b/config.json
@@ -66,7 +66,8 @@
             "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
             "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh -c 100 -t 15'",
             "BB_LOG_HOST_STAT_ON_FAILURE = '1'",
-            "BB_LOG_HOST_STAT_CMDS_FAILURE = 'oe-time-dd-test.sh -l'"
+            "BB_LOG_HOST_STAT_CMDS_FAILURE = 'oe-time-dd-test.sh -l'",
+            "BB_SERVER_TIMEOUT = '60'"
         ]
     },
     "templates" : {
-- 
2.34.1


