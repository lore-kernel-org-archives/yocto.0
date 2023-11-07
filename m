Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13362C4332F
	for <webhook@archiver.kernel.org>; Tue,  7 Nov 2023 17:26:50 +0000 (UTC)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web11.834.1699377999753732221
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Nov 2023 09:26:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=pmLcVoSg;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.172, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1cc1e1e74beso53707345ad.1
        for <yocto@lists.yoctoproject.org>; Tue, 07 Nov 2023 09:26:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1699377998; x=1699982798; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JvojULzx8fF4SwBzq2SAWaAb0at/SLjHhXCwHWS6BMg=;
        b=pmLcVoSg34AFkq050QrBK0fHP8z+C7OqBsItg/zJvUMAXDpXD28o0/2YNPInBU4tHX
         YaWh4BJLkJjXHZLNklX1xOViPxlDjwCXcxNDr9N7XRY17c4SO49Em/Fn/QRpOtwwRoNi
         HRsH+VJvVUxbvEXlSQf3hUAiwo75Pie2DBADF97X8+ntoZ2gUbaog6NlfWqn4aESAIxr
         4n9mZan238wehidLVgPDVmW/zGNVk67pckd0j6k0f5/hdAdHNfQw5zpQGb3pTDMdMU1Z
         A9nycX1jPNXNs1b9tmCH2Mm9mQhunc8TXrdaAWODbefz4DeM7tRasTr/FdvYwkDK0spF
         WAbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699377998; x=1699982798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JvojULzx8fF4SwBzq2SAWaAb0at/SLjHhXCwHWS6BMg=;
        b=GnOzvgnS9ytewGYtEpbqwW272N5jrTGTF/9UtwqSXML47Hp4qLPWAQwW9GGER9Msss
         ZWPB+U+OxZeivBorAWPCtdbsNXi1hqew+Km0R2ZBl4TzGKUHHgn+5KGWrCGEv0i7NDYh
         lc0dg1Id/rbxC8nuHlfoX6zNoETwE3USo9tulUCSfCBGFMsp9BD27gkzKGD+1jwdr3gk
         Q7k62Tpm/V/Q+8eCXJED2Jxv1LPjDUmiHNY+zi4Hxp4J6FsXKUMPUyBE43bDOIXPnbg6
         KEct1XBCWfcthXz9ucdtVHydUlAPaEd1P64jraJnl/aH4/WL/G4vMAmTOv8dRBTTq6aZ
         b+UQ==
X-Gm-Message-State: AOJu0YwtNgJAOjNZtBi6C/0u1E7XIthixjHYCKFQVlox/q351ZUT1SgY
	Uw00pyHwjupBM90pQNihYjUaIxGFdo3YLElZZAo8OQ==
X-Google-Smtp-Source: AGHT+IGg4dITv2SjRhGztTBFqohAqkOfJ+O1SroUavnmTc6tk1/qPDPRDlditJGg5bLg9YRedPsAMw==
X-Received: by 2002:a17:903:7c6:b0:1cc:630d:8a5e with SMTP id ko6-20020a17090307c600b001cc630d8a5emr20692109plb.48.1699377998106;
        Tue, 07 Nov 2023 09:26:38 -0800 (PST)
Received: from hexa.lan (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id l6-20020a170902eb0600b001cc3b988fd6sm77257plb.265.2023.11.07.09.26.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 09:26:37 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: use buildtools for ubuntu2204
Date: Tue,  7 Nov 2023 07:26:26 -1000
Message-Id: <a8c2aa3b5a2249a957bb161a03baa75ab14bf036.1699377913.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1699377913.git.steve@sakoman.com>
References: <cover.1699377913.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Nov 2023 17:26:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61634

Ubuntu 22.04 is triggering reproducibility errors for vim.

Use buildtools here to pick up the fix for this.

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 3520e9a..5b7c81d 100644
--- a/config.json
+++ b/config.json
@@ -1231,6 +1231,7 @@
         "perf-centos7*" : "${BUILDTOOLS_URL}",
         "opensuse153*" : "${BUILDTOOLS_URL}",
         "opensuse154*" : "${BUILDTOOLS_URL}",
-        "rocky9*" : "${BUILDTOOLS_URL}"
+        "rocky9*" : "${BUILDTOOLS_URL}",
+        "ubuntu2204*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.34.1


