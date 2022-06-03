Return-Path: <ptsneves@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED62C43334
	for <webhook@archiver.kernel.org>; Fri,  3 Jun 2022 16:35:44 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web12.515.1654274142658808782
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 09:35:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BAHOTU0G;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: ptsneves@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id a17so6502155lfs.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jun 2022 09:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sUG3mppAvG8beaNaSLDmGjT2cRjV7qPr1lShzv/uiUQ=;
        b=BAHOTU0G/NcWQsL9nVZTG5ufR2GNPd3bHO69R/yaTtVgNolBfNYQ6A/v/swFsAC+zq
         /hgfLmY3gFqrRnVjVfGTwVRVdpLSRJ1r7lkKasck3N7vSSfZg46STc8Gh9WZhc1LsUp+
         U3Iz7cW1ZChNhgxfpdzWYq3xR3rvcMeg9+E/MtH8U5CmC14DwV2u06GnzCSWx1nlTlGF
         tAZc2jnDvyrPHGJsAKf9jK2l2NXDQZ4TSpAdyn7US33v+46AGcDsci5THuEs4fjGq0uf
         /6SBM5ox9SAXUvMEzcnPTZfmE0WU5xQ2S0V7WrX3Cb0Cc3J/fXyGeKb/YYnawZNvQA6O
         qoFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sUG3mppAvG8beaNaSLDmGjT2cRjV7qPr1lShzv/uiUQ=;
        b=Ua2CM9hmt4xRtiu/ySbJp5umjFjNfrFyxP7i28S2EHuDB/l2Sz8BDadPiBF2hPUszs
         5LLWke9FDfQJ2fphPZ499uy7JSHlwvEe+T/1+pB1stNhAWDUogM+6TCKe52iu2RAWgYM
         mKJMhgWBCG4YvEFzje9JkHGDWGNA+Xo/0QCAUI0DntV+byHmFFN2lCouadUr7CvFBso1
         7bR5MhsWo3PLgxZDRWi96S2Juw59L9UuvkgWY8Kzg/SFU/gjbJrMtDJ3ZIZx98ndXSZt
         6tNNbkHSYA95CYROyO1jjrW/AjJRl0HDT01VIzpx+2ig9vhZWt1y1D4lZ8Fcpv+8EtMs
         8rkg==
X-Gm-Message-State: AOAM531q0/+JG967ufeUsO0BZSAHsvW2N/FOaN25V4GuGPatRzm7ubKo
	zoDaz1Ei9n2nnNcssEMHGY2SZCe0EQ==
X-Google-Smtp-Source: 
 ABdhPJwarTr7bkqpy668FRXmu6oEdxOudreXO1IKLimSzOFGvogAN1783+hzF45WF7om2NxCSZ6GmQ==
X-Received: by 2002:a05:6512:38a8:b0:479:742:8689 with SMTP id
 o8-20020a05651238a800b0047907428689mr7366347lft.476.1654274141050;
        Fri, 03 Jun 2022 09:35:41 -0700 (PDT)
Received: from localhost.localdomain (85-128-83-172.static.ip.netia.com.pl.
 [85.128.83.172])
        by smtp.gmail.com with ESMTPSA id
 g2-20020a19e042000000b0047255d211e8sm1642040lfj.279.2022.06.03.09.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 09:35:40 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Paulo Neves <ptsneves@gmail.com>
Subject: [PATCH 2/2] manuals: SYSTEMD_SERVICE overrides depend on
 SYSTEMD_PACKAGES
Date: Fri,  3 Jun 2022 18:35:21 +0200
Message-Id: <20220603163521.146659-2-ptsneves@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220603163521.146659-1-ptsneves@gmail.com>
References: <20220603163521.146659-1-ptsneves@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Jun 2022 16:35:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57257

Add detail that package overrides are only available if
specified in SYSTEMD_PACKAGES.
---
 documentation/ref-manual/variables.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-manual/variables.rst
index ed52c3508..6e2919474 100644
--- a/documentation/ref-manual/variables.rst
+++ b/documentation/ref-manual/variables.rst
@@ -7664,6 +7664,10 @@ system and gives an overview of their function and contents.
 
          SYSTEMD_SERVICE:${PN} = "connman.service"
 
+      The package overrides that can be specified are directly related to the value of
+      term: SYSTEMD_PACKAGES. Overrides not included in term: SYSTEMD_PACKAGES
+      will be silently ignored.
+
    :term:`SYSVINIT_ENABLED_GETTYS`
       When using
       :ref:`SysVinit <dev-manual/common-tasks:enabling system services>`,
-- 
2.25.1


