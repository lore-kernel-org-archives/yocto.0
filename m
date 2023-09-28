Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F704CE7B18
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 09:47:44 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.10010.1695894461933552978
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 02:47:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AqKGF1yp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4060b623e64so40742655e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 02:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695894460; x=1696499260; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=43PVhdKK7juRttMIsxFOxQ1LoFsww8lV27bffel3j8c=;
        b=AqKGF1ypjdCQO5kP2+a0V3x1PNfVSIJYDf1yJMPavXBuzeJ1N+uD8XguNGeuZOR6aL
         MrWLqONSFjB8rwnB8ITTt6JnDUQ0AuWMgpHnbs/Wq5EL2VGZsqzqXg5SIQF5BYHjAN3E
         q8gom3Ytzqix9/i9ZcVFHn/j7U1KWQSHNu+i8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695894460; x=1696499260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=43PVhdKK7juRttMIsxFOxQ1LoFsww8lV27bffel3j8c=;
        b=iP5ESiO5auJd+E4o+Yc/jQoJKVlhHlyu9I0fwPzJQZdmM3Aa3esb5U0t1D4hxvSaxz
         RM8bJVWJalyVsSrnI4+XT2vo2TlKmr0b4N6QhL6ztvRSaWabM6hxByWgQo80YuanhyxO
         iYnrJiYIRNecmCyuEVl/bMdBtXsaIRbpm8c9Dje1ud07BufCT8/LLroD5nwy8QFB4ARB
         5Xu9wv/oCfS+upL65ixytrIdm+xpBUEosrtvxV7oIqn35VB6OPB9p5V2SzZGop7MRZgt
         IJU8GIuHjAE6jN39HYGqHwu+AgzWjuXCmjjpynhKHw4RrRM/rpTZKRHtSDblwbXwy+NY
         PEEg==
X-Gm-Message-State: AOJu0YzlzWz5IBCvVmh0a9uUiiZUZGJ6n3FSYLqGN8dBM7CvVCQpDCHh
	7Q3hpyPzs54ATawuXy9qkaQ2ECP5LItlcMft+Y0=
X-Google-Smtp-Source: AGHT+IHvzLyQFXbgL4vVoxcR905lv2D6+Gyo7IVsUsQ5gzJflaLR7M8E69F+tvhd1b7AE0h629JKtQ==
X-Received: by 2002:a05:600c:3509:b0:405:3622:382c with SMTP id h9-20020a05600c350900b004053622382cmr802999wmq.17.1695894459730;
        Thu, 28 Sep 2023 02:47:39 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:259f:7d13:e5a1:bb93])
        by smtp.gmail.com with ESMTPSA id o5-20020a05600c378500b004064ac107cfsm2039591wmr.39.2023.09.28.02.47.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 02:47:39 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH 2/4] config.py: Add mickledore prev_release documentation on workers
Date: Thu, 28 Sep 2023 10:47:35 +0100
Message-Id: <20230928094737.2373931-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928094737.2373931-1-richard.purdie@linuxfoundation.org>
References: <20230928094737.2373931-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 09:47:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61150

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.py b/config.py
index 68c690cc..cc44ec3d 100644
--- a/config.py
+++ b/config.py
@@ -160,6 +160,7 @@ all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 
 # Worker filtering for older releases
 workers_prev_releases = {
+    "mickledore" : ("alma8", "alma9", "debian10", "debian11", "fedora35", "fedora36", "fedora37", "fedora38", "opensuse153", "opensuse154", "ubuntu1804", "ubuntu2004","ubuntu2204", "perf-"),
     "langdale" : ("alma8", "alma9", "debian10", "debian11", "fedora35", "fedora36", "opensuse153", "opensuse154", "ubuntu1804", "ubuntu2004","ubuntu2204", "perf-"),
     "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "fedora37", "fedora38", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
-- 
2.39.2


