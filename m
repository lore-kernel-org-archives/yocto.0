Return-Path: <hchanuy@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCBCD44142
	for <webhook@archiver.kernel.org>; Tue, 19 Nov 2024 11:09:19 +0000 (UTC)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web11.18355.1732014557317755861
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Nov 2024 03:09:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kYUdLuxs;
 spf=pass (domain: gmail.com, ip: 209.85.221.175, mailfrom: hchanuy@gmail.com)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-50d4a333a87so1277655e0c.1
        for <yocto@lists.yoctoproject.org>; Tue, 19 Nov 2024 03:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732014556; x=1732619356; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DqX1chmTV828Zgtw+m0Oza/2Dvm3suWXuENmLdDxUsU=;
        b=kYUdLuxsfOscNVXOU2xWloiIVC3RjkAcemJewpNo+eqYuUfOP38jF4tlWvbbHhrW2m
         XNT5RSSPBmRYgTYiTKdpcxErSG/ddQL481G4ZAPO5HY0WUMBkF+Gu+UQS7GTqyprDEJI
         wlYxsxJT+YKQroLFbEYUM+G5j406NAgFqD1Be0IpM2/HU2qJyqQtK+H016D/RdnK5OyN
         3J08g9Zmhmg/4uqrrR9kumnlRZpub28A2/SkurqvBFTK1sxi7E5B6Vs6YbhKdtoKT5+G
         zFq0LMiO8a4mPvnYYNWqLuoNNU8MQxDs7DLBP+sXNNFEGFgzeTyNZNa66PAhNlytwTcA
         syvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732014556; x=1732619356;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DqX1chmTV828Zgtw+m0Oza/2Dvm3suWXuENmLdDxUsU=;
        b=QBQ+CNjdxA+XhA9aq/RVrGkxlW9trO5WuO0CJVnGJSBHmd2G5WuND/l8mJMhtMP14X
         GT0AJ7Xn+ueuGn4xZ1ibH+HbCS04l6pIqaGYKLQnbBDDrgfhwh1PKpCM24/cOgupcLOQ
         8bzNUQjpmH9y/1iW7I5ijcINwJAtyUq4cV5CaeUXUf/9sD4/lBj7E4d9gmLsMYqZxKGS
         oZdDXFv8fR0AwhQgoqH/cNs05Tikjc1mXixqVQGNhNHme082jyhhx0RAntyPjAEHFw/D
         UZJBW4Z0AIH70E/gQAmRSVEe+6QmfQW8PqZw3oFKVJAHnDKii15VY/4uSp92sNdnvqsm
         BV/Q==
X-Gm-Message-State: AOJu0Yz39eJMg3SxOVl0ruA9ma8rBfp4Z9vd9OnRnE4pmPAr1jKLs+DQ
	xFiTMzvs23vBm2Du+CQClAPy/8MDMhVO8G4HIqC/SwpATjfnDQo+Lid9hUtC6/wvMO+LftnlcY0
	oVtaVNFg0NKQ22qTsb+t+VAtNt/mrDZsS
X-Google-Smtp-Source: AGHT+IEcSGenqHP7xrruE8jtaqNKT7D8qN2sj+bNqAYdPKKjmMZ4GyXy6HRdR2y38iqcuAimG/SKnBYqXT4XA6PmMns=
X-Received: by 2002:a05:6102:3a12:b0:4a7:4900:4b5a with SMTP id
 ada2fe7eead31-4ad62b7f61emr11673196137.9.1732014556194; Tue, 19 Nov 2024
 03:09:16 -0800 (PST)
MIME-Version: 1.0
References: <CAMSfU+6Jp4=WmLE1UZVUsEk6FaApuOAqEsqkjZQ9TCj=_CNsLQ@mail.gmail.com>
 <6663.1731964778664692649@lists.yoctoproject.org> <2964238f-6eee-44ff-a259-975241806fa2@cherry.de>
In-Reply-To: <2964238f-6eee-44ff-a259-975241806fa2@cherry.de>
From: =?UTF-8?B?VXkgSMOg?= <hchanuy@gmail.com>
Date: Tue, 19 Nov 2024 13:09:03 +0200
Message-ID: <CAKWjPC-J2eF91oW3-rHMCDoLKKHzFzZoMA5jQZh-rzGQ4FJdUg@mail.gmail.com>
Subject: Re: [yocto] Sanity check on a flashing process design
To: yocto@lists.yoctoproject.org, Quentin Schulz <quentin.schulz@cherry.de>, 
	Yoann Congal <yoann.congal@smile.fr>
Content-Type: multipart/alternative; boundary="0000000000005e31f70627421033"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Nov 2024 11:09:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64299

--0000000000005e31f70627421033
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, I managed to trace the boot script from my vendor and saw what needs
to be done to set the correct arguments.

For future reference, the steps I have taken to boot from a USB with Yocto
is as follows:

   1. Create .wic and .wic.bmap files by following the steps in
   https://docs.yoctoproject.org/dev/dev-manual/bmaptool.html
      - TLDR: Put `IMAGE_FSTYPES=3D"wic wic.bmap"` to your image
      2. Flash the image onto your USB
      - Run the following command: `bmaptool copy /path/to/image.wic
      /path/to/usb`
      3. Plug in the USB and start U-Boot's USB system:
      - `usb start`
      - (Optional) Verify that the USB is visible, has a partition and has
      the expected structure
   - List USB: `usb storage`
         - List partition: `part list usb 0` (0 here is the number of the
         USB device according to the above result)
         - LIst the content in the USB: `ls usb 0:1` (1 here is the
         bootable partition on the USB)
         4. Loading fitImage and setting `bootargs`
      - Load fitImage into memory: `load usb 0:1 $loadaddr /boot/fitImage`
      (I know that there is a fitImage according to my Yocto build)
      - Get the UUID of the partition and put it in the `uuid` variable:
      `part uuid usb 0:1 uuid`
      - Set the value for `bootargs`: `setenv bootargs
      "console=3Dttymxc0,115200 root=3DPARTUUID=3D${uuid} rw rootwait conso=
lebank=3D0"`
      - Boot: `bootm`


On Tue, Nov 19, 2024 at 11:08=E2=80=AFAM Quentin Schulz <quentin.schulz@che=
rry.de>
wrote:

> Hi,
>
> On 11/18/24 10:19 PM, Uy Ha via lists.yoctoproject.org wrote:
> >>
> >> Or you can boot your system not using eMMC (external USB, network
> >> TFTP/NFS, ...) and then use bmaptool on your target to flash the eMMC.
> >>
> >
> > I am trying this approach now. I created a bootable USB (well,
> theoretically bootable, I haven't actually managed to boot from it) using
> `bmaptool`. However, I am not sure how to boot from it from the U-Boot
> console. I tried loading the `fitImage` in the /boot and run `bootm` to
> boot (I am just trying random things at this point, I am not really sure
> what I am doing) but the kernel panics.
> >
> > The steps I have done:
> > * Run: `usb start`
> > * Load the `fitImage` into memory: `load usb 0:1 $loadaddr
> /boot/fitImage`
> > * Boot: `bootm`
> > Then the kernel panics with the following error message
> >
> >>
> >> /dev/root: Can't open blockdev
> >> VFS: Cannot open root device "(null)" or unknown-block(0,0): error -6
> >> Please append a correct "root=3D" boot option; here are the available
> >> partitions:
> >> 0100           65536 ram0
> >> (driver?)
> >> 0101           65536 ram1
> >> (driver?)
> >> 0102           65536 ram2
> >> (driver?)
> >> 0103           65536 ram3
> >> (driver?)
> >> 0104           65536 ram4
> >> (driver?)
> >> 0105           65536 ram5
> >> (driver?)
> >> 0106           65536 ram6
> >> (driver?)
> >> 0107           65536 ram7
> >> (driver?)
> >> 0108           65536 ram8
> >> (driver?)
> >> 0109           65536 ram9
> >> (driver?)
> >> 010a           65536 ram10
> >> (driver?)
> >> 010b           65536 ram11
> >> (driver?)
> >> 010c           65536 ram12
> >> (driver?)
> >> 010d           65536 ram13
> >> (driver?)
> >> 010e           65536 ram14
> >> (driver?)
> >> 010f           65536 ram15
> >> (driver?)
> >> b300         7634944 mmcblk2
> >> driver: mmcblk
> >> b301          134010 mmcblk2p1 076c4a2a-01
> >> b302         7496704 mmcblk2p2 076c4a2a-02
> >> b308            4096 mmcblk2boot0
> >> (driver?)
> >> b310            4096 mmcblk2boot1
> >> (driver?)
> >> Kernel panic - not syncing: VFS: Unable to mount root fs on
> >> unknown-block(0,0)
> >>
> >
> > What am I missing here?
> >
>
> You are missing a rootfs. Usually passed via bootargs with root=3D or as
> an initramfs if part of the fitimage configuration that is used by defaul=
t.
>
> Cheers,
> Quentin
>

--0000000000005e31f70627421033
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, I managed to trace the boot script from my vendo=
r and saw what needs to be done to set the correct arguments.</div><div><br=
></div><div>For future reference, the steps I have taken to boot from a USB=
 with Yocto is as follows:</div><div><ol><li>Create .wic and .wic.bmap file=
s by following the steps in <a href=3D"https://docs.yoctoproject.org/dev/de=
v-manual/bmaptool.html">https://docs.yoctoproject.org/dev/dev-manual/bmapto=
ol.html</a></li><ul><li>TLDR: Put `IMAGE_FSTYPES=3D&quot;wic wic.bmap&quot;=
` to your image<br></li></ul><li>Flash the image onto your USB</li><ul><li>=
Run the following command: `bmaptool copy /path/to/image.wic /path/to/usb`<=
br></li></ul><li>Plug in the USB and start U-Boot&#39;s USB system:=C2=A0</=
li><ul><li>`usb start`<br></li></ul><ul><li>(Optional) Verify that the USB =
is visible, has a partition and has the expected structure</li></ul><ol><ul=
><li>List USB: `usb storage`</li><li>List partition: `part list usb 0` (0 h=
ere is the number of the USB device according to the above result)</li><li>=
LIst the content in the USB: `ls usb 0:1` (1 here is the bootable partition=
 on the USB)<br></li></ul></ol><li>Loading fitImage and setting `bootargs`<=
/li><ul><li>Load fitImage into memory: `load usb 0:1 $loadaddr /boot/fitIma=
ge` (I know that there is a fitImage according to my Yocto build)</li><li>G=
et the UUID of the partition and put it in the `uuid` variable: `part uuid =
usb 0:1 uuid`</li><li>Set the value for `bootargs`: `setenv bootargs &quot;=
console=3Dttymxc0,115200 root=3DPARTUUID=3D${uuid} rw rootwait consolebank=
=3D0&quot;`</li><li>Boot: `bootm`<br></li></ul></ol></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 19, 2=
024 at 11:08=E2=80=AFAM Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz=
@cherry.de">quentin.schulz@cherry.de</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On 11/18/24 10:19 PM, Uy Ha via <a href=3D"http://lists.yoctoproject.org" r=
el=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<br>
&gt;&gt;<br>
&gt;&gt; Or you can boot your system not using eMMC (external USB, network<=
br>
&gt;&gt; TFTP/NFS, ...) and then use bmaptool on your target to flash the e=
MMC.<br>
&gt;&gt;<br>
&gt; <br>
&gt; I am trying this approach now. I created a bootable USB (well, theoret=
ically bootable, I haven&#39;t actually managed to boot from it) using `bma=
ptool`. However, I am not sure how to boot from it from the U-Boot console.=
 I tried loading the `fitImage` in the /boot and run `bootm` to boot (I am =
just trying random things at this point, I am not really sure what I am doi=
ng) but the kernel panics.<br>
&gt; <br>
&gt; The steps I have done:<br>
&gt; * Run: `usb start`<br>
&gt; * Load the `fitImage` into memory: `load usb 0:1 $loadaddr /boot/fitIm=
age`<br>
&gt; * Boot: `bootm`<br>
&gt; Then the kernel panics with the following error message<br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt; /dev/root: Can&#39;t open blockdev<br>
&gt;&gt; VFS: Cannot open root device &quot;(null)&quot; or unknown-block(0=
,0): error -6<br>
&gt;&gt; Please append a correct &quot;root=3D&quot; boot option; here are =
the available<br>
&gt;&gt; partitions:<br>
&gt;&gt; 0100 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram0<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 0101 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram1<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 0102 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram2<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 0103 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram3<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 0104 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram4<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 0105 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram5<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 0106 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram6<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 0107 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram7<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 0108 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram8<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 0109 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram9<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 010a =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram10<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 010b =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram11<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 010c =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram12<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 010d =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram13<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 010e =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram14<br>
&gt;&gt; (driver?)<br>
&gt;&gt; 010f =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 ram15<br>
&gt;&gt; (driver?)<br>
&gt;&gt; b300 =C2=A0 =C2=A0 =C2=A0 =C2=A0 7634944 mmcblk2<br>
&gt;&gt; driver: mmcblk<br>
&gt;&gt; b301 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0134010 mmcblk2p1 076c4a2a-0=
1<br>
&gt;&gt; b302 =C2=A0 =C2=A0 =C2=A0 =C2=A0 7496704 mmcblk2p2 076c4a2a-02<br>
&gt;&gt; b308 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096 mmcblk2boot0<br=
>
&gt;&gt; (driver?)<br>
&gt;&gt; b310 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04096 mmcblk2boot1<br=
>
&gt;&gt; (driver?)<br>
&gt;&gt; Kernel panic - not syncing: VFS: Unable to mount root fs on<br>
&gt;&gt; unknown-block(0,0)<br>
&gt;&gt;<br>
&gt; <br>
&gt; What am I missing here?<br>
&gt; <br>
<br>
You are missing a rootfs. Usually passed via bootargs with root=3D or as <b=
r>
an initramfs if part of the fitimage configuration that is used by default.=
<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--0000000000005e31f70627421033--

