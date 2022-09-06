Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D9BFECAAA1
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 23:39:11 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web11.1615.1662507544401847382
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 16:39:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i3vfBe3k;
 spf=pass (domain: gmail.com, ip: 209.85.160.169,
 mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id x5so9271038qtv.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 16:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=oAktatg+KRLSSrRvuUeocflf5Ez0AoqvgnSKK30AxIg=;
        b=i3vfBe3kRpok1kERF6D39unfGZB3H5Dv2aZes3vPn2RTtP/Iez+0hmqGO99dCXutas
         kDWb7zhmrKB4NoKjjnioo8OIFAkMVOtxAtd6DOK6KhD5Kqu5SK+JFdYozwLgmmxmg5p9
         N4gXe/wR1tmEYscun1V9K2vTXnLqlik6MUeRJHylGz2I14lhYlN6mSpAzENupuV+x/Gt
         kG2d3SaM6Ume79prgHUrpA3CnB18X7Mr7rVhEM/TDrQoqA3BwZ+RCaPo2mBWxdX4+E1j
         9D0hFeFQhLz1Ekalp5IsC+y3JvzSLKvgsC+9m6Ri4PBfm0D13CbaZCAG6fHzdulBTVsw
         s+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=oAktatg+KRLSSrRvuUeocflf5Ez0AoqvgnSKK30AxIg=;
        b=tj+fz0OPdb/lvDB3TwdaHmNIMmgNuPzptzH6D2BNrGn86ibMOoy99CJIRWn3FOhvLv
         PD3c8A07+e72Od1KiPr5MJgz7MXawx31rQB/ETH3pE2m0j8jxklUdqTWrNEx+QJL+Ycp
         v9iEpN4+OB0u5Cijh9+k3yWaPmQoVD6DpPD6raa0dKLhzoJupb0cO5L2R0+/EFMLO4hX
         bPhvWzcuNBIi0WjmdQ0k6MR+UmmL1jW5lFj4piNqif12pInjMtdWkD2zu8sJVmWdN6dx
         vKFnaOlzObH28lKcxBGEoP4+y8WzUCa7fvORzVi1Gpbn/vsuz+UjbdO+/szTd06UDsB0
         U8BQ==
X-Gm-Message-State: ACgBeo2bLvpuA1ssL1QmXVsoC1PVbPAGTgGV9Rj8x9KGKkBaaIutEm6T
	8swZphJ7ZA5Aif3SWnJaFZRSTweXUOM=
X-Google-Smtp-Source: 
 AA6agR4Sn6zx3ChENdWvGjbQjgPYfkJj6YAWXAhtmEsxzd06Au9V/huGmoMF05uFi21pXP1WUy5/EA==
X-Received: by 2002:a05:622a:1112:b0:344:8e18:6d97 with SMTP id
 e18-20020a05622a111200b003448e186d97mr953194qty.583.1662507542998;
        Tue, 06 Sep 2022 16:39:02 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:aad6:b34a:6444:81ac])
        by smtp.gmail.com with ESMTPSA id
 u16-20020a05622a199000b0031f0485aee0sm11366755qtc.88.2022.09.06.16.39.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 16:39:02 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] update sssd to 2.7.4
Date: Tue,  6 Sep 2022 19:39:00 -0400
Message-Id: <20220906233901.2981422-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 23:39:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57998

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-security/sssd/{sssd_2.7.3.bb => sssd_2.7.4.bb}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename dynamic-layers/networking-layer/recipes-security/sssd/{sssd_2.7.3.bb => sssd_2.7.4.bb} (98%)

diff --git a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.3.bb b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.4.bb
similarity index 98%
rename from dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.3.bb
rename to dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.4.bb
index 95065b3..78d29c3 100644
--- a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.3.bb
+++ b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.4.bb
@@ -26,7 +26,7 @@ SRC_URI = "https://github.com/SSSD/sssd/releases/download/${PV}/sssd-${PV}.tar.g
            file://musl_fixup.patch \
            "
 
-SRC_URI[sha256sum] = "ab3c3fe2a69cc7b2557715a11000aaf358c0afd65f2828ca47a2d3b2651d871b"
+SRC_URI[sha256sum] = "10ef90c63fdbfda905145077679035bd5ad16b24daad13160de8d0ff82ea9950"
 
 UPSTREAM_CHECK_URI = "https://github.com/SSSD/${BPN}/releases"
 
-- 
2.25.1


