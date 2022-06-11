Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07531C43334
	for <webhook@archiver.kernel.org>; Sat, 11 Jun 2022 13:42:52 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web08.5850.1654954963346505817
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Jun 2022 06:42:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WcQPsA/q;
 spf=pass (domain: gmail.com, ip: 209.85.215.176,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 123so1647481pgb.5
        for <yocto@lists.yoctoproject.org>;
 Sat, 11 Jun 2022 06:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dyzALoOjg2CMTnaqEwrKwhlr8pZuyG46OiNTOYJ9v+4=;
        b=WcQPsA/qbY6y7QGOloB1us2b//B7XPrYihuIBnbyhHz3qA6YQxYErlD5KJ4Xbi0QAj
         tdDfpmw2LjzU39/B+M5CcooFHZOOck3jyeevx2cgZ9D2DYbOHGxa/2iMpagvC9vz90Zk
         L03QBxerI3u0gH2ltSSpAtFSMN0hareCbmhv/bzZajRUeZ4TzsWYkL/8ltC2QQGXxpd7
         MScpIVz/s50C+OB2BeZLQYcvFefpujKEN02QXoqNLf6Mp802GaKveB6cRLBGGce4SES1
         5lG+Cu00PgKKay3cPB9dEZmpGAdmRgzH41JHtarZivyO71jCG5/NCUKPCY6RxyzVqiVy
         BdPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dyzALoOjg2CMTnaqEwrKwhlr8pZuyG46OiNTOYJ9v+4=;
        b=oIqjqifRL1nFHv1VYsti27eq+TFm+4EONjXYzn99Y6TloEevfm2SOrrfcMb+I1P6NM
         /3MlyauyY4L8nU2cnziPQtpVwVn17ultM3EtPh00G5vt5L89QrxpG1VLeh/utRXtMKQT
         JbjPz0r77iWxg4OMmiDC8WoAeGuBUvBYZ4yJnWN78a3tEg5Mi2zUw0CThFtTNtCfmo52
         Mf1RFA4PffNhjWcoGLgizXf8Gqy0Qrel03HiboJ20T6dbrA0s3zM0/u3r0ByQ6ZcqIio
         odR139dsXZwe0oDXPB2po9akx9xLKR+rcuW5ssAQvk4NpD9piBiOK0PPINbFZjqqExeq
         +RtA==
X-Gm-Message-State: AOAM530oCAZi5xYzvG/z9VvEWnSQCy6O/JV54ifzm82Pc5kkg9cFmJxZ
	6DT4in50Tk+sHYUaZd165YOS1lXk/uk=
X-Google-Smtp-Source: 
 ABdhPJxnbyXM2ib/S6XH7KfKbkI0XTXC/zlJBG8C1qCrhgZD/fKq+b45kqGVkcXwdwIxy3T7dGVoOA==
X-Received: by 2002:a05:6a00:23c4:b0:51c:5e8:e8a9 with SMTP id
 g4-20020a056a0023c400b0051c05e8e8a9mr35233599pfc.62.1654954962412;
        Sat, 11 Jun 2022 06:42:42 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:7af1:42f3:a8aa:9b00])
        by smtp.gmail.com with ESMTPSA id
 n22-20020a056a00213600b0051b9c02e4a3sm1600466pfj.178.2022.06.11.06.42.41
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jun 2022 06:42:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] sssd: use example conf file
Date: Sat, 11 Jun 2022 06:42:39 -0700
Message-Id: <20220611134240.3466903-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Jun 2022 13:42:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57321

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-security/sssd/files/sssd.conf                | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/dynamic-layers/networking-layer/recipes-security/sssd/files/sssd.conf b/dynamic-layers/networking-layer/recipes-security/sssd/files/sssd.conf
index 1709a7a..1e8b537 100644
--- a/dynamic-layers/networking-layer/recipes-security/sssd/files/sssd.conf
+++ b/dynamic-layers/networking-layer/recipes-security/sssd/files/sssd.conf
@@ -1,8 +1,15 @@
 [sssd]
 services = nss, pam
-config_file_version = 2
+domains = shadowutils
 
 [nss]
 
 [pam]
 
+[domain/shadowutils]
+id_provider = files
+
+auth_provider = proxy
+proxy_pam_target = sssd-shadowutils
+
+proxy_fast_alias = True
-- 
2.25.1


