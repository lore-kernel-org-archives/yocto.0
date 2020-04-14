Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6371.1586845539704749425
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 23:25:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qdQ0cJrb;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F41AE019DA; Mon, 13 Apr 2020 23:25:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69041E019D8
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2020 23:25:37 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id d77so11705010wmd.3
        for <yocto@yoctoproject.org>; Mon, 13 Apr 2020 23:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id;
        bh=Fq8dhESLBBCo3oYyQkrdwHpfrQQ4teGoWClBruOBE7g=;
        b=qdQ0cJrb7eO8p+U7ymLMYxUyBUpxM2epzkYJRRP3e9erbwZBX66SW/qm604Ly2wV2L
         v3vwm4VhEN6RhMDNOe6uiZrbuz/R7kdtAr/+5s0ypwW1pPgsaVB1HYLeiI5Imh90IsB3
         1zdkQNxWe3nX9o4/xG1WmHeaRolDFb8ZJONNdZm0M3LCGc/lCiRc/joI9iicnHXLM3FA
         pKoFGpjaYFZnPm9Ufv6eyweRsORE55xX1NpCI/FdreKs6GHL7wpll5YVHdIO3wEx4Nki
         fqxJqAcVnKmEnou/Gij/Cy1ad1VFlRU/QVSuUc7nPJ2yNwOy5aVMh0TgAnqVixLJoKp4
         LBTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
        bh=Fq8dhESLBBCo3oYyQkrdwHpfrQQ4teGoWClBruOBE7g=;
        b=fRoURkDNCLdFwmV/9PlRmdRt+ScWyCoencLjSQCQ/yaegRyeuuzC6y711GqkeCkjeM
         DHYNi4JCuyqrP9jk37B6fCQ6C/BjHVTfGGNyMTBYo/jabLuqM9AOhDjnzhI+p+pP6zeW
         KJ6kdhNpEbinrsIn4zak/ssWCVi4FmUKMW6onlcTRntiSV5TYJ6UfgrI7fy/7rSrrhGk
         PQIET2i3a5mfXJyhczqHF8R/lAz02dzzHvgiS2KDTP5I/+Cmo7imvQrHNl2EnYuvwtDg
         zAUPXCO0XkZGr6zXsfDrDnNZn7eTV7y7htNIB5msy0RqnCMRJFFpxunKUYhF6cp5DIgg
         Thsw==
X-Gm-Message-State: AGi0PuZMnipNjFtiZBn9in1xHdVv5qshQvx/cKCqqwtMBnCDB3WkE7lm
	iHr0rauHJChL7A5Uk9NKcCyTT+7vb7k=
X-Google-Smtp-Source: APiQypInZebm6XUxCHqiFUW58289O/55FBsZoJsdAWDagpmAFGZ68ahTsaiq/XMD1lobGW5R86yBSg==
X-Received: by 2002:a1c:3d83:: with SMTP id k125mr23849976wma.177.1586845536658;
        Mon, 13 Apr 2020 23:25:36 -0700 (PDT)
Received: from dnb.domain (90-64-89-8.dynamic.orange.sk. [90.64.89.8])
        by smtp.gmail.com with ESMTPSA id u7sm18968255wmg.41.2020.04.13.23.25.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Apr 2020 23:25:35 -0700 (PDT)
Sender: Belisko Marek <marek.belisko@gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
To: yocto@yoctoproject.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>
Subject: [meta-intel][PATCH] conf:machine: Use weak reference for SERIAL_CONSOLES variable
Date: Tue, 14 Apr 2020 08:25:26 +0200
Message-Id: <1586845526-19650-1-git-send-email-marek.belisko@open-nandra.com>
X-Mailer: git-send-email 2.7.4

This add possibility to override in custom layer.

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 conf/machine/intel-core2-32.conf   | 2 +-
 conf/machine/intel-corei7-64.conf  | 2 +-
 conf/machine/intel-skylake-64.conf | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/machine/intel-core2-32.conf b/conf/machine/intel-core2-32.conf
index 20c9872..384ad1e 100644
--- a/conf/machine/intel-core2-32.conf
+++ b/conf/machine/intel-core2-32.conf
@@ -27,7 +27,7 @@ XSERVER ?= "${XSERVER_X86_BASE} \
            "
 
 SYSLINUX_OPTS = "serial 0 115200"
-SERIAL_CONSOLES = "115200;ttyS0 115200;ttyS1 115200;ttyPCH0"
+SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyS1 115200;ttyPCH0"
 APPEND += "rootwait console=ttyS0,115200 console=ttyPCH0,115200 console=tty0"
 
 IMAGE_FSTYPES += "wic"
diff --git a/conf/machine/intel-corei7-64.conf b/conf/machine/intel-corei7-64.conf
index 6164bf3..2009537 100644
--- a/conf/machine/intel-corei7-64.conf
+++ b/conf/machine/intel-corei7-64.conf
@@ -32,7 +32,7 @@ XSERVER ?= "${XSERVER_X86_BASE} \
            "
 
 SYSLINUX_OPTS = "serial 0 115200"
-SERIAL_CONSOLES = "115200;ttyS0 115200;ttyS1 115200;ttyS2"
+SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyS1 115200;ttyS2"
 APPEND += "rootwait console=ttyS0,115200 console=tty0"
 
 IMAGE_FSTYPES += "wic"
diff --git a/conf/machine/intel-skylake-64.conf b/conf/machine/intel-skylake-64.conf
index e367951..503a982 100644
--- a/conf/machine/intel-skylake-64.conf
+++ b/conf/machine/intel-skylake-64.conf
@@ -25,7 +25,7 @@ XSERVER ?= "${XSERVER_X86_BASE} \
            "
 
 SYSLINUX_OPTS = "serial 0 115200"
-SERIAL_CONSOLES = "115200;ttyS0 115200;ttyS1 115200;ttyS2"
+SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyS1 115200;ttyS2"
 APPEND += "rootwait console=ttyS0,115200 console=tty0"
 
 IMAGE_FSTYPES += "wic"
-- 
2.7.4

