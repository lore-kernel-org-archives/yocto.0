Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E991C4167D
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 01:35:14 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.49985.1702604113084673194
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 17:35:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Za2L8sc7;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5d7a47d06eeso1412677b3.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 17:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702604112; x=1703208912; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/YrnQUru5mRatPSy6sKmu0tX3glE5YV9eTcI2PR9hYw=;
        b=Za2L8sc7v/XLPt7gw3qbT4PTp6qj608nN1BEq2m7MPMB7FQMxjw+fAxcR8mmPE35nj
         TUGQyqj8NqRXJpGZMo4+MQ2ilHnv4v71hlI6Tun0OppQBuagZJOVXX/4V07Pa632EN8p
         kVrgXNwsxndaiViiTuXNvGPoucNYpcvLvOJH6EiqkbBgZDzfIm3H8oXxJ1cn9s7TNDIn
         UEO4TM2XzDt8CVeiFXHcLveup138N3co2bfLyo2bwYQ4pDReHCtcj+YRDuY7Ds0M2Q64
         OhVK8sbPnwOGsW7LUYzh5zip6pUp6ogZ0bV2rDVwQLN9mO5HfZRJflWEWjAmB1LZ3BwQ
         HGBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702604112; x=1703208912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/YrnQUru5mRatPSy6sKmu0tX3glE5YV9eTcI2PR9hYw=;
        b=GBkxNYm3PH17IPa4ZDw+GczUcB83oISLdNzp5ayhX3/5ryUnsZtpv+8OwiwSN2IMco
         uOjq4282posXWS+CHmz/0pyvJm/F/uqJYwNBel5JdnAqOxek0BOG70dPgBwAANLukVIY
         UVEbxUCEyoY2SZULBMPtdGWQfQWoADmYinkyN53YLcJ4SKbQYzCKEn6Fuj57zWCZtTeU
         8wzDrWv0vlJJJVaxdYI1prRC0/WRSFOdEgYzqey3paPDJLXKJ9RQJKdHm/JUT9GrLzkv
         R/9HCo+BGIN8o8vJZ6acAy/3VWEa27OfqWDNnNcyelMV0D14DWLzvxv1lEl9osM0/yl+
         1jdA==
X-Gm-Message-State: AOJu0YxObko3Du3bZWlCpyeNi8YrbuRq2ll7PK1FCe5NISbJ3IEjulQW
	cQtXoi5z/uWtswJVHydz+jk82whXn2GqZA==
X-Google-Smtp-Source: AGHT+IFOA0T1vj1lBum8CItvoK+dMYZ0GOVy2MNG0jdIg0i1WigMUEqmwux0TLq5C3iaq3qPtjjWuw==
X-Received: by 2002:a0d:d9cc:0:b0:5e3:3bcc:c344 with SMTP id b195-20020a0dd9cc000000b005e33bccc344mr2495673ywe.33.1702604112030;
        Thu, 14 Dec 2023 17:35:12 -0800 (PST)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:9770:3d29:ab6:9b6b])
        by smtp.gmail.com with ESMTPSA id m9-20020a81d249000000b005d72c7c1241sm5895879ywl.112.2023.12.14.17.35.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 17:35:11 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] lynis: Update SRC_URI to improve updater
Date: Thu, 14 Dec 2023 20:35:08 -0500
Message-Id: <20231215013508.4166843-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231215013508.4166843-1-akuster808@gmail.com>
References: <20231215013508.4166843-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 01:35:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61900

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-compliance/lynis/lynis_3.0.9.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-compliance/lynis/lynis_3.0.9.bb b/recipes-compliance/lynis/lynis_3.0.9.bb
index 8c796c0..5b5864c 100644
--- a/recipes-compliance/lynis/lynis_3.0.9.bb
+++ b/recipes-compliance/lynis/lynis_3.0.9.bb
@@ -6,12 +6,14 @@ HOMEDIR = "https://cisofy.com/"
 LICENSE = "GPL-3.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
-SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz \
+SRC_URI = "https://downloads.cisofy.com/lynis/${BPN}-${PV}.tar.gz \
            file://0001-osdetection-add-OpenEmbedded-and-Poky.patch \
           "
 
 SRC_URI[sha256sum] = "f394df7d20391fb76e975ae88f3eba1da05ac9c4945e2c7f709326e185e17025"
 
+#UPSTREAM_CHECK = "https://downloads.cisofy.com/lynis"
+
 S = "${WORKDIR}/${BPN}"
 
 inherit autotools-brokensep
-- 
2.34.1


