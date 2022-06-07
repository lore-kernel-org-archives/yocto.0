Return-Path: <ptsneves@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAE1DC43334
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 08:43:09 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web09.9945.1654591380451431594
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 01:43:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q3XFe2a2;
 spf=pass (domain: gmail.com, ip: 209.85.208.174,
 mailfrom: ptsneves@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id m25so15070321lji.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 01:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y347z5Z5up8kP+lZFnO/OYP72qmgJI8DP4MhsOtls88=;
        b=Q3XFe2a2Q0ER7bytkGLjURmN0m3Nytp/DdzhloyVBWJY2QxbsHygDxXzbyIaGr39AG
         Fk2/437hFPmgKoVtbuDbpfPRgmGo7DSycyCvz7vVUS/CEb6fV9hhJTMjjyVkxlrad/zJ
         naeUxK+Yt6wTgmnD9zuXsKiTo3P/mu1WEmfryh53Qt1PI6dRmLprJMLgGbmWRmO0RBXO
         C2SH0bTmR04089d7dtH+rLDaWr1FqfEXg+3GYaZpuwaKHoZcy2LxxRbeg51pkhbVaD/t
         UC97DdZ85S3xiixxzur3Kc4tTPNB70cs8zsL/ba08myDYzkfzIrQiwiT3BDrOpVXgUsP
         IqTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y347z5Z5up8kP+lZFnO/OYP72qmgJI8DP4MhsOtls88=;
        b=JPmP2gPz2+qzFq23PvMkqaiKLWYnWbWd6nTd+3rQsYEW0mmE+uyOUq1tJzoe2maIRs
         SIwS0V1UGsfKzsiaCAofXhh52p+GMSu7ZoCigOKGakyYFuNbQbj2HOAe0z9TyPmN/B7I
         AIz5Dd4GTwjq0YRUlJMFQNtZFlG/VJWXVUZfXoaYmandIRlh4q5g8cblGGilGTJ3Zjb8
         NxFe19C2rbPMNkBRXXjmc6z2mGw6h/t/iVU4NzkD4L96oeQJL5yEAhz4ZJhvkI+RGjk3
         /TyhOX0tmeH68nVKNwVb7rAKznPqHPhIpEVBXrXqsPHfK5KnhNKR8Ijilt+BJjly7HjI
         NFAQ==
X-Gm-Message-State: AOAM530bYUmSP8mlI7UCcb5LiFmZyBSdg62EsOLhU9GwJRSlRs4g7GKT
	Fa+rkDKnFAQfaH5Fv59EL08aKi97dg==
X-Google-Smtp-Source: 
 ABdhPJybUsGjLi+E8qc8xalbEFVIWvii4UooRjdi/x5iI3NdNdLlzSITzUCjmVeedSrOttF3lL0FaQ==
X-Received: by 2002:a2e:bd8b:0:b0:253:cd2d:3098 with SMTP id
 o11-20020a2ebd8b000000b00253cd2d3098mr52974490ljq.234.1654591378287;
        Tue, 07 Jun 2022 01:42:58 -0700 (PDT)
Received: from pneves-XPS-15-9550.sigma.local
 (85-128-83-172.static.ip.netia.com.pl. [85.128.83.172])
        by smtp.gmail.com with ESMTPSA id
 k19-20020ac24f13000000b00477c05f9ffbsm3203271lfr.9.2022.06.07.01.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 01:42:57 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Paulo Neves <ptsneves@gmail.com>
Subject: [PATCH v2 1/2] manuals: SYSTEMD_SERVICE allows multiple services
Date: Tue,  7 Jun 2022 10:42:53 +0200
Message-Id: <20220607084254.2694011-1-ptsneves@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220603163521.146659-1-ptsneves@gmail.com>
References: <20220603163521.146659-1-ptsneves@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 08:43:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57277

State that SYSTEMD_SERVICE allows for multiple space
separated systemd services

Signed-off-by: Paulo Neves <ptsneves@gmail.com>
---
 documentation/ref-manual/variables.rst | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-manual/variables.rst
index 367b4674e..42178d556 100644
--- a/documentation/ref-manual/variables.rst
+++ b/documentation/ref-manual/variables.rst
@@ -7656,6 +7656,8 @@ system and gives an overview of their function and contents.
       When inheriting the :ref:`systemd <ref-classes-systemd>` class,
       this variable specifies the systemd service name for a package.
 
+      Multiple services can be specified, each one separated by a space.
+
       When you specify this file in your recipe, use a package name
       override to indicate the package to which the value applies. Here is
       an example from the connman recipe::
-- 
2.25.1


