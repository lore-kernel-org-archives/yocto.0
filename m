Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7BFC25B48
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 11:03:28 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.145158.1698145405184932568
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 04:03:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cOOPFaS1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-307d58b3efbso2938457f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 04:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698145403; x=1698750203; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XaQjpsVxmYPGJWZy2lDTsmqZKTD05IBMuPwPoOj+JYM=;
        b=cOOPFaS1dgD0L4JeFTTlZAEEH+V/eW+NeoVakWLoKXzm/sq+5+VLCkv09IpuFDU6El
         w0tfgVoCRQ63sd3ZjXVR3C38BYNXHPhEht0uiRMRSr+DyYDgGTbSFmmPbeQg/CgjCH55
         yn890PtlOjPZF2nDQsn2O8VrR+GTmYGIfRg7M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698145403; x=1698750203;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XaQjpsVxmYPGJWZy2lDTsmqZKTD05IBMuPwPoOj+JYM=;
        b=L02JVmySTNt+XNZlwm9rx5D9MN7LMnH559JYVtxb813x/yJP9buz8Tnd2TEGGj/pyc
         r5XoJ7k247INiUVeyfDNW5PH5/aNcq86fHwp+RMRStDdDkZr25OvW5eF02bX4Rg31agX
         05yA8qu9NBRgwJH5w4IJ5dHh4WhLg71cmSTbT3um5cy/1lION6M2neQ0cQFVsn3Al2na
         jacvnrKmOkWKp+lxkdl+VUwp6mLTr4MJ9apmlDhBqQ7a+trJvPy7ncARiYZ2n29HTSGd
         tnFg7P6CKnpsZ7h6o+fRBcBxnQyxnPujj6voqH7LGSnqh6Cr+wdatxuOmhivR5YnH9Yv
         /BrQ==
X-Gm-Message-State: AOJu0Yzezz3eR/b67t5E7itu7cwf+zd+Btyogq+bOOipl4Ap+fRRx8IN
	N2/Bjib2J5rX0+XzQCG3BEWkFDvZQJX3CCHhBJI=
X-Google-Smtp-Source: AGHT+IHQvlCWGGqnBxUAFowDhq+kV6Xa6ZtwJ88nRufeh1wR5aowyZiKO2lQrB+CjjlPFT4zRV5brw==
X-Received: by 2002:adf:da4e:0:b0:32d:9787:53b6 with SMTP id r14-20020adfda4e000000b0032d978753b6mr8981591wrl.44.1698145403352;
        Tue, 24 Oct 2023 04:03:23 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:18d6:7c14:536c:fd67])
        by smtp.gmail.com with ESMTPSA id n11-20020adffe0b000000b0032dbf26e7aesm9640323wrr.65.2023.10.24.04.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 04:03:23 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: David Pierret <david.pierret@smile.fr>
Subject: [yocto-autobuilder-helper] [PATCH] config.json: Make meta-oe source mirror config wider coverage
Date: Tue, 24 Oct 2023 12:03:22 +0100
Message-Id: <20231024110322.1239362-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 11:03:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61464

Some recipes depend on DISTRO_FEATURES, commercial licensing or compiler
config like fortran. Set these things so that we get wider soruce mirror
coverage and fewer warnings.

'commercial' license usage is ok here since we're not building and then
shipping any binaries or using it, only mirroring the source code.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/config.json b/config.json
index 0c35632..61cf374 100644
--- a/config.json
+++ b/config.json
@@ -1451,6 +1451,12 @@
                 "${BUILDDIR}/../meta-openembedded/meta-initramfs",
                 "${BUILDDIR}/../meta-openembedded/meta-webserver"
             ],
+            "extravars" : [
+                "LICENSE_FLAGS_ACCEPTED = 'commercial'",
+                "DISTRO_FEATURES:append = ' pam systemd usrmerge'",
+                "FORTRAN:forcevariable = ',fortran'",
+                "RUNTIMETARGET:append:pn-gcc-runtime = ' libquadmath'"
+            ],
             "step1" : {
                 "shortname" : "Sources pre-fetching",
                 "BBTARGETS" : "universe -c fetch -k",
-- 
2.39.2


