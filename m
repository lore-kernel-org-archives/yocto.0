Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
 by mx.groups.io with SMTP id smtpd.web12.9086.1593494527542748671
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jun 2020 22:22:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oeJfsoxu;
 spf=pass (domain: gmail.com, ip: 209.85.222.196, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f196.google.com with SMTP id 145so15014671qke.9
        for <yocto@lists.yoctoproject.org>; Mon, 29 Jun 2020 22:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yyj/Gh7SWXt0riLm60/Kcnl/BQkd6Cs+fRLDKXR+npU=;
        b=oeJfsoxu96uRH00rIBjpQTTWV4aeW6XxNiNl3m4WQmgnLXb60Z3udvGsFnS9aKkSIc
         8AwL9ADkGli07f2nqRqXp3/+eJgHSWLgH1eDT7aH5yQR5X1xT5pQ0QgtY3OwBiQ3LFzC
         rv1msyfAJxzfuwLQ+tMRm/06gJMJLitweURMFex10ktKenntmEqZxW0iNMfIzK3uMLyQ
         WbfgQax1OZFSB1zNmzLSLAdH05qNE7sklCpptVzUvYEpgGTTuXIfZkiUvFrUEB3Gaqdg
         NyIxX2iud2nHudzaIeer51n7iXo4zP26AeO+mxMHQUJtqnf3EZh0+iQC1InkGzVozDlo
         LcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yyj/Gh7SWXt0riLm60/Kcnl/BQkd6Cs+fRLDKXR+npU=;
        b=k6UgBgF1KUZUjfAY/I8QWv3vEvuUqYQE/39fSwnvnzAsvU6j3IQedYsDtTTGIGV6hF
         7d4PTMGZ+qzMN77MkxXzUzs4Ar0fdJQYLS0PPrzUc4wet26DUhJ6qQ1urTv7MRU4DOum
         nXlaOQhn/RA8RiCu8JeI/3/MxJ2pPeUL/uqn/FI2WGyXQ/fPELYMtkPjQddLfyVmIN2T
         94xbU9Me/+nD4IJ79ZS+MPV70WicVtkzYoqYXRHZe3JFXBY1UGMRY8XGzViGR7HSG4Yx
         gETK2NN6/u1hDczLyPzXekmb8EbQ2BRJbG47zzIAq9WwCxdDVQe6JVEt3sIIFq9szOKO
         VVDQ==
X-Gm-Message-State: AOAM5326XEse4pZPRb+ghTlHR1ZtnkQhTr8lJa7hVbrkxkD2Mp16PUA6
	3fw76rjpisXpiorOsse0gE8=
X-Google-Smtp-Source: ABdhPJwBLJ2GbC+gX5hLEu6hKa/Br3SKTvSNIPtyrmwor74NUjtcQuGYfij8Ly+ZcEAtNRAxTeSgpg==
X-Received: by 2002:a37:43c5:: with SMTP id q188mr14478446qka.135.1593494526670;
        Mon, 29 Jun 2020 22:22:06 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id u74sm2309434qka.63.2020.06.29.22.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 22:22:06 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH] yocto-bsps: bump reference boards to v5.4.49
Date: Tue, 30 Jun 2020 01:22:04 -0400
Message-Id: <20200630052204.37080-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---

This goes along with my oe-core -stable version bumps. It contains
the gcc10 host compiler fixes. If the issues still pop up, we'll try
the debug patch.

Bruce

 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 7207442008..626748541a 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "29f44c85c379c38f15e544828e7e77b3c008f378"
-SRCREV_machine_genericx86-64 ?= "29f44c85c379c38f15e544828e7e77b3c008f378"
-SRCREV_machine_edgerouter ?= "f4d7dbafb103e4f782323017c239c548871c1567"
-SRCREV_machine_beaglebone-yocto ?= "f4d7dbafb103e4f782323017c239c548871c1567"
+SRCREV_machine_genericx86 ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
+SRCREV_machine_genericx86-64 ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
+SRCREV_machine_edgerouter ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
+SRCREV_machine_beaglebone-yocto ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.40"
-LINUX_VERSION_genericx86-64 = "5.4.40"
-LINUX_VERSION_edgerouter = "5.4.20"
-LINUX_VERSION_beaglebone-yocto = "5.4.20"
+LINUX_VERSION_genericx86 = "5.4.49"
+LINUX_VERSION_genericx86-64 = "5.4.49"
+LINUX_VERSION_edgerouter = "5.4.49"
+LINUX_VERSION_beaglebone-yocto = "5.4.49"
-- 
2.19.1

