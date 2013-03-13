Return-Path: <thaytan@noraisin.net>
Received: from noraisin.net (198.23.233.220.static.exetel.com.au
	[220.233.23.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0113E0073A
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 14:03:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by noraisin.net (Postfix) with ESMTP id 000893380977;
	Thu, 14 Mar 2013 08:03:50 +1100 (EST)
X-Virus-Scanned: Debian amavisd-new at decorama.com.au
Received: from noraisin.net ([127.0.0.1])
	by localhost (mail.decorama.com.au [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id n1zYbrfgYxWo; Thu, 14 Mar 2013 08:03:44 +1100 (EST)
Received: from [192.168.11.41] (113.94.233.220.static.exetel.com.au
	[220.233.94.113])
	by noraisin.net (Postfix) with ESMTPSA id EA15033807A3;
	Thu, 14 Mar 2013 08:03:43 +1100 (EST)
Message-ID: <1363208622.4195.99.camel@shorty.home.>
From: Jan Schmidt <thaytan@noraisin.net>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 14 Mar 2013 08:03:42 +1100
In-Reply-To: <CAK18fxES6OVGjCu7n+85KK9iR-hBQdZH6Mtwpg8XUYmi1_VgLg@mail.gmail.com>
References: <1359199104-10713-1-git-send-email-thaytan@noraisin.net>
	<20130126224705.GA17428@gmail.com>
	<51050cf0.a952420a.022b.5f25SMTPIN_ADDED_BROKEN@mx.google.com>
	<20130127113217.GB25275@gmail.com>
	<510517ec.8752420a.75af.fffffe36SMTPIN_ADDED_BROKEN@mx.google.com>
	<CAK18fxES6OVGjCu7n+85KK9iR-hBQdZH6Mtwpg8XUYmi1_VgLg@mail.gmail.com>
X-Mailer: Evolution 3.4.4-2 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 3/3] sdcard-image: Use the size of the generated rootfs
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
X-List-Received-Date: Wed, 13 Mar 2013 21:03:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Andrei,

Thanks for the reminder - I did find the problem with the original
patch, but didn't send it through yet. The problem was using du on a
sparse file and getting the size-on-disk, not the apparent size - making
the resulting partition too small. Using du -bks gets the correct size.

J.

On Wed, 2013-03-13 at 19:46 +0200, Andrei Gherzan wrote:
> Any news on this. Still waiting for patches :)
> 
> 
> On Sun, Jan 27, 2013 at 2:04 PM, Jan Schmidt <thaytan@noraisin.net>
> wrote:
>         On Sun, 2013-01-27 at 13:32 +0200, Andrei Gherzan wrote:
>         > On Sun, Jan 27, 2013 at 10:17:57PM +1100, Jan Schmidt wrote:
>         > > On Sun, 2013-01-27 at 00:47 +0200, Andrei Gherzan wrote:
>         > > > On Sat, Jan 26, 2013 at 10:18:24PM +1100, Jan Schmidt
>         wrote:
>         > > > > When constructing the SD card image, the code was
>         using
>         > > > > the inherited ROOTFS_SIZE, which is the size of the
>         
>         
>         *snip*
>         
>         > > > > --- a/classes/sdcard_image-rpi.bbclass
>         > > > > +++ b/classes/sdcard_image-rpi.bbclass
>         > > > > @@ -13,14 +13,16 @@ inherit image_types
>         > > > >  #
>         Default Free space = 1.3x
>         > > > >  #
>         Use IMAGE_OVERHEAD_FACTOR to add more space
>         > > > >  #
>         <--------->
>         > > > > -#            4KiB              20MiB
>         SDIMG_ROOTFS
>         > > > > +#            4KiB             ~20MiB
>         SDIMG_ROOTFS
>         > > >
>         > > > Why ~20M? As you see in the class BOOT_SPACE ?= "20480".
>         So that is 20MiB.
>         > >
>         > > I was trying to make it clear in the comment that if the
>         user changes
>         > > the BOOT_SPACE size, it will always be rounded up to the
>         nearest 4MB. I
>         > > couldn't think of a great way. Also, I didn't pay enough
>         attention - the
>         > > comment is saying IMAGE_ROOTFS_ALIGNMENT is 4kB, but it
>         should be MiB.
>         > >
>         >
>         > Uh, I understand now your point here. Well, I don't think
>         that user needs to
>         > know that if he wants 20470 as BOOT_SPACE, he's partition
>         will end up 20480.
>         > Because this is something related to performance and it's in
>         his benefit after
>         > all. So let's drop this for now.
>         
>         
>         OK.
>         
>         > About the 4kB thing - yes. Needs fix.
>         
>         
>         OK.
>         
>         *snip*
>         
>         > > > >         BOOT_SPACE_ALIGNED=$(expr
>         ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} %
>         ${IMAGE_ROOTFS_ALIGNMENT})
>         > > > > -       SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
>         ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE +
>         ${IMAGE_ROOTFS_ALIGNMENT})
>         > > > > +       ROOTFS_SIZE=`du -ks ${SDIMG_ROOTFS} | awk
>         '{print $1}'`
>         > > >
>         > > > Are you sure `du -ks ${ROOTFS_SIZE} | awk '{print $1}'`
>         is aligned to
>         > > > IMAGE_ROOTFS_ALIGNMENT? I'm not so sure about this. So
>         you might need to align
>         > > > it the way BOOT_SPACE is aligned.
>         > >
>         > > No, the ROOTFS_SIZE will be whatever the base recipe
>         creates. I don't
>         > > think it will have any particular alignment, except by
>         accident - in the
>         > > sense that it's probably stored on an ext3 filesystem that
>         has 4kB
>         > > allocation blocks and therefore 'du -sk' will round it up
>         to that. We
>         > > would need to explicitly round up to 4MiB, but I'm not
>         sure why to do
>         > > that -
>         > >
>         >
>         > Check this out:
>         >
>         http://android.bytearrays.com/android/what-means-sd-card-alignment/
>         
>         
>         Sure, but the largst cluster sizes I've seen are 32KB (do they
>         come
>         bigger yet?) 4MiB seems like a large amount for anticipation
>         of future
>         cluster sizes.
>         
>         > > > > +       SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
>         ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})
>         > > > >
>         > > > >         # Initialize sdcard image file
>         > > > >         dd if=/dev/zero of=${SDIMG} bs=1 count=0 seek=
>         $(expr 1024 \* ${SDIMG_SIZE})
>         > > > > @@ -71,7 +74,7 @@ IMAGE_CMD_rpi-sdimg () {
>         > > > >         parted -s ${SDIMG} unit KiB mkpart primary
>         fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \
>         + ${IMAGE_ROOTFS_ALIGNMENT})
>         > > > >         parted -s ${SDIMG} set 1 boot on
>         > > > >         # Create rootfs partition
>         > > > > -       parted -s ${SDIMG} unit KiB mkpart primary
>         ext2 $(expr ${BOOT_SPACE_ALIGNED} \+
>         ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${BOOT_SPACE_ALIGNED} \+
>         ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE})
>         > > > > +       parted -s ${SDIMG} unit KiB mkpart primary
>         ext2 $(expr ${BOOT_SPACE_ALIGNED} \+
>         ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${SDIMG_SIZE} - 1)
>         > > > >         parted ${SDIMG} print
>         > > >
>         > > > Don't think that -1 is needed here.
>         > >
>         > > No, you're right - it shouldn't be. I got a weird error
>         where parted
>         > > failed to create the partition in the image file, saying
>         it ran past the
>         > > end. Possibly related to the error you mentioned you saw
>         that made you
>         > > pad with IMAGE_ROOTFS_ALIGNMENT in the first place. I
>         think I'll
>         > > investigate more.
>         > >
>         > > There's a couple of things to check and fix here, so I
>         think I'll
>         > > withdraw this patch and re-send it later after more
>         testing. The first 2
>         > > patches still should be OK though.
>         > >
>         >
>         > Please do. Btw, after a smoke test the boot process failed
>         with your
>         > modifications:
>         
>         
>         Interesting! That certainly didn't happen for me. It may
>         depend on the
>         exact size and internal layout of the rootfs image being
>         written to the
>         SD image file. I'll test as many combinations as I can before
>         re-submitting.
>         
>         J.
>         
>         > [    2.274940] mmcblk0: mmc0:b368 SMI   3.84 GiB
>         > [    2.281131]  mmcblk0: p1 p2
>         > [    2.304604] EXT4-fs (mmcblk0p2): feature flags set on rev
>         0 fs, running
>         > e2fsck is recommended
>         > [    2.313147] EXT4-fs (mmcblk0p2): bad geometry: block
>         count 57344 exceeds
>         > size of device (45539 blocks)
>         > [    2.323630] List of all partitions:
>         > [    2.327160] b300         4027392 mmcblk0  driver: mmcblk
>         > [    2.332487]   b301           20480 mmcblk0p1
>         > 00000000-0000-0000-0000-000000000000
>         > [    2.340085]   b302           45539 mmcblk0p2
>         > 00000000-0000-0000-0000-000000000000
>         > [    2.347592] No filesystem could mount root, tried:  ext4
>         > [    2.352910] Kernel panic - not syncing: VFS: Unable to
>         mount root fs on
>         > unknown-block(179,2)
>         > [    2.361384] [<c0013b98>] (unwind_backtrace+0x0/0xf0) from
>         [<c0398cb8>]
>         > (panic+0x90/0x1dc)
>         > [    2.369575] [<c0398cb8>] (panic+0x90/0x1dc) from
>         [<c04ebcb4>]
>         > (mount_block_root+0x1f0/0x250)
>         > [    2.378011] [<c04ebcb4>] (mount_block_root+0x1f0/0x250)
>         from [<c04ebf28>]
>         > (mount_root+0xf0/0x118)
>         > [    2.386879] [<c04ebf28>] (mount_root+0xf0/0x118) from
>         [<c04ec0a4>]
>         > (prepare_namespace+0x154/0x1b4)
>         > [    2.395833] [<c04ec0a4>] (prepare_namespace+0x154/0x1b4)
>         from [<c04eb8f4>]
>         > (kernel_init+0x168/0x1a4)
>         > [    2.404971] [<c04eb8f4>] (kernel_init+0x168/0x1a4) from
>         [<c000eae0>]
>         > (kernel_thread_exit+0x0/0x8)
>         > PANIC: VFS: Unable to mount root fs on unknown-block(179,2
>         >
>         
>         --
>         
>         Jan Schmidt <thaytan@noraisin.net>
>         
> 
> 
> 
> 
> -- 
> 
> Andrei Gherzan
> m: +40.744.478.414 |  f: +40.31.816.28.12
> 

-- 
Jan Schmidt <thaytan@noraisin.net>


