Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19465E011AF
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 22:38:17 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id z53so3864820wey.29
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 22:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to:cc
	:content-type; bh=UwH7Es7Yx5l7Uk3NNpE7gAuPyi5MeuJ9B+uVVoiFILQ=;
	b=vx5/N/Jgd61tweXnC9cOyEDxJYPVG27cKtmSDl6e8dTHHbpc6yqAy5rbw8L106zeXb
	e93mfg0am0ctUxRFUaXSFQ/f5lounMlgPdJslcs8lZN035IO5yfvq6T8+djAq/iorU3s
	DqAn4nQsNeMbOeJIsrFf5eSoUpF3J9uhF1ncd3k0kT9KOiBqzqHFpUuOUajb9mjK0af6
	4RcXIyJz8AXC9fNYJv6EUKaULJxvYaLkurnJyYohRiNvipMQFk87sUiJNjS+yIPmUxoz
	n6ta51PKmYl1a6ixIhgSht5aZdv6K/TBPH4dbEffPM+r4MrjFRWDq6akE/eo8SJFOqQr
	88Mg==
X-Received: by 10.194.76.37 with SMTP id h5mr15027504wjw.21.1363412296809;
	Fri, 15 Mar 2013 22:38:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Fri, 15 Mar 2013 22:37:56 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
Date: Fri, 15 Mar 2013 22:37:56 -0700
Message-ID: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Cc: ichard.purdie@linuxfoundation.org
Subject: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Sat, 16 Mar 2013 05:38:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am using HEAD of master, and I have this error after I use commit

"
commit 1ceb13dda11645229053fc4840954333f8910ba4
Author: Martin Jansa <martin.jansa@gmail.com>
Date:   Wed Mar 13 20:04:51 2013 +0100
"

Could anyone know about this?


- my config

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130316"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto        = "master:1ceb13dda11645229053fc4840954333f8910ba4"
meta-realtime     = "schedtool:a766d16a1cf4da3c2dd13b8c7e53f89775733187"
meta-yocto-bsp    = "master:1ceb13dda11645229053fc4840954333f8910ba4"


- error output:
ERROR: Function failed: BUILDSPEC (see
/home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563
for further information)
ERROR: Logfile of failure stored in:
/home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563



- full output:

~/mybuilds/meta-realtime $ time bitbake core-image-realtime
Loading cache: 100%
|################################################################################################|
ETA:  00:00:00
Loaded 1121 entries from dependency cache.
Parsing recipes: 100%
|##############################################################################################|
Time: 00:00:00
Parsing of 813 .bb files complete (812 cached, 1 parsed). 1121
targets, 27 skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.17.1"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20130316"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto        = "master:1ceb13dda11645229053fc4840954333f8910ba4"
meta-realtime     = "schedtool:a766d16a1cf4da3c2dd13b8c7e53f89775733187"
meta-yocto-bsp    = "master:1ceb13dda11645229053fc4840954333f8910ba4"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: BUILDSPEC (see
/home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563
for further information)
ERROR: Logfile of failure stored in:
/home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563
Log data follows:
| DEBUG: Executing python function sstate_task_prefunc
| DEBUG: Python function sstate_task_prefunc finished
| DEBUG: Executing python function do_package_write_rpm
| DEBUG: Executing python function read_subpackage_metadata
| DEBUG: Python function read_subpackage_metadata finished
| DEBUG: Executing python function do_package_rpm
| DEBUG: Executing python function write_specfile
| NOTE: Not creating empty RPM package for neard-tests
| NOTE: Creating RPM package for neard-dbg
| NOTE: Not creating empty RPM package for neard-staticdev
| NOTE: Creating RPM package for neard-dev
| NOTE: Not creating empty RPM package for neard-doc
| NOTE: Not creating empty RPM package for neard-locale
| NOTE: Creating RPM package for neard
| NOTE: Creating RPM package for neard
| DEBUG: Python function write_specfile finished
| DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']
| DEBUG: Executing shell function BUILDSPEC
| error: line 152: Illegal char '-' in EVR: Suggests: neard =
0.9-git0+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1
| error: Package has no %description: neard-dbg.i586
| Building target platforms: i586-poky-linux
| DEBUG: Python function do_package_rpm finished
| DEBUG: Python function do_package_write_rpm finished
| ERROR: Function failed: BUILDSPEC (see
/home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-gitAUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_write_rpm.31563
for further information)
ERROR: Task 1370
(/home/insop/poky/meta/recipes-connectivity/neard/neard_0.9.bb,
do_package_write_rpm) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3322 tasks of which 3281 didn't need to
be rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/insop/poky/meta/recipes-connectivity/neard/neard_0.9.bb,
do_package_write_rpm
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

real	0m27.611s
user	0m30.158s
sys	0m4.900s

