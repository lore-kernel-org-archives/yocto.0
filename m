Return-Path: <koansoftware@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51F2CE00B00; Mon, 12 May 2014 08:59:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (koansoftware[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 398 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 May 2014 08:59:41 PDT
Received: from mail-ee0-f54.google.com (unknown [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF54FE00985
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 08:59:41 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id b57so4873415eek.13
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 08:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:user-agent:mime-version:to:subject
	:content-type; bh=5ITKHuEtYOlyaNL9h0Xy/XQY9PSc1scb6qRKxoxO6IA=;
	b=V+NCuwNYgYDXWc/sW+JQRKfTB1VHuWJ7ox1VRqOsf6Ocx0vMYxO0Nk1FR6old+4jEc
	KGldMdg14qIq8cFkW/5Pz1N0gJThbjYzOl7pj47XUh9NqK3qUT7D1/muZn9qtDpLiGHl
	8aBBukDNDuUphUsZw/3Y5okwDcUWAfB/Oqn8y9Ha+/1CIpyGJh5ay5U+5V34EGBm4J6t
	ORsSLTItWBoMo7MQ5obULAl4cLCzQsln3HBo97sgp7QvUxjvtt7uNA36MQsj5IUgT2Bw
	SywT+a9J2LV5Vid4bK/gkmgai6WiJjnS9FmZxeDzmc8JYh1POgo2krQoc83M2nt+50PH
	j/Mg==
X-Received: by 10.14.213.6 with SMTP id z6mr10890105eeo.98.1399909982060;
	Mon, 12 May 2014 08:53:02 -0700 (PDT)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id
	m44sm33747052eeh.14.2014.05.12.08.53.00 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 12 May 2014 08:53:00 -0700 (PDT)
Message-ID: <5370EE5A.3070901@gmail.com>
Date: Mon, 12 May 2014 17:52:58 +0200
From: Marco <koansoftware@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-atmel] automatic bootloaders generation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 May 2014 15:59:45 -0000
X-Groupsio-MsgNum: 19561
Content-Type: multipart/mixed; boundary="------------050000000104060606090706"

--------------050000000104060606090706
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

please find attached patches for

- automatic bootloaders generation
https://github.com/linux4sam/meta-atmel/pull/16

Ciao
-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com

--------------050000000104060606090706
Content-Type: text/x-patch;
 name="0001-Added-bootloaders-to-the-recipe-of-every-machine.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Added-bootloaders-to-the-recipe-of-every-machine.patch"

From cc08f5529a08498b07482f80cd0d99a391af034d Mon Sep 17 00:00:00 2001
From: Marco Cavallini <m.cavallini@koansoftware.com>
Date: Mon, 12 May 2014 17:32:24 +0200
Subject: [meta-atmel 1/2] Added bootloaders to the recipe of every machine

 * Include file with
 * EXTRA_IMAGEDEPENDS += "at91bootstrap u-boot"

Signed-off-by: Marco Cavallini <m.cavallini@koansoftware.com>
---
 conf/machine/at91sam9rlek.conf       | 1 +
 conf/machine/at91sam9x5ek.conf       | 1 +
 conf/machine/include/bootloaders.inc | 2 ++
 conf/machine/sama5d3_xplained.conf   | 8 +-------
 conf/machine/sama5d3xek.conf         | 1 +
 5 files changed, 6 insertions(+), 7 deletions(-)
 create mode 100644 conf/machine/include/bootloaders.inc

diff --git a/conf/machine/at91sam9rlek.conf b/conf/machine/at91sam9rlek.conf
index 6ed6f81..4a41b19 100644
--- a/conf/machine/at91sam9rlek.conf
+++ b/conf/machine/at91sam9rlek.conf
@@ -3,6 +3,7 @@
 #@DESCRIPTION: Machine configuration for Atmel's evaluation board
 
 require conf/machine/include/tune-arm926ejs.inc
+require conf/machine/include/bootloaders.inc
 
 MACHINE_FEATURES = "kernel26 apm alsa ext2 ext3 usbgadget screen touchscreen ppp"
 
diff --git a/conf/machine/at91sam9x5ek.conf b/conf/machine/at91sam9x5ek.conf
index 5308536..de5598a 100644
--- a/conf/machine/at91sam9x5ek.conf
+++ b/conf/machine/at91sam9x5ek.conf
@@ -3,6 +3,7 @@
 #@DESCRIPTION: Machine configuration for Atmel's evaluation board
 
 require conf/machine/include/tune-arm926ejs.inc
+require conf/machine/include/bootloaders.inc
 
 MACHINE_FEATURES = "kernel26 apm alsa ext2 ext3 usbhost usbgadget screen camera can touchscreen ppp"
 KERNEL_DEVICETREE = "${S}/arch/arm/boot/dts/at91sam9g25ek.dts \
diff --git a/conf/machine/include/bootloaders.inc b/conf/machine/include/bootloaders.inc
new file mode 100644
index 0000000..162b7a1
--- /dev/null
+++ b/conf/machine/include/bootloaders.inc
@@ -0,0 +1,2 @@
+# Add bootloaders to the images of every machine
+EXTRA_IMAGEDEPENDS += "at91bootstrap u-boot"
diff --git a/conf/machine/sama5d3_xplained.conf b/conf/machine/sama5d3_xplained.conf
index dcbcedb..24fe2a2 100644
--- a/conf/machine/sama5d3_xplained.conf
+++ b/conf/machine/sama5d3_xplained.conf
@@ -3,6 +3,7 @@
 #@DESCRIPTION: Machine configuration for Atmel's evaluation board
 
 require conf/machine/include/tune-cortexa5.inc
+require conf/machine/include/bootloaders.inc
 
 MACHINE_FEATURES = "kernel26 apm alsa ext2 ext3 usbhost usbgadget screen camera can touchscreen ppp wifi"
 KERNEL_DEVICETREE = " \
@@ -34,10 +35,3 @@ UBI_VOLNAME = "rootfs"
 UBOOT_MACHINE = "sama5d3xek_nandflash_config"
 UBOOT_ENTRYPOINT = "0x20008000"
 UBOOT_LOADADDRESS = "0x20008000"
-
-EXTRA_IMAGEDEPENDS += "at91bootstrap u-boot-at91"
-
-module_autoload_atmel_usba_udc = "atmel_usba_udc"
-module_autoload_g_serial = "g_serial"
-
-ROOTFS_POSTPROCESS_COMMAND += "sama5d3_xplained_rootfs_postprocess; "
diff --git a/conf/machine/sama5d3xek.conf b/conf/machine/sama5d3xek.conf
index 65487be..07d967d 100644
--- a/conf/machine/sama5d3xek.conf
+++ b/conf/machine/sama5d3xek.conf
@@ -3,6 +3,7 @@
 #@DESCRIPTION: Machine configuration for Atmel's evaluation board
 
 require conf/machine/include/tune-cortexa5.inc
+require conf/machine/include/bootloaders.inc
 
 MACHINE_FEATURES = "kernel26 apm alsa ext2 ext3 usbhost usbgadget screen camera can touchscreen ppp"
 KERNEL_DEVICETREE = " \
-- 
1.8.4


--------------050000000104060606090706--
