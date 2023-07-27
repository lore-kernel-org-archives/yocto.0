Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3C19C41513
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 18:08:01 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web10.14495.1690481273937205910
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 11:07:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=NCzTcHld;
 spf=pass (domain: gmail.com, ip: 209.85.219.177, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-c2cf4e61bc6so1093740276.3
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 11:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690481273; x=1691086073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=udjtH/ZLii/2+sH+oPPVVA86/B9HqSKN3mhKFswT87Y=;
        b=NCzTcHldNFCaPDdR0Fu/5sFjYNlwOOx96zCa+i5QQm9xp5kjNOeP4apsGFqa0tqFHj
         9/46aNgwyOkAYN1aQrxCJEYpnQZBblADBKjbsIYjYxfQoCTfRSqVHfiX0e8FwbxSNkQx
         IlcfTH25CGF5dTrn5uPdox9ebQeRRBiMjfL8O3OmVoK5hXbcjChDPMCOasHPziXSBbty
         15kf07z5PQcJojkk6kIdBv3cVCBq9XRKNZkf/oqwYvEzS8qzPzP/Gnk+kvPUx23ahP6Q
         zVVosGOnQNM/G3fpPHy+vYZtoU93t0X3LqzGpUkbfzGZRpUKjZGim1dFCBjvAAl8GrJU
         Pg6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690481273; x=1691086073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=udjtH/ZLii/2+sH+oPPVVA86/B9HqSKN3mhKFswT87Y=;
        b=g1h1ND3KklTuG0/A9yzS1WQoM7yNrkX/kH4AOhHKz9nYtVZvv4GW8T0w5fDSGQAAcg
         bBQHcCXgc4mLR4hfDUQNL7D5Fk5CyluwXFryoNx7z8AeGEwQ5SMNXycFeQyHDphzHaFM
         8wXuoYP3O5Bglkj6qO66KZAI4cRnGh0NG7i5HsTRjAiRIHWnXVbps9FuFbKeLiv3sngE
         sfZAXvA1lLu4jx0E+v17rmDWCF3twOU1c32k8OwYwd9h6/T4rjP1UF9IqpGS73vld+OG
         ihqBZ5orMpraAiJuYBTLfq8yI4UpVuBCmL1AuWMKWT4+I9a/v3k2HebU7mEJMaI5zicM
         fOXQ==
X-Gm-Message-State: ABy/qLb7l9Bo284pPub8LTAeKrb20qX92CXoJMwYtNLnyZr7vL6HPBdQ
	zRA4j3SX3a2NUdOs+YcQNOl7xshCq7Y=
X-Google-Smtp-Source: APBJJlHXNv4gl0nF1JjlkFojmfroHWGsdkxgQb9tlfk024Q3GN3C8Pz173oaSyIVMO3XhrGo15TMNA==
X-Received: by 2002:a0d:d6d0:0:b0:583:7b48:9436 with SMTP id y199-20020a0dd6d0000000b005837b489436mr54392ywd.29.1690481272851;
        Thu, 27 Jul 2023 11:07:52 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:1:6648:c79a:5757])
        by smtp.gmail.com with ESMTPSA id t14-20020a81830e000000b0058461c9524fsm558361ywf.12.2023.07.27.11.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 11:07:52 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Yi Zhao <yi.zhao@windriver.com>,
	Joe MacDonald <joe@deserted.net>,
	Armin Kuster <akuster@mvista.com>
Subject: [meta-selinux][dunfell][patch 3/4] sysklogd: set correct security context for /var/log in initscript
Date: Thu, 27 Jul 2023 14:07:47 -0400
Message-Id: <20230727180748.107196-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727180748.107196-1-akuster808@gmail.com>
References: <20230727180748.107196-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 18:08:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60667

From: Yi Zhao <yi.zhao@windriver.com>

We don't need to set security context for /dev/log after syslogd daemon
startup because it is already set by udev. We just need to set the
correct security context for symbolic link /var/log before syslogd
startup.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
(cherry picked from commit 7d3b1347ae949c7208482694fd773e4bc3f321b4)
Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-extended/sysklogd/files/sysklogd | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/sysklogd/files/sysklogd b/recipes-extended/sysklogd/files/sysklogd
index e49c2da..7943b1d 100644
--- a/recipes-extended/sysklogd/files/sysklogd
+++ b/recipes-extended/sysklogd/files/sysklogd
@@ -108,8 +108,8 @@ case "$1" in
   start)
     log_begin_msg "Starting system log daemon..."
     create_xconsole
+    test ! -x /sbin/restorecon || /sbin/restorecon -F /var/log
     start-stop-daemon --start --quiet --pidfile $pidfile_syslogd --name syslogd --startas $binpath_syslogd -- $SYSLOGD
-    test ! -x /sbin/restorecon || /sbin/restorecon -RF /dev/log /var/log/
     log_end_msg $?
     ;;
   stop)
-- 
2.34.1


