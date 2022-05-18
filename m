Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13DFBC433F5
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 20:48:13 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
 [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web08.1797.1652906888301637662
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 13:48:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RfPz5P0i;
 spf=pass (domain: gmail.com, ip: 209.85.210.176,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f176.google.com with SMTP id v11so3213732pff.6
        for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 13:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IgeIj6aZdAIHiFeVmMg+rg9t1O5hzKBitqCb7vCA0ig=;
        b=RfPz5P0i1Fnf5FuIZetLaCyaFubfN0l7LgguE32tBhYvmk6BIERAglf2+h5jhzLR4Z
         DwxQlwBntvNG72M3MGkXRG5BbzNnJGyGoM7xEsiws7dFMCduyBQb28nx8kU73lH9WAcV
         pJRzc87ec2wGszgiqxzp/N1P//7eJR66sqruQUgdJuk7xvTzbU2lZDUQIn8YYZleEJM9
         albNOWF99rD8mMyekWOf3p1DhwOQV+lv5w5ZV+gyl4WF/A6stI0+e+SbU6AnWnyPNkN7
         zB8QO0r6P9QZRv+e0OihLh6awUZZwxlLLvpf0ik1X5wHydMfTr+rS8jIx09OGy2UjS3h
         +QtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IgeIj6aZdAIHiFeVmMg+rg9t1O5hzKBitqCb7vCA0ig=;
        b=JTsKNSjHr0x9fQ4ziSeg6IF8gbUwbmmPupdTZPZE/wG7L4g/5Yj32erfbETybRJGeg
         RB0+ljDeyM7RBIi0CDaerpMLWluwztj9U2VxJ/BBaY4vqw5HsWKbbS7OpyENA+XxbaSG
         zxOFwAFDDFtvrwD0FJTYjruUbj0rSTbji7Sf8mJEU9v/7PI8dEZ8QJ3TAZrbiotCD3Bs
         KF4/edSOfYGTNGRxFi+sdKtZOhcAvGk3rO/4StMKK3t0lbCmeqAcIo1uIfNNo4jg5OgW
         urwztUDUG9HtqqgF2DLqKm6WpdMNTX3DIW1bm9arJfN+pnDbd5nUXezObc2K/3EXWDi0
         395Q==
X-Gm-Message-State: AOAM532d8JwQSE8zYFWOTQ+PapVE/VKJeva3Y2BvyeUFAM2nXNAOzsXd
	SqWB0mwTMxFLMyt3oLYXBZzSQs5DtCh52g==
X-Google-Smtp-Source: 
 ABdhPJx/jcKyQd+iP2sYBGVaAmUEU14lCZtilML7I2EDW3AxBRFNKIcvK2g64OSWF+8/L2XLSFGI0w==
X-Received: by 2002:a65:4685:0:b0:3da:eb4e:61ed with SMTP id
 h5-20020a654685000000b003daeb4e61edmr1007527pgr.591.1652906887444;
        Wed, 18 May 2022 13:48:07 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:fee:4904:d15c:6dba])
        by smtp.gmail.com with ESMTPSA id
 p62-20020a62d041000000b0050dc762814dsm2415565pfg.39.2022.05.18.13.48.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 May 2022 13:48:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] ossec-hids: update to 3.7.0
Date: Wed, 18 May 2022 13:48:03 -0700
Message-Id: <20220518204804.2840071-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220518204804.2840071-1-akuster808@gmail.com>
References: <20220518204804.2840071-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 20:48:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57134

See https://github.com/ossec/ossec-hids/releases/tag/3.7.0

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/ossec/{ossec-hids_3.6.0.bb => ossec-hids_3.7.0.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-ids/ossec/{ossec-hids_3.6.0.bb => ossec-hids_3.7.0.bb} (98%)

diff --git a/recipes-ids/ossec/ossec-hids_3.6.0.bb b/recipes-ids/ossec/ossec-hids_3.7.0.bb
similarity index 98%
rename from recipes-ids/ossec/ossec-hids_3.6.0.bb
rename to recipes-ids/ossec/ossec-hids_3.7.0.bb
index b0759b1..c211f03 100644
--- a/recipes-ids/ossec/ossec-hids_3.6.0.bb
+++ b/recipes-ids/ossec/ossec-hids_3.7.0.bb
@@ -9,7 +9,7 @@ SRC_URI = "git://github.com/ossec/ossec-hids;branch=master;protocol=https \
            file://0002-Makefile-don-t-set-uid-gid.patch \
            "
 
-SRCREV = "1303c78e2c67d7acee0508cb00c3bc63baaa27c2"
+SRCREV = "1ecffb1b884607cb12e619f9ab3c04f530801083"
 
 UPSTREAM_CHECK_COMMITS = "1"
 
-- 
2.25.1


