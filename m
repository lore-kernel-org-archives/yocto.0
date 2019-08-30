Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06D42E00E0E; Fri, 30 Aug 2019 09:12:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DC46E00C46
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 09:12:51 -0700 (PDT)
Received: by mail-io1-f68.google.com with SMTP id j5so15057243ioj.8
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2019 09:12:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=OQyCnUWMQNgnQosAbB/oYIzvoYGRBfIycMlxXkmwKuo=;
	b=fDieevUH8MqUXmG8p/jv2fDBBIgq18zMuE22nPkmJ+mfkIg2rPownhZoekn0AK9Yum
	RuZKV/vmV6necWdHcFme2oqDVVSdaHjMhWkvZA3lSjQnd1AfN0fAmEQhOcY3jROI6ZeQ
	fNYA7bLU7aUqcUPaTTTEkMw3sZRTJa98njxjbiVve1JslzDMc5zzMkY4BypvxNfVagXR
	tFkvRql/ayd02BI8PvRrlhb1vPq2KSKeUSR31oAS01Q97BHhS4Ua8OZ9x7fohbGA7XkN
	lf7kgconLbKtBDYDbhY38VNJiE7kC6QSHie06W4FuiBWWw76pbW5Lec7BbwLiQSjw7au
	4cVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=OQyCnUWMQNgnQosAbB/oYIzvoYGRBfIycMlxXkmwKuo=;
	b=I6m5q0ZGPAXrADSxXsRdiVDf8ZB6zL/R7Toyk5c+/TC8XJ8BySaQYlVJmc/dYfd/YH
	JWZQyQVmUsFKnKLS43jLffrhPcyw5UvTlfGg98wmYrUx9KMHwQ5YpSd4XTFDwFJHwRkQ
	aMdZCUCsWb+J+1Xb6krzHsrLbhqBIk5a5SQqWhfjE4UqPG43Zg9TU3KzJIPOASnWDgli
	Qeb7wAMFFpq1V+5w1E/IC50oRopFin6BnqtqF2EbbiDPqQ/T3caEHc3HToT1qFNFsllj
	teJ4EKEcUUyvBQKJZYhrsWch6TlZPxam3o5naPHd6ILCT6kNWUmVnMB7zM8Bx6LXqe2b
	Idfg==
X-Gm-Message-State: APjAAAWnXB0MYL23HzfXfki6tMxCknzYEc1ARCeMZDCm7ZXJoFMml46A
	2f53CP++WvyPouCvS2V0PkF5gy2qc6E=
X-Google-Smtp-Source: APXvYqys5FoZswIASsO8YSKZOxuVfHoJZI4mKc3n5QeJ8CuOoZQRDz9ZG2ZQdSAIicY0iAIm57GiWg==
X-Received: by 2002:a6b:f203:: with SMTP id q3mr9821896ioh.208.1567181570614; 
	Fri, 30 Aug 2019 09:12:50 -0700 (PDT)
Received: from localhost.localdomain
	(CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com.
	[174.112.251.208])
	by smtp.gmail.com with ESMTPSA id t2sm9422913iod.81.2019.08.30.09.12.49
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Fri, 30 Aug 2019 09:12:49 -0700 (PDT)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Date: Fri, 30 Aug 2019 12:12:48 -0400
Message-Id: <20190830161248.62593-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH v2] meta-yocto-bsp: Bump to the v5.2 kernel
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
X-List-Received-Date: Fri, 30 Aug 2019 16:12:54 -0000
Content-Transfer-Encoding: 8bit

From: Kevin Hao <kexin.hao@windriver.com>

Boot test for all the supported boards. Also drop the v5.0 bbappend
since we no plan to support it anymore. There are some
kernel_configcheck warning when building some boards, the patches [1]
for them have been sent to kernel-meta for merging.

[1] https://lists.yoctoproject.org/pipermail/linux-yocto/2019-August/007908.html

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---

v2:

This is a minor tweak to the SRCREVs from Kevin's original version,
everything else is unchanged.

The meta changes are also in the latest linux-yocto 5.2 recipes.

Bruce

 .../conf/machine/beaglebone-yocto.conf        |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf   |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |  2 +-
 .../linux/linux-yocto_5.0.bbappend            | 27 -------------------
 .../linux/linux-yocto_5.2.bbappend            | 27 +++++++++++++++++++
 5 files changed, 30 insertions(+), 30 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 57b799294d..08dd3a5074 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.0%"
+PREFERRED_VERSION_linux-yocto ?= "5.2%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 88592dbc85..6331368f87 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.0%"
+PREFERRED_VERSION_linux-yocto ?= "5.2%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index e2dce56738..5382796284 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -15,7 +15,7 @@ SERIAL_CONSOLES = "115200;ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "5.0%"
+PREFERRED_VERSION_linux-yocto ?= "5.2%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
deleted file mode 100644
index d7cf1216f4..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
+++ /dev/null
@@ -1,27 +0,0 @@
-KBRANCH_genericx86  = "v5.0/standard/base"
-KBRANCH_genericx86-64  = "v5.0/standard/base"
-KBRANCH_edgerouter = "v5.0/standard/edgerouter"
-KBRANCH_beaglebone-yocto = "v5.0/standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "v5.0/standard/fsl-mpc8315e-rdb"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-KMACHINE_beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine_genericx86    ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
-SRCREV_machine_genericx86-64 ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
-SRCREV_machine_edgerouter ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
-SRCREV_machine_beaglebone-yocto ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
-SRCREV_machine_mpc8315e-rdb ?= "670ce7e9db627d0c2067cfdb571ddc1f117818d8"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-
-LINUX_VERSION_genericx86 = "5.0.13"
-LINUX_VERSION_genericx86-64 = "5.0.13"
-LINUX_VERSION_edgerouter = "5.0.13"
-LINUX_VERSION_beaglebone-yocto = "5.0.13"
-LINUX_VERSION_mpc8315e-rdb = "5.0.13"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
new file mode 100644
index 0000000000..b7cefd25ca
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
@@ -0,0 +1,27 @@
+KBRANCH_genericx86  = "v5.2/standard/base"
+KBRANCH_genericx86-64  = "v5.2/standard/base"
+KBRANCH_edgerouter = "v5.2/standard/edgerouter"
+KBRANCH_beaglebone-yocto = "v5.2/standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "v5.2/standard/fsl-mpc8315e-rdb"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+KMACHINE_beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine_genericx86    ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
+SRCREV_machine_genericx86-64 ?= "35276d20c01a78ee3640a074446b0c15c486c5d0"
+SRCREV_machine_edgerouter ?= "35276d20c01a78ee3640a074446b0c15c486c5d0"
+SRCREV_machine_beaglebone-yocto ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
+SRCREV_machine_mpc8315e-rdb ?= "cae01d71ef67eaafec75ce24f49b038b705b8711"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+
+LINUX_VERSION_genericx86 = "5.2.10"
+LINUX_VERSION_genericx86-64 = "5.2.10"
+LINUX_VERSION_edgerouter = "5.2.10"
+LINUX_VERSION_beaglebone-yocto = "5.2.10"
+LINUX_VERSION_mpc8315e-rdb = "5.2.10"
-- 
2.19.1


