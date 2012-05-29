Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CBEFE013D3
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 09:11:12 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1278528eaa.35
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 09:11:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=OhGw7/zdU2inDnFED2H6pzVx10FedpqN+bTWF708CTk=;
	b=niFGsG21D6K/SxausiLnyAVf9gddDqBNYiBetlM4GK/VbKasklqWCCH4Pp49kKleJh
	ZNihpb6Q3GZEY+Ueo3sWYpz0w8scLPXY9uoFUXCSWolhFFsjGksz+V6l+8QxxhpHUIOE
	lQwtErl9R6mjFUcZGerIquBOrsQohWUtshzSM5odrOVILnRABtnQTDvM91XpQEF6mCxE
	0jUVBQ5H5lyBU33/XofTj1qM6Q5wuLUIql8hbTyMBV5Ckf7uvVQrWds9oXtlcjnZDGvl
	PjjcdAbaUiSuomEok+G3M8C0MAnHC28seRmDaPayi08I23YkkTYRxi6PmIstVe7vnibF
	iLlQ==
MIME-Version: 1.0
Received: by 10.204.156.16 with SMTP id u16mr6414417bkw.13.1338307871082; Tue,
	29 May 2012 09:11:11 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.204.155.80 with HTTP; Tue, 29 May 2012 09:11:11 -0700 (PDT)
In-Reply-To: <CAPWh-0JB5PFxRw-8kX5+TEdWTpcq47n7TFqZpnst-QkO9O1PEw@mail.gmail.com>
References: <CA+gsK-qXd1De=kyWbkXXO_9M7VruxNT+DLvpH9ZykPdLE4v1pw@mail.gmail.com>
	<CAPWh-0JB5PFxRw-8kX5+TEdWTpcq47n7TFqZpnst-QkO9O1PEw@mail.gmail.com>
Date: Tue, 29 May 2012 09:11:11 -0700
X-Google-Sender-Auth: 8kwbwkkAdZa4pxhA-vaD6I8_NI0
Message-ID: <CA+gsK-q9Sk2ba-W5EiPc=4+LJeu2dwLEk+QkehfGvE5XnQVV9A@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org, Sanyaade Adekoya <sanyaade@gmail.com>
X-Gm-Message-State: ALoCoQmk/4CuX74lNIXqVi4PEfOnzV4SJbQQY0G78v0oac93X967P7HuGUK0zC4+4UFKmF1imZUI
Subject: Re: Building linux-yocto kernel for BeagleBone
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
X-List-Received-Date: Tue, 29 May 2012 16:11:13 -0000
Content-Type: multipart/alternative; boundary=0015175cabda418a9604c12f15c6

--0015175cabda418a9604c12f15c6
Content-Type: text/plain; charset=ISO-8859-1

Thank you Sanyaade. That's what I tried and I probably should have added
some more detail to my first e-mail.

Here it is:

I create at beaglebone.conf machine configuration with this content:

#@TYPE: Machine
#@NAME: BeagleBone machine
#@DESCRIPTION: Machine configuration for the http://beagleboard.org/boneboard

PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
XSERVER = "xserver-xorg \
           xf86-input-evdev \
           xf86-video-fbdev"

# Only has DVI connector for external screen
GUI_MACHINE_CLASS = "bigscreen"

# Ship all kernel modules by default
MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"

# Allow for MMC booting (required by the NAND-less Beagleboard XM)
EXTRA_IMAGEDEPENDS += "u-boot x-load"

# Uncomment the following line to enable the hard floating point abi. Note
that
# this breaks some binary libraries and 3D (neither of which ship with
# meta-yocto). For maximum compatibility, leave this disabled.
#DEFAULTTUNE ?= "cortexa8hf-neon"

SOC_FAMILY = "ti33x"
require conf/machine/include/soc-family.inc

require conf/machine/include/tune-cortexa8.inc

IMAGE_FSTYPES += "tar.bz2 jffs2"
EXTRA_IMAGECMD_jffs2 = "-lnp "

# 2.6.37 and later kernels use OMAP_SERIAL, ttyO0
SERIAL_CONSOLE = "115200 ttyO0"

PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
PREFERRED_VERSION_linux-yocto ?= "3.0%"

KERNEL_IMAGETYPE = "uImage"

UBOOT_MACHINE = "am335x_evm_config"
UBOOT_ENTRYPOINT = "0x80008000"
UBOOT_LOADADDRESS = "0x80008000"

MACHINE_FEATURES = "apm usbgadget usbhost vfat alsa"

I created a linux-yocto_3.0.bbappend with this content:

KMACHINE_beaglebone = "yocto/standard/beagleboard"
SRCREV_machine_beaglebone ?= "8fd5a8eb4067c7032389e82d54f0e54e1e27f78c"
COMPATIBLE_MACHINE_beaglebone = "beaglebone"

Then I am trying to boot the BeagleBone with the kernel:

reading uImage



3016584 bytes read

## Booting kernel from Legacy Image at 82000000 ...

   Image Name:   Linux-3.0.24-yocto-standard

   Image Type:   ARM Linux Kernel Image (uncompressed)

   Data Size:    3016520 Bytes = 2.9 MiB

   Load Address: 80008000

   Entry Point:  80008000

   Verifying Checksum ... OK

   Loading Kernel Image ... OK

OK



Starting kernel ...


And this is where the boot process hangs.


One suggestion here is that machine id of uBoot and the kernel to not
match. I am using MLO and u-boot.img from the SD that shipped with the
BBone. And I set UBOOT_MACHINE = "am335x_evm_config" in beaglebone.conf
which is what uBoot should be using.

I also tried a plain BeagleBoard kernel and MLO and u-boot.img created by
Yocto and it did not work.

Any suggestions would be appreciated.

Rudi


On Sun, May 27, 2012 at 12:34 PM, Sanyaade Adekoya <sanyaade@gmail.com>wrote:

> Hi,
> According to Ti, BeagleBone is just a small BeagleBoard in a small factor
> so a common base like a bare build for BeagleBoard should run
> on BeagleBone. I think the is same for OMAP family.
>
> God blesses!!!
>
> Best regards,
> Sanyaade
>
>
> On 25 May 2012 23:52, Rudolf Streif <rudolf.streif@linux.com> wrote:
>
>> Has anyone tried to build a linux-yocto kernel for the BeagleBone? I
>> understand that there is the meta-ti layer to build an image for the BBone
>> but the recipes are not utilizing the Yocto Project kernels.
>>
>> I know that the OMAP3 CPU of the BBoard is different form the AM355x CPU
>> on the BBone. However, can the yocto/standard/beagleboard branch be
>> leveraged to start off?
>>
>> Thanks,
>> Rudi
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--0015175cabda418a9604c12f15c6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thank you Sanyaade. That&#39;s what I tried and I probably should have adde=
d some more detail to my first e-mail.<div><br></div><div>Here it is:</div>=
<div><br></div><div>I create at beaglebone.conf machine configuration with =
this content:</div>
<div><br></div><div><div>#@TYPE: Machine</div><div>#@NAME: BeagleBone machi=
ne</div><div>#@DESCRIPTION: Machine configuration for the <a href=3D"http:/=
/beagleboard.org/bone">http://beagleboard.org/bone</a> board=A0</div><div><=
br>
</div><div>PREFERRED_PROVIDER_virtual/xserver =3D &quot;xserver-xorg&quot;<=
/div><div>XSERVER =3D &quot;xserver-xorg \</div><div>=A0 =A0 =A0 =A0 =A0 =
=A0xf86-input-evdev \</div><div>=A0 =A0 =A0 =A0 =A0 =A0xf86-video-fbdev&quo=
t;</div><div><br></div><div>
# Only has DVI connector for external screen</div><div>GUI_MACHINE_CLASS =
=3D &quot;bigscreen&quot;</div><div><br></div><div># Ship all kernel module=
s by default</div><div>MACHINE_EXTRA_RRECOMMENDS =3D &quot; kernel-modules&=
quot;</div>
<div><br></div><div># Allow for MMC booting (required by the NAND-less Beag=
leboard XM)</div><div>EXTRA_IMAGEDEPENDS +=3D &quot;u-boot x-load&quot;</di=
v><div><br></div><div># Uncomment the following line to enable the hard flo=
ating point abi. Note that</div>
<div># this breaks some binary libraries and 3D (neither of which ship with=
</div><div># meta-yocto). For maximum compatibility, leave this disabled.</=
div><div>#DEFAULTTUNE ?=3D &quot;cortexa8hf-neon&quot;</div><div><br></div>
<div>SOC_FAMILY =3D &quot;ti33x&quot;</div><div>require conf/machine/includ=
e/soc-family.inc</div><div><br></div><div>require conf/machine/include/tune=
-cortexa8.inc</div><div><br></div><div>IMAGE_FSTYPES +=3D &quot;tar.bz2 jff=
s2&quot;</div>
<div>EXTRA_IMAGECMD_jffs2 =3D &quot;-lnp &quot;</div><div><br></div><div># =
2.6.37 and later kernels use OMAP_SERIAL, ttyO0</div><div>SERIAL_CONSOLE =
=3D &quot;115200 ttyO0&quot;</div><div><br></div><div>PREFERRED_PROVIDER_vi=
rtual/kernel ?=3D &quot;linux-yocto&quot;</div>
<div>PREFERRED_VERSION_linux-yocto ?=3D &quot;3.0%&quot;</div><div><br></di=
v><div>KERNEL_IMAGETYPE =3D &quot;uImage&quot;</div><div><br></div><div>UBO=
OT_MACHINE =3D &quot;am335x_evm_config&quot;</div><div>UBOOT_ENTRYPOINT =3D=
 &quot;0x80008000&quot;</div>
<div>UBOOT_LOADADDRESS =3D &quot;0x80008000&quot;</div><div><br></div><div>=
MACHINE_FEATURES =3D &quot;apm usbgadget usbhost vfat alsa&quot;</div><div>=
<br></div><div>I created a linux-yocto_3.0.bbappend with this content:</div=
>
<div><br></div><div><div>KMACHINE_beaglebone =3D &quot;yocto/standard/beagl=
eboard&quot;</div><div>SRCREV_machine_beaglebone ?=3D &quot;8fd5a8eb4067c70=
32389e82d54f0e54e1e27f78c&quot;</div><div>COMPATIBLE_MACHINE_beaglebone =3D=
 &quot;beaglebone&quot;</div>
</div><div><br></div><div>Then I am trying to boot the BeagleBone with the =
kernel:</div><div><br></div><div><div>reading uImage =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0=A0</div>
<div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
</div><div>3016584 bytes read =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div>
<div>## Booting kernel from Legacy Image at 82000000 ... =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0</div><div>=A0 =A0Image Name: =A0 Linux-3.0.24-yocto=
-standard =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div>
<div>=A0 =A0Image Type: =A0 ARM Linux Kernel Image (uncompressed) =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0=A0</div><div>=A0 =A0Data Size: =A0 =A03016520 Bytes=
 =3D 2.9 MiB =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0=
</div>
<div>=A0 =A0Load Address: 80008000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>=A0 =A0Entry =
Point: =A080008000 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>
<div>=A0 =A0Verifying Checksum ... OK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div>=A0 =A0Loading=
 Kernel Image ... OK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div>
<div>OK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</di=
v><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
</div>
<div>Starting kernel ... =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div></div><div><br=
></div><div>And this is where the boot process hangs.</div>
<div><br></div><div><br></div><div>One suggestion here is that machine id o=
f uBoot and the kernel to not match. I am using MLO and u-boot.img from the=
 SD that shipped with the BBone. And I set=A0UBOOT_MACHINE =3D &quot;am335x=
_evm_config&quot; in beaglebone.conf which is what uBoot should be using.</=
div>
<div><br></div><div>I also tried a plain BeagleBoard kernel and MLO and u-b=
oot.img created by Yocto and it did not work.</div><div><br></div><div>Any =
suggestions would be appreciated.</div><div><br></div><div>Rudi</div><div>
<br></div><br><div class=3D"gmail_quote">On Sun, May 27, 2012 at 12:34 PM, =
Sanyaade Adekoya <span dir=3D"ltr">&lt;<a href=3D"mailto:sanyaade@gmail.com=
" target=3D"_blank">sanyaade@gmail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">
Hi,<br>According to Ti, BeagleBone is just a small BeagleBoard in a small f=
actor so a common base like a bare build for BeagleBoard should run<br>on B=
eagleBone. I think the is same for OMAP family.<br><br>God blesses!!!<br>

<br>Best regards,<br>Sanyaade<br><br><br><div class=3D"gmail_quote"><div><d=
iv class=3D"h5">On 25 May 2012 23:52, Rudolf Streif <span dir=3D"ltr">&lt;<=
a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank">rudolf.streif@l=
inux.com</a>&gt;</span> wrote:<br>

</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5">Has anyon=
e tried to build a linux-yocto kernel for the BeagleBone? I understand that=
 there is the meta-ti layer to build an image for the BBone but the recipes=
 are not utilizing the Yocto Project kernels.<div>

<br></div><div>
I know that the OMAP3 CPU of the BBoard is different form the AM355x CPU on=
 the BBone. However, can the yocto/standard/beagleboard branch be leveraged=
 to start off?</div><div><br></div><div>Thanks,</div><div>Rudi</div>
<br></div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br>
</blockquote></div><br></div>

--0015175cabda418a9604c12f15c6--
