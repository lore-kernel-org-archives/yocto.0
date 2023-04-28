Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F548C77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 13:32:39 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web10.19833.1682688758146889812
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 06:32:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=hOHOedme;
 spf=pass (domain: baylibre.com, ip: 209.85.222.173, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f173.google.com with SMTP id af79cd13be357-751319e0dbfso613861985a.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 06:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1682688757; x=1685280757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=os+b9/yMpvVC5HkQo0C8IKAZF6AL2dF7FoeIcF6E+aQ=;
        b=hOHOedmeQ9Yd7QO3h81oe94P4m9rejeGCUwVxXbtZtm8P98BfMyKxL6ArFtOSRXh1y
         dFRheQyo60AMmwk4nLNVq7dgbMom/wpUNTewtHshocVC+YLvR3G6ZNTpf/Km4ODvq56c
         qz7H4e54cNNxRLJQUoP/op5GFWda9WB3V1vvBFZmJfImH70rQsW7gbvPcRhh/vspD7fY
         pThjxmd3HRwGsz0fBery/cPDzBZG1AX+2qSIlwYyD0wChOXmZpw1LvBz72+n+Qo6rLH/
         Vv050rpeuUO4iod3duiOxWLWg8E3Wn9OldVm/3PrAHCXs0TQP9op7jqfi9RLeRgN6zFP
         PakA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682688757; x=1685280757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=os+b9/yMpvVC5HkQo0C8IKAZF6AL2dF7FoeIcF6E+aQ=;
        b=TKQ5hKdNtcrJq6PxZqjoIeeHCA0FcGsVMQQ1AJgbQR4xbo40LsqeG6svgrZAh/2y5B
         iODtsuC/l7xxHx7coTfnk/Dz71PCtv3kI9Im+ARK6ab4vDP2NyGeGzrThsEckuRgyoDD
         aHS7iwMk6YXx9QtvCIohJ7Bu8GtriK6fXOMFwKp4VXmb7EgMQpX7CfZvNAE+7/7IDBPz
         IdYxqJ4XaHqld/KKruFitEyUumZlPkxf6ZVb92g1kYvNbVEQk6dJp8DBuqSPyhO4+8FD
         8iVserlyLMXDBVIAtqp/YFKPGzALNOFuesqAL9eKp6MX8ke2oMmaGTz+XQeae2ZAV73R
         NsxA==
X-Gm-Message-State: AC+VfDxnkMVUYgCI2S5W+DNuo13PgOgkz7RlEYBk3aj2n9BUFycDrf9K
	VgbgyRod8tZgT+r397Q8eYpSBmrF8+/8PNi+mXg=
X-Google-Smtp-Source: ACHHUZ4VQI1g6mhWEU9EVeAPmzS36UA/E1tFymI5BjIVoG2672nAaPXmJZrRpYxtOx2+3JTyz66lGQ==
X-Received: by 2002:ac8:5f82:0:b0:3e3:9740:f9b9 with SMTP id j2-20020ac85f82000000b003e39740f9b9mr9574923qta.32.1682688757082;
        Fri, 28 Apr 2023 06:32:37 -0700 (PDT)
Received: from megalith.ht.home (cpe64777de11593-cm64777de11590.cpe.net.cable.rogers.com. [174.115.224.47])
        by smtp.gmail.com with ESMTPSA id g7-20020ac84b67000000b003ef231cceeasm7039464qts.23.2023.04.28.06.32.36
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 06:32:36 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest][PATCH 3/7] initscripts: update to use new override syntax
Date: Fri, 28 Apr 2023 09:32:29 -0400
Message-Id: <20230428133233.1155096-4-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230428133233.1155096-1-tgamblin@baylibre.com>
References: <20230428133233.1155096-1-tgamblin@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 13:32:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59811

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 .../recipes-core/initscripts/initscripts_1.0.bbappend     | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-patchtest/recipes-core/initscripts/initscripts_1.0.bbappend b/meta-patchtest/recipes-core/initscripts/initscripts_1.0.bbappend
index d239865..057921f 100644
--- a/meta-patchtest/recipes-core/initscripts/initscripts_1.0.bbappend
+++ b/meta-patchtest/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -1,13 +1,13 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
 
-SRC_URI_append =" file://patchtest"
+SRC_URI:append =" file://patchtest"
 
 inherit useradd
 
 USERADD_PACKAGES = "${PN}"
-USERADD_PARAM_${PN} = "-u 1200 -r -m -s /bin/sh patchtest"
+USERADD_PARAM:${PN} = "-u 1200 -r -m -s /bin/sh patchtest"
 
-do_install_append () {
+do_install:append () {
 	install -m 0755 ${WORKDIR}/patchtest ${D}${sysconfdir}/init.d
 	update-rc.d -r ${D} patchtest start 99 3 5 .
 }
-- 
2.40.0


