Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F23E00294
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 09:45:46 -0800 (PST)
Received: by mail-gh0-f176.google.com with SMTP id g10so1248795ghb.35
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 09:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=5i+U/OauwZsdptUE9yzJBQH9/tNUITneqTzUN8iyzQE=;
	b=CNqda5hPVtOjCSdkad3s0jiHmKQBkxaYb4dLN2Pra/s6OQI7+2n3VzGDpa/a2aBoBW
	b98RoIbMUaihJc1EEKsL8a7CVhi9HW0ssWD/15GXIN14sCkZPyFG28TsAfLGsrcjynGM
	+Jl0bYR/NL7cLvrotlOAS+8I6rggbnZYbtxTMGeLPlLJfMgY4rTYP0H5zweYZJHgPt8i
	yXuzgpMmeFTbIrHU0Ye4R0sntjDetK8LBgftxAHBwSkBKRxn+RSw15vo0PQObwe4oyKQ
	rdM0DGrSfRmyPSQiD/H601oej8yJOJXPgNyK5Pr72ghsxwzJnVCAhOc2xhJvGoAjkDZr
	OJuQ==
Received: by 10.236.52.194 with SMTP id e42mr14415007yhc.114.1355766346235;
	Mon, 17 Dec 2012 09:45:46 -0800 (PST)
Received: from [192.168.0.54] (cpe-174-097-157-052.nc.res.rr.com.
	[174.97.157.52])
	by mx.google.com with ESMTPS id h37sm12276598anm.10.2012.12.17.09.45.43
	(version=SSLv3 cipher=OTHER); Mon, 17 Dec 2012 09:45:44 -0800 (PST)
Message-ID: <50CF5A47.4040509@gmail.com>
Date: Mon, 17 Dec 2012 12:45:43 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Recipe differences between Danny and Master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Dec 2012 17:45:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a recipe layers I use for test videos and audios that I included 
in prior BSPs I've done.  The last I tested it was Danny and it worked 
fine.  Today I tried to add it to a BSP that had previously built, using 
the latest pull from Master, complete without errors and booted.

Once I added my layer, it built with a number of errors.  So something 
has changed, that I missed.  Below is my one of my recipes and the 
console log:

DESCRIPTION = "my audio test files"
SECTION = "examples"
LICENSE = "CLOSED"

MY_DESTINATION = "/home/root/myaudios"

SRC_URI = "file://myaudios-1.0/myaudios-1.0.tar.gz"

do_install_append() {
         install -d ${D}${MY_DESTINATION}
         install -m 0644 ${S}/* ${D}${MY_DESTINATION}
}

PR = "r0"

FILES_${PN} += "${MY_DESTINATION}/*"
----------------------------------------------------------------------------------------------

jim@jim-ubuntu-x64:/build/nuc-master$ bitbake core-image-sato
WARNING: Unable to get checksum for myvideos SRC_URI entry 
myvideos-1.0.tar.gz: file could not be found
WARNING: Unable to get checksum for myaudios SRC_URI entry 
myaudios-1.0.tar.gz: file could not be found
Parsing recipes: 100% 
|###################################################| Time: 00:00:11
Parsing of 842 .bb files complete (0 cached, 842 parsed). 1149 targets, 
24 skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.17.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "x86_64-poky-linux"
MACHINE           = "nuc"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121217"
TUNE_FEATURES     = "m64"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:958162e96b4a4f23bca94500b5f20975633dd5c6"
meta-intel
meta-nuc          = "master:4122c514a22442a58b2f99e4ba9617ff219b3089"
meta-jfa          = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL file://myaudios-1.0/myaudios-1.0.tar.gz, 
attempting MIRRORS if available
WARNING: Failed to fetch URL file://myvideos-1.0/myvideos-1.0.tar.gz, 
attempting MIRRORS if available
ERROR: Fetcher failure: Unable to find file 
file://myaudios-1.0/myaudios-1.0.tar.gz anywhere. The paths that were 
searched were:
     /home/jim/meta-jfa/recipes-jfa/myaudio/myaudios-1.0/x86-64
     /home/jim/meta-jfa/recipes-jfa/myaudio/myaudios-1.0/nuc
     /home/jim/meta-jfa/recipes-jfa/myaudio/myaudios-1.0/poky
     /home/jim/meta-jfa/recipes-jfa/myaudio/myaudios-1.0/
     /home/jim/meta-jfa/recipes-jfa/myaudio/myaudios/x86-64
     /home/jim/meta-jfa/recipes-jfa/myaudio/myaudios/nuc
     /home/jim/meta-jfa/recipes-jfa/myaudio/myaudios/poky
     /home/jim/meta-jfa/recipes-jfa/myaudio/myaudios/
     /home/jim/meta-jfa/recipes-jfa/myaudio/files/x86-64
     /home/jim/meta-jfa/recipes-jfa/myaudio/files/nuc
     /home/jim/meta-jfa/recipes-jfa/myaudio/files/poky
     /home/jim/meta-jfa/recipes-jfa/myaudio/files/
     /home/jim/yocto-downloads
ERROR: Function failed: Fetcher failure for URL: 
'file://myaudios-1.0/myaudios-1.0.tar.gz'. Unable to fetch URL from any 
source.
ERROR: Logfile of failure stored in: 
/build/nuc-master/tmp/work/x86_64-poky-linux/myaudios/1.0-r0/temp/log.do_fetch.29282
ERROR: Fetcher failure: Unable to find file 
file://myvideos-1.0/myvideos-1.0.tar.gz anywhere. The paths that were 
searched were:
     /home/jim/meta-jfa/recipes-jfa/myvideos/myvideos-1.0/x86-64
     /home/jim/meta-jfa/recipes-jfa/myvideos/myvideos-1.0/nuc
     /home/jim/meta-jfa/recipes-jfa/myvideos/myvideos-1.0/poky
     /home/jim/meta-jfa/recipes-jfa/myvideos/myvideos-1.0/
     /home/jim/meta-jfa/recipes-jfa/myvideos/myvideos/x86-64
     /home/jim/meta-jfa/recipes-jfa/myvideos/myvideos/nuc
     /home/jim/meta-jfa/recipes-jfa/myvideos/myvideos/poky
     /home/jim/meta-jfa/recipes-jfa/myvideos/myvideos/
     /home/jim/meta-jfa/recipes-jfa/myvideos/files/x86-64
     /home/jim/meta-jfa/recipes-jfa/myvideos/files/nuc
     /home/jim/meta-jfa/recipes-jfa/myvideos/files/poky
     /home/jim/meta-jfa/recipes-jfa/myvideos/files/
     /home/jim/yocto-downloads
ERROR: Function failed: Fetcher failure for URL: 
'file://myvideos-1.0/myvideos-1.0.tar.gz'. Unable to fetch URL from any 
source.
ERROR: Logfile of failure stored in: 
/build/nuc-master/tmp/work/x86_64-poky-linux/myvideos/1.0-r0/temp/log.do_fetch.29283
ERROR: Task 353 (/home/jim/meta-jfa/recipes-jfa/myaudio/myaudios.bb, 
do_fetch) failed with exit code '1'
ERROR: Task 341 (/home/jim/meta-jfa/recipes-jfa/myvideos/myvideos.bb, 
do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4122 tasks of which 4109 didn't need to 
be rerun and 2 failed.
Waiting for 0 running tasks to finish:

Summary: 2 tasks failed:
   /home/jim/meta-jfa/recipes-jfa/myaudio/myaudios.bb, do_fetch
   /home/jim/meta-jfa/recipes-jfa/myvideos/myvideos.bb, do_fetch
Summary: There were 4 WARNING messages shown.
Summary: There were 4 ERROR messages shown, returni

