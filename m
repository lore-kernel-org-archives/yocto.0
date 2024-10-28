Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BE5CD33991
	for <webhook@archiver.kernel.org>; Mon, 28 Oct 2024 14:37:21 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.53272.1730126232783578655
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Oct 2024 07:37:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=QzU/P5Hv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37d447de11dso3194924f8f.1
        for <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 07:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1730126231; x=1730731031; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=DkAWnFMXI0Ol/MF3JhaJ+f7r/k1H5vV6x/rvB9ZrEIg=;
        b=QzU/P5Hv55rDEg+RscPh2lgYlbvJO5uVx059phanFBtPOw7pq0GLGoQwIM/2AEXkqo
         mGR5wktL7Lij6Rv/BEgXL0CyzZKZ/n8xmuSKhfxH7bIwCfTkBWcvexcbGldAkvAysyd8
         nPFkMbcxnQg/b6DM12lMFoUfJySqsuh8PB/ww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730126231; x=1730731031;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DkAWnFMXI0Ol/MF3JhaJ+f7r/k1H5vV6x/rvB9ZrEIg=;
        b=aoXvXuW8dfxDa+edYPy5IgNprLVdmPGzysfcFVIk5dalkoIh0mFC6RJroWvzboBh7+
         obLNaiz43pViEo+XNYUIf3Ivjb+rfXfBgcp+GvaW5bkegbWo5CxVC7/0r765htaIBbIK
         3Pm2E5o06grP4rkage1psT7VvV7V6hkA9ptzJZOcoGG7+JL70fsWdrobfFFbIi/1wb19
         p6qfJxp5+BADylRt3xbTgZJGzd/DA5a8BDxIDEb1YesVEJMXxKN7NSj8163GkVojBVZF
         fX5wpiBpd3EqMHxDmQ4j8+RfiPVBN8Aegv8BKW0JQvTnC06CESNjPHXt4KNZ4s/3/w5v
         af6w==
X-Gm-Message-State: AOJu0YyoHtGjH7FMsfk6U6nY/MWQVc5p+rpDv97/AF54Kj1OtgBMMWA/
	YcuiiYtGBVunVdk2H8ymTvx3C0aOAVzg3xWW57zFkbfeOfR+6g951/dfCE3IeW6X5PBWx4mxAty
	9uuk=
X-Google-Smtp-Source: AGHT+IH/i8eN1dOXzqAqcFZvi4PwuritMNnE0dB3V0rEi0sE3qVyv1f6A6JGehRmkrn/5953WowzPA==
X-Received: by 2002:a05:6000:ec6:b0:37d:324f:d3a9 with SMTP id ffacd0b85a97d-3806110a6c0mr6171589f8f.9.1730126230936;
        Mon, 28 Oct 2024 07:37:10 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:509d:a248:a274:a307])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b929a8sm9735750f8f.103.2024.10.28.07.37.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 07:37:10 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [[styhead] ] config.json: Drop meta-ti, it doesn't support styhead
Date: Mon, 28 Oct 2024 14:37:09 +0000
Message-ID: <20241028143709.125554-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 14:37:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64156

meta-ti doesn't support styhead so stop testing it there.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/config.json b/config.json
index 6881452..97268b9 100644
--- a/config.json
+++ b/config.json
@@ -1908,12 +1908,6 @@
             "branch" : "master",
             "revision" : "HEAD"
         },
-        "meta-ti" : {
-            "url" : "ssh://git@push.yoctoproject.org/meta-ti",
-            "branch" : "master",
-            "revision" : "HEAD",
-            "no-layer-add" : true
-        },
         "meta-security" : {
             "url" : "ssh://git@push.yoctoproject.org/meta-security",
             "branch" : "master",

