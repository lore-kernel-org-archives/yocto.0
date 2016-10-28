Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9BD2E00E0D; Fri, 28 Oct 2016 05:03:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F6D7E00E05
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 05:03:11 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C85BF68A01C; Fri, 28 Oct 2016 13:03:09 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4C97B68A019;
	Fri, 28 Oct 2016 13:03:07 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id DA23867402DF;
	Fri, 28 Oct 2016 14:03:06 +0200 (CEST)
To: yocto@yoctoproject.org
References: <CALa0-x9ioSippF7nJiZv0o-bi_Y8Fr41ajSpradaCLSBZwHFuQ@mail.gmail.com>
	<CAC+thW2a5t6j2qeESrzCcuoS8yhDOjN7mD8Biz4MLicpQL9=ag@mail.gmail.com>
	<CALa0-x8a4sjOVmG3LmRT1XHaNHvLajqB_p7TectXJbX4kSuZWw@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <c3186ced-10be-4c4b-3a17-5499563abd8f@mlbassoc.com>
Date: Fri, 28 Oct 2016 14:03:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CALa0-x8a4sjOVmG3LmRT1XHaNHvLajqB_p7TectXJbX4kSuZWw@mail.gmail.com>
Subject: Re: Raspberry pi (version 1) model B+
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
X-List-Received-Date: Fri, 28 Oct 2016 12:03:15 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-10-28 13:50, S. M. Anayetullah wrote:
> Hi Andrea Galbusera,
> Thank you very much for your reply. This time I have used the same branch for all the layers. Yet I am getting errors.
> It seems like it cannot fetch files from wiki.qemu-project.org/ <http://wiki.qemu-project.org/>  because of the firewall
> policy of my company. I have manually downloaded it (qemu-2.7.0.tar.bz2) and placed it in "/poky/rpi-build/downloads/"
> directory. I have changed the location in the file "qemu_2.7.0.bb <http://qemu_2.7.0.bb>". Changed it from url
> "http://wiki.qemu-project.org/download/${BP}.tar.bz2" to absolute location
> "file://home/anayet/workspace/yocto_project/oct_new/poky/rpi-build/downloads/qemu-2.7.0.tar.bz2". Also I have
> experimented(kept / comment out by # ) with following 2 lines.
>
> SRC_URI[md5sum] = "08d4d06d1cb598efecd796137f4844ab"
> SRC_URI[sha256sum] = "326e739506ba690daf69fc17bd3913a6c313d9928d743bd8eddb82f403f81e53"
>
> Running bitbake rpi-basic-image now gives me following error.
>
> ********************************************************************************************************************************************
> Loading cache...done.
> Loaded 2129 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.2"
> TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
> TARGET_FPU        = "hard"
> meta
> meta-poky
> meta-yocto-bsp    = "master:e5815d0b607ff262663864d51fe51fbb37172329"
> meta-oe
> meta-multimedia   = "master:7a491f384c277ee42ac895fec6fc2ef70f15df4d"
> meta-raspberrypi  = "master:de016ceef63028f5578191785c50529695f76a1a"
>
> Initialising tasks...done.
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 393 of 2019
> (/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:do_install)
> NOTE: Running task 527 of 2019
> (/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-core/readline/readline_6.3.bb:do_configure)
> NOTE: recipe gettext-0.19.8.1-r0: task do_install: Started
> NOTE: Running task 667 of 2019
> (virtual:native:/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-devtools/qemu/qemu_2.7.0.bb:do_fetch)
> NOTE: Running task 692 of 2019
> (/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb:do_package)
> NOTE: recipe readline-6.3-r0: task do_configure: Started
> NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package: Started
> NOTE: recipe qemu-native-2.7.0-r1: task do_fetch: Started
> WARNING: qemu-native-2.7.0-r1 do_fetch: Failed to fetch URL
> file://home/anayet/workspace/yocto_project/oct_new/poky/rpi-build/downloads/qemu-2.7.0.tar.bz2, attempting MIRRORS if
> available
> NOTE: recipe qemu-native-2.7.0-r1: task do_fetch: Failed
> NOTE: recipe opkg-utils-0.3.2+gitAUTOINC+3ffece9bf1-r0: task do_package: Succeeded
> NOTE: recipe readline-6.3-r0: task do_configure: Succeeded
> NOTE: recipe gettext-0.19.8.1-r0: task do_install: Succeeded
> NOTE: Tasks Summary: Attempted 693 tasks of which 689 didn't need to be rerun and 1 failed.
>
> Summary: 1 task failed:
>   virtual:native:/home/anayet/workspace/yocto_project/oct_new/poky/meta/recipes-devtools/qemu/qemu_2.7.0.bb:do_fetch
> Summary: There was 1 WARNING message shown.
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
>
> **********************************************************************************************************************************************
>
> I have checked that the compressed file (qemu-2.7.0.tar.bz2) is indeed in the directory still I am getting this error.
> Please give me some idea what am I missing or what could be wrong.

Try
   % touch downloads/qemu-2.7.0.tar.bz2.done

Better yet, try using your own download [mirror] cache:
   http://www.yoctoproject.org/docs/2.1/mega-manual/mega-manual.html#setting-up-effective-mirrors

>
> Thanks in advance.
>
>
> On Thu, Oct 27, 2016 at 5:59 PM, Andrea Galbusera <gizero@gmail.com <mailto:gizero@gmail.com>> wrote:
>
>     Hi,
>
>     On Thu, Oct 27, 2016 at 1:35 PM, S. M. Anayetullah <anayet.eu@gmail.com <mailto:anayet.eu@gmail.com>> wrote:
>
>         Dear Experts,
>         I got the error while running bitbake rpi-basic-image
>
>         Loading cache...done.
>         Loaded 1361 entries from dependency cache.
>         NOTE: Resolving any missing task queue dependencies
>
>         Build Configuration:
>         BB_VERSION        = "1.30.0"
>         BUILD_SYS         = "x86_64-linux"
>         NATIVELSBSTRING   = "universal"
>         TARGET_SYS        = "arm-poky-linux-gnueabi"
>         MACHINE           = "raspberrypi"
>         DISTRO            = "poky"
>         DISTRO_VERSION    = "2.1.1"
>         TUNE_FEATURES     = "arm armv6  vfp arm1176jzfs callconvention-hard"
>         TARGET_FPU        = "hard"
>         meta
>         meta-poky
>         meta-yocto-bsp
>         meta-raspberrypi  = "krogoth:204b2bae4a5958735fdd19c63a69f4ed3780bba7"
>
>
>     Where di you get this layer from? The commit doesn't seems to belong to meta-raspberrypi repository.
>
>
>         meta-multimedia   = "fido:902964a4da26e46018d2a8d17dcdda1ac4627a39"
>
>
>     Mixing different main branches (krogoth and fido) might hit you with problems... Any reason for not using the same
>     branch?
>
>
>
>         NOTE: Preparing RunQueue
>         NOTE: Executing SetScene Tasks
>         NOTE: Executing RunQueue Tasks
>         NOTE: Running task 2196 of 2202 (ID: 18,
>         /home/anayet/workspace/yocto_project/testProj/poky/meta-raspberrypi/recipes-core/images/rpi-basic-image.bb
>         <http://rpi-basic-image.bb>, do_image_rpi_sdimg)
>         NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Started
>         Log data follows:
>         | DEBUG: Executing python function set_image_size
>         | DEBUG: Python function set_image_size finished
>         | DEBUG: Executing shell function do_image_rpi_sdimg
>         | Creating filesystem with Boot partition 40960 KiB and RootFS 90112 KiB
>         | dd: failed to open '/rpi-basic-image-raspberrypi-20161027061952.rootfs.rpi-sdimg': Permission denied
>         | WARNING: exit code 1 from a shell command.
>         | ERROR: Function failed: do_image_rpi_sdimg (log file is located at
>         /home/anayet/workspace/yocto_project/testProj/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-basic-image/1.0-r0/temp/log.do_image_rpi_sdimg.2917)
>         NOTE: recipe rpi-basic-image-1.0-r0: task do_image_rpi_sdimg: Failed
>         NOTE: Tasks Summary: Attempted 2198 tasks of which 2197 didn't need to be rerun and 1 failed.
>
>         Summary: 1 task failed:
>           /home/anayet/workspace/yocto_project/testProj/poky/meta-raspberrypi/recipes-core/images/rpi-basic-image.bb
>         <http://rpi-basic-image.bb>, do_image_rpi_sdimg
>         Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
>         Can anyone tell me what could be the reason?
>
>         N.B- I just started learning Yocto.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

