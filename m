Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.13291.1614609930586720546
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 06:45:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UqGGb1vJ;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: dorindabassey@gmail.com)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D231838C0731
	for <yocto@yoctoproject.org>; Mon,  1 Mar 2021 14:45:29 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id w11so16412597wrr.10
        for <yocto@yoctoproject.org>; Mon, 01 Mar 2021 06:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=w+uT68h0E/zo6grKCycLxgfs6PHbM+rbFmwhH881uG4=;
        b=UqGGb1vJAavcIkCwuFMscLVLwYyfrNDg8AaUiS8zEXtM0cAvakOtxyvY/S0T0OEplZ
         Vslvf/97LoJwWqefzM4EnwtaOZQFVsRxQbrb6DCsbXyLe58xFPMqURf3m04ysxt18Wng
         TxpW3eQNvdrjDii+UdGJwpZVISpHZtKn4xQS2Udl0z4IoGfByAG85/ooe8aYxrxkD5+s
         Zx/tWhqZ2hiO8Il2EEJkssF0YXae5lqP8cj0foqVROpKFMpw1d8bbBQrf89tjFI5VaVB
         8jToJgBXPXHFqTEUzwWsjGH3MTuoDkFXiF74HUjzoxCAuu+yG+q7iUUIwz+YEmFoYQP8
         fewQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=w+uT68h0E/zo6grKCycLxgfs6PHbM+rbFmwhH881uG4=;
        b=GldJRJNHIZj8kn72vVIk3pz/voVWTCVDd0zY+BYX9x9qx5Xx53rjBXv93we253B22X
         RL5tOPd8ILPTlAwj7L+bNiTFA+6eRf2RF4I4neTJnnZwFdDPHS8lEvp05XsVYIJm2oIh
         IgOTpntdDAqC3DruhvpprDXFScnFe5vMOUfF8jGTQfW7VBotDj8wuA+wAqa2x5CJV+7k
         OY1gbavGZIRjuhptQIm8+8zIRGaCl30WopS2z/NCpCIH7vqoNerD1pBWlV/1FEXJ0GQR
         8TwAkUiX+o9kf7gT0yqOjKBX7tFEdFuTa7C9/KYBgpOKw/vb6bVkuxCf+R+Xi42YaQoO
         DUbA==
X-Gm-Message-State: AOAM533qs1gDXRD5Z8TEGaKs/xz/PG/LKnPHQuQrGDt1FMzLu2siTGqX
	uHRd2R45q6bH3lxLXuRAG8U7sis2Ri8=
X-Google-Smtp-Source: ABdhPJzKbuU6GOdvcS8peUXNBtqLBTk9G2xS+vWQB06tJp9MOThbtPgGbP7DCINPTI2yeKtMySjSoQ==
X-Received: by 2002:adf:fac1:: with SMTP id a1mr17568637wrs.98.1614609928115;
        Mon, 01 Mar 2021 06:45:28 -0800 (PST)
Received: from smtp.gmail.com. ([105.112.145.200])
        by smtp.gmail.com with ESMTPSA id a75sm11481155wme.10.2021.03.01.06.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Mar 2021 06:45:27 -0800 (PST)
From: "Dorinda" <dorindabassey@gmail.com>
To: yocto@yoctoproject.org
Cc: dorindabassey <dorindabassey@gmail.com>
Subject: [PATCH] dev-manual/common-task.rst: Added documentation for debuginfod support
Date: Mon,  1 Mar 2021 15:45:15 +0100
Message-Id: <20210301144515.22651-1-dorindabassey@gmail.com>
X-Mailer: git-send-email 2.17.1

Added documentation on running debuginfod server and using it on the target.

Signed-off-by: Dorinda Bassey <dorindabassey@gmail.com>
---
 documentation/dev-manual/common-tasks.rst | 46 ++++++++++++++++++++++-
 1 file changed, 45 insertions(+), 1 deletion(-)

diff --git a/documentation/dev-manual/common-tasks.rst b/documentation/dev-manual/common-tasks.rst
index 65db4aed33..d4a2b2f28d 100644
--- a/documentation/dev-manual/common-tasks.rst
+++ b/documentation/dev-manual/common-tasks.rst
@@ -10023,7 +10023,51 @@ before starting the debugging process. These extra computations place
 more load on the target system and can alter the characteristics of the
 program being debugged.
 
-To help get past the previously mentioned constraints, you can use
+To help get past the previously mentioned constraints, they're two
+methods you can use: running a debuginfod server and using gdbserver.
+
+Using the debuginfod server Method
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
+debuginfod from elfutils is a way to distribute debuginfo files.
+running a debuginfod server makes debug symbols readily available,
+which means you don't need to download debugging information
+and the binaries of the process being debugged. you can just fetch
+debug symbols from the server.
+
+1. To run a debuginfod server, you need to do the following:
+
+-  Ensure that this variable is set in your ``local.conf`` file:
+   ::
+
+      PACKAGECONFIG_pn-elfutils-native = "debuginfod libdebuginfod"
+
+    This PACKAGECONFIG option enables debuginfod and libdebuginfod for
+    elfutils-native.
+
+-  Run the following commands to set up the debuginfod server:
+   ::
+
+      $ oe-debuginfod
+2. To use debuginfod on the target, you need the following:
+
+-  Ensure that these variable is set in your ``local.conf`` file:
+   ::
+
+      DEBUGINFOD_URLS = "http://localhost:port"
+
+   This option does the client configuration by setting DEBUGINFOD_URLS 
+   to point at the server running debuginfod. Such that for every lookup, 
+   the debuginfod client will query the server and return the requested information.
+   ::
+
+        PACKAGECONFIG_pn-gdb = "debuginfod"
+
+   This PACKAGECONFIG option enables debuginfod for gdb.
+
+Using the gdbserver Method
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
+
 gdbserver, which runs on the remote target and does not load any
 debugging information from the debugged process. Instead, a GDB instance
 processes the debugging information that is run on a remote computer -
-- 
2.17.1

