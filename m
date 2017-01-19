Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C5A7E00A9B; Thu, 19 Jan 2017 03:51:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBDD1E00A9B
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:25 -0800 (PST)
Received: by mail-yw0-f195.google.com with SMTP id l75so3694138ywb.3
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=J9s0nGfhW7i5fhQ7UCtWmc7i0NDGTX+cWKr2+AKeR6I=;
	b=l1Gt7JuJqw8YDsFiABZU7LY3GgtBZ9NKGNpFL2qZfHlnwHmaMBnZnYUtcF9CALD/hV
	g73bJOZ99UphIJgNUPApGkSLBNFaa/pqmj8gU/Bc7mfdzfQUIDY1/3NRpuHLaBC4dNh8
	BeUWbIPRs8iR8PozzO9j7j3MFF6RDllt2Xm7b9kzglZhl8tnSjs3tB0/aQ/kRziz2KKm
	JcFmy/nLzxcst2qu0zjCKg4SnkbMwB2vD4hQuylN7gvMtY7573zPOw0u/ytCSY/3Nl0d
	Hr8ZSq2UqlINew4LKQR2aNvS1fsh8nv9NMZTStwP4EfDqfzNZRUKHc2/Is+lAVUFo5W5
	r5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=J9s0nGfhW7i5fhQ7UCtWmc7i0NDGTX+cWKr2+AKeR6I=;
	b=D9LMJ84TvErIU70j8ZXEoWdlyChqUCnO3ARuQFcJW2hPAS5kkBCXJlLiqqNPENMpR0
	LkIHZj/VN9l2+aFT9TfZ/f7l3juis6XA4kGBkLVCwDCHGUDWB9RtNYq4f/GEudt4zekB
	9TEGP4mjL1f1q6U/Y8jzbx7cR3rHUaFulJtqUy3oy36ikybwERXoYOLed6RmSJ5Z1MLR
	7a45kz4Tc0TL92wf7GpdUGckpKcOyIm04bIlbzKoUX1M5uYUASKnP6da8wZwyQkgf4w7
	Zpxn1GyWRI3/P+4P4rlhTybwG1coP/3biiumn0WzjB3ceevNX+aa2CQ2V0f/rRXlb5cm
	QeSw==
X-Gm-Message-State: AIkVDXLynGSyzp/Uood6TjZOSztpb2uJRTaG7Pp8RY+KjNVaI6KLQ9mm9Qa0rPH3TofRIA==
X-Received: by 10.55.220.199 with SMTP id v190mr7346678qki.42.1484826684761;
	Thu, 19 Jan 2017 03:51:24 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id
	i48sm2833382qti.37.2017.01.19.03.51.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 03:51:24 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 12:50:56 +0100
Message-Id: <1484826659-21692-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 3/6] linux-raspberrypi: Drop v4.7
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
X-List-Received-Date: Thu, 19 Jan 2017 11:51:27 -0000

From: Paul Barker <paul@paulbarker.me.uk>

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 .../0001-fix-dtbo-rules.patch                      | 44 ----------------------
 recipes-kernel/linux/linux-raspberrypi_4.7.bb      |  9 -----
 2 files changed, 53 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.7.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
deleted file mode 100644
index 5113e23..0000000
--- a/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
+++ /dev/null
@@ -1,44 +0,0 @@
-From 13c8784da3dbd977f64cec740eba775b6fab11c2 Mon Sep 17 00:00:00 2001
-From: Herve Jourdain <herve.jourdain@neuf.fr>
-Date: Fri, 20 May 2016 16:02:23 +0800
-Subject: [yocto][meta-raspberrypi][PATCH v4 4/5] linux-raspberrypi_4.4.inc:
- support for .dtbo files for dtb overlays
-
-Upstream-Status: Pending
-
-Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
-Patch the kernel, which has faulty rules to generate .dtbo the way yocto does
-
-Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
----
- .../0001-fix-dtbo-rules.patch                      | 27 ++++++++++++++++++++++
- 1 file changed, 27 insertions(+)
- create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
-
-diff --git a/arch/arm/Makefile b/arch/arm/Makefile
-index a2e7cf7..673c1cb 100644
---- a/arch/arm/Makefile
-+++ b/arch/arm/Makefile
-@@ -333,6 +333,8 @@ $(INSTALL_TARGETS):
- 
- %.dtb: | scripts
- 	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
-+%.dtbo: | scripts
-+	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
- 
- PHONY += dtbs dtbs_install
- 
-diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
-index 3079c4f..6cc3766 100644
---- a/scripts/Makefile.lib
-+++ b/scripts/Makefile.lib
-@@ -293,7 +293,8 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
- 	$(call if_changed_dep,dtc)
- 
- quiet_cmd_dtco = DTCO    $@
--cmd_dtco = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
-+cmd_dtco = mkdir -p $(dir ${dtc-tmp}) ; \
-+	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
- 	$(objtree)/scripts/dtc/dtc -@ -H epapr -O dtb -o $@ -b 0 \
- 		-i $(dir $<) $(DTC_FLAGS) \
- 		-d $(depfile).dtc.tmp $(dtc-tmp) ; \
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.7.bb b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
deleted file mode 100644
index 0315f8f..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_4.7.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
-
-LINUX_VERSION ?= "4.7.7"
-
-SRCREV = "a45a35c08598b23f9fd82e49c83b46c7d536244f"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y \
-           file://0001-fix-dtbo-rules.patch \
-"
-require linux-raspberrypi.inc
-- 
2.7.4


