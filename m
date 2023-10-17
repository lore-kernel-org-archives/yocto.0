Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C40CCDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 01:01:04 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web11.197245.1697504454397863204
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Oct 2023 18:00:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EKgoT+Zv;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: ticotimo@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1c9e95aa02dso31930435ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Oct 2023 18:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697504453; x=1698109253; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PXonVHS0Xxxmn2aszFDMTTFJfPPD1sLGEQBT2d7sYzA=;
        b=EKgoT+ZvYMXWAFB+0PiPA0H6+DNnezbeGvMmVwve3eULREiBf9oFmEU30Re+6lUq9x
         VVXD9EkKyQDWEp6bvzFKm82b5elklZbldcvXSIUwttFKSMCTCmC3tRjuUOcQ5Xa1f1tv
         kH4WfwrB6VIQpMJ5O4dmGvKVnGcD6UlDEEaV5mh86Yvsq/zb6ZdVqur8HOgCwIZq1CZv
         m3GRtJRixdACV+HgDblYcb9S1bzxP2kLswl3PzfztM42UENYxwG0wLcDaFJAflVauvAw
         ucBYyLDtK3ZjoUzFIEvUOjFE6rFqCBMhaDk/bPS4+fSu6+W9WPwSzuU35sPVH2Wa9vdE
         b6ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697504453; x=1698109253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PXonVHS0Xxxmn2aszFDMTTFJfPPD1sLGEQBT2d7sYzA=;
        b=E67HkiPl5zxLUhpDbRPgN1pNn2g+H9Jj9+KFfbJ3QdKAOtGRQ2WcuiK3tVA5qwjT3E
         DuLNxIenrpWL2KN7l2v2SisFqGJ4W8T6tJcp9fd4m63Mu0ZbA5Fy8gRNwVEKOJCWv91e
         wFi5Pfa5yJEA9WlNCzO/r0SJlTB+EVWuYdxselFoH9DL1EKdmylQItM767LLknvu+30P
         TYpLzCi/ri2045JRwGQQ3hHVoxCydosdAsytHsjw1CQ1cniBvZjFWIDhW7/n3bdZ5mEa
         Brx2CI25dI068VwbxWG3QcDDs+e9z7DbJg9wHh868FXzOJ8o4/Vgu4ZUEQo05ju3fUoW
         Fmag==
X-Gm-Message-State: AOJu0YyVxQCy+LtsDwr3qAANYLTHSgo9akfpDh8kORHkd247DujQWeJX
	wq9tiPILMLsVfw2lKh2mskZCyLbIhMRCTg==
X-Google-Smtp-Source: AGHT+IFPBRAWNX0EC3M5BAjsK4O/EVkqFr8jcx68hXvwyqGeJju6lV93GQtvUgjIGMO2cDB2PVpQcw==
X-Received: by 2002:a17:903:2351:b0:1c3:19d6:3559 with SMTP id c17-20020a170903235100b001c319d63559mr630015plh.1.1697504453546;
        Mon, 16 Oct 2023 18:00:53 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:ab5b:2a7b:aba2:aa8c])
        by smtp.gmail.com with ESMTPSA id f6-20020a170902e98600b001c60a548331sm210879plb.304.2023.10.16.18.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 18:00:53 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [layerindex-web][PATCH 3/4] Chart.js: add version to filenames
Date: Mon, 16 Oct 2023 17:59:24 -0700
Message-Id: <20231017005921.2618459-4-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017005921.2618459-1-tim.orling@konsulko.com>
References: <20231017005921.2618459-1-tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 01:01:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61361

To make it easier to quickly see which version we are using, add the
version to the filenames.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/static/js/{Chart.js => Chart-2.9.3.js}         | 0
 layerindex/static/js/{Chart.min.js => Chart-2.9.3.min.js} | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename layerindex/static/js/{Chart.js => Chart-2.9.3.js} (100%)
 rename layerindex/static/js/{Chart.min.js => Chart-2.9.3.min.js} (100%)

diff --git a/layerindex/static/js/Chart.js b/layerindex/static/js/Chart-2.9.3.js
similarity index 100%
rename from layerindex/static/js/Chart.js
rename to layerindex/static/js/Chart-2.9.3.js
diff --git a/layerindex/static/js/Chart.min.js b/layerindex/static/js/Chart-2.9.3.min.js
similarity index 100%
rename from layerindex/static/js/Chart.min.js
rename to layerindex/static/js/Chart-2.9.3.min.js
-- 
2.34.1


