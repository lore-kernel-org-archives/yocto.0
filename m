Return-Path: <koansoftware@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9362FE00B73; Mon, 12 May 2014 09:01:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (koansoftware[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ee0-f47.google.com (unknown [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40C4FE00985
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 09:01:15 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id c13so4835997eek.34
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 09:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:user-agent:mime-version:to:subject
	:content-type; bh=qnYA+JuArBKVbLlMiVYWvY1Eoj+Q+0QuavX0WDtWQQI=;
	b=JabmFILmOAFuOqD4ApamsmDQ0mwh9tB5AYN8IKYE2OXkuROzpQi3SiIdJCW8fyWL2b
	V/2mqt03XpV6IMHPIJmh0si5zjoY59VBcTAKLtSLfznYFOGHP9qFOdy5FNLSJxrnhOng
	NyziiHVt2akLxegDtxkls37bHvyO1kAvmlUrjbTfKNeo6Cq5QePjJ+u9AUI+CSUHXOh1
	ZlVevYXvycQb0YLQBnHaGgpmu2EJcVGoV5lF0Ydfe1J3Ju9joZCEcTgF46s8dHoFJsw3
	Y6dj1gkcfErJ4Qsp4WmVOzMpj+M0cu97GAdmGZSU5DQai/OzRGO6VaFj1CxF03CwlOjS
	mDEA==
X-Received: by 10.14.99.68 with SMTP id w44mr33349677eef.82.1399910024904;
	Mon, 12 May 2014 08:53:44 -0700 (PDT)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPSA id
	e44sm24770093eeg.24.2014.05.12.08.53.43 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 12 May 2014 08:53:43 -0700 (PDT)
Message-ID: <5370EE85.30809@gmail.com>
Date: Mon, 12 May 2014 17:53:41 +0200
From: Marco <koansoftware@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-atmel] Unified IMAGE_POSTPROCESS_COMMAND in image recipes
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
X-List-Received-Date: Mon, 12 May 2014 16:01:22 -0000
X-Groupsio-MsgNum: 19562
Content-Type: multipart/mixed; boundary="------------070706040807020707060303"

--------------070706040807020707060303
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

please find attached patches for

- Unified IMAGE_POSTPROCESS_COMMAND in your image recipes
https://github.com/linux4sam/meta-atmel/pull/11

Ciao
-- 
Marco Cavallini | KOAN sas | Bergamo - Italia
  embedded and real-time software engineering
Phone:+39-035-255.235 - Fax:+39-178-22.39.748
       http://www.KoanSoftware.com

--------------070706040807020707060303
Content-Type: text/x-patch;
 name="0002-Unified-usba_udc-and-g_serial-setting-for-all-atmel-.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0002-Unified-usba_udc-and-g_serial-setting-for-all-atmel-.pa";
 filename*1="tch"

From 0050a6a7fa34930f587c07b1c7ae9a73b4c3ba91 Mon Sep 17 00:00:00 2001
From: Marco Cavallini <m.cavallini@koansoftware.com>
Date: Mon, 12 May 2014 17:34:20 +0200
Subject: [meta-atmel 2/2] Unified usba_udc and g_serial setting for all
 atmel-xplained-*-image.bb

 * Moved common parts in atmel-demo-image.inc

Signed-off-by: Marco Cavallini <m.cavallini@koansoftware.com>
---
 recipes-core/images/atmel-demo-image.inc             | 18 ++++++++++++++++++
 recipes-core/images/atmel-xplained-demo-image.bb     | 12 ------------
 recipes-core/images/atmel-xplained-lcd-demo-image.bb | 12 ------------
 3 files changed, 18 insertions(+), 24 deletions(-)

diff --git a/recipes-core/images/atmel-demo-image.inc b/recipes-core/images/atmel-demo-image.inc
index 3101e20..394bebe 100644
--- a/recipes-core/images/atmel-demo-image.inc
+++ b/recipes-core/images/atmel-demo-image.inc
@@ -35,3 +35,21 @@ inherit core-image
 
 # we don't need the kernel in the image
 ROOTFS_POSTPROCESS_COMMAND += "rm -f ${IMAGE_ROOTFS}/boot/*Image*; "
+
+# Unified usba_udc and g_serial
+module_autoload_atmel_usba_udc = "atmel_usba_udc"
+module_autoload_g_serial = "g_serial"
+
+sama5d3_xplained_rootfs_postprocess() {
+    curdir=$PWD
+    cd ${IMAGE_ROOTFS}
+
+    # autoload needed modules
+    cd etc
+    echo "atmel_usba_udc" >> modules
+    echo "g_serial" >> modules
+
+    cd $curdir
+}
+
+ROOTFS_POSTPROCESS_COMMAND += "sama5d3_xplained_rootfs_postprocess; "
diff --git a/recipes-core/images/atmel-xplained-demo-image.bb b/recipes-core/images/atmel-xplained-demo-image.bb
index 5a88add..59b4572 100644
--- a/recipes-core/images/atmel-xplained-demo-image.bb
+++ b/recipes-core/images/atmel-xplained-demo-image.bb
@@ -8,15 +8,3 @@ IMAGE_INSTALL += "\
     packagegroup-base-3g \
     packagegroup-base-usbhost \
     "
-
-sama5d3_xplained_rootfs_postprocess() {
-    curdir=$PWD
-    cd ${IMAGE_ROOTFS}
-
-    # autoload needed modules
-    cd etc
-    echo "atmel_usba_udc" >> modules
-    echo "g_serial" >> modules
-
-    cd $curdir
-}
diff --git a/recipes-core/images/atmel-xplained-lcd-demo-image.bb b/recipes-core/images/atmel-xplained-lcd-demo-image.bb
index cecd4c3..6cda1c3 100644
--- a/recipes-core/images/atmel-xplained-lcd-demo-image.bb
+++ b/recipes-core/images/atmel-xplained-lcd-demo-image.bb
@@ -15,15 +15,3 @@ IMAGE_INSTALL += "\
     tslib-tests \
     tslib-calibrate \
     "
-
-sama5d3_xplained_rootfs_postprocess() {
-    curdir=$PWD
-    cd ${IMAGE_ROOTFS}
-
-    # autoload needed modules
-    cd etc
-    echo "atmel_usba_udc" >> modules
-    echo "g_serial" >> modules
-
-    cd $curdir
-}
-- 
1.8.4


--------------070706040807020707060303--
