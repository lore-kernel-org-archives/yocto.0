Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web12.185.1631637552431686500
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Sep 2021 09:39:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=k1KJtGcd;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id k23-20020a17090a591700b001976d2db364so8012pji.2
        for <yocto@lists.yoctoproject.org>; Tue, 14 Sep 2021 09:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Sn9w4M+FBPto751DYov1awwgUzYcaJCcyTIKw6dXoyw=;
        b=k1KJtGcdtA7mpZH8q8YYf1jg9TzsTgo1GnKHI+sI5D6LGddzmoZceFmNgEv3H7lzCs
         iGAuXuZQK6eD/PGAx8AqVjSjRocx6HFi23+HiH9ICLwFXUYbfmSwpjJ1mDSGAE1s35/o
         UlKn62dE3AW/7+CLveVw7sirppuic8l1t24fCjMA7csVpEgiHgUmvoxGGoy3YAj6YCJF
         7ySFhZ7lhlLE6hOUOZslfT37KdIPqok0Jkl9cWYxz6NAQQuPasxmVbCWUDrE62u1a1zw
         6sWaDUyBYmt8rpeuLMYTawI1OdDMviBGhPsZthDDrm60h8hM+jK93CpWWezHJznTDdUe
         KbGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Sn9w4M+FBPto751DYov1awwgUzYcaJCcyTIKw6dXoyw=;
        b=KZxhv8c7XqOWbYX+jDCryeO9gs/bfgzHV5o7w36AZKjxWyH7ntDHio6SH04OIMvIqG
         Alry6910EkPbwBm4vtWCyeRHJZ5YOwBCB/q1WE/j+jhUgTqq8wy4eTfxSnjnbPBSHWbR
         4aKO8vGQyFAaCdoUxJL/XiwQ+X2QQn60vBy/DPc75y2x6LCEdIYzg91cBotv/ue3kjyB
         eK3MZSC7e2jazGzOJYxLKh1bZPVjvoJIuSzyOvb23cJGP4vqnIFvgZNsNvcP3wbNlbva
         F30+F62xK3oHB87Guxhmei86kZ9rt4foiJazviv9AETW42GwRo6m35lmxl+PqstmfmyM
         nxFw==
X-Gm-Message-State: AOAM533YYE9bmq78qpBVuW4c+zi4rmSpK3ytxhqP87fCsOxKb1sSFDHv
	Kny1lPxX0DdfYJo3EEevDybH3rihlzM=
X-Google-Smtp-Source: ABdhPJxhdq4XtrJ6cWd68vIEeYNoBMQ4TjFlfHclSMUPI9Ehl1frHgzYHplr7U7GKmasme5VQVffLA==
X-Received: by 2002:a17:902:ce8a:b0:13a:130c:e07f with SMTP id f10-20020a170902ce8a00b0013a130ce07fmr15627229plg.69.1631637551763;
        Tue, 14 Sep 2021 09:39:11 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:35e:ec78:cef4:300f])
        by smtp.gmail.com with ESMTPSA id b7sm10591600pfl.195.2021.09.14.09.39.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:39:11 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 6/6] isic: set precise BSD license
Date: Tue, 14 Sep 2021 09:39:06 -0700
Message-Id: <20210914163906.126666-6-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210914163906.126666-1-akuster808@gmail.com>
References: <20210914163906.126666-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"BSD" is ambiguous, use the precise licenses BSD-2-Clause

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/isic/isic_0.07.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/isic/isic_0.07.bb b/recipes-security/isic/isic_0.07.bb
index fb6e904..28153e3 100644
--- a/recipes-security/isic/isic_0.07.bb
+++ b/recipes-security/isic/isic_0.07.bb
@@ -2,7 +2,7 @@ SUMMARY = "ISIC -- IP Stack Integrity Checker"
 DESCRIPTION = "ISIC is a suite of utilities to exercise the stability of an IP Stack and its component stacks (TCP, UDP, ICMP et. al.)"
 HOMEPAGE = "http://isic.sourceforge.net/"
 SECTION = "security"
-LICENSE = "BSD"
+LICENSE = "BSD-2-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=d41d8cd98f00b204e9800998ecf8427e"
 
 DEPENDS = "libnet"
-- 
2.25.1

