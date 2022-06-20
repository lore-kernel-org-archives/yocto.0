Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CC4C43334
	for <webhook@archiver.kernel.org>; Mon, 20 Jun 2022 05:15:20 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web12.26611.1655702116013995754
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 22:15:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EBwuaFsS;
 spf=pass (domain: gmail.com, ip: 209.85.214.173,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id d5so8721223plo.12
        for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 22:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Et/0SBdDlN83fIlHI/0brm+Csct7WGNsbXE9mr7GWrA=;
        b=EBwuaFsSyYvU6qFIWwJycXIce+eJXQZ7UMLEq6ZSmZBC9FczpV/lQE1fZhd8HVIfgw
         k/iZ44RK5aqv4jbetw9aswRalKzZmBaKTXGUeHJSGXfHoKN3Rq9LkEbNjNpai6hFEB5D
         RUrhutbD4CHhHvQiGhjPNhjEJ3hFu9n8g1CQc4PqsIf96fmWZODWaHo146LrtjQjDbbi
         K1tyALIqAjfGNMl8vLUfBjIXYe1yL22AtYTsymxcYHLAgiEVrcIiwCyZFT0DGtBMPLQG
         9LLykMHGNRcTZhtANw2Qq+nSYAxyllFVik8KUQs6SecnfqCxEEHmfwaAwLc1wG8isBpX
         mMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Et/0SBdDlN83fIlHI/0brm+Csct7WGNsbXE9mr7GWrA=;
        b=QBsDoz1/pYw4X0+RT89GDh1TZ0j7wzIIP21WI3UpGcw/aqxZ6YOIprlHxSAP3oglF1
         dJN8fFLQE8egUYCZGi4wfQdjJzaK/hdF8pZPttRkpr9ZD9lMN3SqsaIdJnC5YHGURfGF
         EzLuD1vSmW0LV3M4SRoRYcw4PkL1brGCBQEZ5IJl05CdLaJXD4f/Kz0dwLkmcTOFcM10
         eGmngHbGrE6TSJ8lcqmd6NXi6/3fp6Etqc7gn8Si8KYu2HvtDcq0llF5V9tByA9S6hCN
         avz4l7/D5vsfxdjyuERmAJzH+SNFmMO27eKxFHwrey/sG1se0kbzEnRY5rH0Cq2S+hg3
         5vJA==
X-Gm-Message-State: AJIora+QkcfkLT2Zm/Wq7ZH8ZTsHDfdz5BMYrZbd+/K0dq5DB/1yLJv4
	tiiE8SrVlqgEiGCZXa699lqcXxJKKbY=
X-Google-Smtp-Source: 
 AGRyM1tqGTTnT+4LF0VsNw0sxAy+leg+SsjtHJEPbVuJI1iqqnEucZa9QVBnTX3kS8flZgYOIUoCRw==
X-Received: by 2002:a17:903:2291:b0:167:59ad:52e8 with SMTP id
 b17-20020a170903229100b0016759ad52e8mr22373866plh.121.1655702115026;
        Sun, 19 Jun 2022 22:15:15 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 bd44-20020a056a0027ac00b00525113281dasm3543232pfb.201.2022.06.19.22.15.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jun 2022 22:15:14 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security-compliance][PATCH 1/2] lynis: update to 3.0.8
Date: Sun, 19 Jun 2022 22:13:11 -0700
Message-Id: <20220620051312.1040071-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Jun 2022 05:15:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57360

See changelog for details: https://cisofy.com/changelog/lynis/#308

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-auditors/lynis/{lynis_3.0.0.bb => lynis_3.0.8.bb}   | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-security-compliance/recipes-auditors/lynis/{lynis_3.0.0.bb => lynis_3.0.8.bb} (93%)

diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.8.bb
similarity index 93%
rename from meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
rename to meta-security-compliance/recipes-auditors/lynis/lynis_3.0.8.bb
index f665e29..d38c17a 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.0.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.8.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
 SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
 
-SRC_URI[sha256sum] = "3cc165f9007ba41de6d0b693a1167dbaf0179085f9506dcba64b4b8e37e1bda2"
+SRC_URI[sha256sum] = "98373a4cc9d0471ab9bebb249e442fcf94b6bf6d4e9c6fc0b22bca1506646c63"
 
 S = "${WORKDIR}/${BPN}"
 
-- 
2.25.1


