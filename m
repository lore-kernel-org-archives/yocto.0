Return-Path: <belouargamohamed@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1186FC4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 22:58:06 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.5894.1708037883086807080
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 14:58:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ixkhU2o6;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: belouargamohamed@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-33b29b5ea96so703023f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 14:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708037881; x=1708642681; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=g4pbzPN4UizJHTEu6L8rvMnGnKfy7BbVQbT4sMvYAsY=;
        b=ixkhU2o6YjUVTTNnekeoNvqNVcmeHRqf/eDzMEepG4APOgfQWRzwa1jSBxcI5NICr7
         llkSzr/cHPXd9hvCaI+Obxh8MRRaBFGB0hrpUD/RUBjUuOCqP/lDxBSxs2itv37EnJtG
         9ymmJpGxPbXibiRoC31iL/UHJOB3RnEUkXZgrk2lci3B6dVCorSexBTe/J9tH0Is038r
         cLgGXATW4RGFe0Qxys3tjQ8k6TmePhYGFhQEPqglg6q8KsW8eSGhQATar873YMlJpRb+
         W8sIvygzNh2TYaHKnQ1HVcwP3J8Ao2iLGbACcKu8e/fXtO+B1zeeMAOUClgJm8h1UsV3
         JMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708037881; x=1708642681;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g4pbzPN4UizJHTEu6L8rvMnGnKfy7BbVQbT4sMvYAsY=;
        b=hbpshxxsIt1mg+XSewqCFa7WQcXkkYxf/el7/bYvce0Y6d4EhUvs8f4ZElxkFvCuyn
         sVJv6YF7ZaJEl2qCpru0zYXmx3dpzJPDWXclPz/PwTH14tjZVb4Jp1tih2dOOrHjRIX7
         HENfRPdDp1ui3IlunZ62iBfgfxDyZjZ2CpzPNF+xGc9zf9WzCO5hP3ink5IYcLroO7Qs
         ngC7ZMsTmS7qyNADNuwiPELxud/DFztJkDtn8rcOdmQBBkq0Y7rh4Xjcbwj3rdBoiyWV
         pHSq/B8pLzOJ2NJrkqNRDcnF/a+ImSfXnmLk+nGKByeRboTv4yzZAVDEmxLCjQVnMrgk
         ImYQ==
X-Gm-Message-State: AOJu0YwSv010ZP3nMBIiARaM1VtJVO9dYUoquJGk4GA+Adz3aFP1rY8X
	ZGI3nifAPoptETGEyO1ZUjOX6L5FSPLFkDl4LiWMI5NWWAhmXtzHiJ/tPewy2naymg==
X-Google-Smtp-Source: AGHT+IGNcUJHQeqk0AXxyEYlXTPVc1xCKU2Va0Wi+oX9OL+2Whtj6TFjiTMrXzFMAcl6uN2JdH1y+Q==
X-Received: by 2002:a5d:6850:0:b0:33d:19b6:d1fe with SMTP id o16-20020a5d6850000000b0033d19b6d1femr330771wrw.17.1708037880595;
        Thu, 15 Feb 2024 14:58:00 -0800 (PST)
Received: from localhost.localdomain ([2a02:842a:10:ba01:5c7f:415a:59e:513c])
        by smtp.gmail.com with ESMTPSA id js21-20020a05600c565500b0040fdb244485sm463188wmb.40.2024.02.15.14.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 14:58:00 -0800 (PST)
From: belouargamohamed@gmail.com
X-Google-Original-From: m.belouarga@technologyandstrategy.com
To: yocto@lists.yoctoproject.org
Cc: f.lahoudere@technologyandstrategy.com,
	BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
Subject: [PATCH] lynis: Add missing runtime dependencies
Date: Thu, 15 Feb 2024 23:57:57 +0100
Message-Id: <20240215225757.307579-1-m.belouarga@technologyandstrategy.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 22:58:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62506

From: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>

Lynis tool needs ip, ss, tr and netstat.
If they are missing Lynis skips some important audit tests.

Signed-off-by: BELOUARGA Mohamed <m.belouarga@technologyandstrategy.com>
---
 recipes-compliance/lynis/lynis_3.0.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-compliance/lynis/lynis_3.0.9.bb b/recipes-compliance/lynis/lynis_3.0.9.bb
index 5b5864c..b8b97a5 100644
--- a/recipes-compliance/lynis/lynis_3.0.9.bb
+++ b/recipes-compliance/lynis/lynis_3.0.9.bb
@@ -41,4 +41,4 @@ do_install () {
 FILES:${PN} += "${sysconfdir}/developer.prf ${sysconfdir}/default.prf"
 FILES:${PN}-doc += "lynis.8 FAQ README CHANGELOG.md CONTRIBUTIONS.md CONTRIBUTORS.md" 
 
-RDEPENDS:${PN} += "procps findutils"
+RDEPENDS:${PN} += "procps findutils coreutils iproute2-ip iproute2-ss net-tools"
-- 
2.25.1


