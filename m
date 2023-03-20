Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35AFAC7618A
	for <webhook@archiver.kernel.org>; Mon, 20 Mar 2023 11:49:54 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web11.11769.1679312988938424504
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Mar 2023 04:49:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kmGC7PB5;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id hf2so8449298qtb.3
        for <yocto@lists.yoctoproject.org>; Mon, 20 Mar 2023 04:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679312988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bvEuxypiOqyHVtMF15Vq2YdXd068ID7Gq8xu82r6sTU=;
        b=kmGC7PB5sWxBq+p1GMFG9sAzAm+1n1mzxl1uL9iqRS9f9AO27UrOTKtPGf4iH7Ytrn
         IoiE381FJncKENcJDMm0SxQMRiES/LbGUHgQCxDcIfJwD2iONA70QGuvdeoH4uPG8oxr
         NA6l5VqsEYAjjkrivqaIoQb7Gqlwa9lrIz16RyDnqBPMtwN5nFbWbnI2aAC7m7twPtMn
         hL/p8+9NOaPvzV1i4LsPqOiTG3MKtJ7e1zhTrXs9Azm1HDhRz6gqVd3w2zBtPR8DXx1c
         n1lIfkD6piQHb8ZFA1vnJCJgy3GM0n2oIAPdjmDjainXU5P+CppFBHxEpJi7rjYHQBIj
         I/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679312988;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bvEuxypiOqyHVtMF15Vq2YdXd068ID7Gq8xu82r6sTU=;
        b=G29iZ4ZeNCnKaSnZ6gyOsYe+jGC5r2xDaNXjEY+Wc/t836JJ5E+Zo1k4hHwargbuOu
         zUvlmi8kMeu5RQSYNwsCCWMSYMplTYinpQ9xpIxEBdIFRnTrKGhBbWyYNQYXUyUjd6Dv
         Ug30GJ5ceFhf+48vMttOXzLke5svgKpT0ptqVpJixhzAqPhWkmXn5FK7AmOc3aJ6V50e
         pqfF1y9P+5YDlrQ9G3850E7ZaoRC8z5lqa7PIG0WeosvpB2rrWsRBiWMx+l0TwBdNk09
         03WTt4lC3Py7CPT1kLFBIDlud4Kp+99dFsLphIp1IeMX31oKzmVJatkOYyDtwrazGc6R
         dhcw==
X-Gm-Message-State: AO0yUKXg9x73v4JlnG1XRFHfdmJpRrD32Jz2qGNK5wIcSYm7j+/J/2qH
	oYj0f6jE81XCmT55zhZ380sWwOAXctM=
X-Google-Smtp-Source: AK7set8g36UtS4XJyvfGQDkPfmNNImnSxeWz5kWD+s2MALs11WMSole04+uu5yURlWxbmD95llHpYg==
X-Received: by 2002:ac8:7fc6:0:b0:3ba:1113:751a with SMTP id b6-20020ac87fc6000000b003ba1113751amr24396961qtk.67.1679312987444;
        Mon, 20 Mar 2023 04:49:47 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:c26c:1827:ca90:3476])
        by smtp.gmail.com with ESMTPSA id d20-20020ac85354000000b003b323387c1asm6471238qto.18.2023.03.20.04.49.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 04:49:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-parsec][PATCH 2/2] meta-parsec: bump BBFILE_PRIORITY to the right tpm2-tss is included
Date: Mon, 20 Mar 2023 07:49:46 -0400
Message-Id: <20230320114946.1519177-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230320114946.1519177-1-akuster808@gmail.com>
References: <20230320114946.1519177-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Mar 2023 11:49:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59471

Parsec-service does not support tpm2-tss 4 so us the older release 3.2.x

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-parsec/conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 0a71694..84d4172 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -6,7 +6,7 @@ BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "parsec-layer"
 BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
-BBFILE_PRIORITY_parsec-layer = "5"
+BBFILE_PRIORITY_parsec-layer = "7"
 
 LAYERSERIES_COMPAT_parsec-layer = "mickledore"
 
-- 
2.25.1


