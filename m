Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61944C47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 22:21:54 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.7924.1706048507152053684
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jan 2024 14:21:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Va49EbHK;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40e80046264so61159075e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 14:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1706048505; x=1706653305; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=4/k1Lu4Njifu4JXDe7MXzqYuMA+zeiJTwaX5QgLNGKs=;
        b=Va49EbHKt0FLV6os6nqRYBHoadVBpNH+GvmDVHSO/D3sJqcvqATkUF7Egm1MiqpT7T
         mh0duNcEDXM9+hsQIdVmUXs2kY9xBoNb4yFPJTZhJcdbsu2jwKG26fO8PK2lnQLI0DZC
         e53eA0SLAqYuc+T7AmIFuu8JysJSxvetCvMKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706048505; x=1706653305;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4/k1Lu4Njifu4JXDe7MXzqYuMA+zeiJTwaX5QgLNGKs=;
        b=QTBXnyQGQxV7a61UcRFo03m1R1B2E4QDLAUASL9VwDeICP9GTWTR/Brk2eC/J0NFfS
         E9aw8nexmGRl+dMI2TDEnt6cwXk5cD3nMc4l2+IWXGoC7x177tx0bb40nWJtwOWpsYy7
         Ktv+UvdxoIsA0zHDTZXejzQLIC4WFRygWKm8BgqkFHP2dmXXoQ6zvqtxZVK3Yhahqm42
         udNIXmn83cn/hLcLXYGyNY2ASGuVotYjzPaZQ3XKelfIeg1DxCVDhMmA6vUiuRd32yd4
         NPIpst5qbmCKQdScbtsu3uHisBu+DdOBKawWm4foJdtmazCZ8C3mFQaIwjovm7VEoPqO
         K1bw==
X-Gm-Message-State: AOJu0Yzy1Z8Pvj3rYzUS+KtmsBpWiS+GmSJKGsrcGIBM0TM+IZP3iRsY
	Wo0VrJPFMk3DS2Jr3DcdDPrg8wwjhkqkFR18DCFLFQGoKu0ZNqdRwII4mm29ijeYEUASUB6FNE3
	c
X-Google-Smtp-Source: AGHT+IHqyC3y2szOqP3MFfQWFqdiC/njzVj7MgZpspbzOodvOMgiUNEdB8w4we96UmGmig3ghFLwlg==
X-Received: by 2002:a5d:650c:0:b0:337:bed5:66fa with SMTP id x12-20020a5d650c000000b00337bed566famr3260964wru.38.1706048504953;
        Tue, 23 Jan 2024 14:21:44 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:9f8c:6efa:4303:47ea])
        by smtp.gmail.com with ESMTPSA id v27-20020adfa1db000000b0033946c0f9e7sm2190634wrv.17.2024.01.23.14.21.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 14:21:44 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] schedulers: Run toaster tests daily
Date: Tue, 23 Jan 2024 22:21:43 +0000
Message-Id: <20240123222143.660373-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 22:21:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62250

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 schedulers.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/schedulers.py b/schedulers.py
index edd77b51..9ffa88f5 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -509,6 +509,10 @@ schedulers.append(sched.Nightly(name='nightly-meta-oe-mirror-dunfell', propertie
 schedulers.append(sched.Nightly(name='nightly-buildperf', branch='master', properties=parent_default_props('buildperf-debian11'),
                   builderNames=['buildperf-debian11', 'buildperf-alma8'], hour=[3,9,15,21], minute=0))
 
+# Run the toaster tests daily
+schedulers.append(sched.Nightly(name='nightly-toaster', branch='master', properties=parent_default_props('toaster'),
+                  builderNames=['toaster'], hour=[3], minute=0))
+
 # Run the AUH twice a month on 1st and 15th
 schedulers.append(sched.Nightly(name='nightly-auh', branch='master', properties=parent_default_props('auh'),
                   builderNames=['auh'], dayOfMonth=[1, 15], hour=5, minute=0))
-- 
2.40.1


