Return-Path: <maciek@thing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19229C76195
	for <webhook@archiver.kernel.org>; Mon, 27 Mar 2023 17:28:51 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.42401.1679938120712699101
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Mar 2023 10:28:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thing-com.20210112.gappssmtp.com header.s=20210112 header.b=UOV1/Mp3;
 spf=pass (domain: thing.com, ip: 209.85.208.169, mailfrom: maciek@thing.com)
Received: by mail-lj1-f169.google.com with SMTP id t14so9857315ljd.5
        for <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 10:28:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thing-com.20210112.gappssmtp.com; s=20210112; t=1679938118;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KO2HSsmE+KY6lHQeEV/mAKqsUb3u4mIxWXxwol7Mlcs=;
        b=UOV1/Mp3lRfv3NjjDgq8y1s95wqkQkgMDuP5fNsZIb+JSMH6+pxh+uzLiNlHRLNW26
         e+sBKWEvgwAHaUGu9NsBHqXcXyP7u0Ll2BZi6yfx1+Dg3JjmCeI5slUURaNdbNI7bd+h
         x96FE7yu26icuuO4c7W1Ry+Ih3IMLuI6m8MGMirOmjq6YfAXUqEf3eWHSdn7eqaSSa3R
         5Qudyx0yEmWYWe2uezglRGt5fq0ErOmBI0MFod4Op6kviihPBJ7nT4uwW9wJfPd2eceW
         5TNQK5rkSpoCr3nV9S9Dv3LekYR00AcFWks+jv9ACr6eAl4+kCllYJ22VX4xZyOG+Gsr
         HGDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679938118;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KO2HSsmE+KY6lHQeEV/mAKqsUb3u4mIxWXxwol7Mlcs=;
        b=tLIpjD3ewAsM14Z7lH2Pux0L4va1iv1XS+0JDb9WBZkX0+z3eKcZW/8dnG5WTYy60o
         jhLBkf97DGO+LPkVbTXTmzARnTWO1xVMA6ZTgUNBBLhOUBrtj8oIfpAuArnD8J03Q5ff
         h9TfoUC0xoDeh33kSDi0iUv2HASN88M+hQKW5ifbj5M7WJTQSZkbKqapm0kZlyMtxY1e
         0Od/dg0qQAlyD1hOnu02lYdEQBa/FxO+H/zTv5YGnY+S43y+gZNKWgE5PMUGz8HjKgE5
         n27qnKWddwx2pvQdWZzNVE/6rj/gfsjNdyZw/eHrhUpgx2aRtfEf1W4FirFt81gaiRVv
         fFmw==
X-Gm-Message-State: AAQBX9ecu14JKjmbH7/BkRgE6rO/oBRuNRjmJHGLhHInhnAy22rYDEaz
	7dLXQzySAiBwkSeT5TKqBbnNuSQ/tS1BQI57Ick=
X-Google-Smtp-Source: AKy350YKiQh/7BMdbQdEdZCWvKl8BrV7BmUQykxSPefnmZU94g7i1WnyHodDq7qy6kntjyS3BgG+VA==
X-Received: by 2002:a2e:9dca:0:b0:2a1:ab4a:153d with SMTP id x10-20020a2e9dca000000b002a1ab4a153dmr3673570ljj.29.1679938118618;
        Mon, 27 Mar 2023 10:28:38 -0700 (PDT)
Received: from galeon.. (xdsl-6930.wroclaw.dialog.net.pl. [84.40.136.18])
        by smtp.gmail.com with ESMTPSA id f1-20020ac251a1000000b004e95f1c9e7dsm4691928lfk.78.2023.03.27.10.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 10:28:37 -0700 (PDT)
From: Maciej Borzecki <maciek@thing.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster808@gmail.com>,
	Maciej Borzecki <maciek@thing.com>
Subject: [meta-security][kirkstone][PATCH] apparmor: fix ownership issues
Date: Mon, 27 Mar 2023 19:28:13 +0200
Message-Id: <aa8af881c88bd2c3a0942e7e592a2432dc6384e8.1679937982.git.maciek@thing.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 17:28:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59530

From: Armin Kuster <akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
Signed-off-by: Maciej Borzecki <maciek@thing.com>
---
 recipes-mac/AppArmor/apparmor_3.0.4.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-mac/AppArmor/apparmor_3.0.4.bb b/recipes-mac/AppArmor/apparmor_3.0.4.bb
index 046a3a0..896abfe 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.4.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.4.bb
@@ -101,6 +101,8 @@ do_install () {
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         oe_runmake -C ${B}/parser DESTDIR="${D}" install-systemd
     fi
+    chown root:root -R ${D}/${sysconfdir}/apparmor.d
+    chown root:root -R ${D}/${datadir}/apparmor
 }
 
 #Building ptest on arm fails.
-- 
2.40.0


