Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C7B6C5478C
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 15:35:22 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web10.15260.1709048118334256909
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Feb 2024 07:35:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=KI/grPvE;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.171, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-5dbcfa0eb5dso4078989a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 07:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1709048117; x=1709652917; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O999lONWL4GUcujZDkS2OAd5NVFNu2OpE1qn1jTGUCM=;
        b=KI/grPvE6OHYVEBtnpiy3XEzUCrF2bYUYw+llRUse9MgWcqldI0J+RtYQYnWemH8JX
         6/I3Qhpgog1kCaEMiXZs0FscKefCUbC6VXYiFBwUqY3cW2PFWSdJKPNSxCPdet915o9x
         dB7GfsjgzQAByn4DexAAcQjd6OoODBaN/ouZgBUJxGrxjRscnzYuZB/+k4V5ZUfl1dyK
         ksHnfC5+HTTTY6hsmmKGZizmS7kpebd59ka4WY05NkTXqisXVEoXxBzfPES8G3/5I0yl
         o8RPFqF4gSd2fJsHLp/8bYJ4ZJ+F2nQ/W6slGZtiG34kublTb7Wft5DMJXclrUzBQEBi
         Twtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709048117; x=1709652917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O999lONWL4GUcujZDkS2OAd5NVFNu2OpE1qn1jTGUCM=;
        b=HqU0aZjsOL1gUPNdJ492RgSXYS+q9xpbYhyTz2zzEJBuofL7rsliZz2/FvoogPDyZz
         3jVc1TlKHcAZUhxvxpMzl+pOkKwZ1ONJmSIMybHYY/0gvXYPYLwCKZroZOCwBvLSUhqG
         PIxH4JXwWW6gmitRrJYPLLJ6VSsIpNxJru8UurETy6Ju4bqGERcUkRokiQP9PHQbcA+l
         5PETiL7d4Go/Clvaz/lrcogIojgEQJ1u27XKOd+b0gV0uHnp//a08uVuQuFh4Cpa2BPS
         cIoB0d5wzGyeRJ1qR0PlusktFXHCqyaTFN956MK9g+KVV3yERJFomQAa530Zb763/ffw
         Bljw==
X-Gm-Message-State: AOJu0YwvS1rWEAXl107ddbfNuPi3LSJylwoKayUT5zwnBpv/6NZXWPIS
	+jAihfEI5edJ6wpEC5qgETws3NbOG36khx8c2ixvmSRgFN6E5VTHzxrLZfWvM65TMM2/fiM/nmD
	bunE=
X-Google-Smtp-Source: AGHT+IESlVdeYb0dEtzViG3MTdfxlx/LuNp4ugoAnyu+0NEBLAEuKKUxPKX04nlX9DtLIPj1UwZ9vA==
X-Received: by 2002:a17:902:c951:b0:1dc:a82a:2316 with SMTP id i17-20020a170902c95100b001dca82a2316mr5732074pla.35.1709048117238;
        Tue, 27 Feb 2024 07:35:17 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-234-108-41.hawaiiantel.net. [72.234.108.41])
        by smtp.gmail.com with ESMTPSA id mi15-20020a170902fccf00b001dc6528d49asm1662376plb.250.2024.02.27.07.35.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 07:35:16 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] config.py: add alma9 to workers_prev_releases for kirkstone
Date: Tue, 27 Feb 2024 05:35:09 -1000
Message-Id: <fd538add1693cee98df78835cf7660c09f3c461d.1709047981.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1709047981.git.steve@sakoman.com>
References: <cover.1709047981.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 15:35:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62623

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.py b/config.py
index 30137ad..70c9c25 100644
--- a/config.py
+++ b/config.py
@@ -189,7 +189,7 @@ workers_prev_releases = {
     "nanbield" : ("alma8", "alma9", "debian11", "debian12", "fedora37", "fedora38", "opensuse153", "opensuse154", "rocky9", "stream8", "ubuntu1804", "ubuntu2004","ubuntu2204", "ubuntu2304", "perf-"),
     "mickledore" : ("alma8", "alma9", "debian10", "debian11", "fedora35", "fedora36", "fedora37", "fedora38", "opensuse153", "opensuse154", "ubuntu1804", "ubuntu2004","ubuntu2204", "perf-"),
     "langdale" : ("alma8", "alma9", "debian10", "debian11", "fedora35", "fedora36", "opensuse153", "opensuse154", "ubuntu1804", "ubuntu2004","ubuntu2204", "perf-"),
-    "kirkstone" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "fedora37", "fedora38", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
+    "kirkstone" : ("alma8", "alma9", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "fedora36", "fedora37", "fedora38", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "honister" : ("alma8", "centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora29", "fedora30", "fedora31", "fedora32", "fedora33", "fedora34", "fedora35", "opensuse150", "opensuse151", "opensuse152", "opensuse153", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "ubuntu2110", "ubuntu2204", "perf-"),
     "hardknott" : ("centos7", "centos8", "debian8", "debian9", "debian10", "debian11", "fedora31", "fedora32", "fedora33", "fedora34", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu2004", "perf-"),
     "gatesgarth" : ("centos7", "centos8", "debian8", "debian9", "debian10", "fedora30", "fedora31", "fedora32", "opensuse150", "opensuse151", "opensuse152", "ubuntu1604", "ubuntu1804", "ubuntu1904", "ubuntu2004", "perf-"),
-- 
2.34.1


