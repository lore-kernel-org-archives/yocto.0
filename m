Return-Path: <raghavendra.kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70741E008A6; Tue,  3 Feb 2015 04:40:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.inedasystems.com (mail.inedasystems.com [202.153.34.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C1DBE0086F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 04:40:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 17C5E3E6D7B
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 18:10:40 +0530 (IST)
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id GDpo5h81Hmgu; Tue,  3 Feb 2015 18:10:39 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 536B23E6D74;
	Tue,  3 Feb 2015 18:10:39 +0530 (IST)
X-Virus-Scanned: amavisd-new at inedasystems.com
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id 8S8rr4HZ0haQ; Tue,  3 Feb 2015 18:10:39 +0530 (IST)
Received: from mail.inedasystems.com (mail.inedasystems.com [192.168.24.225])
	by mail.inedasystems.com (Postfix) with ESMTP id 2CD193E6D6F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 18:10:39 +0530 (IST)
Date: Tue, 3 Feb 2015 18:10:35 +0530 (IST)
From: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>
To: yocto@yoctoproject.org
Message-ID: <17820165.95.1422967233382.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
MIME-Version: 1.0
X-Originating-IP: [192.168.42.55]
X-Mailer: Zimbra 8.0.3_GA_5664 (Zimbra Desktop/7.2.5_12038_Linux)
Thread-Topic: yocto-custom-kernel issue
Thread-Index: UYZI93tQtIPfALMas+NjZR+kdPN9jg==
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
Subject: yocto-custom-kernel issue
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
X-List-Received-Date: Tue, 03 Feb 2015 12:40:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,
 I want to add BSP layer for my mechine and I should take the our own customized kernel source(our kernel source).

 For that I add the BSP layer and wrote the recipe for that.

 My recipe is as follows:

*******************************************************************************************************************************************************

 # This file was derived from the linux-yocto-custom.bb recipe in
# oe-core.
#
# linux-yocto-custom.bb:
#
#   A yocto-bsp-generated kernel recipe that uses the linux-yocto and
#   oe-core kernel classes to apply a subset of yocto kernel
#   management to git managed kernel repositories.
#
# Warning:
#
#   Building this kernel without providing a defconfig or BSP
#   configuration will result in build or boot errors. This is not a
#   bug.
#
# Notes:
#
#   patches: patches can be merged into to the source git tree itself,
#            added via the SRC_URI, or controlled via a BSP
#            configuration.
#
#   example configuration addition:
#            SRC_URI += "file://smp.cfg"
#   example patch addition:
#            SRC_URI += "file://0/home/testuser/yocto.git/android-linux-mti-unif-3.10.14/arch/mips/configs001-linux-version-tweak.patch
#   example feature addition:
#            SRC_URI += "file://feature.scc"
#
inherit kernel
require recipes-kernel/linux/linux-yocto.inc

SRC_URI = "git://192.168.42.75/vineethchowdhary/incdhad1-kernel-3-10.git;protocol=http;bareclone=1"

SRC_URI += "file://defconfig"

SRC_URI += "file://mydhanush.scc \
            file://mydhanush.cfg \
            file://mydhanush-user-config.cfg \
            file://mydhanush-user-patches.scc \
           "


LINUX_VERSION ?= "3.10.14"
LINUX_VERSION_EXTENSION ?= "-custom"

#SRCREV="12bbf6468e2ef179800aaab46c724f523b5002e3"
SRCREV="f91e563c45d457aa441f687eda294ad899e2b25f"
PR = "r0"
PV = "${LINUX_VERSION}+git${SRCPV}"

#COMPATIBLE_MACHINE_mydhanush = "mydhanush"
COMPATIBLE_MACHINE_mydhanush = "mydhanush"

***************************************************************************************************************************************************************


but I got error as follows:

Log data follows:
| DEBUG: Executing shell function do_kernel_checkout
| ERROR: S is not set to the linux source directory. Check
| ERROR: the recipe and set S to the proper extracted subdirectory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_kernel_checkout (log file is located at /home/testuser/poky/build/tmp/work/mydhanush-poky-linux/linux-yocto-custom/3.10.14+gitAUTOINC+f91e563c45-r0/temp/log.do_kernel_checkout.11798)

could you please help for resolving this issue.

Thanks and Regards,

Raghavendra.

