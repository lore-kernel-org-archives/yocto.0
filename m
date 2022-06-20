Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFABC433EF
	for <webhook@archiver.kernel.org>; Mon, 20 Jun 2022 05:15:20 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.26525.1655702117445143701
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 22:15:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VMcsJo6/;
 spf=pass (domain: gmail.com, ip: 209.85.216.50,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id
 g10-20020a17090a708a00b001ea8aadd42bso9224343pjk.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 22:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=JndsXkh+WzjGUIuoVwMkwMoOpCak4gweS5YLFn+o+Is=;
        b=VMcsJo6/XwWiysSslh94fKysEc1iKjI5wDP0cmJue4yOrBfBjTKEyZFNMqW75Qv1Ls
         I6wKt4BiXrTT+fjx40EULNmrjCrlekzsYZupRhBe7NWeHUhCMj9hnQuVqwsi/knynt5V
         /gsgb+YrzNY/Q91OlaFQSglQppCKLl8ru84HUIsiDzykZYd7XeR5zYh2rMld6oq+iqup
         +p/9Vei4Q8R2NJlseOt1R4kyAZiZ3a+SzhKU8JjAzCahvWs6UeMUOeGN56OvSH9biKdJ
         qXM0kFb5/S1OLBPB4m5DSR8/s4IqZOHftxF37ajh1zVPTDAAFIuP18XejHP19YfYVYhy
         MCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JndsXkh+WzjGUIuoVwMkwMoOpCak4gweS5YLFn+o+Is=;
        b=pclc8jzcrAlcdsjFKEjTZFLIHp5wJshOK3ZaGx+HoThJlyG9wfohnsBx/p+W2fxc/5
         IHuHK9D+tnJvLMmqFxMKwikSL5p4XW2h39rlOUGeMb22aK3iVBRljII+1hoo0J2rBt0Z
         HH8b6dr5pOi8E6yDa38094G+IrAU5wsbwXm7/887LDvcLnV9VeljKvo1+Jb7wlcHS4l6
         +yYqubVN9Vc1ARV1ujFvxKF+poRq9v0Y1KLQKLbBUgNYvUKmNMfXXxJNvWax+2ySFoUZ
         yXqxoP0ipyhAjZvBnbZsUiNIyy2I/GXfjQfIM0UfjpqGE3DS+jXUALuhlfi00zW1gtPs
         jYaA==
X-Gm-Message-State: AJIora/lYUD78MZp1+DEz+6yv/rt0TZD46aWSGSN8gO6W+C7RY0z/W1H
	6J8Dq+w67vGYENQdqeEEC/E42XkRgKE=
X-Google-Smtp-Source: 
 AGRyM1vHCkd+TfCeVrZOmK7FlYNx5d0+memNx6ajkuX1OqW/eoiwMPlGlBevThpeAU/pWMrY4M13fw==
X-Received: by 2002:a17:903:186:b0:167:62b0:a556 with SMTP id
 z6-20020a170903018600b0016762b0a556mr22118144plg.122.1655702116622;
        Sun, 19 Jun 2022 22:15:16 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 bd44-20020a056a0027ac00b00525113281dasm3543232pfb.201.2022.06.19.22.15.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 22:15:15 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security-compliance][PATCH 2/2] README: update email address
Date: Sun, 19 Jun 2022 22:13:12 -0700
Message-Id: <20220620051312.1040071-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220620051312.1040071-1-akuster808@gmail.com>
References: <20220620051312.1040071-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Jun 2022 05:15:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57361

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/README b/meta-security-compliance/README
index 320f856..3311d05 100644
--- a/meta-security-compliance/README
+++ b/meta-security-compliance/README
@@ -28,7 +28,7 @@ Maintenance
 Send pull requests, patches, comments or questions to yocto@yoctoproject.org
 
 When sending single patches, please using something like:
-'git send-email -1 --to yocto@yoctoproject.org --subject-prefix=meta-security-compliance][PATCH'
+'git send-email -1 --to yocto@lists.yoctoproject.org  --subject-prefix=meta-security-compliance][PATCH'
 
 Layer Maintainer: Armin Kuster <akuster808@gmail.com>
 
-- 
2.25.1


