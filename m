Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0834C4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 03:04:14 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.23319.1698894248645354674
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 20:04:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20230601.gappssmtp.com header.s=20230601 header.b=X5zCFmSy;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.219.47, mailfrom: jdmason@kudzu.us)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-66d0f945893so4350836d6.1
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 20:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20230601.gappssmtp.com; s=20230601; t=1698894247; x=1699499047; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tL+KGy7BOtaDF8EKmeU7JzpTRUgNeo5z1IWlbj+ceDM=;
        b=X5zCFmSyDqWf2Gdw6iq8odngeEtaoZmyiz7NzG76yw5u5nTP55z3nNm3NhPKnTgBbC
         l73TyXCvLsqXSN5vGFr8Xtf0zfbarL2uPzX9/AptvekZag3SgNqJwnG+7SuitKkYHzz5
         bS6b39ESLXiG9kJD5Ybzj8It1nUhKcEjZzMrj1T1PDNG8BRSU6Cx2kUnuv7tafh0nqkA
         490mPKZeJ+yGTUWbOsWr5mnSDYDnrMUZB7ur3C8SclFd92U2un0ozS3/NeQs1DJu/OOM
         q7luFvWYm/c5cfY99be3VRNXQqSYUxvuNks+OHd2a+ixWpnCQOm3/f5Y8AWiP5ZVxksl
         jkCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698894247; x=1699499047;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tL+KGy7BOtaDF8EKmeU7JzpTRUgNeo5z1IWlbj+ceDM=;
        b=vmO/uO0tXAH8vz6xsorcvcTPxx99Bt/N39zrHSVtXZTbN93IktcxUrc8dSrDuxGps9
         99mWZIt2zWlZ3kw6KEEbS/3WFMtr98AzxZjQe0i1o46pntuAPjNMJtyveqIRY5PPv7xM
         MM8h+YPn6HrebvX+KTnPni/NK+olfZUxtKUEmdNP3Pxzlw1lX5kfHR2eI8uX7HEWL5ii
         BSxDAPEXSgWO1xoFXuQKXd7AmjMk2+GZT2szDtR/3L03LjatD08IzzSzyV5rmCppUEur
         3f3Lf88hOhx82wXEhljCiir/Ow/1NsPqYRa15Hx7p1OeolIm4lzZrvDkDi5vAfs5UKQZ
         0qEQ==
X-Gm-Message-State: AOJu0YwN9mBr/ThibA447cttoyUDY0/FCUbxQCGu+ne6FnsEzm3cylJp
	eP2mTHJg8afzl+KNXOSBWsHoYtWJn8gCIE7pr24=
X-Google-Smtp-Source: AGHT+IFJFa70wVeWNPxS1TJ4KPQ00vyImOs1T9MaKrth/6E4x138xzn1GC8YbIi4O7a/uvnBODJ4gg==
X-Received: by 2002:a05:6214:1c87:b0:66d:9987:68f9 with SMTP id ib7-20020a0562141c8700b0066d998768f9mr11320955qvb.15.1698894246933;
        Wed, 01 Nov 2023 20:04:06 -0700 (PDT)
Received: from localhost ([2605:a601:a684:4100:8ac9:b3ff:febf:a2f8])
        by smtp.gmail.com with ESMTPSA id y16-20020a0cead0000000b0066d1e71e515sm2025894qvp.113.2023.11.01.20.04.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 20:04:06 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Naveen Saini <naveen.kumar.saini@intel.com>
Subject: [meta-zephyr][PATCH 1/2] CI: Update to the latest kas version
Date: Wed,  1 Nov 2023 23:03:59 -0400
Message-Id: <20231102030400.3857112-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 03:04:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61565

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 .gitlab-ci.yml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/.gitlab-ci.yml b/.gitlab-ci.yml
index 2ecf132a6ff5..c94274cdbc2b 100644
--- a/.gitlab-ci.yml
+++ b/.gitlab-ci.yml
@@ -1,4 +1,4 @@
-image: ghcr.io/siemens/kas/kas:3.2.3
+image: ghcr.io/siemens/kas/kas:4.0
 
 variables:
   CPU_REQUEST: ""
-- 
2.30.2


