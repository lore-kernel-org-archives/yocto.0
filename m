Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24827C5478C
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 15:20:20 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web11.101407.1709565618225811551
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 07:20:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=0bSONVdQ;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.182, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-5e4b775e1d6so1226412a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 07:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1709565617; x=1710170417; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qXvOkyDONxGQt7AntlFY4A7dOXumaT6NSM5gFflDSEQ=;
        b=0bSONVdQKsRj25w7HHuUKhN02G4nXtk6D/+L+YoOC7YjOfddyQZmUTWFqmeu9xnXTo
         Ek2rRC0/acdKPb/vMQ1/AUxPoXeIIcJEldGzC80q+103krWoTcOnrIi9DhvyN24bDURy
         dNbiGZCNkK+Q+myFt4/n+THvuHxvK+XVWp/nyPVfQpFzRhThbcvNDIPWjZWQp8rKRoYa
         Jms66fhxX2DPoIIlvK3u0aX0Wmpptt/xDHmhXEgTLYHkAgWCt1KJF4PdHr4Qyk6WYCKB
         AaYsROnkOXzTUUnFXsbgtoFJ30LoqCoH60UtsrYiRCCu6gTJDU+rqZYSqxwawx6VUeNg
         OPPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709565617; x=1710170417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qXvOkyDONxGQt7AntlFY4A7dOXumaT6NSM5gFflDSEQ=;
        b=oXukUpn/81Sr5B1FnZ9e2ip1S1t1qdb7L4se+4Z4olE84sQ4vd70oqYVjnoAZ+3kWz
         QHFmbjfR7cuG73fZj7WcDeIWgUCz0afHyZZfFk1erta6R55p8pOO/5xotsTccAW922lR
         sJ2/ZErY7qkI2lu265YSHMchoozAdSi6IBclSANqHKmqihzb1jdmRJnEMuCrro/BeElu
         rGWi01ni8oXZQ2WL68J14vuNMF09wjKje2JedvpaOheVxOOVZYs8fJnoc07BShWdhMTM
         dDMGjjf/O2shEBkTGBOZLGuXmebZh1Ncx1YC5sD0DOtHWeKHk7gFGF3+QYSGsoz7PoF6
         dhLA==
X-Gm-Message-State: AOJu0YyrRXnxR+kGVmgFb3aNCzk/mlnjraFre+o1j0Jg41rLSot23Axi
	mrA0+MYrq+M1943NLTknUF6GmBq3sdCXZurR5r0YTnAVpxQJBSvb2XMUlKpx8BnFAGTskBsg7Rl
	nydc=
X-Google-Smtp-Source: AGHT+IGHD0cC46ahpmhkbrGz/GjLnsrZV/fmOPRFCeFoqX4SEdAKk9OZLpIgUK22JOp0Z+4C5FgqVw==
X-Received: by 2002:a17:90a:6b08:b0:29b:52ec:ec0c with SMTP id v8-20020a17090a6b0800b0029b52ecec0cmr2918634pjj.0.1709565617569;
        Mon, 04 Mar 2024 07:20:17 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-234-108-41.hawaiiantel.net. [72.234.108.41])
        by smtp.gmail.com with ESMTPSA id h16-20020a17090a051000b0029932d64c2bsm8868360pjh.17.2024.03.04.07.20.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 07:20:17 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone 2/2] config.json: use buildtools for Ubuntu 18.04 (both x86 and arm)
Date: Mon,  4 Mar 2024 05:20:06 -1000
Message-Id: <3cb51123bbf1eb436fc26ef95f9683c81cac8ee1.1709565401.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1709565401.git.steve@sakoman.com>
References: <cover.1709565401.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 15:20:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62668

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/config.json b/config.json
index 4b7ee34..60fe6a4 100644
--- a/config.json
+++ b/config.json
@@ -11,6 +11,7 @@
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
     "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.3.sh",
+    "BUILDTOOLS_ARM_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-4.3/buildtools/aarch64-buildtools-extended-nativesdk-standalone-4.3.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
@@ -1311,6 +1312,8 @@
         "debian9*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
         "ubuntu1604*" : "${BUILDTOOLS_URL}",
+        "ubuntu1804-ty-*" : "${BUILDTOOLS_URL}",
+        "ubuntu1804-arm-*" : "${BUILDTOOLS_ARM_URL}",
         "alma8*"       : "${BUILDTOOLS_URL}",
         "stream8*"     : "${BUILDTOOLS_URL}",
         "opensuse153*" : "${BUILDTOOLS_URL}",
-- 
2.34.1


