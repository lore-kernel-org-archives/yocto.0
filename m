Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3CF7C433EF
	for <webhook@archiver.kernel.org>; Mon, 21 Feb 2022 21:14:58 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web08.4625.1645478097588902480
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 13:14:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IZLzqpeS;
 spf=pass (domain: gmail.com, ip: 209.85.210.180,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id z15so4199497pfe.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 13:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wwq3eWQyM260gFJQy24b4HDdpDmPnjnueLUfc2E5a80=;
        b=IZLzqpeS9O93SA4zOLz5pWwpXgpEBHvYCfqaO0w2e6vyaHFgZj+kfv6+I0JA7wqGzK
         cjhzCfoXlVjq+CQZtLN+lhpY9k6jnFbhjZ5RthE1nPyCUztfRKN5t9fkA/A8861ZPOpv
         aodSsbZSsIvC5J1DVBQhfCVLNFe7a7yp8m3PF6UoTCo7+ROhTCeQE17EyKgS60LUa7Pr
         ryd3WadwpGSoAFE52m/CanhiJ+en0d81NmsUYAN1lOYMYp+l1Qm49Q21lOuvXmrEjzpR
         cbPODUPPBkLnGINKyBrFgAvIy/ohKiW+Iki9GE+NBnuWuNt24Ox+nYf831kbYjyF5djl
         IDmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wwq3eWQyM260gFJQy24b4HDdpDmPnjnueLUfc2E5a80=;
        b=uOUavhqHua1ZKND3HgEUP/h4Za7z8LPv8dF78wok4OdyUXtzfcVpeSYo29P9TgxPg7
         UnQuCQEt7e/aSGxGmZAJV+vb9c7Q55qF3/5MZhFbnfTbdrDGuxjQk3W9tiijLxIR/j13
         xUE9oGgxKiIc58TU5ylp1FVVp7RJEhZtqfdL/j+3chMY1iWV5MKq5poj29i44eVI3dl0
         ARf/i6Hkl0a7GWjUnsp50krDE9s4fzC8YoRQlCj5/uK22YubyrBv4u4io5yOAgk0m2n/
         GX6HRCa4h+nQiMMawHJXQbqIgaXmyfCmoIyzW41XveRigiWY2J5sHYspf7fSHBcMsFWA
         X+vQ==
X-Gm-Message-State: AOAM531dENHAFl6UALBrTkT7fizmSEJgj8/imY9FR1M+s4yKZnYNxicG
	vJi+fnB7kC3kZOFGR15i5GcL1MBVsOI=
X-Google-Smtp-Source: 
 ABdhPJxC9899dYSQNro+1iX/uhBZyaCGlxCPx3n02gCe2sc5/QTgQpcTht08hNjIXlO/vqKg/G+f7Q==
X-Received: by 2002:a05:6a00:889:b0:4e0:dcc3:5e06 with SMTP id
 q9-20020a056a00088900b004e0dcc35e06mr21703229pfj.29.1645478096832;
        Mon, 21 Feb 2022 13:14:56 -0800 (PST)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c5c2:4687:1c77:58fa])
        by smtp.gmail.com with ESMTPSA id
 a9sm18827862pgb.56.2022.02.21.13.14.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 13:14:56 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] recipes: Use renamed SKIP_RECIPE varFlag
Date: Mon, 21 Feb 2022 13:14:53 -0800
Message-Id: <20220221211455.1241096-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Feb 2022 21:14:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56224

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/tripwire/tripwire_2.4.3.7.bb         | 2 +-
 recipes-security/libest/libest_3.2.0.bb          | 2 +-
 recipes-security/opendnssec/opendnssec_2.1.10.bb | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
index 93cb443..5bb0e3e 100644
--- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
+++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
@@ -74,4 +74,4 @@ FILES:${PN}-ptest += "${PTEST_PATH}/tests "
 RDEPENDS:${PN} += " perl nano msmtp cronie"
 RDEPENDS:${PN}-ptest = " perl lib-perl perl-modules "
 
-PNBLACKLIST[tripwire] ?= "Upsteram project appears to be abondoned, fails to build with gcc11"
+SKIP_RECIPE[tripwire] ?= "Upsteram project appears to be abondoned, fails to build with gcc11"
diff --git a/recipes-security/libest/libest_3.2.0.bb b/recipes-security/libest/libest_3.2.0.bb
index 41a4025..b4c6165 100644
--- a/recipes-security/libest/libest_3.2.0.bb
+++ b/recipes-security/libest/libest_3.2.0.bb
@@ -27,4 +27,4 @@ PACKAGES = "${PN} ${PN}-dbg ${PN}-dev"
 FILES:${PN} = "${bindir}/* ${libdir}/libest-3.2.0p.so"
 
 # https://github.com/cisco/libest/issues/104
-PNBLACKLIST[libest] ?= "Needs porting to openssl 3.x"
+SKIP_RECIPE[libest] ?= "Needs porting to openssl 3.x"
diff --git a/recipes-security/opendnssec/opendnssec_2.1.10.bb b/recipes-security/opendnssec/opendnssec_2.1.10.bb
index 6b53711..64bacf1 100644
--- a/recipes-security/opendnssec/opendnssec_2.1.10.bb
+++ b/recipes-security/opendnssec/opendnssec_2.1.10.bb
@@ -33,4 +33,4 @@ do_install:append () {
 
 RDEPENDS:${PN} = "softhsm"
 
-PNBLACKLIST[opendnssec] ?= "Needs porting to openssl 3.x"
+SKIP_RECIPE[opendnssec] ?= "Needs porting to openssl 3.x"
-- 
2.25.1


