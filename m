Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0338E013DE
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 07:44:57 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so3527025pbb.35
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 07:44:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=yF6nVLGhafYrzsQCZF0M79AajFaHAY2myDfz8tBsVeo=;
	b=fP+Wz6ghBAkNZjYd4bUxwMlWZH4JiRuM2hj+mZKd5SiwTJYjDmHarvJbwOo6sxRMnQ
	dE2XhhvJQD78QC4KPfM6eUCRkL6W67ue1zQ3V46iPCHAk1ZU0GIzhAk9EEqjuCeobCgu
	jYghugH8zp+L8fUIjPzwsxTZ9XbJvGzxQ/oD2Ea+q7J3UDB1mvtD23PThxD+di4cokXM
	hDNuZnGjDHqwXzSIVD70FcQwhRSGvS+224RIwNOdiZTAh8+ODsvBZP2g5pReHOIfi5XV
	4IDqntZulueleUQIE/V2xiOTWwzi08Z2/sr2FH/seYMrfnGGPaEhaVF1ReghJYZMNlXa
	UcIQ==
Received: by 10.68.195.162 with SMTP id if2mr1006577pbc.94.1333205097448;
	Sat, 31 Mar 2012 07:44:57 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id a9sm9809284pbo.48.2012.03.31.07.44.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 31 Mar 2012 07:44:56 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Sat, 31 Mar 2012 07:44:43 -0700
Message-Id: <70db71028437ef03bf9bf9b16f59c80522b91877.1333204567.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333204567.git.dvhart@linux.intel.com>
References: <cover.1333204567.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333204567.git.dvhart@linux.intel.com>
References: <cover.1333204567.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmz/rx+VireaEoTup8ETdhvi8/fHlIw274MyAOAqvP+3hcXqNwcbWMmNUs8Fcb8gHMBTcws
Subject: [PATCH 1/3] meta: common-pc add dependencies to cfg
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
X-List-Received-Date: Sat, 31 Mar 2012 14:44:57 -0000

When building with the allnoconfig option, some of the common-pc CONFIG options
are dropped due to missing dependencies. This machine also depended on certain
default options, such as CONFIG_E1000, which are not enabled with allnoconfig.

Add the dependencies and CONFIG_E1000 explicitly.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg |   13 +++++++++++--
 1 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
index c0c899e..f023964 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.cfg
@@ -27,6 +27,7 @@ CONFIG_PCI=y
 CONFIG_PCI_GOANY=y
 CONFIG_PCIEPORTBUS=y
 
+CONFIG_BLOCK=y
 CONFIG_SCSI=y
 CONFIG_BLK_DEV_SD=y
 CONFIG_ATA=y
@@ -34,11 +35,19 @@ CONFIG_ATA_ACPI=y
 CONFIG_ATA_SFF=y
 CONFIG_ATA_PIIX=y
 
+CONFIG_NET_CORE=y
 CONFIG_MII=y
 
 # Enable the below for Dell Dimension 1100 PC / QEMU
+CONFIG_ETHERNET=y
+CONFIG_NET_VENDOR_BROADCOM=y
 CONFIG_TIGON3=y
+CONFIG_NET_VENDOR_ATHEROS=y
 CONFIG_ATL2=y
+CONFIG_NET_VENDOR_INTEL=y
+CONFIG_E1000=y
+CONFIG_NET_VENDOR_AMD=y
+CONFIG_PCNET32=y
 
 CONFIG_CFG80211=y
 CONFIG_MAC80211=y
@@ -46,8 +55,6 @@ CONFIG_WLAN=y
 CONFIG_ATH_COMMON=y
 CONFIG_ATH5K=y
 
-CONFIG_PCNET32=y
-
 CONFIG_INPUT=y
 CONFIG_INPUT_MOUSEDEV=y
 CONFIG_INPUT_EVDEV=y
@@ -64,8 +71,10 @@ CONFIG_FB=y
 CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
 
+CONFIG_VT=y
 CONFIG_VGA_CONSOLE=y
 
+CONFIG_USB_SUPPORT=y
 CONFIG_USB=y
 CONFIG_USB_DEVICEFS=y
 CONFIG_USB_EHCI_HCD=y
-- 
1.7.5.4


