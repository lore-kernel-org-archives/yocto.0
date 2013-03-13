Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A795E0073E
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:46:49 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id k1so684959vck.38
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:46:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=hpsFmz9bR4G/8NHZk7XlWiPdZTuqJHHvnQgtDh7TyJ4=;
	b=YrMJk6b6K85okOSiY/iLOp5RhqQI7lOTwf6nT7gqx1+LM2QRuBKFWjH8Oz+tEtWkqW
	14/2DfX/dYnYscXh8Yopshi9BDHITmJvVu0D4Het13KpIxbUN3Jg6xykxXIWkjvPcNEm
	ZhZA0ScyQ8erDnVUey7I1em7stHxsw7ivdwnzMB4ZiO+BeL2wlHM1WCcxDr4LI8lCqHF
	BoGKo7Ed0ZAFC0oT9ASR5mOpxy2+jYE8tUpT3KjczhRyuAR/tXdvIf+N22dJLD+B9hA0
	y74EuPiEbbxf2fmx3bR9IPK3tc+fQCdbfg76S8SgreSjahC9p7I4jNrlqBJ5NUMPNVcC
	abdQ==
X-Received: by 10.52.177.161 with SMTP id cr1mr7369972vdc.64.1363196808435;
	Wed, 13 Mar 2013 10:46:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:46:28 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <510517ec.8752420a.75af.fffffe36SMTPIN_ADDED_BROKEN@mx.google.com>
References: <1359199104-10713-1-git-send-email-thaytan@noraisin.net>
	<20130126224705.GA17428@gmail.com>
	<51050cf0.a952420a.022b.5f25SMTPIN_ADDED_BROKEN@mx.google.com>
	<20130127113217.GB25275@gmail.com>
	<510517ec.8752420a.75af.fffffe36SMTPIN_ADDED_BROKEN@mx.google.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:46:28 +0200
Message-ID: <CAK18fxES6OVGjCu7n+85KK9iR-hBQdZH6Mtwpg8XUYmi1_VgLg@mail.gmail.com>
To: Jan Schmidt <thaytan@noraisin.net>
X-Gm-Message-State: ALoCoQmhuEP3c1cDiiju33YAHRiSjDAeV8KQf07sBX8EagNeHPyjKVCcWWLA/biNl3+ZRw1AOomp
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
X-List-Received-Date: Wed, 13 Mar 2013 17:46:49 -0000
Content-Type: multipart/alternative; boundary=20cf3071ceac86a01f04d7d1fd6d

--20cf3071ceac86a01f04d7d1fd6d
Content-Type: text/plain; charset=ISO-8859-1

Any news on this. Still waiting for patches :)


On Sun, Jan 27, 2013 at 2:04 PM, Jan Schmidt <thaytan@noraisin.net> wrote:

> On Sun, 2013-01-27 at 13:32 +0200, Andrei Gherzan wrote:
> > On Sun, Jan 27, 2013 at 10:17:57PM +1100, Jan Schmidt wrote:
> > > On Sun, 2013-01-27 at 00:47 +0200, Andrei Gherzan wrote:
> > > > On Sat, Jan 26, 2013 at 10:18:24PM +1100, Jan Schmidt wrote:
> > > > > When constructing the SD card image, the code was using
> > > > > the inherited ROOTFS_SIZE, which is the size of the
>
> *snip*
>
> > > > > --- a/classes/sdcard_image-rpi.bbclass
> > > > > +++ b/classes/sdcard_image-rpi.bbclass
> > > > > @@ -13,14 +13,16 @@ inherit image_types
> > > > >  #                                                     Default
> Free space = 1.3x
> > > > >  #                                                     Use
> IMAGE_OVERHEAD_FACTOR to add more space
> > > > >  #                                                     <--------->
> > > > > -#            4KiB              20MiB           SDIMG_ROOTFS
> > > > > +#            4KiB             ~20MiB           SDIMG_ROOTFS
> > > >
> > > > Why ~20M? As you see in the class BOOT_SPACE ?= "20480". So that is
> 20MiB.
> > >
> > > I was trying to make it clear in the comment that if the user changes
> > > the BOOT_SPACE size, it will always be rounded up to the nearest 4MB. I
> > > couldn't think of a great way. Also, I didn't pay enough attention -
> the
> > > comment is saying IMAGE_ROOTFS_ALIGNMENT is 4kB, but it should be MiB.
> > >
> >
> > Uh, I understand now your point here. Well, I don't think that user
> needs to
> > know that if he wants 20470 as BOOT_SPACE, he's partition will end up
> 20480.
> > Because this is something related to performance and it's in his benefit
> after
> > all. So let's drop this for now.
>
> OK.
>
> > About the 4kB thing - yes. Needs fix.
>
> OK.
>
> *snip*
>
> > > > >         BOOT_SPACE_ALIGNED=$(expr ${BOOT_SPACE_ALIGNED} -
> ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})
> > > > > -       SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
> ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})
> > > > > +       ROOTFS_SIZE=`du -ks ${SDIMG_ROOTFS} | awk '{print $1}'`
> > > >
> > > > Are you sure `du -ks ${ROOTFS_SIZE} | awk '{print $1}'` is aligned to
> > > > IMAGE_ROOTFS_ALIGNMENT? I'm not so sure about this. So you might
> need to align
> > > > it the way BOOT_SPACE is aligned.
> > >
> > > No, the ROOTFS_SIZE will be whatever the base recipe creates. I don't
> > > think it will have any particular alignment, except by accident - in
> the
> > > sense that it's probably stored on an ext3 filesystem that has 4kB
> > > allocation blocks and therefore 'du -sk' will round it up to that. We
> > > would need to explicitly round up to 4MiB, but I'm not sure why to do
> > > that -
> > >
> >
> > Check this out:
> > http://android.bytearrays.com/android/what-means-sd-card-alignment/
>
> Sure, but the largst cluster sizes I've seen are 32KB (do they come
> bigger yet?) 4MiB seems like a large amount for anticipation of future
> cluster sizes.
>
> > > > > +       SDIMG_SIZE=$(expr ${IMAGE_ROOTFS_ALIGNMENT} +
> ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})
> > > > >
> > > > >         # Initialize sdcard image file
> > > > >         dd if=/dev/zero of=${SDIMG} bs=1 count=0 seek=$(expr 1024
> \* ${SDIMG_SIZE})
> > > > > @@ -71,7 +74,7 @@ IMAGE_CMD_rpi-sdimg () {
> > > > >         parted -s ${SDIMG} unit KiB mkpart primary fat32
> ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+
> ${IMAGE_ROOTFS_ALIGNMENT})
> > > > >         parted -s ${SDIMG} set 1 boot on
> > > > >         # Create rootfs partition
> > > > > -       parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr
> ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr
> ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE})
> > > > > +       parted -s ${SDIMG} unit KiB mkpart primary ext2 $(expr
> ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${SDIMG_SIZE} -
> 1)
> > > > >         parted ${SDIMG} print
> > > >
> > > > Don't think that -1 is needed here.
> > >
> > > No, you're right - it shouldn't be. I got a weird error where parted
> > > failed to create the partition in the image file, saying it ran past
> the
> > > end. Possibly related to the error you mentioned you saw that made you
> > > pad with IMAGE_ROOTFS_ALIGNMENT in the first place. I think I'll
> > > investigate more.
> > >
> > > There's a couple of things to check and fix here, so I think I'll
> > > withdraw this patch and re-send it later after more testing. The first
> 2
> > > patches still should be OK though.
> > >
> >
> > Please do. Btw, after a smoke test the boot process failed with your
> > modifications:
>
> Interesting! That certainly didn't happen for me. It may depend on the
> exact size and internal layout of the rootfs image being written to the
> SD image file. I'll test as many combinations as I can before
> re-submitting.
>
> J.
>
> > [    2.274940] mmcblk0: mmc0:b368 SMI   3.84 GiB
> > [    2.281131]  mmcblk0: p1 p2
> > [    2.304604] EXT4-fs (mmcblk0p2): feature flags set on rev 0 fs,
> running
> > e2fsck is recommended
> > [    2.313147] EXT4-fs (mmcblk0p2): bad geometry: block count 57344
> exceeds
> > size of device (45539 blocks)
> > [    2.323630] List of all partitions:
> > [    2.327160] b300         4027392 mmcblk0  driver: mmcblk
> > [    2.332487]   b301           20480 mmcblk0p1
> > 00000000-0000-0000-0000-000000000000
> > [    2.340085]   b302           45539 mmcblk0p2
> > 00000000-0000-0000-0000-000000000000
> > [    2.347592] No filesystem could mount root, tried:  ext4
> > [    2.352910] Kernel panic - not syncing: VFS: Unable to mount root fs
> on
> > unknown-block(179,2)
> > [    2.361384] [<c0013b98>] (unwind_backtrace+0x0/0xf0) from [<c0398cb8>]
> > (panic+0x90/0x1dc)
> > [    2.369575] [<c0398cb8>] (panic+0x90/0x1dc) from [<c04ebcb4>]
> > (mount_block_root+0x1f0/0x250)
> > [    2.378011] [<c04ebcb4>] (mount_block_root+0x1f0/0x250) from
> [<c04ebf28>]
> > (mount_root+0xf0/0x118)
> > [    2.386879] [<c04ebf28>] (mount_root+0xf0/0x118) from [<c04ec0a4>]
> > (prepare_namespace+0x154/0x1b4)
> > [    2.395833] [<c04ec0a4>] (prepare_namespace+0x154/0x1b4) from
> [<c04eb8f4>]
> > (kernel_init+0x168/0x1a4)
> > [    2.404971] [<c04eb8f4>] (kernel_init+0x168/0x1a4) from [<c000eae0>]
> > (kernel_thread_exit+0x0/0x8)
> > PANIC: VFS: Unable to mount root fs on unknown-block(179,2
> >
>
> --
> Jan Schmidt <thaytan@noraisin.net>
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf3071ceac86a01f04d7d1fd6d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Any news on this. Still waiting for patches :)</div><div c=
lass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sun, Jan 27, 201=
3 at 2:04 PM, Jan Schmidt <span dir=3D"ltr">&lt;<a href=3D"mailto:thaytan@n=
oraisin.net" target=3D"_blank">thaytan@noraisin.net</a>&gt;</span> wrote:<b=
r>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Sun, 2013-01-27 at 13:3=
2 +0200, Andrei Gherzan wrote:<br>
&gt; On Sun, Jan 27, 2013 at 10:17:57PM +1100, Jan Schmidt wrote:<br>
&gt; &gt; On Sun, 2013-01-27 at 00:47 +0200, Andrei Gherzan wrote:<br>
&gt; &gt; &gt; On Sat, Jan 26, 2013 at 10:18:24PM +1100, Jan Schmidt wrote:=
<br>
&gt; &gt; &gt; &gt; When constructing the SD card image, the code was using=
<br>
&gt; &gt; &gt; &gt; the inherited ROOTFS_SIZE, which is the size of the<br>
<br>
</div>*snip*<br>
<div class=3D"im"><br>
&gt; &gt; &gt; &gt; --- a/classes/sdcard_image-rpi.bbclass<br>
&gt; &gt; &gt; &gt; +++ b/classes/sdcard_image-rpi.bbclass<br>
&gt; &gt; &gt; &gt; @@ -13,14 +13,16 @@ inherit image_types<br>
&gt; &gt; &gt; &gt; =A0# =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Default Free space =
=3D 1.3x<br>
&gt; &gt; &gt; &gt; =A0# =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Use IMAGE_OVERHEAD_=
FACTOR to add more space<br>
&gt; &gt; &gt; &gt; =A0# =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;---------&gt;<b=
r>
&gt; &gt; &gt; &gt; -# =A0 =A0 =A0 =A0 =A0 =A04KiB =A0 =A0 =A0 =A0 =A0 =A0 =
=A020MiB =A0 =A0 =A0 =A0 =A0 SDIMG_ROOTFS<br>
&gt; &gt; &gt; &gt; +# =A0 =A0 =A0 =A0 =A0 =A04KiB =A0 =A0 =A0 =A0 =A0 =A0 =
~20MiB =A0 =A0 =A0 =A0 =A0 SDIMG_ROOTFS<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Why ~20M? As you see in the class BOOT_SPACE ?=3D &quot;2048=
0&quot;. So that is 20MiB.<br>
&gt; &gt;<br>
&gt; &gt; I was trying to make it clear in the comment that if the user cha=
nges<br>
&gt; &gt; the BOOT_SPACE size, it will always be rounded up to the nearest =
4MB. I<br>
&gt; &gt; couldn&#39;t think of a great way. Also, I didn&#39;t pay enough =
attention - the<br>
&gt; &gt; comment is saying IMAGE_ROOTFS_ALIGNMENT is 4kB, but it should be=
 MiB.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Uh, I understand now your point here. Well, I don&#39;t think that use=
r needs to<br>
&gt; know that if he wants 20470 as BOOT_SPACE, he&#39;s partition will end=
 up 20480.<br>
&gt; Because this is something related to performance and it&#39;s in his b=
enefit after<br>
&gt; all. So let&#39;s drop this for now.<br>
<br>
</div>OK.<br>
<div class=3D"im"><br>
&gt; About the 4kB thing - yes. Needs fix.<br>
<br>
</div>OK.<br>
<br>
*snip*<br>
<div class=3D"im"><br>
&gt; &gt; &gt; &gt; =A0 =A0 =A0 =A0 BOOT_SPACE_ALIGNED=3D$(expr ${BOOT_SPAC=
E_ALIGNED} - ${BOOT_SPACE_ALIGNED} % ${IMAGE_ROOTFS_ALIGNMENT})<br>
&gt; &gt; &gt; &gt; - =A0 =A0 =A0 SDIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNM=
ENT} + ${BOOT_SPACE_ALIGNED} + $ROOTFS_SIZE + ${IMAGE_ROOTFS_ALIGNMENT})<br=
>
&gt; &gt; &gt; &gt; + =A0 =A0 =A0 ROOTFS_SIZE=3D`du -ks ${SDIMG_ROOTFS} | a=
wk &#39;{print $1}&#39;`<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Are you sure `du -ks ${ROOTFS_SIZE} | awk &#39;{print $1}&#3=
9;` is aligned to<br>
&gt; &gt; &gt; IMAGE_ROOTFS_ALIGNMENT? I&#39;m not so sure about this. So y=
ou might need to align<br>
&gt; &gt; &gt; it the way BOOT_SPACE is aligned.<br>
&gt; &gt;<br>
&gt; &gt; No, the ROOTFS_SIZE will be whatever the base recipe creates. I d=
on&#39;t<br>
&gt; &gt; think it will have any particular alignment, except by accident -=
 in the<br>
&gt; &gt; sense that it&#39;s probably stored on an ext3 filesystem that ha=
s 4kB<br>
&gt; &gt; allocation blocks and therefore &#39;du -sk&#39; will round it up=
 to that. We<br>
&gt; &gt; would need to explicitly round up to 4MiB, but I&#39;m not sure w=
hy to do<br>
&gt; &gt; that -<br>
&gt; &gt;<br>
&gt;<br>
&gt; Check this out:<br>
&gt; <a href=3D"http://android.bytearrays.com/android/what-means-sd-card-al=
ignment/" target=3D"_blank">http://android.bytearrays.com/android/what-mean=
s-sd-card-alignment/</a><br>
<br>
</div>Sure, but the largst cluster sizes I&#39;ve seen are 32KB (do they co=
me<br>
bigger yet?) 4MiB seems like a large amount for anticipation of future<br>
cluster sizes.<br>
<div class=3D"im"><br>
&gt; &gt; &gt; &gt; + =A0 =A0 =A0 SDIMG_SIZE=3D$(expr ${IMAGE_ROOTFS_ALIGNM=
ENT} + ${BOOT_SPACE_ALIGNED} + ${ROOTFS_SIZE})<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; =A0 =A0 =A0 =A0 # Initialize sdcard image file<br>
&gt; &gt; &gt; &gt; =A0 =A0 =A0 =A0 dd if=3D/dev/zero of=3D${SDIMG} bs=3D1 =
count=3D0 seek=3D$(expr 1024 \* ${SDIMG_SIZE})<br>
&gt; &gt; &gt; &gt; @@ -71,7 +74,7 @@ IMAGE_CMD_rpi-sdimg () {<br>
&gt; &gt; &gt; &gt; =A0 =A0 =A0 =A0 parted -s ${SDIMG} unit KiB mkpart prim=
ary fat32 ${IMAGE_ROOTFS_ALIGNMENT} $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE=
_ROOTFS_ALIGNMENT})<br>
&gt; &gt; &gt; &gt; =A0 =A0 =A0 =A0 parted -s ${SDIMG} set 1 boot on<br>
&gt; &gt; &gt; &gt; =A0 =A0 =A0 =A0 # Create rootfs partition<br>
&gt; &gt; &gt; &gt; - =A0 =A0 =A0 parted -s ${SDIMG} unit KiB mkpart primar=
y ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${=
BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT} \+ ${ROOTFS_SIZE})<br>
&gt; &gt; &gt; &gt; + =A0 =A0 =A0 parted -s ${SDIMG} unit KiB mkpart primar=
y ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ ${IMAGE_ROOTFS_ALIGNMENT}) $(expr ${=
SDIMG_SIZE} - 1)<br>
&gt; &gt; &gt; &gt; =A0 =A0 =A0 =A0 parted ${SDIMG} print<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Don&#39;t think that -1 is needed here.<br>
&gt; &gt;<br>
&gt; &gt; No, you&#39;re right - it shouldn&#39;t be. I got a weird error w=
here parted<br>
&gt; &gt; failed to create the partition in the image file, saying it ran p=
ast the<br>
&gt; &gt; end. Possibly related to the error you mentioned you saw that mad=
e you<br>
&gt; &gt; pad with IMAGE_ROOTFS_ALIGNMENT in the first place. I think I&#39=
;ll<br>
&gt; &gt; investigate more.<br>
&gt; &gt;<br>
&gt; &gt; There&#39;s a couple of things to check and fix here, so I think =
I&#39;ll<br>
&gt; &gt; withdraw this patch and re-send it later after more testing. The =
first 2<br>
&gt; &gt; patches still should be OK though.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Please do. Btw, after a smoke test the boot process failed with your<b=
r>
&gt; modifications:<br>
<br>
</div>Interesting! That certainly didn&#39;t happen for me. It may depend o=
n the<br>
exact size and internal layout of the rootfs image being written to the<br>
SD image file. I&#39;ll test as many combinations as I can before<br>
re-submitting.<br>
<br>
J.<br>
<div><div class=3D"h5"><br>
&gt; [ =A0 =A02.274940] mmcblk0: mmc0:b368 SMI =A0 3.84 GiB<br>
&gt; [ =A0 =A02.281131] =A0mmcblk0: p1 p2<br>
&gt; [ =A0 =A02.304604] EXT4-fs (mmcblk0p2): feature flags set on rev 0 fs,=
 running<br>
&gt; e2fsck is recommended<br>
&gt; [ =A0 =A02.313147] EXT4-fs (mmcblk0p2): bad geometry: block count 5734=
4 exceeds<br>
&gt; size of device (45539 blocks)<br>
&gt; [ =A0 =A02.323630] List of all partitions:<br>
&gt; [ =A0 =A02.327160] b300 =A0 =A0 =A0 =A0 4027392 mmcblk0 =A0driver: mmc=
blk<br>
&gt; [ =A0 =A02.332487] =A0 b301 =A0 =A0 =A0 =A0 =A0 20480 mmcblk0p1<br>
&gt; 00000000-0000-0000-0000-000000000000<br>
&gt; [ =A0 =A02.340085] =A0 b302 =A0 =A0 =A0 =A0 =A0 45539 mmcblk0p2<br>
&gt; 00000000-0000-0000-0000-000000000000<br>
&gt; [ =A0 =A02.347592] No filesystem could mount root, tried: =A0ext4<br>
&gt; [ =A0 =A02.352910] Kernel panic - not syncing: VFS: Unable to mount ro=
ot fs on<br>
&gt; unknown-block(179,2)<br>
&gt; [ =A0 =A02.361384] [&lt;c0013b98&gt;] (unwind_backtrace+0x0/0xf0) from=
 [&lt;c0398cb8&gt;]<br>
&gt; (panic+0x90/0x1dc)<br>
&gt; [ =A0 =A02.369575] [&lt;c0398cb8&gt;] (panic+0x90/0x1dc) from [&lt;c04=
ebcb4&gt;]<br>
&gt; (mount_block_root+0x1f0/0x250)<br>
&gt; [ =A0 =A02.378011] [&lt;c04ebcb4&gt;] (mount_block_root+0x1f0/0x250) f=
rom [&lt;c04ebf28&gt;]<br>
&gt; (mount_root+0xf0/0x118)<br>
&gt; [ =A0 =A02.386879] [&lt;c04ebf28&gt;] (mount_root+0xf0/0x118) from [&l=
t;c04ec0a4&gt;]<br>
&gt; (prepare_namespace+0x154/0x1b4)<br>
&gt; [ =A0 =A02.395833] [&lt;c04ec0a4&gt;] (prepare_namespace+0x154/0x1b4) =
from [&lt;c04eb8f4&gt;]<br>
&gt; (kernel_init+0x168/0x1a4)<br>
&gt; [ =A0 =A02.404971] [&lt;c04eb8f4&gt;] (kernel_init+0x168/0x1a4) from [=
&lt;c000eae0&gt;]<br>
&gt; (kernel_thread_exit+0x0/0x8)<br>
&gt; PANIC: VFS: Unable to mount root fs on unknown-block(179,2<br>
&gt;<br>
<br>
--<br>
</div></div>Jan Schmidt &lt;<a href=3D"mailto:thaytan@noraisin.net">thaytan=
@noraisin.net</a>&gt;<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:center=
"><div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-s=
ize:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--20cf3071ceac86a01f04d7d1fd6d--
