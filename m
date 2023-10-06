Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72853E94111
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 19:59:48 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.4027.1696622381001580756
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 12:59:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eR2k4lS5;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-578a62c088cso2861251a12.1
        for <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 12:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696622380; x=1697227180; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zqrY91zyol23lf0efYV/k8+44ugIJ/z3hXNKOkJKKB8=;
        b=eR2k4lS5qzAqDUdmoIK5Q79vlUab4VpHkETX+W/HZ+rwAcZ8mayeYK3xlOUSWtWEgN
         i3xR5e5W63JOKQS7USQCoWWw+IJqJINYkB+OC81hm4VLGziwGBd9wbZ6f2qrzfSGm3Om
         ielhOZ4gBu8QyhBS1JuWLiYSsNp3hL1ihX2c1XTujo/ygl+7o3diqr1hWtwgGRO+YQB1
         D8vDcEboi5qOMcN4AEVon9ck/7t9cxbJSWxb4War//FIN1l2CTMFZ4og2DTAJBOQL7wI
         ZsZfClEuqy89qbw888DpoSSQj4Pmg5uHAsHAwE7/G0Js4uH4lhVJ5iLkMkrU5Ym6uqcl
         BTMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696622380; x=1697227180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zqrY91zyol23lf0efYV/k8+44ugIJ/z3hXNKOkJKKB8=;
        b=JKmQJ+hLnytLoKksIQ60VrIkt5wp9OAtTkRG24xSx3El0/ontobPrMfYF7sLdgdM5I
         ZV9BL+o7A37TInJnoV2hTZxn85z7HSCzHnCCdjK14OvVwF3oZM6lCB6rx9EXzIWanUrG
         UHL68pYtEujZIq49jdp+8brX9NoCmLNF5a1IffI/tSB7k6nIvlaGVT0zTazpdAiJCRgp
         +YHvqDOBuKYwu4iuHO1cPqFqf87vov5lt5+ETRvVBjuXSR/asWFio8pgr+XyzBnM6izI
         72drglxhSVRVPYJSYW0x2tN/0ZzgyIS8pnQZdkXnItpcpwkHOexVHXiD9VgnmCnEoRz2
         wMjQ==
X-Gm-Message-State: AOJu0Yx73CtSSa+OyFJoNf4Ffm3knqnS3ZCyZaohHSidj3A1nQMSUL1t
	yitNRXbDobEmuTRkzFtfLg2/ucVaU4M=
X-Google-Smtp-Source: AGHT+IFfGH9IA71JBss2nbLYWhaEP5mbh7ZtWi2TSQSwLBendiz5blVFzkWSHSOL4SL3sYOB7vweYQ==
X-Received: by 2002:a17:90a:dd43:b0:273:83ac:5eb9 with SMTP id u3-20020a17090add4300b0027383ac5eb9mr8039726pjv.4.1696622380183;
        Fri, 06 Oct 2023 12:59:40 -0700 (PDT)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:4ca0:e9cf:d643:bafd])
        by smtp.gmail.com with ESMTPSA id 6-20020a17090a1a0600b00263dfe9b972sm6420971pjk.0.2023.10.06.12.59.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 12:59:39 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web 09/10] password_validation.py: fix deprecated ugettext
Date: Fri,  6 Oct 2023 12:59:12 -0700
Message-Id: <7dcdd0e2a118a97d577aeead40a73a2a8f21fdfc.1696621423.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696621423.git.tim.orling@konsulko.com>
References: <cover.1696621423.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Oct 2023 19:59:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61273

Use django.utils.translation.gettext instead

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 password_validation.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/password_validation.py b/password_validation.py
index 6e15b40..5702a79 100644
--- a/password_validation.py
+++ b/password_validation.py
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: MIT
 
 from django.core.exceptions import ValidationError
-from django.utils.translation import ugettext as _
+from django.utils.translation import gettext as _
 
 import re
 
-- 
2.34.1


