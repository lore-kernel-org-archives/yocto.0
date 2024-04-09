Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7C0CD129A
	for <webhook@archiver.kernel.org>; Tue,  9 Apr 2024 23:56:14 +0000 (UTC)
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
 by mx.groups.io with SMTP id smtpd.web10.153272.1712706974069390773
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Apr 2024 16:56:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=R1iY5e7v;
 spf=pass (domain: konsulko.com, ip: 209.85.214.194, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-1e24c889618so50331685ad.2
        for <yocto@lists.yoctoproject.org>; Tue, 09 Apr 2024 16:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712706973; x=1713311773; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V6uu0LrHB94XSzu/aD/yrqvH5zXQjMsJCE6QHe1qw/Q=;
        b=R1iY5e7vAVHMKjsxNtCRuX3uLPgbxkh71x0ZYYUoB3h6e6d4OTwyxmFM0gpi/rqDgq
         L0f2QX5+guXvvFnxfUbwRTJlEBS3ewRlAQVRpM9x81QoAPudL2M9BDsCsz/TxqYjDdle
         khFvJQ8K3qALCUFuQRgktiZISQFTL6Vc0pxQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712706973; x=1713311773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V6uu0LrHB94XSzu/aD/yrqvH5zXQjMsJCE6QHe1qw/Q=;
        b=I/GcfN0QDeTYJ6BbGRFaDEnbgQB8bcs4ggvOK+SA0W0wnttbOhzSxuVsmTQ5YKaS7K
         viy8IOd7UQ7ut2KyWwIJdX6GgVb/9kK1GgxlYbJmNOGpKOpHaP5ykaQzWpLFy2hCNEvB
         w/tPs9h2jGL0pLA0l3qgNfOaDyfJG0jejUszYqKjAtdcBF4XDuT1F2FwgsHA05UcQgyo
         BNDIoqsHkoOUlnUMlwE169BBoebeaM4Yw2zMh67aDl0YBgvqwljqIm1WTVUpRD/y/jb8
         IG2S9uxBi/EKY2ZiCoZL9x5TqTLoslKln04ngbIMepKkFyQJ+f6pBdVLOKh7hO9iPjvR
         iVgA==
X-Gm-Message-State: AOJu0YymOCp6Rl54PPpartOA7Ves/fmaKSS7ThEt/XY6+EwVghzr7/Cd
	rpfvxwww/VlZvnCssBJR1xkhxws2u8ybUTCNlE0AF2tPqQpudqZy1HrKY/gVRwVm3RjtsKq6res
	raLFSo11g
X-Google-Smtp-Source: AGHT+IEK5BFQ2Sqi71d0coCJ93dMoVXvhqQnG7tlSVukA96r+Dx4B3jcMlFIV4wnGOeSnQ20SMJhfQ==
X-Received: by 2002:a17:903:1107:b0:1e4:b70d:eb72 with SMTP id n7-20020a170903110700b001e4b70deb72mr1442149plh.35.1712706972706;
        Tue, 09 Apr 2024 16:56:12 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:e542:5f69:39ab:4604])
        by smtp.gmail.com with ESMTPSA id l6-20020a170902d34600b001dd0c5d5227sm9496614plk.193.2024.04.09.16.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Apr 2024 16:56:12 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org,
	yocto-patches@lists.yoctoproject.org
Cc: "dependabot [bot]" <support@github.com>,
	Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 1/3] build(deps): bump pillow from 10.2.0 to 10.3.0
Date: Tue,  9 Apr 2024 16:55:43 -0700
Message-ID: <20240409235602.3362257-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Apr 2024 23:56:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62907

From: "dependabot[bot]" <49699333+dependabot[bot]@users.noreply.github.com>

Bumps [pillow](https://github.com/python-pillow/Pillow) from 10.2.0 to 10.3.0.
- [Release notes](https://github.com/python-pillow/Pillow/releases)
- [Changelog](https://github.com/python-pillow/Pillow/blob/main/CHANGES.rst)
- [Commits](https://github.com/python-pillow/Pillow/compare/10.2.0...10.3.0)

---
updated-dependencies:
- dependency-name: pillow
  dependency-type: direct:production
...

Signed-off-by: dependabot[bot] <support@github.com>
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 256bc28..93e4e53 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -25,7 +25,7 @@ GitPython==3.1.41
 kombu==5.3.4
 mysqlclient==2.2.1
 packaging_legacy==23.0.post0
-Pillow==10.2.0
+Pillow==10.3.0
 prompt-toolkit==3.0.43
 python-dateutil==2.8.2
 pytz==2023.3.post1
-- 
2.43.2


