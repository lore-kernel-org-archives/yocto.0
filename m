Return-Path: <ch@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B03E00C55; Fri, 16 Sep 2016 00:12:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60A46E00A21
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 00:12:28 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3sb6172m2yz3hml9;
	Fri, 16 Sep 2016 09:12:27 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3sb6170JbHzw4lK;
	Fri, 16 Sep 2016 09:12:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id yZQnOX2mOpYN; Fri, 16 Sep 2016 09:12:23 +0200 (CEST)
X-Auth-Info: 9AbEEOYONUTQjOC889+uu3mCimeWwY7gNeplCWrR9bk=
Received: from Orrorin.localdomain (p57B1C9F7.dip0.t-ipconnect.de
	[87.177.201.247])
	(using TLSv1 with cipher DHE-RSA-CAMELLIA256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Fri, 16 Sep 2016 09:12:23 +0200 (CEST)
Message-ID: <1474009943.32095.52.camel@denx.de>
From: Claudius Heine <ch@denx.de>
To: yocto@yoctoproject.org
Date: Fri, 16 Sep 2016 09:12:23 +0200
X-Mailer: Evolution 3.20.5 
Mime-Version: 1.0
Cc: Jan Kiszka <jan.kiszka@siemens.com>
Subject: [meta-intel][Galileo] Kernel configuration isn't applied on linux-yocto-rt
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
X-List-Received-Date: Fri, 16 Sep 2016 07:12:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

I am currently trying to compile the linux-yocto-rt kernel for a custom
board (called iot2000 here) based on the Intel Galileo platform.

The build fails, because the kernel configuration isn't applied.

However, the bitbake environment of the linux-yocto-rt target looks
good to me and everything works when I switch to the linux-yocto
kernel, where the same configuration is applied.

Any help would be appreciated.

Thanks, and have a nice day,
Claudius Heine

$ bitbake linux-yocto-rt
[...]
Build Configuration:
BB_VERSION        = "1.30.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "iot2000"
DISTRO            = "poky"
DISTRO_VERSION    = "2.1.1"
TUNE_FEATURES     = "m32 i586-nlp"
TARGET_FPU        = ""
meta-multimedia   
meta-networking   
meta-python       
meta-oe           = "krogoth:247b1267bbe95719cd4877d2d3cfbaf2a2f4865a"
meta              
meta-poky         
meta-yocto-bsp    = "krogoth:aad7166704021d82ad3a5ec468552f8f10360d41"
meta-intel        = "HEAD:141e71af3c59f9bd5d45029a418de2e1ce90aacd"
meta-intel-iot-middleware =
"master:821cf14c8304669d9ce0c5b87b9be5a6eecff6e5"
meta-iot2000-bsp  
meta-iot2000-example =
"jan/patches:d9177e0902dbd907a9528edf38d522eecd8dc3b9"
meta-java         = "master:8c663efa4f8efccf50d094dbc61c7b78031b3b7d"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: linux-yocto-rt-4.4.18+gitAUTOINC+59290c5f61_b5e21aa988-r0
do_package_qa: QA Issue: Architecture did not match (3 to 62) on
work/i586-nlp-32-intel-common-poky-linux/linux-yocto-
rt/4.4.18+gitAUTOINC+59290c5f61_b5e21aa988-r0/packages-split/kernel-
vmlinux/boot/vmlinux-4.4.20-rt19-yocto-preempt-rt [arch]
ERROR: linux-yocto-rt-4.4.18+gitAUTOINC+59290c5f61_b5e21aa988-r0
do_package_qa: QA run found fatal errors. Please consider fixing them.
ERROR: linux-yocto-rt-4.4.18+gitAUTOINC+59290c5f61_b5e21aa988-r0
do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/build/fast/tmp/work/i586-
nlp-32-intel-common-poky-linux/linux-yocto-
rt/4.4.18+gitAUTOINC+59290c5f61_b5e21aa988-
r0/temp/log.do_package_qa.5212
ERROR: Task 16 (/home/build/yocto/meta/recipes-kernel/linux/linux-
yocto-rt_4.4.bb, do_package_qa) failed with exit code '1'
NOTE: Tasks Summary: Attempted 389 tasks of which 388 didn't need to be
rerun and 1 failed.
No currently running tasks (388 of 390)

Summary: 1 task failed:
  /home/build/yocto/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb,
do_package_qa
Summary: There were 3 ERROR messages shown, returning a non-zero exit
code.

local.conf: http://pastebin.com/PQJZvgtt
iot2000.conf: http://pastebin.com/HLXX3Ej2
linux-yocto-rt files: http://bit.ly/2csJXuV
linux-yocto-rt environment: http://bit.ly/2cNGF25
linux-yocto-rt resulting config: http://bit.ly/2d4BSv3

-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-54 Fax: (+49)-8142-66989-80 Email: ch@denx.de

