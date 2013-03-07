Return-Path: <huanmateme@163.com>
Received: from m13-77.163.com (unknown [220.181.13.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF80E0072F
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 07:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=LXJ2JqBRZ6q2037STxCcJOW5fK62HW+FZfkk
	lJWOOIY=; b=jIxIU69sdJgvDSv6ReXfQhWCYP8BqRoADXEadkCTzr4uyCtwUjA/
	bQoiZThjzvgJ+6r2FYcqdLqxPQdjh1S5D7q5i8Tgc2rdFl8Hzdfo75yx8e+QfkSd
	E4cC+t6xh0FLqbtVZAjCSLdBj7HQNO8mqDQvyp2HmzmaNYjSDSH5+ic=
Received: from huanmateme$163.com ( [222.128.185.177] ) by
	ajax-webmail-wmsvr77 (Coremail) ; Thu, 7 Mar 2013 23:09:45 +0800 (CST)
X-Originating-IP: [222.128.185.177]
Date: Thu, 7 Mar 2013 23:09:45 +0800 (CST)
From: Biao <huanmateme@163.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20130201(21528.5249.5248) Copyright (c) 2002-2013 www.mailtech.cn
	163com
MIME-Version: 1.0
Message-ID: <10f0001e.10c21.13d45669ae7.Coremail.huanmateme@163.com>
X-CM-TRANSID: TcGowECZ1UG6rThRBa8HAA--.2713W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbB0ADYgFEABBUE8QABs8
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: "trap: 80: SIGHUP: bad trap" comes up when building core-image-sato.
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
X-List-Received-Date: Thu, 07 Mar 2013 15:10:17 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_253257_519784969.1362668985063"

------=_Part_253257_519784969.1362668985063
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: 7bit

I got an ERROR when building the core-image-sato.


branch is danny-8.0



Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-10.04"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "qemux86-64"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130307"
TUNE_FEATURES     = "m64"
TARGET_FPU        = ""
meta              
meta-yocto        
meta-yocto-bsp    = "danny-8.0:6663b79452bcdd95fc69e1ec853baae6c5297ab2"


NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: validating kernel config, see log.do_kernel_configcheck for details
WARNING: QA Issue: rpm: Files/directories were installed but not shipped
  /etc
  /etc/rcS.d
  /etc/rcS.d/S98run-postinsts
ERROR: Function failed: do_configure (see /home/zb/mnt/building/yocto/mybuild/tmp/work/x86_64-poky-linux/busybox/1.20.2-r5/temp/log.do_configure.15097 for further information)
ERROR: Logfile of failure stored in: /home/zb/mnt/building/yocto/mybuild/tmp/work/x86_64-poky-linux/busybox/1.20.2-r5/temp/log.do_configure.15097
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| trap: 80: SIGHUP: bad trap
| ERROR: Function failed: do_configure (see /home/zb/mnt/building/yocto/mybuild/tmp/work/x86_64-poky-linux/busybox/1.20.2-r5/temp/log.do_configure.15097 for further information)
ERROR: Task 1217 (/mnt/working/yocto/poky/meta/recipes-core/busybox/busybox_1.20.2.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3729 tasks of which 1320 didn't need to be rerun and 1 failed.
Waiting for 0 running tasks to finish:


Summary: 1 task failed:
  /mnt/working/yocto/poky/meta/recipes-core/busybox/busybox_1.20.2.bb, do_configure
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


1. What the problem might be?

------=_Part_253257_519784969.1362668985063
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: 7bit

<div style="line-height:1.7;color:#000000;font-size:14px;font-family:arial">I got an ERROR when building the core-image-sato.<div><br></div><div>branch is danny-8.0<br><div><br></div><div><div><div>Build Configuration:</div><div>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;= "1.17.1"</div><div>BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; = "x86_64-linux"</div><div>NATIVELSBSTRING &nbsp; = "Ubuntu-10.04"</div><div>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;= "x86_64-poky-linux"</div><div>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; = "qemux86-64"</div><div>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= "poky"</div><div>DISTRO_VERSION &nbsp; &nbsp;= "1.3+snapshot-20130307"</div><div>TUNE_FEATURES &nbsp; &nbsp; = "m64"</div><div>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;= ""</div><div>meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div><div>meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;</div><div>meta-yocto-bsp &nbsp; &nbsp;= "danny-8.0:6663b79452bcdd95fc69e1ec853baae6c5297ab2"</div><div><br></div><div>NOTE: Resolving any missing task queue dependencies</div><div>NOTE: Preparing runqueue</div><div>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQueue Tasks</div><div>NOTE: validating kernel config, see log.do_kernel_configcheck for details</div><div>WARNING: QA Issue: rpm: Files/directories were installed but not shipped</div><div>&nbsp; /etc</div><div>&nbsp; /etc/rcS.d</div><div>&nbsp; /etc/rcS.d/S98run-postinsts</div><div>ERROR: Function failed: do_configure (see /home/zb/mnt/building/yocto/mybuild/tmp/work/x86_64-poky-linux/busybox/1.20.2-r5/temp/log.do_configure.15097 for further information)</div><div>ERROR: Logfile of failure stored in: /home/zb/mnt/building/yocto/mybuild/tmp/work/x86_64-poky-linux/busybox/1.20.2-r5/temp/log.do_configure.15097</div><div>Log data follows:</div><div>| DEBUG: Executing python function sysroot_cleansstate</div><div>| DEBUG: Python function sysroot_cleansstate finished</div><div>| DEBUG: Executing shell function do_configure</div><div>| trap: 80: SIGHUP: bad trap</div><div>| ERROR: Function failed: do_configure (see /home/zb/mnt/building/yocto/mybuild/tmp/work/x86_64-poky-linux/busybox/1.20.2-r5/temp/log.do_configure.15097 for further information)</div><div>ERROR: Task 1217 (/mnt/working/yocto/poky/meta/recipes-core/busybox/busybox_1.20.2.bb, do_configure) failed with exit code '1'</div><div>NOTE: Tasks Summary: Attempted 3729 tasks of which 1320 didn't need to be rerun and 1 failed.</div><div>Waiting for 0 running tasks to finish:</div><div><br></div><div>Summary: 1 task failed:</div><div>&nbsp; /mnt/working/yocto/poky/meta/recipes-core/busybox/busybox_1.20.2.bb, do_configure</div><div>Summary: There was 1 WARNING message shown.</div><div>Summary: There was 1 ERROR message shown, returning a non-zero exit code.</div></div><div><br></div></div></div><div>1. What the problem might be?</div></div>

------=_Part_253257_519784969.1362668985063--
