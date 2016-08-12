Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF442E0125E; Thu, 11 Aug 2016 18:06:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BCA9E01255
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:34 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id h186so581638pfg.2
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=LzabGxkukCzlfrgtR/or5xq3tARBHE9g1FH/XTNrBPQ=;
	b=qNhPfemlK2HS2jMQOTwMzbmO2EIZ8gzBMLxNYMf51oR6zvEetW3N3cCdSGQHuN+URv
	NloDhI3q4oQtNVbn9cLYmJq6gxpHUwyMkD8p1eyfWJZKyj940hxgpr2UKVysuAtUrjDg
	+otoZJc03imIPkRk02bjV+IKtd/wI761osf8DUaH6lDtiAy8ILKkGd1OpTYgmkgy6k7F
	D4G5dU7ZfTBabRi5qAok8J0aEqeXrj8/DBFG3tcqhyq/zBBumdhcYOe4XOT7fkfi7R5b
	yCQU63owPPPArabBlifJlKaw8p+7yMwHasEb5rDXxuSL1CErmQMboa72FKQm2/m0UxJ3
	5niQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=LzabGxkukCzlfrgtR/or5xq3tARBHE9g1FH/XTNrBPQ=;
	b=ES9TyN5+UMFOXnWdwBsZhY04dFeB7qMgoMgb/TRRNojQ7R+l20lCJRvzAlBzdBvCul
	+zvL8m9nZUI7T7ZBlHAMJts04fn6qta76RkDwKk7yR84t7FlYcyqTnALIoX93rAgUhcM
	N0b4vyfXgNUFq3gUULyGeO0/yb8E9hYLDcok6DsTqRblovMnxuy82GhDLwRkLReqUz1t
	Wl0DSeX6UN11wRbufZF8aBnOFwcVevjdH5vSDou7J17klAMMd0eMRA/eRTjVts1Bdl1X
	de2ysFm06fenMrNmFRg8QE7ndSFnre2s1Omvz1g/dFiPowoEQfAOafMPlyQEk4LqK84b
	T0AQ==
X-Gm-Message-State: AEkoouutzghnjw2MPC3tEexbG+Q2VL/gzUkdgug4PgAGF0QgVt5WVdoDBZhotJe8yFJ5xw==
X-Received: by 10.98.9.194 with SMTP id 63mr22492632pfj.56.1470963993745;
	Thu, 11 Aug 2016 18:06:33 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:33 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:06:03 -0700
Message-Id: <20160812010608.31182-18-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 18/23] linux-raspberrypi: Add recipe for 4.7 release
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:40 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0001-fix-dtbo-rules.patch                      | 44 ++++++++++++++++++++++
 recipes-kernel/linux/linux-raspberrypi_4.7.bb      |  9 +++++
 2 files changed, 53 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.7.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
new file mode 100644
index 0000000..5113e23
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
@@ -0,0 +1,44 @@
+From 13c8784da3dbd977f64cec740eba775b6fab11c2 Mon Sep 17 00:00:00 2001
+From: Herve Jourdain <herve.jourdain@neuf.fr>
+Date: Fri, 20 May 2016 16:02:23 +0800
+Subject: [yocto][meta-raspberrypi][PATCH v4 4/5] linux-raspberrypi_4.4.inc:
+ support for .dtbo files for dtb overlays
+
+Upstream-Status: Pending
+
+Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
+Patch the kernel, which has faulty rules to generate .dtbo the way yocto does
+
+Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
+---
+ .../0001-fix-dtbo-rules.patch                      | 27 ++++++++++++++++++++++
+ 1 file changed, 27 insertions(+)
+ create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
+
+diff --git a/arch/arm/Makefile b/arch/arm/Makefile
+index a2e7cf7..673c1cb 100644
+--- a/arch/arm/Makefile
++++ b/arch/arm/Makefile
+@@ -333,6 +333,8 @@ $(INSTALL_TARGETS):
+ 
+ %.dtb: | scripts
+ 	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
++%.dtbo: | scripts
++	$(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
+ 
+ PHONY += dtbs dtbs_install
+ 
+diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
+index 3079c4f..6cc3766 100644
+--- a/scripts/Makefile.lib
++++ b/scripts/Makefile.lib
+@@ -293,7 +293,8 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
+ 	$(call if_changed_dep,dtc)
+ 
+ quiet_cmd_dtco = DTCO    $@
+-cmd_dtco = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
++cmd_dtco = mkdir -p $(dir ${dtc-tmp}) ; \
++	$(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
+ 	$(objtree)/scripts/dtc/dtc -@ -H epapr -O dtb -o $@ -b 0 \
+ 		-i $(dir $<) $(DTC_FLAGS) \
+ 		-d $(depfile).dtc.tmp $(dtc-tmp) ; \
diff --git a/recipes-kernel/linux/linux-raspberrypi_4.7.bb b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
new file mode 100644
index 0000000..44ac961
--- /dev/null
+++ b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+LINUX_VERSION ?= "4.7.0"
+
+SRCREV = "d38b45a21294eaf01aa7568aaeb161d7553477e9"
+SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y \
+           file://0001-fix-dtbo-rules.patch \
+"
+require linux-raspberrypi.inc
-- 
2.9.2


