Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04169C77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 10:34:08 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web10.16130.1682678045652203954
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 03:34:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Jtyk5DOB;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-552a6357d02so116520387b3.3
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 03:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682678044; x=1685270044;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=vJvOwgy4EVtMidjsslBVwZXYcU5MdlI9qJx5EozEZOI=;
        b=Jtyk5DOBXaxO/shEXwtTFEK75SV5t37/EOmdx8P1ddKVKz2/uqpURO8R6jT0qdW5LF
         Z/8IOoEuWDL9WObqyEqJgnZkHrE9BSJXYSSJ/Mb53HRRFrxXyYYJnvcvUB+jo+FdpUr5
         sEPR/hhR7T5rKztUKAwEE0QPKCQ9jyvSDhFNBIuyEIQ8uZdnD0BIqW8WpyMY6vBaNtQW
         UL+tXE6P/VaRvRCs1IX5yWWcAphFn1HrDyfIP8LqVqnSGdCH2QYfYEvbzWWK7UZh4Bwm
         doassmePxZ//H8iuFszLSc/LRsT7GpJdQLR7IFtGxmnfHdMX6woSgBd9RNZGfIjqAjX8
         laUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682678044; x=1685270044;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vJvOwgy4EVtMidjsslBVwZXYcU5MdlI9qJx5EozEZOI=;
        b=et8jGU1NPhc5uWCC//TKx9/cD2BWXH7jo2rA6CleKpS/eoMbU7KhONgGwDdpQxqBB9
         bfdoY3BOqkdjh/aek5f4RNRsUcWk6p7FAFxWvsKvBbqeMOZfCvjEmce3QArudwbwG2p2
         fE1jVQZ0rz8b3kOWxjuPx9wqqw29dsQDCsgYwRElMtlgrTTNW5atpEikS6U5P8/bYL1W
         1TRrZV9Xf6vbC2PU1Dh5SvzJ1tz+LTavSmANjhxfEC80mNwJgQzVCJEbkx8z/EtbZqgS
         NAPUzHdW1UsoSDa3ULRO/aiwEgis82uipfNr1henFbvREUIsw4nqyf2FJAeOVdC1n+gf
         de7Q==
X-Gm-Message-State: AC+VfDxciVg0lUmb7nlgwiAtkrhe87GP+rrXshcSmtEOSaHtPW7dmibA
	VTtoDvyoyrtB5G/rIBnnDbRFx4AeAlE=
X-Google-Smtp-Source: ACHHUZ5vAdevt+eCfsc+rHFHSQK/d4u78ADykfZhdaPvTIBmlnfKwb6B2FPAaoJcFmJsxmEJhk4hAA==
X-Received: by 2002:a81:8787:0:b0:556:9f48:cbe7 with SMTP id x129-20020a818787000000b005569f48cbe7mr3409716ywf.3.1682678044449;
        Fri, 28 Apr 2023 03:34:04 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:8746:fc43:c0f0:c757])
        by smtp.gmail.com with ESMTPSA id b124-20020a0dd982000000b0054f6f2d291dsm5414129ywe.34.2023.04.28.03.34.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 03:34:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/4] ossec-hids: update to tip of 3.7.0
Date: Fri, 28 Apr 2023 06:33:59 -0400
Message-Id: <20230428103402.1022697-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 10:34:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59791

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/ossec/ossec-hids_3.7.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-ids/ossec/ossec-hids_3.7.0.bb b/recipes-ids/ossec/ossec-hids_3.7.0.bb
index c211f03..55c10fa 100644
--- a/recipes-ids/ossec/ossec-hids_3.7.0.bb
+++ b/recipes-ids/ossec/ossec-hids_3.7.0.bb
@@ -9,7 +9,7 @@ SRC_URI = "git://github.com/ossec/ossec-hids;branch=master;protocol=https \
            file://0002-Makefile-don-t-set-uid-gid.patch \
            "
 
-SRCREV = "1ecffb1b884607cb12e619f9ab3c04f530801083"
+SRCREV = "bf797c759994015274f3bc31fe2bed278cce67ee"
 
 UPSTREAM_CHECK_COMMITS = "1"
 
-- 
2.25.1


