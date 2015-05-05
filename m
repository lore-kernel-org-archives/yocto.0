Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4CB6E009B4; Tue,  5 May 2015 07:44:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EF9BE00992
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 07:44:45 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 9C4A5F811E0; Tue,  5 May 2015 08:44:45 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1227FF811DF;
	Tue,  5 May 2015 08:44:45 -0600 (MDT)
Message-ID: <5548D75F.3040102@mlbassoc.com>
Date: Tue, 05 May 2015 08:44:47 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Confusing error
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
X-List-Received-Date: Tue, 05 May 2015 14:44:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm getting a very confusing error from bitbake.  I'm using a snapshot
from Poky/Yocto (equivalent to 1.8 release) with my own $DISTRO

   $ bitbake nand-installer-image
   NOTE: Started PRServer with DBfile: /home/gary/tmp/p0381_2015-05-05/p0381_build/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 41585, PID: 460
   Loading cache: 100% |###################################################################################| ETA:  00:00:00
   Loaded 1708 entries from dependency cache.
   NOTE: Resolving any missing task queue dependencies
   ERROR: Nothing RPROVIDES 'virtual/bootloader' (but /home/gary/tmp/p0381_2015-05-05/opt/amltd/poky/meta-amltd/packages/packagegroups /packagegroup-amltd.bb RDEPENDS on or 
otherwise requires it)
   NOTE: Runtime target 'virtual/bootloader' is unbuildable, removing...
   Missing or unbuildable dependency chain was: ['virtual/bootloader']
   NOTE: Runtime target 'packagegroup-amltd-boot' is unbuildable, removing...
   Missing or unbuildable dependency chain was: ['packagegroup-amltd-boot', 'virtual/bootloader']
   ERROR: Required build target 'nand-installer-image' has no buildable providers.
   Missing or unbuildable dependency chain was: ['nand-installer-image', 'packagegroup-amltd-boot', 'virtual/bootloader']

But, there is such a provider and I can build it (from the same build tree):
   $ bitbake virtual/bootloader
   NOTE: Started PRServer with DBfile: /home/gary/tmp/p0381_2015-05-05/p0381_build/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 43428, PID: 515
   Loading cache: 100% |###################################################################################| ETA:  00:00:00
   Loaded 1708 entries from dependency cache.
   NOTE: Resolving any missing task queue dependencies

   Build Configuration:
   BB_VERSION        = "1.27.0"
   BUILD_SYS         = "i686-linux"
   NATIVELSBSTRING   = "Fedora-17"
   TARGET_SYS        = "arm-amltd-linux-gnueabi"
   MACHINE           = "teton-p0381"
   DISTRO            = "amltd"
   DISTRO_VERSION    = "1.8+snapshot-2015-05-05"
   TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa7"
   TARGET_FPU        = "vfp-neon"
   meta
   meta-oe
   meta-amltd
   meta-teton-ls1-p0381
   meta-fsl-arm
   meta-fsl-arm-extra
   meta-browser      = "<unknown>:<unknown>"

   NOTE: Preparing RunQueue
   NOTE: Executing SetScene Tasks
   NOTE: Executing RunQueue Tasks
         ...

After much research, I found that this is happening because I have
   MACHINE_EXTRA_RRECOMMENDS="virtual/bootloader linux-firmware-iwlwifi-5xxx"

If I remove the 'virtual/bootloader' from MACHINE_EXTRA_RRECOMMENDS,
the confusion (and error) go away.  Any ideas what's happening and why
I might be getting this confusing error?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

