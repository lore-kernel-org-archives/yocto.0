Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49A8CC433EF
	for <webhook@archiver.kernel.org>; Sat, 18 Jun 2022 13:44:49 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.9243.1655559882864997908
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=B6vPNlpi;
 spf=pass (domain: gmail.com, ip: 209.85.216.51,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id
 y13-20020a17090a154d00b001eaaa3b9b8dso6431674pja.2
        for <yocto@lists.yoctoproject.org>;
 Sat, 18 Jun 2022 06:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Iqbs2Ek9fcjAj4Ff5m1DnXrIlRWSsoeKt6kXFO9vSFo=;
        b=B6vPNlpinX8CYaAQFePMulNrWc2GTz8LapNnx/9cs9PSzRzIrzIfADXnxZWgQBETvm
         /M8nd9RiW/Ui/YQ2DGIcg+NHTV2ZfFBxBEnSdtr6vSIyhFVTOIJapX1msDnKJB8ReqP+
         qaOWi8wBMYho3Xj//ZoJ+0VeYmFx3ngFsk5zrc6DBh05L6X1yl/6TbAn9arhynzoO1pr
         xnuBzFVKj6JsTcmq3KEhjl4tD8xLTXHaaqFvOCB43rIK13oYgp7viZf0vbizDrczuKOl
         cdUAAhV4UVX5rpNTS086uUWx4ZZw5QBFwAY8KgGW2D7cwlIS9xADiv6gIXA5wgYxVABg
         8M1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Iqbs2Ek9fcjAj4Ff5m1DnXrIlRWSsoeKt6kXFO9vSFo=;
        b=hwmpVoeoJx1LGHTWt1JpronG6cLLEU0sKwOZJte0oNuZaFf4cTHTiVVR+0TWJVluqf
         Tcxj1v6iIo9slVIuxhL6Nz/qK3/S6DFewQX31JJasyz3NsZYT+IQy/p6z7D3wqm/YK7f
         sIyQRg6C/RM4tVQ109VOd8rDrA9rcjsMolMpdZPJQTVJxMhc8Sdm9dmZx0Ep1gcUCWL4
         9mp9USbuCwCpfYrNcZdyV/icy20wtgVMqYwhj03+3nP5G5+i5oMqIqOkMuWBEKBZx6ZW
         oMRHKixazJnZ//9N7B1fgVl3E8J5qvKMDR+iY5695YNtyOF+e+ZxxIxbSknsr3S8jZQ1
         MPaA==
X-Gm-Message-State: AJIora+bEoH5Hk4T1EpmB7oSlrmXmcVUDfyjHvzhWsQRvLR7Ypy/vogf
	2iCObj7ctnGd8lFoka0AIoIhfUKoTZI=
X-Google-Smtp-Source: 
 AGRyM1u+1j4tqrC2aIYALv1zX/OqfjM/M7pQNVWxaQHdKsDzRL22yi8rp1cZKcrk7JcG//pcWI1kGA==
X-Received: by 2002:a17:902:eccf:b0:168:faa0:4eed with SMTP id
 a15-20020a170902eccf00b00168faa04eedmr14574919plh.139.1655559882018;
        Sat, 18 Jun 2022 06:44:42 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:b704:2c1c:4bb5:cab1])
        by smtp.gmail.com with ESMTPSA id
 o26-20020a63921a000000b00408a3724b38sm5689880pgd.76.2022.06.18.06.44.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jun 2022 06:44:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/9] aide: add a few more config options
Date: Sat, 18 Jun 2022 06:44:30 -0700
Message-Id: <20220618134435.2370878-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618134435.2370878-1-akuster808@gmail.com>
References: <20220618134435.2370878-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Jun 2022 13:44:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57346

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/aide/aide_0.17.4.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-ids/aide/aide_0.17.4.bb b/recipes-ids/aide/aide_0.17.4.bb
index ebd6ac3..87b690d 100644
--- a/recipes-ids/aide/aide_0.17.4.bb
+++ b/recipes-ids/aide/aide_0.17.4.bb
@@ -12,7 +12,7 @@ SRC_URI[sha256sum] = "c81505246f3ffc2e76036d43a77212ae82895b5881d9b9e25c1361b1a9
 
 inherit autotools pkgconfig
 
-PACKAGECONFIG ??=" mhash zlib e2fsattrs \
+PACKAGECONFIG ??=" mhash zlib e2fsattrs posix capabilities curl \
                  ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux audit', '', d)} \
                  ${@bb.utils.contains('DISTRO_FEATURES', 'xattr', 'xattr', '', d)} \
                  "
@@ -24,6 +24,8 @@ PACKAGECONFIG[audit] = "--with-audit, --without-audit,audit"
 PACKAGECONFIG[gcrypt] = "--with-gcrypt, --without-gcrypt, libgcrypt, libgcrypt"
 PACKAGECONFIG[mhash] = "--with-mhash, --without-mhash, libmhash, libmhash"
 PACKAGECONFIG[e2fsattrs] = "--with-e2fsattrs, --without-e2fsattrs, e2fsprogs, e2fsprogs"
+PACKAGECONFIG[capabilities] = "--with-capabilities, --without-capabilities, libcap, libcap"
+PACKAGECONFIG[posix] = "--with-posix-acl, --without-posix-acl, acl, acl"
 
 do_install:append () {
     install -d ${D}${libdir}/${PN}/logs   
-- 
2.25.1


