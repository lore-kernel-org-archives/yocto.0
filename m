Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A8AE01422
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:10 -0700 (PDT)
Received: by mail-pz0-f48.google.com with SMTP id z8so2389509dad.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=KAx+ZSPA3/8bqviC3MjkivFGI0yMePFgBz9YSFnXC2M=;
	b=AeBekNP+chMpOgP7b2ms4P3O2rTvhgiJia6UCXHWY8UD4AQ6svbM4W2zaHI3cw/vVT
	lvj+pb3IEPGNTV3y/7FGXwiDUyNQt4QFl/s/+ik5l+3V3CRus1XquX5lmA53X6zWy/k8
	DD4qBWWIsgHMJpuv8a+LycI8btJQIZl/eNRywe+nMgYVhHWBXbGp2a7vTAKLitxlhzDu
	9b4NLLQ2TtSERlM/NNM0gNfjGvbehgSLIwSPBJC4lZkUeJuWPRjom415Exedl5HzHvgt
	mFDxfs2Z1YyqRtxtkdDhqpgI9PdHP8Nb01kC1e8tkFv+n4Hv1y2LD+OcPnErV9dy0ITN
	oUuA==
Received: by 10.68.225.170 with SMTP id rl10mr1749541pbc.13.1337984470307;
	Fri, 25 May 2012 15:21:10 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id ku7sm10353786pbc.31.2012.05.25.15.21.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:21:09 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 25 May 2012 15:20:53 -0700
Message-Id: <697768eec2702f261f10e30d50163b5f77208264.1337984389.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1337984389.git.dvhart@linux.intel.com>
References: <cover.1337984389.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQn2gvN/0hdY5rgRLe6KeykSenWfBx3q/M/J5UmIiTUBy93jJqj5/Bi0kV1ObGRgD9Rq72zI
Subject: [PATCH 2/6] iwlwifi: Add a feature for iwlwifi
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
X-List-Received-Date: Fri, 25 May 2012 22:21:10 -0000

Basically a copy of iwlagn for the iwlwifi driver.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.cfg |    6 ++++++
 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.scc |    6 ++++++
 2 files changed, 12 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.cfg
 create mode 100644 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.scc

diff --git a/meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.cfg b/meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.cfg
new file mode 100644
index 0000000..a275a1d
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.cfg
@@ -0,0 +1,6 @@
+# iwlwifi depends on NETDEVICES (base.cfg), PCI, and MAC80211 (includes WLAN)
+CONFIG_PCI=y
+
+# Intel 6205 ABGN
+# Build as a module to avoid having to install the firmware into the initrd
+CONFIG_IWLWIFI=m
diff --git a/meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.scc b/meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.scc
new file mode 100644
index 0000000..23b4cc7
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.scc
@@ -0,0 +1,6 @@
+define KFEATURE_DESCRIPTION "Enable iwlwifi support"
+define KFEATURE_COMPATIBILITY board
+
+kconf hardware iwlwifi.cfg
+
+include features/mac80211/mac80211.scc
-- 
1.7.5.4


