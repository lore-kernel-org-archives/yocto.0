Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82C3BC43334
	for <webhook@archiver.kernel.org>; Sat,  4 Jun 2022 06:31:48 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web09.7632.1654324298735191139
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 23:31:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NEDeKg0I;
 spf=pass (domain: gmail.com, ip: 209.85.218.43,
 mailfrom: fede.evol@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id kq6so6611447ejb.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 23:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qgyXg9bUHzZavFVJAihcxhu8J9QB04K9gSusObc6JIM=;
        b=NEDeKg0IkNxc7qApIa3LeJmyvMOceaY5LxpFdPeMvolsIJUmcrBXHCRN6uQrguqd/I
         0FGrjTeXaY8z+kIgU+gz1Z3HRm82CSm3YCFwv+3NP6+5Xy+jZ2srWNa4exIIiVBda0Kh
         4ApcR2G8nan7UIqQpVtWDCTYdZdWmQJ5D17swmcMrUw1bq7sGuEGEG6023r5x6PMIzNn
         q9nyDV0gWNRe4RMd692J2nael4wfd4M+ZGy9CEToBr0+6MJqotjkTWmw6/UlhP58a/0A
         Q9NZEfYOPP+XbB7qMBiQSHyCOS6ZNzRGuRQrE6P3hNA1MlR5peOnvrGBk1qa9WMqhveC
         zTow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=qgyXg9bUHzZavFVJAihcxhu8J9QB04K9gSusObc6JIM=;
        b=E3CUqks277t2BeTVx5+AgltgYrgHXDaSWk4Ihp7/pF8hQxUhUY2UlRKfaJNCfEE1Cr
         58VIJFqzELS4KKgjSaDPp6MvFmfRgywfHqUIQf4sNtIiTcrVCURWjgR/lhvvDB8VTXUx
         zxpiPEdk71ZOnSCOgItALV5hwuZvNhFMjJOtP9uLxD7KOQZL9TclrKHiQWfT57ZzCOcm
         221BwHvQaOE1EkTGmDFINfZx+yYbxNtdllwntSxKeiSwIVB4e+XkWsEbx/VgE91fs0zY
         FqoyOL6pauMqx21BHsXKWjbDjyMwL1/nNntC0vPuTuaCQ3Ci9+CpkAlHkewX3FidsV2S
         vjkg==
X-Gm-Message-State: AOAM5311V6h5nRzM6Xg1a8pXcPTVYPRhPrfXOGABDr+RxCaCUC8XybeE
	PzwL+AYr1pXNyyC3OFk4S/bTyceS5IcnVg==
X-Google-Smtp-Source: 
 ABdhPJxoTacBZKd3FlUFr1HI/RvN4oFSvjehJmIlZk+7eUU86EPcY7dxI5rIqAZtN5SYcfZROlzDXA==
X-Received: by 2002:a17:906:4785:b0:6fe:f8ac:2494 with SMTP id
 cw5-20020a170906478500b006fef8ac2494mr11616194ejc.199.1654324297191;
        Fri, 03 Jun 2022 23:31:37 -0700 (PDT)
Received: from interzone.fritz.box ([2a02:2455:e62:5a00:cd58:9e10:e01f:52a7])
        by smtp.gmail.com with ESMTPSA id
 si28-20020a170906cedc00b006f3ef214e0csm3641435ejb.114.2022.06.03.23.31.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 23:31:36 -0700 (PDT)
Sender: Federico Pellegrin <fede.evol@gmail.com>
From: Federico Pellegrin <fede@evolware.org>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
Cc: Federico Pellegrin <fede@evolware.org>
Subject: [meta-security][PATCH] Remove outdated meta-rust dependency text in
 README
Date: Sat,  4 Jun 2022 08:31:24 +0200
Message-Id: <20220604063124.279064-1-fede@evolware.org>
X-Mailer: git-send-email 2.34.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Jun 2022 06:31:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57258

Since ~16 months the base of meta-rust was merged into meta-oe,
down to honister as far as I can see, and therefore the indications
to use meta-rust are really not needed and may just create extra
work and possibly problems to users.
---
 README | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/README b/README
index 081669f..a9b3600 100644
--- a/README
+++ b/README
@@ -62,18 +62,6 @@ other layers needed. e.g.:
     /path/to/meta-openembedded/meta-networking \
     /path/to/layer/meta-security "
 
-Optional Rust dependancy
-======================================
-If you want to use the latest Suricata that needs rust, you will need to clone
-
-  URI: https://github.com/meta-rust/meta-rust.git
-  branch: master
-
-  BBLAYERS += "/path/to/layer/meta-rust"
-
-This will activate the dynamic-layer mechanism and pull in the newer suricata
-
-
 
 Maintenance
 ======================================
-- 
2.34.3


