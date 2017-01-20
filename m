Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EF08E006EA; Fri, 20 Jan 2017 11:16:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.193 listed in list.dnswl.org]
Received: from mail-yb0-f193.google.com (mail-yb0-f193.google.com
	[209.85.213.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF256E003DB
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:34 -0800 (PST)
Received: by mail-yb0-f193.google.com with SMTP id w194so8849618ybe.1
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yHKSjVWJgG1kUqSUFJtZ0XM+2QXUctDcXZ0VVIAb4oY=;
	b=QXo3jXj42yFEcWHrYvnM/5j/bPDvRRjf7bSrQ+8Ygi4jGQstwu1EnLcPGYal9GEUUT
	gByn1NFv0keveI3Vuyr4h1D090pBk99lj+WCtUcCI1XIF1yaR26zCX/oHVu0tnxe5Jt7
	38/7PhRSLofa5ebJrRV8hkS+rVsBNuXc/rv1Yac/IAVwSASUOQhECSPQ4+zkJL/0KFt0
	F/FUhbCDnkYcQt7y1KF0IkshoWFvlReF/YAPTw/DKodk4d0JHpxeetluRLz9AXQ/S0Wl
	XvKe99lXt0H9LGaTFBiN+81VgVvPvI7IGa1bpF/++kir2JBTeL2JZEPRWN/Z2iS3YTpb
	xCZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=yHKSjVWJgG1kUqSUFJtZ0XM+2QXUctDcXZ0VVIAb4oY=;
	b=J9Szlq2ZUKCvRMK85CMTjnu9lXZgzlr9DceaNA/eae+vMRWBY53ol0RzOfzKONbbum
	LfhRIJ/Z37Pjr3mJf8cjd7EH+r8/80zm6PzoqmG8sNMvwj1979EED3ZjGMKi1V0y+OJF
	69aqoie/D40tX3nHVuu268EZ1dmO9sGF7rdzqwP48t6x/HaH4GUT+QIP+awrl1vGaCXe
	/W5X4BEdl0Z4jTU5C9AlVxQnaQyqBNpVy7CsPflpENlmXEJ9GVp53E4LhxDv2dQdL3W8
	MeS3Qs7gMJsB3lj3+KmV6puWQjiayh1BCZ33VQMzLG+/sH9yeYiJf3xXv2/kRzSLkfIs
	XEQw==
X-Gm-Message-State: AIkVDXItSwXAWPzA3NU2hrq+CBvcgmIYX4ESD+z9qq02V3levITcSCzsA/HJMry47CtCxQ==
X-Received: by 10.200.45.211 with SMTP id q19mr13308866qta.115.1484939794408; 
	Fri, 20 Jan 2017 11:16:34 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id e3sm6673488qtg.7.2017.01.20.11.16.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 20 Jan 2017 11:16:33 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 20 Jan 2017 20:16:03 +0100
Message-Id: <1484939765-30566-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
References: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/5] raspberrypi*.conf: Minor tweaks
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Jan 2017 19:16:39 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi.conf  | 1 -
 conf/machine/raspberrypi0.conf | 1 -
 conf/machine/raspberrypi2.conf | 1 -
 conf/machine/raspberrypi3.conf | 4 +---
 4 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
index df8194c..ad3b061 100644
--- a/conf/machine/raspberrypi.conf
+++ b/conf/machine/raspberrypi.conf
@@ -11,4 +11,3 @@ SERIAL_CONSOLE = "115200 ttyAMA0"
 
 UBOOT_MACHINE = "rpi_config"
 VC4_CMA_SIZE_raspberrypi ?= "cma-64"
-
diff --git a/conf/machine/raspberrypi0.conf b/conf/machine/raspberrypi0.conf
index 0df9121..7c2b811 100644
--- a/conf/machine/raspberrypi0.conf
+++ b/conf/machine/raspberrypi0.conf
@@ -7,4 +7,3 @@ include conf/machine/raspberrypi.conf
 
 SERIAL_CONSOLE = "115200 ttyAMA0"
 VC4_CMA_SIZE ?= "cma-128"
-
diff --git a/conf/machine/raspberrypi2.conf b/conf/machine/raspberrypi2.conf
index 3f13dc0..9b4c02a 100644
--- a/conf/machine/raspberrypi2.conf
+++ b/conf/machine/raspberrypi2.conf
@@ -11,4 +11,3 @@ SERIAL_CONSOLE = "115200 ttyAMA0"
 
 UBOOT_MACHINE = "rpi_2_config"
 VC4_CMA_SIZE ?= "cma-256"
-
diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 9820209..1ac5928 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -3,11 +3,9 @@
 #@DESCRIPTION: Machine configuration for the RaspberryPi 3
 
 MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
+include conf/machine/raspberrypi2.conf
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
 
-include conf/machine/raspberrypi2.conf
-
 SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
-
-- 
2.7.4


