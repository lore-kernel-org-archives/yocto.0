Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 679B0E00C46
	for <yocto@yoctoproject.org>; Tue,  8 Apr 2014 00:41:46 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WXQfA-0000q5-UW
	for yocto@yoctoproject.org; Tue, 08 Apr 2014 09:41:44 +0200
Received: from ppp005054168166.access.hol.gr ([5.54.168.166])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 09:41:44 +0200
Received: from gmane by ppp005054168166.access.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 08 Apr 2014 09:41:44 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 08 Apr 2014 10:41:19 +0300
Message-ID: <5343A81F.2040907@reliableembeddedsystems.com>
References: <CAD78y+7r_2_nyzizGccLkyFj1PL2q3TBn4czTGsJr5dp6vos5Q@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp005054168166.access.hol.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
In-Reply-To: <CAD78y+7r_2_nyzizGccLkyFj1PL2q3TBn4czTGsJr5dp6vos5Q@mail.gmail.com>
Subject: Re: [meta-raspberrypi] Problem building core-image-sato-sdk
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
X-List-Received-Date: Tue, 08 Apr 2014 07:41:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 03/09/2014 02:08 PM, Federico Vitali wrote:
> Hi everyone,
> 
> I've succesfully build core-image-sato for raspberry pi, but when I try
> to build the sdk version I obtain the following error:
> 

BTW I get the error also with core-image-sato:

builder@ubuntu-srvr-lv:~/rpi/poky/raspberrypi/conf$ bitbake core-image-sato
Loading cache: 100%
|#####################################################################################################################################|
ETA:  00:00:00
Loaded 1215 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.20.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi"
DISTRO            = "poky"
DISTRO_VERSION    = "1.5.1"
TUNE_FEATURES     = "armv6 vfp"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "dora:98bd952a5b72c584fc1094e4a61eb9e2a24cc97b"
meta-raspberrypi  = "master:fbc0947e96e8989d46b1570619554cb916e24049"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Recipe mesa-gl is trying to create package libegl-mesa which was
already written by recipe mesa. This will cause corruption, please
resolve this and only provide the package from one recipe or the other
or only build one of the recipes.
ERROR: Function failed: read_subpackage_metadata
ERROR: Logfile of failure stored in:
/home/builder/rpi/poky/raspberrypi/tmp/work/armv6-vfp-poky-linux-gnueabi/mesa-gl/2_9.1.6-r0/temp/log.do_package_write_ipk.9838
ERROR: Task 2436
(/home/builder/rpi/poky/meta/recipes-graphics/mesa/mesa-gl_9.1.6.bb,
do_package_write_ipk) failed with exit code '1'


..."To be or not to be... that is the question." - The answer is 0xff
since: 0x2b | ~0x2b = 0xff

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



