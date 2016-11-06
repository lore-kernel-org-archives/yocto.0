Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4869E009B1; Sat,  5 Nov 2016 21:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B1A2E00971
	for <yocto@yoctoproject.org>; Sat,  5 Nov 2016 21:23:11 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id 144so3980922pfv.0
	for <yocto@yoctoproject.org>; Sat, 05 Nov 2016 21:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=RheBUax7cczjpLqgD2eIvlkS40hKPMybmt4exlQC2Iw=;
	b=PCVbgu0ADgXhDdRg2jmadbnfokZGjTr3OJBAHvtBw6EbVwZqHkAeSRyoigJER0uOVf
	qlASDd46ZEI9oPZ3yPsOl/YIp1Gw4qgzcCUzH4fZbZp6rCNlAEeEeD3n97KcUtV5Epjz
	C2OU1MPVKih+djivzYXvcMg1zr9ykWNAUxxMQIYEO51MmnVJFyp8uaJOghQ8JD/7A98B
	HVUm4S6iWwkfcVfnvbRVPF4Ajt3/irsSWGb5xPQcBszXwoieB+aT6C+glSaj+cVOkorz
	uJkPOQIKMY0WqhgngJ5kqij2X8kCFihbnja1KCb2RzMYx6W+3LU4LlY6Y9vnd0ljNuya
	j4/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=RheBUax7cczjpLqgD2eIvlkS40hKPMybmt4exlQC2Iw=;
	b=PYoA6LvUYWguKojcvHxcJnIRJdntGh0nsZ81xPG3OEjdjlzVDPxTAxCNrYUQPIkA9X
	5ROxNWsPYxmFW+/lZ3W+4lXa4x1Jc1NWKKVcfRydrB3E3/+9P/fDaste9RkzAyajDXit
	CoXVrwR5L4FIJNfU7JNWFjUpaNgmeNJFa3RomhkCd+5cqXmktq0aiMa4qWtLIwSiwROx
	m4Yb7TmjxxW0CM4BKDLDPw2P0XTse6+rj38q/DfgIgnLxj71N0gSfhb0JTR1tDagOjQ1
	r5ECU+GtJSdl1uuQmCFvGNpdLavxyzfNNwhUdMcVpUMcpRyMHe2fzD1SW8MApFHOWM7P
	Gr3A==
X-Gm-Message-State: ABUngvfuv7MQdFh/juP9OB2Kcm12pilyxaAJZ/EmBanxN9pN00uF7abbWc2vu3E1TszVLA==
X-Received: by 10.99.112.12 with SMTP id l12mr1262042pgc.14.1478406190912;
	Sat, 05 Nov 2016 21:23:10 -0700 (PDT)
Received: from trixie.pullman (cpe-76-178-155-10.natnow.res.rr.com.
	[76.178.155.10]) by smtp.gmail.com with ESMTPSA id
	m69sm30556050pfg.39.2016.11.05.21.23.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 05 Nov 2016 21:23:10 -0700 (PDT)
From: Barry Grussling <barry@grussling.com>
To: ajlennon@dynamicdevices.co.uk
Date: Sat,  5 Nov 2016 21:23:04 -0700
Message-Id: <20161106042304.3357-8-barry@grussling.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161106042304.3357-1-barry@grussling.com>
References: <20161106042304.3357-1-barry@grussling.com>
Cc: yocto@yoctoproject.org
Subject: [meta-mono][PATCH 7/7] Add ARM patch for fast-tls
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
X-List-Received-Date: Sun, 06 Nov 2016 04:23:11 -0000

Attempting to fix upstream bug from:
https://bugzilla.xamarin.com/show_bug.cgi?id=44918

Signed-off-by: Barry Grussling <barry@grussling.com>
---
 .../ARM-Disable-fast-tls-on-embedded-mono.patch    | 30 ++++++++++++++++++++++
 recipes-mono/mono/mono_4.6.1.5.bb                  |  3 +++
 2 files changed, 33 insertions(+)
 create mode 100644 recipes-mono/mono/mono-4.6.1.5/ARM-Disable-fast-tls-on-embedded-mono.patch

diff --git a/recipes-mono/mono/mono-4.6.1.5/ARM-Disable-fast-tls-on-embedded-mono.patch b/recipes-mono/mono/mono-4.6.1.5/ARM-Disable-fast-tls-on-embedded-mono.patch
new file mode 100644
index 0000000..416abad
--- /dev/null
+++ b/recipes-mono/mono/mono-4.6.1.5/ARM-Disable-fast-tls-on-embedded-mono.patch
@@ -0,0 +1,30 @@
+Temporary patch from https://github.com/BrzVlad/mono/commit/831e66655e7465023109333fca31d036c7b9a514
+for https://bugzilla.xamarin.com/show_bug.cgi?id=44918.  Should make it
+into upstream soon:
+
+From 831e66655e7465023109333fca31d036c7b9a514 Mon Sep 17 00:00:00 2001
+From: Vlad Brezae <brezaevlad@gmail.com>
+Date: Thu, 13 Oct 2016 00:18:46 +0300
+Subject: [PATCH] [arm] Disable fast tls on embedded mono with __thread
+
+We don't have MONO_THREAD_VAR_OFFSET on embedded mono.
+---
+ mono/mini/mini-arm.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/mono/mini/mini-arm.c b/mono/mini/mini-arm.c
+index 2eac369..86757ac 100644
+--- a/mono/mini/mini-arm.c
++++ b/mono/mini/mini-arm.c
+@@ -31,7 +31,7 @@
+ #include "mini-gc.h"
+ #include "mono/arch/arm/arm-vfp-codegen.h"
+ 
+-#if (defined(HAVE_KW_THREAD) && defined(__linux__) && defined(__ARM_EABI__)) \
++#if (defined(HAVE_KW_THREAD) && defined(__linux__) && defined(__ARM_EABI__) && !defined(__PIC__)) \
+ 	|| defined(TARGET_ANDROID) \
+ 	|| (defined(TARGET_IOS) && !defined(TARGET_WATCHOS))
+ #define HAVE_FAST_TLS
+-- 
+2.10.2
+
diff --git a/recipes-mono/mono/mono_4.6.1.5.bb b/recipes-mono/mono/mono_4.6.1.5.bb
index ae8a7eb..7abe82c 100644
--- a/recipes-mono/mono/mono_4.6.1.5.bb
+++ b/recipes-mono/mono/mono_4.6.1.5.bb
@@ -6,3 +6,6 @@ require mono-${PV}.inc
 PACKAGES += "${PN}-profiler "
 FILES_${PN}-profiler += " ${datadir}/mono-2.0/mono/profiler/*"
 
+SRC_URI += "file://ARM-Disable-fast-tls-on-embedded-mono.patch \
+"
+
-- 
2.10.2


