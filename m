Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F706C433F5
	for <webhook@archiver.kernel.org>; Wed,  2 Mar 2022 18:47:16 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.1385.1646246830219245290
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Mar 2022 10:47:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=X9evPWBR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id d3so4272931wrf.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 02 Mar 2022 10:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=vdjVa66Y+1nm3y4cS5Y2bxDc01+UHU7DIMETX9/8QTY=;
        b=X9evPWBRD8jH/AWJhhLMDCOO4FfhxP0zXoT+hduHrAzTrc7vu7UdNzUGFjTsz7ZeOD
         zkgp+q+0K4y88R/+qVmgMOspg+aKIL2SsCgHNyAiCl/6vtFJBjfAS8SAn5tymDLzNqtj
         a2tgfppS+huSGz4K6bMdWtJ4rX0Z7p4lOmWXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vdjVa66Y+1nm3y4cS5Y2bxDc01+UHU7DIMETX9/8QTY=;
        b=ZDwIaXDvtSpGGvY+GOkXIONDsiAeU/zDrQWd1b460nCxQqfJzLBgwXWfmP4tOUlEw1
         Wr2grBscABsESzoXb8YyCjMoiptmKqspi4zWb73rl7DE+yhSbH2z04dpx6KQLEr24BRf
         TRPmz49JvFNQgmmYx3TVkhKsCSUVwV85Rxps6zWz38xZsx9i9lzfBlM0/aWzplGD5W7F
         fjb+VdR3OLpIEVOtBtCxMXADteeCkQ9je7RqXOlGpxCynJDBqDy1iOl1AJsefkRFSU80
         yi6xCGz09XHqnqGxoyU0VNIXEHp4mZS3SwIoJgDlY8q5K9pkWfW+GZID57/E70uwv7v8
         Zr4A==
X-Gm-Message-State: AOAM533tdwFo7XKhH+r4mUVrGkyi9fKdXLN3DnWVoG5FWXyaFKqKoxHa
	wyURf/8A1x8APLrvHwiUbygvWvYj/5c5GtqE
X-Google-Smtp-Source: 
 ABdhPJxcpiwS0ntV+aFbxz9GwcJlNmDBgDmQfJCyymnVPVg3Arxlp5oiSjXNEu/Fe3uLegP9Zq7IRA==
X-Received: by 2002:adf:eb45:0:b0:1ef:6070:7641 with SMTP id
 u5-20020adfeb45000000b001ef60707641mr21106650wrn.301.1646246828567;
        Wed, 02 Mar 2022 10:47:08 -0800 (PST)
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:8c1b:f0a1:b483:4e17])
        by smtp.gmail.com with ESMTPSA id
 a12-20020a056000100c00b001f035b91ad1sm2313820wrx.37.2022.03.02.10.47.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 10:47:08 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 2/2] disable-gpl3: Update wildcard to new syntax
Date: Wed,  2 Mar 2022 18:47:06 +0000
Message-Id: <20220302184706.298311-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220302184706.298311-1-richard.purdie@linuxfoundation.org>
References: <20220302184706.298311-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Mar 2022 18:47:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56351

INCOMPATIBLE_LICENSE wildcard handling changed in master-next, update
to match.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/distro/include/disable-gplv3.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
index 27cdba2..e8301ce 100644
--- a/conf/distro/include/disable-gplv3.inc
+++ b/conf/distro/include/disable-gplv3.inc
@@ -1,4 +1,4 @@
-INCOMPATIBLE_LICENSE = '*GPLv3*'
+INCOMPATIBLE_LICENSE = 'LGPL-3.0* GPL-3.0*'
 WARN_QA:remove = 'incompatible-license'
 RDEPENDS:${PN}-ptest:remove:pn-glib-2.0 = "python3-dbusmock"
 DISTRO_FEATURES:remove = "ptest"
-- 
2.32.0


