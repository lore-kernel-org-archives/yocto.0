Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 373D6E007FE; Tue,  3 Nov 2015 06:47:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CACE4E00343
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 06:47:17 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D9ECCF8119A; Tue,  3 Nov 2015 07:47:16 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4FFA9F8119A;
	Tue,  3 Nov 2015 07:47:16 -0700 (MST)
To: yocto@yoctoproject.org
References: <CAK3ATuEW_u3JpNxxx7m2wVrJdERX=p3=2k_6YF_9NLue6EYWcw@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5638C940.20009@mlbassoc.com>
Date: Tue, 3 Nov 2015 07:48:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAK3ATuEW_u3JpNxxx7m2wVrJdERX=p3=2k_6YF_9NLue6EYWcw@mail.gmail.com>
Subject: Re: raspberry pi do rootfs
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
X-List-Received-Date: Tue, 03 Nov 2015 14:47:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-11-02 21:47, Raj Jar wrote:
> I got this error when i do bitbake rpi-hwup-image
> I suspect error come from mcopy .....
> how to recover this error

You need more disk space on your build directory.  See the 'disk full'
message below.

> MACHINE ?="raspberry pi"
>
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Error: The image creation script
> '/home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg' returned 1:
> Creating filesystem with Boot partition 20480 KiB and RootFS 77824 KiB
> 0+0 records in
> 0+0 records out
> 0 bytes (0 B) copied, 7.4427e-05 s, 0.0 kB/s
> Model:  (file)
> Disk /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/rpi-hwup-image-raspberrypi-20151102024300.rootfs.rpi-sdimg: 105MB
> Sector size (logical/physical): 512B/512B
> Partition Table: msdos
> Disk Flags:
>
> Number  Start   End     Size    Type     File system  Flags
>   1      4194kB  25.2MB  21.0MB  primary               boot, lba
>   2      25.2MB  105MB   79.7MB  primary
>
> mkfs.vfat 2.11 (12 Mar 2005)
> Disk full

   *********

> WARNING: /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/create_image.rpi-sdimg:1 exit 1 from
>    mcopy -i /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/boot.img -s
> /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/deploy/images/raspberrypi/Image-raspberrypi.bin ::kernel.img
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /home/raj/Projects/raspberry_pi/yacto/poky/raspberrypi_build/tmp/work/raspberrypi-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.13457
> ERROR: Task 7 (/home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb <http://rpi-hwup-image.bb>, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1954 tasks of which 1953 didn't need to be rerun and 1 failed.
> No currently running tasks (1953 of 1955)
>
> Summary: 1 task failed:
>    /home/raj/Projects/raspberry_pi/yacto/poky/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb <http://rpi-hwup-image.bb>, do_rootfs
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

