Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A20FE009C2; Thu, 16 Mar 2017 04:40:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E375E0094C
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 04:40:51 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20170316114049720_0684
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 11:40:49 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [216.191.234.70] (port=54475 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1coTls-0007S6-7N
	for yocto@yoctoproject.org; Thu, 16 Mar 2017 07:40:44 -0400
Date: Thu, 16 Mar 2017 07:40:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@uk63952.mitel.com
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1703160736320.23266@uk63952.mitel.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: [PATCH] meta-yocto-bsp: Remove superfluous OVERRIDES in machine conf files
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
X-List-Received-Date: Thu, 16 Mar 2017 11:40:54 -0000
Content-Type: text/plain; charset=US-ASCII


In machine configuration files, there is no need to use OVERRIDES that
match the precise machine being defined, so remove them for clarity
and consistency from these lines in those respective files:

  PREFERRED_VERSION_linux-yocto_genericx86-64 ?= "4.10%"
  PREFERRED_VERSION_linux-yocto_genericx86 ?= "4.10%"
  UBOOT_MACHINE_mpc8315e-rdb = "MPC8315ERDB_config"

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i'm hoping i'm not misunderstanding anything here.

diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index 514265e..bfedd84 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -7,6 +7,6 @@ DEFAULTTUNE ?= "core2-64"
 require conf/machine/include/tune-core2.inc
 require conf/machine/include/genericx86-common.inc

-PREFERRED_VERSION_linux-yocto_genericx86-64 ?= "4.10%"
+PREFERRED_VERSION_linux-yocto ?= "4.10%"

 SERIAL_CONSOLES_CHECK = "ttyS0"
diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 34a52c3..af03b86 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -9,4 +9,4 @@ require conf/machine/include/genericx86-common.inc

 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "gma500-gfx-check"

-PREFERRED_VERSION_linux-yocto_genericx86 ?= "4.10%"
+PREFERRED_VERSION_linux-yocto ?= "4.10%"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index fa02edc..4ce3494 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -8,7 +8,7 @@ require conf/machine/include/tune-ppce300c3.inc
 KERNEL_IMAGETYPE = "uImage"

 EXTRA_IMAGEDEPENDS += "u-boot"
-UBOOT_MACHINE_mpc8315e-rdb = "MPC8315ERDB_config"
+UBOOT_MACHINE = "MPC8315ERDB_config"

 SERIAL_CONSOLE = "115200 ttyS0"


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


