Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C2BA8E006CB
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 05:28:57 -0800 (PST)
Received: by mail-ve0-f181.google.com with SMTP id d10so5835582vea.12
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 05:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=N722Jzldw8BTyX+WREVgixpqsGqZeHrBAylMdiWquDk=;
	b=q1I0kKCFbXgOHaIq10hyZlmNFmh2B+FpNv4dl2NPF7D/r8F3VAgUctAoDx2CTxvItO
	czS2xELamSHFQj9R+hmnxGVMX3Zl5ZoHJF/yaZSGMgMRkt83ZsS1DdgZ0yg8TPg20dFa
	9q35gBEmeAIUTy159ZpVyrKhTwi9YIgPGMpl3GACKVoR04EKNh0q/yHixwi6IaODmmQ0
	zYAyH3463BCOLl0es2N0TcvtpJ5N1IWUCM0TGcWR/5pMeApmDTqBFIyYdQOtDPyWe5cV
	QAJGFJ6JY9hAwr9xQaNZfTjffXMOfH4QWPiOcVAFJjYQ7bfNcqY6vE/+bLaOgzQYVaV9
	+YQw==
MIME-Version: 1.0
X-Received: by 10.52.65.147 with SMTP id x19mr18152871vds.27.1361280536874;
	Tue, 19 Feb 2013 05:28:56 -0800 (PST)
Received: by 10.58.155.102 with HTTP; Tue, 19 Feb 2013 05:28:56 -0800 (PST)
Date: Tue, 19 Feb 2013 14:28:56 +0100
Message-ID: <CABTzgQ4oa8AOZRxAUOQKH0r_gA-28LbT3ZO-MeM0TKcedhufMQ@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: yocto@yoctoproject.org
Subject: Avionic Tamonten Board - Uboot problem
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
X-List-Received-Date: Tue, 19 Feb 2013 13:28:58 -0000
Content-Type: multipart/alternative; boundary=20cf3071ca04d70ef104d613d246

--20cf3071ca04d70ef104d613d246
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I want to build a basic image for the Avionic Tamonten board using Yocto.
SO, I created a skidata-tamonten.conf in the list of machines based on the
beagleboard.conf but I dont know what to add for the UBOOT_MACHINE= . I
tried my best to use the same "omap_beagle_conf" but it doesnot boot
properly. Here is the skidata-tamonten.conf file description

#@TYPE: Machine
#@NAME: skidata-tamonten machine
#@DESCRIPTION: Machine configuration for the Tamonten board

PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
XSERVER ?= "xserver-xorg \
           xf86-input-evdev \
           xf86-input-mouse \
           xf86-video-omapfb \
           xf86-input-keyboard"

# Ship all kernel modules by default
MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"

# Allow for MMC booting ()
EXTRA_IMAGEDEPENDS += "u-boot"

# Uncomment the following line to enable the hard floating point abi. Note
that
# this breaks some binary libraries and 3D (neither of which ship with
# meta-yocto). For maximum compatibility, leave this disabled.
DEFAULTTUNE ?= "cortexa9thf"
include conf/machine/include/tune-cortexa9.inc

IMAGE_FSTYPES += "tar.bz2 ext2 ext3"

SERIAL_CONSOLE = "115200 ttyO2"

PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
PREFERRED_VERSION_linux-yocto ?= "3.2%"

KERNEL_IMAGETYPE = "uImage"

PREFERRED_VERSION_u-boot ?= "v2012.04%"

UBOOT_MACHINE = "???????????????????"

UBOOT_ENTRYPOINT = "0x00008000"
UBOOT_LOADADDRESS = "0x00008000"

MACHINE_FEATURES = "usbgadget usbhost vfat alsa screen touchscreen keyboard"


Greetings & Regards,
Swaroop

--20cf3071ca04d70ef104d613d246
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=A0<div><br></div><div style>I want to build a basic im=
age for the Avionic Tamonten board using Yocto. SO, I created a skidata-tam=
onten.conf in the list of machines based on the beagleboard.conf but I dont=
 know what to add for the UBOOT_MACHINE=3D . I tried my best to use the sam=
e &quot;omap_beagle_conf&quot; but it doesnot boot properly. Here is the sk=
idata-tamonten.conf file description</div>
<div style><br></div><div style><div>#@TYPE: Machine</div><div>#@NAME: skid=
ata-tamonten machine</div><div>#@DESCRIPTION: Machine configuration for the=
 Tamonten board</div><div><br></div><div>PREFERRED_PROVIDER_virtual/xserver=
 ?=3D &quot;xserver-xorg&quot;</div>
<div>XSERVER ?=3D &quot;xserver-xorg \</div><div>=A0 =A0 =A0 =A0 =A0 =A0xf8=
6-input-evdev \</div><div>=A0 =A0 =A0 =A0 =A0 =A0xf86-input-mouse \</div><d=
iv>=A0 =A0 =A0 =A0 =A0 =A0xf86-video-omapfb \</div><div>=A0 =A0 =A0 =A0 =A0=
 =A0xf86-input-keyboard&quot;</div><div><br></div>
<div># Ship all kernel modules by default</div><div>MACHINE_EXTRA_RRECOMMEN=
DS =3D &quot; kernel-modules&quot;</div><div><br></div><div># Allow for MMC=
 booting ()</div><div>EXTRA_IMAGEDEPENDS +=3D &quot;u-boot&quot;</div><div>
<br></div><div># Uncomment the following line to enable the hard floating p=
oint abi. Note that</div><div># this breaks some binary libraries and 3D (n=
either of which ship with</div><div># meta-yocto). For maximum compatibilit=
y, leave this disabled.</div>
<div>DEFAULTTUNE ?=3D &quot;cortexa9thf&quot;</div><div>include conf/machin=
e/include/tune-cortexa9.inc</div><div><br></div><div>IMAGE_FSTYPES +=3D &qu=
ot;tar.bz2 ext2 ext3&quot;</div><div><br></div><div>SERIAL_CONSOLE =3D &quo=
t;115200 ttyO2&quot;</div>
<div><br></div><div>PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-yoct=
o&quot;</div><div>PREFERRED_VERSION_linux-yocto ?=3D &quot;3.2%&quot;</div>=
<div><br></div><div>KERNEL_IMAGETYPE =3D &quot;uImage&quot;</div><div><br><=
/div>
<div>PREFERRED_VERSION_u-boot ?=3D &quot;v2012.04%&quot;</div><div><br></di=
v><div>UBOOT_MACHINE =3D &quot;???????????????????&quot;</div><div><br></di=
v><div>UBOOT_ENTRYPOINT =3D &quot;0x00008000&quot;</div><div>UBOOT_LOADADDR=
ESS =3D &quot;0x00008000&quot;</div>
<div><br></div><div>MACHINE_FEATURES =3D &quot;usbgadget usbhost vfat alsa =
screen touchscreen keyboard&quot;</div><div><br></div><div><br></div><div s=
tyle>Greetings &amp; Regards,</div><div style>Swaroop</div><div style><br>
</div></div></div>

--20cf3071ca04d70ef104d613d246--
