Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF122C7EE24
	for <webhook@archiver.kernel.org>; Sat,  3 Jun 2023 20:42:47 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web10.5357.1685824965734290725
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Jun 2023 13:42:46 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=QlI23DRE;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.45, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2566ed9328eso2841564a91.2
        for <yocto@lists.yoctoproject.org>; Sat, 03 Jun 2023 13:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1685824964; x=1688416964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=akTWJ5BSDYzd8YAsdVDDP0PXiqVkwMZ08ygRAOsS4J8=;
        b=QlI23DRELLHvsPsnupaCiQn6j/Z9h5NonqmGCdH7mGjDJ3ZxOdSLIxG6y+0nTXTLj7
         yocWC9baQUMyngcZtB0V3iQXX01gcS92dkpgg09E0QG1a93ag0K8joixQUA0nuRhJe/A
         tnrZYKa/yAcAaiGIdaeHb3l72MNzdFqcovKBU35IigMtMO2grpYC+Ejx9zboHmyyWuwB
         UEMvo+Q4/+mqws8HBtWHuhIAEMIjmi+o3EPOJZvIIdB0HA4+qKpl9M/gMbQt54/e1E90
         Y/ACQ7oY8jNEk2xN3PWMHAHxClfDeoBY/0j4gvHcNBV13JVhTtjNc2JpXRa0vZ1vXRL2
         Mnbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685824964; x=1688416964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=akTWJ5BSDYzd8YAsdVDDP0PXiqVkwMZ08ygRAOsS4J8=;
        b=LCFf72WnZltqHDy0VovkJPy7KRHDUkRGytXHDqiKhJqZ1t9Sskum4sD1fERuQPqRiZ
         1flmNnc3f0fWnDH+naSxLJ4LeXYEGLlYQu9Xpze+s+9Efg7ck9sLK/zYcHklNLLMERxL
         sRCHww5s9Fl9eVuaGhEcz0RCLqsQ8LEqRinvRMXNaDpOC41iOhVUQ8DZMEydajphAXBP
         QdnnMN7JbByfOceuZn/uv3//+a25byKlhwN4S5AU67WKexpaPPfnP8IKLl4lJnCcWpd1
         Juscyu2nXqx0OFPr4lh8H5OGt1ZEiOea7k3h0Cesg0Y/O7RUTEjIDES6rOoKEkH5q8cs
         Y2Ag==
X-Gm-Message-State: AC+VfDwwEZB3/nns6MqTVnWAJwSOrQjaq/QxWwpAnXS8w8aO1BdvGfqy
	svsSbPAiZP4fiuzBbUdc/UVGLaDFKNfGRM6t5G0=
X-Google-Smtp-Source: ACHHUZ4ZS56P41gz+hYLrPKv2KiqSBB/PliqlSVfxnnEYbHWoe9Xr4peKyQaelBxMf4Xo5eWBYq+9Q==
X-Received: by 2002:a17:902:aa88:b0:1b1:c90e:b7c0 with SMTP id d8-20020a170902aa8800b001b1c90eb7c0mr3191860plr.59.1685824964391;
        Sat, 03 Jun 2023 13:42:44 -0700 (PDT)
Received: from hexa.lan (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id e11-20020a170902b78b00b001afa7040a70sm3561952pls.276.2023.06.03.13.42.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jun 2023 13:42:44 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell] config.json: use buildtools for all fedora
Date: Sat,  3 Jun 2023 10:42:35 -1000
Message-Id: <30b819d71edcf6f3bfea1bb652ae16793b9660d4.1685824850.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1685824850.git.steve@sakoman.com>
References: <cover.1685824850.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Jun 2023 20:42:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60171

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index dac9d62..607e3ef 100644
--- a/config.json
+++ b/config.json
@@ -1149,6 +1149,7 @@
     "buildtools" : {
         "debian8*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
+        "fedora*" : "${BUILDTOOLS_URL}",
         "perf-centos7*" : "${BUILDTOOLS_URL}",
         "opensuse153*" : "${BUILDTOOLS_URL}",
         "opensuse154*" : "${BUILDTOOLS_URL}",
-- 
2.34.1


