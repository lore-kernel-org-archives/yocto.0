Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BE0C4828D
	for <webhook@archiver.kernel.org>; Wed,  7 Feb 2024 23:15:22 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web10.5101.1707347716349284839
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Feb 2024 15:15:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=jdaIVssw;
 spf=pass (domain: smile.fr, ip: 209.85.221.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3392b045e0aso785542f8f.2
        for <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 15:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1707347714; x=1707952514; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sBYqbqy3yQCiqewaKZqPKYycslwwg06jOJbbNM29eH0=;
        b=jdaIVsswIrKop6ZowPXjdITy/UaURubHzHcWrHraRhBDhM4zeIDP/cF7aWxjELNPLj
         Ii8TuEOe/uqksHI3Wt5HGfKA/V3aRhOhDJXFn+jigDNf/7wyGxu+M/A7AsL6QAFqaasK
         IS1NAO0mVJt19tjEntIQUrOQRl053S/mAEY30Vl7TBMnaW7PL3c1Bd9JTsw6y2qUUBDJ
         4SW1zi3blOReWP6wsbZFExiwigr5mbQw+gWlOZUtctrPk05u550iF0jSM81S4GDvh0cX
         SGYEhTuZb7O5dAt2C4ZTNRY+leopPqGdvcnJeX+mm2cIGPh94ws2JxlzaO0yANJf7VTB
         W/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707347714; x=1707952514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sBYqbqy3yQCiqewaKZqPKYycslwwg06jOJbbNM29eH0=;
        b=hk1O27PaovGOb+nLOo5MruWLYclNXJOW4d/IJXsCib3QJogXwotaJNhoow6O3+O2M+
         xhOscNW+5hPpRQJj7QDSyvrUHnolcqcKW8tb54sGbVyOtYWYQ4NyLuoTOH+5r2b6mKGN
         auc6tjDFfU6vZsPORiRoSsBBPRUsLCusbzlT80pZOBe4TDm2QdNBzxENV+F+lcwWO8K8
         dgFnSf49l7y5IQUnaqOAbRMd7WWxY7/dD7PkBUi7ZN3+NFkCp7+myAsyXs4BC8YkA3/Z
         qW6H6e4XKCj6nHxO3N7bz8AYViGj6yLh71whtnRxH1uoqAh9RRXRc0090TKYpHrFAXOc
         tvIA==
X-Gm-Message-State: AOJu0YwWWU04DqUtRQ44qmXMQnhjWmUgs2D/EeltGk9jf0G1T54b6WNH
	LInKUA6/rySAfYdqjky0hReKsKmR8aU907qtFMuNt6LayzQoYTOGJPtlfS3PLhA+1PsWNse5jo4
	eFohbmg==
X-Google-Smtp-Source: AGHT+IH42K7MaWX6c1VbFR/5iQxnzDQzrtzlcV/vtAbAIUD64UGSF0ln/j/b2iuHQOS1A8axbSYaxQ==
X-Received: by 2002:adf:dd82:0:b0:33b:26d7:e6dd with SMTP id x2-20020adfdd82000000b0033b26d7e6ddmr5129834wrl.48.1707347714022;
        Wed, 07 Feb 2024 15:15:14 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.local ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id g9-20020a5d5549000000b0033b41af645asm2407598wrw.108.2024.02.07.15.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 15:15:13 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH 1/2] config.json: reproducible-meta-oe: exclude crossguid
Date: Thu,  8 Feb 2024 00:14:38 +0100
Message-Id: <20240207231439.149332-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Feb 2024 23:15:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62422

Remove crossguid from reproducibility test: it packages a file containing
a full TMP path:
WARNING: crossguid-0.2.2-r0 do_package_qa: QA Issue: File /usr/share/crossguid/cmake/crossguid-config.cmake in package crossguid contains reference to TMPDIR [buildpaths]

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 5e24c7e..1af8b92 100644
--- a/config.json
+++ b/config.json
@@ -370,7 +370,8 @@
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-multimedia'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-multimedia'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
-                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'crossguid'"
                 ]
             },
             "step5" : {
-- 
2.39.2


