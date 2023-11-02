Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C634CC4167D
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 03:04:54 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web11.23020.1698894285316103498
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 20:04:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20230601.gappssmtp.com header.s=20230601 header.b=UsqCkmPJ;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.169, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-41cc0e9d92aso2205531cf.3
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 20:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20230601.gappssmtp.com; s=20230601; t=1698894283; x=1699499083; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tL+KGy7BOtaDF8EKmeU7JzpTRUgNeo5z1IWlbj+ceDM=;
        b=UsqCkmPJG+PSi2vasiYQXogIPxtxRXNE6g2VNM8pv4PUkyiQNFDjC3O8SNmWqU3D64
         JHKjucmgh+Q1Si5mFWFbg4zfi3qwwH209Z/S62xlko3Y+3c6NuGw5y9Y2RIYzeydxfdK
         Nk+1qbeEo4zVhYotdGI2ZyzElbB27JHu6uXgm+SXFgEE6YfuDZuRemuIc7OeHTAwvM1T
         dqT0jJRG2F4ajN+QQGFfgG0Iebeeu3cEyYJAz5gz/7hAL7fWz8IEVyIRfh+kI5kre8w0
         1IJqRkr+8v7mYSp9YCgpkkR/7cfguxoofp3zkBl2L89JU0NK8EG7W6zretkwlyZGjucG
         cDrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698894283; x=1699499083;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tL+KGy7BOtaDF8EKmeU7JzpTRUgNeo5z1IWlbj+ceDM=;
        b=fVUxrm3j99JB6/IcFeFgGzmeCYwnWeOio6NChXMIu50lPOjFZdpNs3e4w/+UhXEgvH
         EdQP1NELF4nxHZo3GRw6nq50nE/epApeV7/nMiY2Z1y/drBZrZ+rIU2b7HjdpFt1DZZb
         s2PY/XNweU5pnPKBuUWhXQ+UI8VXTRNpndbAlCOLsCKkYse6f0zOcRJ9cHRLfnYccivR
         l9JHKxah/Dwl2xEcyHT6e4u3RbJZlHbk3q2qRqWI2DpUR/5qchYQRgZ7goEEPFdM2Yjd
         b6D5V1nXZS0nfEIDH9YiTFkF2OAtOeS3X8+ufJkVQtyDMXHLkaNyyifHtE/QudHVtXUo
         ltVQ==
X-Gm-Message-State: AOJu0YwwVECA/osJtZv+BDRdlD211hjTwXHA+50Vz7CZMao35akq7zSh
	4YtGFnV+/qc7ZxGVlPADMseF9CUyjQfOxSbkc+M=
X-Google-Smtp-Source: AGHT+IFk3sDbvU0kAh2uoQs9uHvXeuUJDnL6rjAHq57VmSayEQh2uMZJzWtfYLDyP0i78AT1pnDnDg==
X-Received: by 2002:ac8:57cb:0:b0:419:50d0:cf5a with SMTP id w11-20020ac857cb000000b0041950d0cf5amr23390559qta.2.1698894283606;
        Wed, 01 Nov 2023 20:04:43 -0700 (PDT)
Received: from localhost ([2605:a601:a684:4100:8ac9:b3ff:febf:a2f8])
        by smtp.gmail.com with ESMTPSA id fi5-20020a05622a58c500b00418122186ccsm1933893qtb.12.2023.11.01.20.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 20:04:43 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
X-Google-Original-From: Jon Mason <jon.mason@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Naveen Saini <naveen.kumar.saini@intel.com>
Subject: [meta-zephyr][PATCH 1/2] CI: Update to the latest kas version
Date: Wed,  1 Nov 2023 23:04:36 -0400
Message-Id: <20231102030437.3857166-1-jon.mason@arm.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 03:04:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61566

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


