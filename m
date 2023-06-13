Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 706CDEB64DA
	for <webhook@archiver.kernel.org>; Tue, 13 Jun 2023 19:13:01 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web11.30.1686683573672980447
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jun 2023 12:12:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=fBnjFoMk;
 spf=pass (domain: gmail.com, ip: 209.85.128.180, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-56d1ca11031so33764067b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 12:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686683572; x=1689275572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a8haHwxEf5iEHWx3s83vRtuuv3Pp10VLf51a+x4KE6Y=;
        b=fBnjFoMkU9giHRo73MhClRkebOge6nCd4foeuADlXQjAGw/IxBygii21JCn5Nn96QR
         ZVwDWDwCJ9F7EQshelPfL9+Mxyp5wgOoc2YYeCGUkfse+nAak3ic2E8rlymQitDpcyD1
         /XxzZNT291AKaqqvvHhvo2d0Mlmrb9+Uw9IhJ20sA5N9DSI90jknynHGeqjaldfTztu5
         vIaasKRtVsR0RHRzIZuGuO1shnsTl8eFwY8+gmXdYQWP5TP9aFxX8CvAyWKNt6DfPFs8
         iF0nvi1xEQQLjtA43zsz671fEFSytKgzHE6WaH87RqLMQupdcuqQvkbqnyuSlHEbvt7c
         bejw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683572; x=1689275572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a8haHwxEf5iEHWx3s83vRtuuv3Pp10VLf51a+x4KE6Y=;
        b=OLbzHPrE3eIZIX3Pm8pwwEGPcs5OX+EzKDPvz+QPIlLz8GzlccL8qhMmUXM00ewIuG
         ijj5b/t3lTGmz5Q89uATt2WJYWpfKsVMUIZM4Vi8dSEAf6AAJp3UV6bLyaTEFlh8fxhs
         WIHDRBqtO4glGO3V4EyFgsbxE+6OcX3fbN3FdjDNSRIMT00jDahW45pszNQZWYdoPenh
         e16Ni+fSR/wPKhEHmlnbYAK5MSaU4a4UKKy76nKpqzJtstzFeSNloXivNirSWrOafsm5
         IF1O+3ejL7Y1SF4zUKusUQFBSixL9u+UoYkuGLY7LBgw9lhpjiQZrhZGzT4x7xCDY0RA
         bDEQ==
X-Gm-Message-State: AC+VfDznAKj/8ozxm0Fqax4XvAhn17KrVGYZWvnPGwuhk/V1wtw1+yx7
	uDOjlr3mgI3YKBfa1GcHCkH+XZAsfFE=
X-Google-Smtp-Source: ACHHUZ6d2IVcnklfXKiCYFdbcGxDCOcB3vLUQ414iPg4u/mBC7/H5gFUYrtoP0j5WRGdFPbF+JaoGg==
X-Received: by 2002:a25:cbd6:0:b0:bca:f2b2:cbf5 with SMTP id b205-20020a25cbd6000000b00bcaf2b2cbf5mr52209ybg.38.1686683572474;
        Tue, 13 Jun 2023 12:12:52 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:be62:56a:860e:4129])
        by smtp.gmail.com with ESMTPSA id q133-20020a815c8b000000b005569567aac1sm1971786ywb.106.2023.06.13.12.12.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 12:12:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 7/7] meta-security-compliance: remove layer
Date: Tue, 13 Jun 2023 15:12:47 -0400
Message-Id: <20230613191247.18732-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230613191247.18732-1-akuster808@gmail.com>
References: <20230613191247.18732-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jun 2023 19:13:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60280

simplify structure.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-security-compliance/README          | 41 ------------------------
 meta-security-compliance/conf/layer.conf | 15 ---------
 2 files changed, 56 deletions(-)
 delete mode 100644 meta-security-compliance/README
 delete mode 100644 meta-security-compliance/conf/layer.conf

diff --git a/meta-security-compliance/README b/meta-security-compliance/README
deleted file mode 100644
index 3311d05..0000000
--- a/meta-security-compliance/README
+++ /dev/null
@@ -1,41 +0,0 @@
-# Meta-security-compliance
-
-This layer is meant to contain programs to help in security compliance and auditing
-
-
-Dependencies
-============
-
-This layer depends on:
-
-  URI: git://git.openembedded.org/bitbake
-  branch: master
-
-  URI: git://git.openembedded.org/openembedded-core
-  layers: meta
-  branch: master
-
-or
-
-  URI: git://git.yoctoproject.org/poky
-  branch: master
-
-
-
-Maintenance
------------
-
-Send pull requests, patches, comments or questions to yocto@yoctoproject.org
-
-When sending single patches, please using something like:
-'git send-email -1 --to yocto@lists.yoctoproject.org  --subject-prefix=meta-security-compliance][PATCH'
-
-Layer Maintainer: Armin Kuster <akuster808@gmail.com>
-
-
-License
-=======
-
-All metadata is MIT licensed unless otherwise stated. Source code included
-in tree for individual recipes is under the LICENSE stated in each recipe
-(.bb file) unless otherwise stated.
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
deleted file mode 100644
index 82409a6..0000000
--- a/meta-security-compliance/conf/layer.conf
+++ /dev/null
@@ -1,15 +0,0 @@
-# We have a conf and classes directory, add to BBPATH
-BBPATH .= ":${LAYERDIR}"
-
-# We have a recipes directory, add to BBFILES
-BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
-
-BBFILE_COLLECTIONS += "scanners-layer"
-BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
-BBFILE_PRIORITY_scanners-layer = "6"
-
-LAYERSERIES_COMPAT_scanners-layer = "mickledore"
-
-LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
-
-BBLAYERS_LAYERINDEX_NAME_scanners-layer = "meta-security-compliance"
-- 
2.34.1


