Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7ABCECCA483
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 19:13:10 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web08.229.1657825981758717234
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bn8t8UTI;
 spf=pass (domain: gmail.com, ip: 209.85.222.172,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id 20so1955714qky.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 12:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EPbICpEVqCVTBiuj5T9+2fIzNY68mhXqZTeY5gNBhR0=;
        b=Bn8t8UTIGe6JTzhQDUEGeAWnLD9CUIDsCZz8QGHuXM08/+bJqt9OWwgC50PpIUwaRG
         OJpqKAasfGhDKFMgdaRNTSdsgn6fwQ9hxrAZ0eCDilvbwnyQH2GHl58ChvdoSQcUyzK9
         EXU88GYmp1H0S+wW0NjF8SNHHoTEW1fTPB9lGt6PZ+YMbir34zlMKY+4E1UjDxO053wI
         tk9C4qn7Ibs1hP3TPcrLobjrYaUYMD8WgLnRkX2kd+JZEwllo8yUYm7RzAW9l5HxXhXL
         Zr++hynN8aifnbL74mR/bcZdaj4SVlAfFbHTqyVYARgTmCsnL8sAph8CRx9KC1xBf0sX
         VIbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EPbICpEVqCVTBiuj5T9+2fIzNY68mhXqZTeY5gNBhR0=;
        b=4K7JMWZANlf+3g5qrbT5KMwq0JtoQUXNdsdyOgE9O9NCsJuy7NG+Q6D/kLUNK5Rxaa
         Hr/tkQI6L4R5Fi53Cf/lVD92o2jqeId9aaUG5WVwcaoBBHHZvwaARxqNqB4SWiWQntgo
         B8nMGoNB6+vKdjY0DoR39+lD9HeR6XpWfoe8RHBvqtV8o31OLQ96oJS5qP5zsktIeTXt
         bCfoIyjZi0LAPtz1VIcQ88mGDMoHtuNFw5MpG5dboLdG6Ho/IRi9P9zJ3W20UGdAvTLY
         FVMnsHKrWkbARmMkJvBSwnBpPzloCcH0wr1DDzNqmg4r0JPG+zYyEMR4opa+/7XHrhUr
         jwVA==
X-Gm-Message-State: AJIora9OILvh9LPhSsi2GvvRNNlamxvrGnM6I/oteDb+m/tDa0E/0Bhq
	bjKHLc3iTw1nolmCuTg8rzv10SOfsJSaJA==
X-Google-Smtp-Source: 
 AGRyM1urWr3obrev86tG3+4ZUJWJlOq5yGeZ1ZHSGhDMCQz3pa1f7I8NBPszIXizMQbch0lVS+a76g==
X-Received: by 2002:a05:620a:4149:b0:6b5:8ce9:fbb8 with SMTP id
 k9-20020a05620a414900b006b58ce9fbb8mr7190650qko.75.1657825980777;
        Thu, 14 Jul 2022 12:13:00 -0700 (PDT)
Received: from build.lan ([173.34.88.218])
        by smtp.gmail.com with ESMTPSA id
 x9-20020a05620a448900b006b59f4f66d6sm1778039qkp.112.2022.07.14.12.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 12:12:59 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 03/10] yocto-bsps/5.10: fix buildpaths issue with
 gen-mach-types
Date: Thu, 14 Jul 2022 15:12:46 -0400
Message-Id: 
 <73d79320adbd9eb106a73ade6866b62b379f9687.1657825809.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1657825809.git.bruce.ashfield@gmail.com>
References: <cover.1657825809.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 19:13:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57540

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.10:

    80f5207b5abd tools: use basename to identify file in gen-mach-types

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 975d6c6565..bfb36e173a 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,10 +7,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:genericx86-64 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:edgerouter ?= "58eb61187e8c78dc0241b2b85cb7d2c958f0e1fd"
-SRCREV_machine:beaglebone-yocto ?= "aab4d3436476d643c68ac2efccb887a4386a35bb"
+SRCREV_machine:genericx86 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:genericx86-64 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:edgerouter ?= "43a7a15cfe433584b6065c2492b2a7f9be7954c5"
+SRCREV_machine:beaglebone-yocto ?= "3651cd48f159c3b2a3a60d645baccc9d34baed54"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-- 
2.19.1


