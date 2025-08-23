Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E636ACA0EFA
	for <webhook@archiver.kernel.org>; Sat, 23 Aug 2025 19:14:25 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.3148.1755975922285584582
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Aug 2025 12:05:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@underview.tech header.s=google header.b=ZoAc1qOJ;
 spf=pass (domain: underview.tech, ip: 209.85.160.175, mailfrom: vince@underview.tech)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4b297962b20so29547531cf.2
        for <yocto@lists.yoctoproject.org>; Sat, 23 Aug 2025 12:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=underview.tech; s=google; t=1755975921; x=1756580721; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oJvJvesU3+EVRnT5NshwQiqeZ8+Y26frPXmDXW2Xsr4=;
        b=ZoAc1qOJiYahgVM2BF/wr0cCY6I/rb0ui/Sn+M9qimp5loUPs8TjwT3gtDDDp/P/5n
         LZbfPn01qnvRgnEAUw1kBN0/F89sqd3eLE+SZjHwJuv49c/nCyc/LliCvNACZNuYHnjg
         ANLQG4tvfyACQid4i+xgL37ay/bzYRngtr1aAwmEC9038UiFsv02yDrKUi0GQ/qVfiyR
         iMgLDkPNRmzOuq0CbXkdmxBBqubBAAaGmZNvQqXWgrUa9J/FSlwLdruhrXzVCUfll8PZ
         chWCfZGI4L+lx0aydsdDV4aYqeLrYQ2tL+Zgip2SDs3/Q7P5p/KsIdfuxgOsUgyNs8Qu
         1I4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755975921; x=1756580721;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oJvJvesU3+EVRnT5NshwQiqeZ8+Y26frPXmDXW2Xsr4=;
        b=B2k1DHKkvJ/U3a/kPutC+NU41eJ/AbZ//CDV+nqQdocjpem/qYitYi6HAw75pkvbt/
         aB266KcTYwuzJNDmN9D+KWB7WkL/poYl3aoq/NZK6ddXX/j6AxIkQNtlu0ZR+CuNOhTO
         peAA9hfG/1SA6w1YCzvs3wrSiWnxcllg8etOgQ+3dM9K4jrvZxoGDo0L+1DcmFf5B3JE
         JLpcRyJDloT0R87fS4wBrrot7Q8ZPkUbyZqw6+6NTBgCYAKqEn5tqSEKBznc6XB+bmkX
         gJw1ogZIW5iV/UTameeS410LaFNAiyzFqYfPmRO9x6IAYupp7/99M0mPVkB340N7Vu7w
         DFhA==
X-Gm-Message-State: AOJu0YwMxswvBIS7scGRZyCtgjIL+61qM6pqgDER/Vh+m1eYDmqczIFD
	zqlSElD6Ml1X6B46Q1jOZxnh+bKC0Fvzgk0LbX/elarF4LzRdA8ekemS5/fT2xXn8cADi0rzTLS
	70Y4X
X-Gm-Gg: ASbGncuVp/84ejWjVIT3QW0XpItswM/vvQLpLkuvWopuY1gthzjBRWWH6u7gro4xHu3
	1U844xcB0rg45KgVxh039tvH9PivgYDqJqkTGQpCl+hYGlOJ2SLBjKUY1nXN0oplscHGz63l6hq
	DNycDroDeuek9h/YHr8v4F5xmT7tJgg6JjoG2AHoTXPbcthKPByXPnXskbXR6/sRDs4hT3MjN4T
	X4zrUItWyfqMwk0KxYYO34m7JhW51CnaoKG6z2csudUaq5tINPSCW22RSOU36Wjbiq5025J8ZRO
	lZuqxYcJ57HdPxA0ayYXV5ZgZZTPuoQhM9SqayPxgQxh3bweoMYn8qHqpprjKD0nDoE/ZQKRW5q
	SpvlDlfHuBFQ=
X-Google-Smtp-Source: AGHT+IFPBSQ8Ec0ACRo+fb0sl2gBMdofZRTMFCm2dKqHUkRApVR6mMTa7PSMySX9xdauTrc+t2Fn+w==
X-Received: by 2002:a05:622a:1a29:b0:4b2:8ac5:2581 with SMTP id d75a77b69052e-4b2aab767cbmr87945701cf.72.1755975920694;
        Sat, 23 Aug 2025 12:05:20 -0700 (PDT)
Received: from vince-server.. ([2601:406:4d01:1820::6d26])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7ec2f1cfd61sm166570585a.38.2025.08.23.12.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Aug 2025 12:05:20 -0700 (PDT)
From: "Vincent Davis Jr" <vince@underview.tech>
To: yocto@lists.yoctoproject.org
Cc: Vincent Davis Jr <vince@underview.tech>
Subject: [meta-selinux][PATCH 1/2] libselinux-python: fix No module named pip
Date: Sat, 23 Aug 2025 15:05:06 -0400
Message-ID: <20250823190507.195486-1-vince@underview.tech>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Aug 2025 19:14:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65785

When running the do install task run
into No modules named pip.

Add python3-pip-native to DEPENDS
so that pip it available.

Signed-off-by: Vincent Davis Jr <vince@underview.tech>
---
 recipes-security/selinux/libselinux-python_3.9.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux-python_3.9.bb b/recipes-security/selinux/libselinux-python_3.9.bb
index 8431ca1..a4de036 100644
--- a/recipes-security/selinux/libselinux-python_3.9.bb
+++ b/recipes-security/selinux/libselinux-python_3.9.bb
@@ -19,7 +19,7 @@ SRC_URI += "\
 
 S = "${UNPACKDIR}/${BP}/libselinux"
 
-DEPENDS = "libsepol libpcre2 swig-native python3-setuptools-scm-native"
+DEPENDS = "libsepol libpcre2 swig-native python3-setuptools-scm-native python3-pip-native"
 DEPENDS:append:libc-musl = " fts"
 
 RDEPENDS:${PN} = "libselinux python3-core python3-shell"
-- 
2.43.0


