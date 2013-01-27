Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f170.google.com (mail-ea0-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D0CBE00743
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2013 03:32:53 -0800 (PST)
Received: by mail-ea0-f170.google.com with SMTP id a11so787958eaa.29
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2013 03:32:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=3qTg15q6rbDoYN/Iq4+BS038YgRwbF6EvSE6bEg7aLg=;
	b=eHvIOGutsrNo4MPQhnjjX0YREqekh8gvfSsCifXBWRVK6o/GTF7U8a5XFQ0elF2bjm
	OBl9aWXGsQA0GNWRxOdOthJlNg9Itfa+CjHTBQM1VCx01MHzw5WE4Ker/setlZ1aLFvp
	I5QVXNpVwQ6SwZd4ynzFZOb1gHl2u3wrJA2DDWNJaHUwZpIP6csW6cB/dt21oo6BMue4
	/hoyNGGr9U05YHaWnxpie/tGkWK3nXQLEJ/TVYuehUlZq3fhvtI+bLw2lG+QE5E8Clgi
	wD3YioibpS94vpCtI1gAnD5pCnmmGNXWqyg1IdWR3LUAEZ1TcteN7GuwHAg6OjAQPVUU
	VDRw==
X-Received: by 10.14.209.131 with SMTP id s3mr39884853eeo.26.1359286371904;
	Sun, 27 Jan 2013 03:32:51 -0800 (PST)
Received: from gmail.com (5-13-203-15.residential.rdsnet.ro. [5.13.203.15])
	by mx.google.com with ESMTPS id d3sm10891880eeo.13.2013.01.27.03.32.50
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sun, 27 Jan 2013 03:32:51 -0800 (PST)
Date: Sun, 27 Jan 2013 13:32:55 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jan Schmidt <thaytan@noraisin.net>
Message-ID: <20130127113217.GB25275@gmail.com>
References: <1359199104-10713-1-git-send-email-thaytan@noraisin.net>
	<20130126224705.GA17428@gmail.com>
	<51050cf0.a952420a.022b.5f25SMTPIN_ADDED_BROKEN@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <51050cf0.a952420a.022b.5f25SMTPIN_ADDED_BROKEN@mx.google.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQlgQfRQ9HlpblM4YnFNi6ntODwKZkY0sohnuC9C8qIT6cNGIUnVrMI10PrY8j6SrVmfqZ7O
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 3/3] sdcard-image: Use the size of the generated rootfs
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
X-List-Received-Date: Sun, 27 Jan 2013 11:32:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 27, 2013 at 10:17:57PM +1100, Jan Schmidt wrote:
> On Sun, 2013-01-27 at 00:47 +0200, Andrei Gherzan wrote:
> > On Sat, Jan 26, 2013 at 10:18:24PM +1100, Jan Schmidt wrote:
> > > When constructing the SD card image, the code was using
> > > the inherited ROOTFS_SIZE, which is the size of the
> > > rootfs contents. When building (for example) a compressed
> > > rootfs, this allocates a partition much larger than necessary.
> > >
> > > Instead, take the size of the generated rootfs file that is
> > > about to be written into the generated image.
> > >
> > > Also remove the extra ${IMAGE_ROOTFS_ALIGNMENT} padding at
> > > the end of the image, as it isn't needed now.
> > >
> > > Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
> > > ---
> > >  classes/sdcard_image-rpi.bbclass |   23 +++++++++++++----------
> > >  1 file changed, 13 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> > > index 421f561..fdac3b2 100644
> > > --- a/classes/sdcard_image-rpi.bbclass
> > > +++ b/classes/sdcard_image-rpi.bbclass
> > > @@ -13,14 +13,16 @@ inherit image_types
> > >  #                                                     Default Free space = 1.3x
> > >  #                                                     Use IMAGE_OVERHEAD_FACTOR to add more space
> > >  #                                                     <--------->
> > > -#            4KiB              20MiB           SDIMG_ROOTFS
> > > +#            4KiB             ~20MiB           SDIMG_ROOTFS
> >
> > Why ~20M? As you see in the class BOOT_SPACE ?= "20480". So that is 20MiB.
>
> I was trying to make it clear in the comment that if the user changes
> the BOOT_SPACE size, it will always be rounded up to the nearest 4MB. I
> couldn't think of a great way. Also, I didn't pay enough attention - the
> comment is saying IMAGE_ROOTFS_ALIGNMENT is 4kB, but it should be MiB.
>

Uh, I understand now your point here. Well, I don't think that user needs to
know that if he wants 20470 as BOOT_SPACE, he's partition will end up 20480.
Because this is something related to performance and it's in his benefit after
all. So let's drop this for now.

About the 4kB thing - yes. Needs fix.

> > >  # <-----------------------> <----------> <---------------------->
> > > -#  ------------------------ ------------ ------------------------ -------------------------------
> > > -# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |     IMAGE_ROOTFS_ALIGNMENT    |
> > > -#  ------------------------ ------------ ------------------------ -------------------------------
> > > -# ^                        ^            ^                        ^                               ^
> > > -# |                        |            |                        |                               |
> > > -# 0                      4096     4KiB + 20MiB       4KiB + 20Mib + SDIMG_ROOTFS   4KiB + 20MiB + SDIMG_ROOTFS + 4KiB
> > > +#  ------------------------ ------------ ------------------------
> > > +# | IMAGE_ROOTFS_ALIGNMENT | BOOT_SPACE | ROOTFS_SIZE            |
> > > +#  ------------------------ ------------ ------------------------
> > > +# ^                        ^            ^                        ^
> > > +# |                        |            |                        |
> > > +# 0                      4096     4KiB + ~20MiB      4KiB + ~20Mib + SDIMG_ROOTFS
> > > +#                                 rounded up to
> > > +#                              IMAGE_ROOTFS_ALIGNMENT
> > >
> > >
> > >  # Set kernel and boot loader
> > > @@ -29,7 +31,7 @@ IMAGE_BOOTLOADER ?= "bcm2835-bootfiles"
> > >  # Boot partition volume id
> > >  BOOTDD_VOLUME_ID ?= "${MACHINE}"
> > >
> > > -# Boot partition size [in KiB]
> > > +# Boot partition size [in KiB] (will be rounded up to IMAGE_ROOTFS_ALIGNMENT)
> > >  BOOT_SPACE ?= "20480"
> > >
> > >  # Set alignment to 4MB [in KiB]
> > > @@ -60,7 +62,8 @@ IMAGE_CMD_rpi-sdimg () {
> > >  	# Align partitions
> > >  	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE} + ${IMAGE_ROOTFS_ALIGNMENT} - 1)
> > >  	BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
> > > -	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})
> > > +	ROOTFS_SIZE=`du -ks ${SDIMG_ROOTFS} | awk '{print $1}'`
> >
> > Are you sure `du -ks ${ROOTFS_SIZE} | awk '{print $1}'` is aligned to
> > IMAGE_ROOTFS_ALIGNMENT? I'm not so sure about this. So you might need to align
> > it the way BOOT_SPACE is aligned.
>
> No, the ROOTFS_SIZE will be whatever the base recipe creates. I don't
> think it will have any particular alignment, except by accident - in the
> sense that it's probably stored on an ext3 filesystem that has 4kB
> allocation blocks and therefore 'du -sk' will round it up to that. We
> would need to explicitly round up to 4MiB, but I'm not sure why to do
> that -
>

Check this out:
http://android.bytearrays.com/android/what-means-sd-card-alignment/

> > > +	SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})
> > >
> > >  	# Initialize sdcard image file
> > >  	dd if=/dev/zero of=${SDIMG} bs=1 count=0 seek=$(expr 1024 \* ${SDIMG_SIZE})
> > > @@ -71,7 +74,7 @@ IMAGE_CMD_rpi-sdimg () {
> > >  	parted -s ${SDIMG} unit KiB mkpart primary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT})
> > >  	parted -s ${SDIMG} set 1 boot on
> > >  	# Create rootfs partition
> > > -	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE})
> > > +	parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${SDIMG_SIZE} - 1)
> > >  	parted ${SDIMG} print
> >
> > Don't think that -1 is needed here.
>
> No, you're right - it shouldn't be. I got a weird error where parted
> failed to create the partition in the image file, saying it ran past the
> end. Possibly related to the error you mentioned you saw that made you
> pad with IMAGE_ROOTFS_ALIGNMENT in the first place. I think I'll
> investigate more.
>
> There's a couple of things to check and fix here, so I think I'll
> withdraw this patch and re-send it later after more testing. The first 2
> patches still should be OK though.
>

Please do. Btw, after a smoke test the boot process failed with your
modifications:

[    2.274940] mmcblk0: mmc0:b368 SMI   3.84 GiB
[    2.281131]  mmcblk0: p1 p2
[    2.304604] EXT4-fs (mmcblk0p2): feature flags set on rev 0 fs, running
e2fsck is recommended
[    2.313147] EXT4-fs (mmcblk0p2): bad geometry: block count 57344 exceeds
size of device (45539 blocks)
[    2.323630] List of all partitions:
[    2.327160] b300         4027392 mmcblk0  driver: mmcblk
[    2.332487]   b301           20480 mmcblk0p1
00000000-0000-0000-0000-000000000000
[    2.340085]   b302           45539 mmcblk0p2
00000000-0000-0000-0000-000000000000
[    2.347592] No filesystem could mount root, tried:  ext4
[    2.352910] Kernel panic - not syncing: VFS: Unable to mount root fs on
unknown-block(179,2)
[    2.361384] [<c0013b98>] (unwind_backtrace+0x0/0xf0) from [<c0398cb8>]
(panic+0x90/0x1dc)
[    2.369575] [<c0398cb8>] (panic+0x90/0x1dc) from [<c04ebcb4>]
(mount_block_root+0x1f0/0x250)
[    2.378011] [<c04ebcb4>] (mount_block_root+0x1f0/0x250) from [<c04ebf28>]
(mount_root+0xf0/0x118)
[    2.386879] [<c04ebf28>] (mount_root+0xf0/0x118) from [<c04ec0a4>]
(prepare_namespace+0x154/0x1b4)
[    2.395833] [<c04ec0a4>] (prepare_namespace+0x154/0x1b4) from [<c04eb8f4>]
(kernel_init+0x168/0x1a4)
[    2.404971] [<c04eb8f4>] (kernel_init+0x168/0x1a4) from [<c000eae0>]
(kernel_thread_exit+0x0/0x8)
PANIC: VFS: Unable to mount root fs on unknown-block(179,2

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12


