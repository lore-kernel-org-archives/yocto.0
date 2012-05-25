Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D7A9E01439
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:14 -0700 (PDT)
Received: by mail-pz0-f48.google.com with SMTP id z8so2389509dad.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=AzS7a5j32yW8nbbjdqTcVqGUtbEqtGwdhR2kv6fcHCI=;
	b=HUwspnuDocH0Czo2/8ewCvA7f1t4ewPz2obJloAMehasOAHaeBH/Fbmm/I6tY/RGLS
	5rA1KoYfHXAkXlQ5RhJhezqxz2kEqDGkZkweFDwEU7FfffTtvT+HD6kRCTIxr/61VVZH
	cg4vNeVg1fm/f83gWYcloHVlvN8XBSwEu4p9SJqWS/q57y734UIa0w+bS6fd3Pr1MMWU
	AU2+E6B5/jOrKm4cBKPn3q1ktcjZBx38PfqyEwGFdFEhZVl7nuOfBrOgGzKkWJRwTrAS
	qTa949LfGkMYo87+HhYLLdzaBAMq7jd2bDwmSkNFR6xuc2qWsggOxOKPKXix6oToT2Hf
	KOvg==
Received: by 10.68.238.228 with SMTP id vn4mr1381760pbc.132.1337984474367;
	Fri, 25 May 2012 15:21:14 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id ve6sm10331399pbc.75.2012.05.25.15.21.13
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:21:13 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 25 May 2012 15:20:56 -0700
Message-Id: <a54acdd57dc7eb5599fdc7326fbc7493b540d098.1337984389.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmZVsNJjzSv8kEzE6D3xWOSTWPyItfqIIBiMcY4n+8v7aWzb01jXruN3/+PG78qr5jcn15u
Subject: [PATCH 5/6] fri2: add usb-mass-storage to standard and preempt-rt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 May 2012 22:21:14 -0000

The standard and preempt-rt kernels both support live boot and are expected to
support general use cases. Include support for usb-mass-storage.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    1 +
 2 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
index 2404a78..03f4bf0 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
@@ -8,6 +8,7 @@ include fri2.scc
 include cfg/efi-ext.scc
 
 # default policy for preempt-rt kernels
+include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 include features/logbuf/size-normal.scc
 include features/latencytop/latencytop.scc
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
index ed92fa7..cbe5878 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
@@ -12,6 +12,7 @@ include fri2.scc
 include cfg/efi-ext.scc
 
 # default policy for standard kernels
+include cfg/usb-mass-storage.scc
 include cfg/boot-live.scc
 include features/logbuf/size-normal.scc
 include features/latencytop/latencytop.scc
-- 
1.7.5.4


