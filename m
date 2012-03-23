Return-Path: <darren@apps.dvhart.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49674E00596
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 14:53:09 -0700 (PDT)
Received: by yenq4 with SMTP id q4so4062113yen.35
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 14:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=xG6W8YUyzBu8pb1Y2vkVu3LCrpzNVvEW7xQj//wOWv8=;
	b=H8/bAD8yNQ6C02VW9+pQu63cpwyGSCsimtECQK/PHkRw+u5tpxwgAXUERwVxBtfFhU
	xnLLX19P8k4vFF6YZ4doB21GZPHpOaeLrbHdfPx9+1mV1Nw5vPpPP9KlQ7u5+iHtQ4Nu
	5gM+cAk7Ao+7PMVlsNvTyIGy1flb04UkaPcQmRc9AgeTZHHyL0O+MliUm/HuVGdbyeAk
	gxbks2hvN4oejE1pLzd3R8RjMqclYF9ICeVtCteI29xBE2LHH62lEKqfVSmAImzjQdl0
	2t/sDYrakp9mEbUvxDCIsA1CRxv+Xrq0iKvJAuMepnxx0ylaVJi0BjIsvSEOqajKNNN1
	k5Ow==
Received: by 10.68.201.6 with SMTP id jw6mr32938723pbc.92.1332539588306;
	Fri, 23 Mar 2012 14:53:08 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id l8sm6598475pbd.62.2012.03.23.14.53.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 23 Mar 2012 14:53:07 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Saul Wold <sgw@linux.intel.com>
Date: Fri, 23 Mar 2012 14:52:51 -0700
Message-Id: <fb420fe82acc35ca8effb201b0f919deb5371cbc.1332539317.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1332539317.git.dvhart@linux.intel.com>
References: <cover.1332539317.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1332539317.git.dvhart@linux.intel.com>
References: <cover.1332539317.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQlEUSr09RmKNiNOh3AmujhwxV8hW8G3l6kovAne6fVJkpGWXGE+R5xaWtOGtHNgJlAHrUVk
Subject: [PATCH 1/1] [meta] common-pc: Add PCNET32 to the config
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
X-List-Received-Date: Fri, 23 Mar 2012 21:53:09 -0000

Qemu and VM Ware both support PCNET32 and the latter requires it for
32 bit images.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg |    3 +++
 meta/cfg/kernel-cache/bsp/common-pc/hardware.cfg  |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
index 6d576ee..c0c899e 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
@@ -45,6 +45,9 @@ CONFIG_MAC80211=y
 CONFIG_WLAN=y
 CONFIG_ATH_COMMON=y
 CONFIG_ATH5K=y
+
+CONFIG_PCNET32=y
+
 CONFIG_INPUT=y
 CONFIG_INPUT_MOUSEDEV=y
 CONFIG_INPUT_EVDEV=y
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/hardware.cfg b/meta/cfg/kernel-cache/bsp/common-pc/hardware.cfg
index 34c6200..869cf62 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/hardware.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc/hardware.cfg
@@ -6,3 +6,4 @@ CONFIG_MAC80211
 CONFIG_SND_HDA_INTEL
 CONFIG_SERIAL_8250
 CONFIG_SERIAL_8250_CONSOLE
+CONFIG_PCNET32
-- 
1.7.5.4


