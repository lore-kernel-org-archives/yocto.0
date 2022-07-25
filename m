Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DABC4C433EF
	for <webhook@archiver.kernel.org>; Mon, 25 Jul 2022 16:42:18 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.30441.1658767333050308307
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jul 2022 09:42:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Es/WkXgi;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id z13so16793683wro.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jul 2022 09:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bz8dH9aWLGwm88yrbfZXPP/5Ysv09UnITUe18WkDbl0=;
        b=Es/WkXgiEkdfwlvW51pzzqG6xExj8cfQImiAbP29UgpXrbVyuw71QoI1D2Emms8mJg
         BcwZWcQjdAjr4vzkKET1BTOpDeWOTO+Dnsxpus/UYyDRhbB4J4FHECZvtIKFtgbwu+re
         d9mBu+QKSjNhWNyaWImKAI4SHwRqdg4rxpfjA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bz8dH9aWLGwm88yrbfZXPP/5Ysv09UnITUe18WkDbl0=;
        b=BRGeQX9JNOvSQd2GFBKrSyx9RvyiN3LMEC8EYTyYdnjeMfMZtm6+CRtTJm0Nn2G3Gt
         dXPBjEHa1R6Wl6FVrCAmLsrHsaizyOlk+rkvU8zcpbmGC6iK9x6CtmeWUuYVFy/X1wtp
         PvQ1E13PbZEie/xLq7Eo3Ga+Iwp8Hn6UI0aYw1iIrcpbTa+aZUsGkbgF+B+7CtWE2sfe
         Q64tVChcDffpxNXRRGhFOdnNahIB6sVrMZaw+cM1DsAXoVUwdgLRwpSk5/oAG9rd3vkE
         mI7d222yX4cQc3APmjyD/PBODXut09tm3YMyv+2pIhXbGoc9btN1fiF44zxhaQpzxFY1
         /HHg==
X-Gm-Message-State: AJIora/PYTHygKb4fqS3lSmlEbtsLD209X9ADHQDdYnGbpOJFfi3D78k
	AAUcGDKNpXvqDzcNjhAGehQ3z/331QKe3g==
X-Google-Smtp-Source: 
 AGRyM1sfV+W0tXuz3AzpDmfGMVb4EzoYBVL2Ktqhhv7AQ8RjWclMZADVNsTw/sKL9J8GiUKjUti7YQ==
X-Received: by 2002:a5d:47c7:0:b0:21d:ac9c:571c with SMTP id
 o7-20020a5d47c7000000b0021dac9c571cmr7981843wrc.522.1658767331084;
        Mon, 25 Jul 2022 09:42:11 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:7074:bed7:25c5:279b])
        by smtp.gmail.com with ESMTPSA id
 r16-20020adfdc90000000b0021cf31e1f7csm12565308wrj.102.2022.07.25.09.42.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 09:42:10 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH] layer.conf: Delete as the layer is now
 officially obsolete and unmaintained
Date: Mon, 25 Jul 2022 17:42:09 +0100
Message-Id: <20220725164209.2122170-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Jul 2022 16:42:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57634

Remove the layer.conf as this layer is no longer being maintained and
we need to draw people's attention to that.

The software in this layer has not seen security fixes in a long time.
As such, nobody should be using it. There are other ways of removing GPLv3
components from modern OE/YP builds and we'd like to focus people's
attention onto those. If there are issues that current solutions can't
meet, we need to find new ways to address them, this layer isn't it.

We've talked about this layers maintenance for a long time on the mailing
lists and in weekly tech calls so this shouldn't surprise anyone.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/layer.conf | 23 -----------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 conf/layer.conf

diff --git a/conf/layer.conf b/conf/layer.conf
deleted file mode 100644
index 48fc58f..0000000
--- a/conf/layer.conf
+++ /dev/null
@@ -1,23 +0,0 @@
-# We have a conf and classes directory, add to BBPATH
-BBPATH .= ":${LAYERDIR}"
-
-# We have recipes-* directories, add to BBFILES
-BBFILES += "${LAYERDIR}/recipes-*/*/*.bb"
-
-BBFILE_COLLECTIONS += "gplv2"
-BBFILE_PATTERN_gplv2 = "^${LAYERDIR}/"
-BBFILE_PRIORITY_gplv2 = "1"
-
-# This should only be incremented on significant changes that will
-# cause compatibility issues with other layers
-LAYERVERSION_gplv2 = "1"
-
-LAYERDEPENDS_gplv2 = "core"
-
-LAYERSERIES_COMPAT_gplv2 = "kirkstone"
-
-LICENSE_PATH += "${LAYERDIR}/licenses"
-
-PREFERRED_VERSION_elfutils = "${@['', '0.148']['GPLV3' in (d.getVar('INCOMPATIBLE_LICENSE') or '').upper()]}"
-PREFERRED_VERSION_shared-mime-info = "${@['', '1.10']['GPLV3' in (d.getVar('INCOMPATIBLE_LICENSE') or '').upper()]}"
-PREFERRED_VERSION_shared-mime-info-native = "${@['', '1.10']['GPLV3' in (d.getVar('INCOMPATIBLE_LICENSE') or '').upper()]}"
-- 
2.34.1


