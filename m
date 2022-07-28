Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CF71C19F2C
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:18:09 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
 [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web09.1558.1659046685916673372
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:18:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=f8XLE61T;
 spf=pass (domain: gmail.com, ip: 209.85.215.178,
 mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id s206so2603027pgs.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=lPqkvTuD3cOoxYawMY3rZThuOXTg6jPOZKgPP8dhVJE=;
        b=f8XLE61T0g8aa/TgKSCGIFOURitfCxvckPatFQPbn4DeIFGWyXeRnwSYdwYUkDWtZa
         XrMTWA9nRgTvBdG6cUH7yx4//fPLFGGTIyBOI7lFI+TpajEP8SVMLcW6G4i9ZOEiAqKR
         3ZeE/zo/yqchGRhfqDc8QkS1EQRJiBPZ5SlEVG1Dfsj1bpc4GXmTP3y+c9qogK9IRP3c
         5v8sI2sn60s+MVZzEFLxQpQn76y5/P/sO86Xe6pskWmQJJP2se6E8mnQRTX9KhqjZBDA
         08xUCj46Uc+2rGhGu5XUazWs+JccGmc3aCflTSe5ofo9kNr0ylPuuXOSIkT72QHjo1AO
         Ym2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lPqkvTuD3cOoxYawMY3rZThuOXTg6jPOZKgPP8dhVJE=;
        b=j0o/JnGmxdMCAmDkX078qsWCH0aWUHoL7pYkRnekeFOSjVLhjD2f+ztHloCX4ArtLR
         TARbjPhk8s0YyWHXHFVT5fVMyHGSOfbmhxZzjFS+i5ci2QAQuI/5VQ07KmNOTdcOZAbE
         3PxqKjBRZ5UkcpU3JUIjjb0wzfN9RjQZglN1tRdbm9dzyZLdDXK7GwVmda0jQ2f0bxQN
         2i0ET5Lgw5GOYP1Fv0kSCGLEdBAe5S5Ptnu3Ij2rGJsUq/rCiq+R2hvGyjKdE7JzF/zU
         JlFSA3M15EDWAtLUopShoEOARgb/qHH9m9RMo6+uzYIcj9esD9NnsZhEo/pM7R0FtjBv
         kqkQ==
X-Gm-Message-State: AJIora8/qLX5XwFNqUM4ftIbt6YWg8S1xebOUnsVJ7cIxHwE/dmhGc3m
	eRZ/t6ltPJNYGkr2vw4SEWE/bdDnMGw=
X-Google-Smtp-Source: 
 AGRyM1t90jfmAeEg8IcvmeOMProogzIa8Ysoj8fsPbAqNO3GZ9YzWZQKnumVEG/FjDnY20vvW0bZrA==
X-Received: by 2002:a63:8a42:0:b0:419:d6bf:394b with SMTP id
 y63-20020a638a42000000b00419d6bf394bmr622949pgd.201.1659046684952;
        Thu, 28 Jul 2022 15:18:04 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b0016d22e6ed57sm1829090plg.293.2022.07.28.15.18.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:18:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 9/9] tpm2-tcti-uefi: Add UPSTREAM_CHECK_URI
Date: Thu, 28 Jul 2022 15:17:51 -0700
Message-Id: <20220728221751.48428-9-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728221751.48428-1-akuster808@gmail.com>
References: <20220728221751.48428-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:18:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57677

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
index 2bf1eed..9c60e2b 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tcti-uefi/tpm2-tcti-uefi_0.9.9.bb
@@ -12,6 +12,8 @@ SRC_URI = "git://github.com/tpm2-software/tpm2-tcti-uefi.git;branch=master;proto
 
 SRCREV = "0241b08f069f0fdb3612f5c1b938144dbe9be811"
 
+UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
+
 S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig
-- 
2.25.1


