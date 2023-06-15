Return-Path: <pidge@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60969EB64D9
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 16:16:12 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.22989.1686845769565630273
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 09:16:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=hHWAM1ry;
 spf=pass (domain: baylibre.com, ip: 209.85.221.42, mailfrom: pidge@baylibre.com)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-30fca48b473so3687114f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 09:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686845768; x=1689437768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XYI37Ye5Q+SfaHAyPB6pIRZPSIDBYuN7b6dqMBbfGvM=;
        b=hHWAM1ryXnRZuG7c6auFqRH3dSB06RKahJK7W0XdVHTPXN8ik/xbbhCoTyb7LiEqdf
         UrJVQiLdjNrrTHTmYDcJ0mN7qXncvAeaHJFkKR1CFhH/hLLP7yG1n97K3F5YuAKMFiQb
         1HiODn4CnMiq3dT3vEEat15pC0zuozBsaWHm6O13eWrD0lZVDQ5xFQ8LTVPvRxhRtf/D
         UWA3hmdCW33u6uWvOuq//ubl9NIwziXXkiSTgdZCjXxcgT0Vg/91dvSTrJdla6AGIItJ
         K3zkjcaZbHqB/v1b5nZydrA67Xx4uE/hpkICWLqdf1tnry1Hgmrwhc9j13ZknSGKIn8j
         f2Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686845768; x=1689437768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XYI37Ye5Q+SfaHAyPB6pIRZPSIDBYuN7b6dqMBbfGvM=;
        b=eOma97VJr+fY8sKtg9Yn97zbqCB/FsAWMMlnhcwZxYgW4utasCxqzWRvIG2ls6CqDl
         CBu8qXF/dbVDzYfn5Byp4qWAUyYg7hx40F3yXb6lvT+BBV+TJ/+dGnt/zjWMqPGXWO/d
         wPT1ftSywgSCg0SeQ87eHU7fm5KMU0XJSy4cLE81nojGTgA6WOageRcQqnR4TxgWczAk
         Gs7Zl+paZyUyp2LPz7u6EXVo91p1AnsGtIe/fXZx/vLsWU9MKDn5iZzc1XUO5yWRLJbs
         lucyC4nbsR35fc6se3sCaylMRVco8tdp0/lx0o0xuEz04DFJwTDMSlFU0hY0Z2TjA3q6
         Uz2A==
X-Gm-Message-State: AC+VfDwjlMlqpy/8DggQzlKJT26Ad/DJ1eHwpEGP3qkKMt95vu/yzp+D
	R1R2p7DAss2OztlESo5D6nCGt0ZwJsYs7hb9KFA=
X-Google-Smtp-Source: ACHHUZ6dZWBVKYH5Kxn/Hd3UuCqtiI8wRWhE4Re4GOQ/UIS7e1+5xXS2jjl0s58OxciqxkP5z5JzIQ==
X-Received: by 2002:a5d:4903:0:b0:309:54b6:33b0 with SMTP id x3-20020a5d4903000000b0030954b633b0mr12034701wrq.44.1686845768094;
        Thu, 15 Jun 2023 09:16:08 -0700 (PDT)
Received: from tapa.fritz.box ([194.110.145.180])
        by smtp.gmail.com with ESMTPSA id q3-20020adff503000000b0030fa3567541sm18308709wro.48.2023.06.15.09.16.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 09:16:07 -0700 (PDT)
From: =?UTF-8?q?Eil=C3=ADs=20=27pidge=27=20N=C3=AD=20Fhlannag=C3=A1in?= <pidge@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH 3/3] xwayland: Upgrade 23.1.1 -> 23.1.2
Date: Thu, 15 Jun 2023 17:16:01 +0100
Message-Id: <04aaa6db375ee4aae7ef7379d1c49addebc3a63d.1686845688.git.pidge@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1686845688.git.pidge@baylibre.com>
References: <cover.1686845688.git.pidge@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 16:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60315

Signed-off-by: Eilís 'pidge' Ní Fhlannagáin <pidge@baylibre.com>
---
 .../xwayland/{xwayland_23.1.1.bb => xwayland_23.1.2.bb}         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta/recipes-graphics/xwayland/{xwayland_23.1.1.bb => xwayland_23.1.2.bb} (95%)

diff --git a/meta/recipes-graphics/xwayland/xwayland_23.1.1.bb b/meta/recipes-graphics/xwayland/xwayland_23.1.2.bb
similarity index 95%
rename from meta/recipes-graphics/xwayland/xwayland_23.1.1.bb
rename to meta/recipes-graphics/xwayland/xwayland_23.1.2.bb
index a065e92f01..de516536d1 100644
--- a/meta/recipes-graphics/xwayland/xwayland_23.1.1.bb
+++ b/meta/recipes-graphics/xwayland/xwayland_23.1.2.bb
@@ -10,7 +10,7 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=5df87950af51ac2c5822094553ea1880"
 
 SRC_URI = "https://www.x.org/archive/individual/xserver/xwayland-${PV}.tar.xz"
-SRC_URI[sha256sum] = "fb9461f5cb9fea5e07e91882311b0c88b43e8843b017ebac05eb5af69aa34c15"
+SRC_URI[sha256sum] = "bd25d8498ee4d77874fda125127e2db37fc332531febc966231ea06fae8cf77f"
 
 UPSTREAM_CHECK_REGEX = "xwayland-(?P<pver>\d+(\.(?!90\d)\d+)+)\.tar"
 
-- 
2.34.1


