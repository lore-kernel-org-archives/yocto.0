Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id DE7B4E00721
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 08:03:02 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id fl17so4411750vcb.41
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 08:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=6uIgehHoP6GVRZldn/KXnU1IM+u6zwID6FqhzORKe0E=;
	b=LkRvxhBzrMtk0xHmpVnrcVWEiYrjQDO7zapzoLnKHUT+BbE1OKhWvrALDGoR9a8ytP
	F3TSGZAp2k/mqEpb+IVrqut52sPAczWYrgmkSo+lX6fWU0qMs5B9YJfleDIfrE0E79fn
	UYXISrjG4XjghXqoE5qdPbJDP/fVguSY/9GtOSQlUDTW3C9NLW3jGipXxKtRNmpNvHZj
	CTJvg6chUEGOhjzEj5nJ1tvxEQjTkAX+jaO1rnbAlwGYV6i5sFYHa1JCHL6EgQKgWcS+
	UHGVU/Y+M52YT2EbCcUQYqnJGa4Bhq0UVAzfcIiskYvh6hQUdiB4ff/SCziyP2ZiaU4j
	d8XA==
MIME-Version: 1.0
X-Received: by 10.220.149.198 with SMTP id u6mr20852987vcv.52.1361289773413;
	Tue, 19 Feb 2013 08:02:53 -0800 (PST)
Received: by 10.58.155.102 with HTTP; Tue, 19 Feb 2013 08:02:53 -0800 (PST)
In-Reply-To: <51239308.1010404@mlbassoc.com>
References: <CABTzgQ4oa8AOZRxAUOQKH0r_gA-28LbT3ZO-MeM0TKcedhufMQ@mail.gmail.com>
	<51239308.1010404@mlbassoc.com>
Date: Tue, 19 Feb 2013 17:02:53 +0100
Message-ID: <CABTzgQ5awWZeW+WeLBG-MAPn5650MbqoJ_UFtZ6eo6vRrMnViw@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
Subject: Re: Avionic Tamonten Board - Uboot problem
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
X-List-Received-Date: Tue, 19 Feb 2013 16:03:03 -0000
Content-Type: multipart/alternative; boundary=f46d043c816c6174ec04d615f955

--f46d043c816c6174ec04d615f955
Content-Type: text/plain; charset=ISO-8859-1

Unfortunately "tec_config" didnot work. Here is the error message

Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8 CROSS_COMPILE=arm-poky-linux-gnueabi-
CC=arm-poky-linux-gnueabi-gcc
 --sysroot=/home/build/yocto/poky/buildTamonten/tmp/sysroots/skidata-tamonten
tec_config
| make: *** No rule to make target `tec_config'.  Stop.
| make: *** [tec_config] Error 1
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see
/home/build/yocto/poky/buildTamonten/tmp/work/skidata_tamonten-poky-linux-gnueabi/u-boot-v2012.04.01+git3+415d386877df49eb051b85ef74fa59a16dc17c7d-r2/temp/log.do_compile.21665
for further information)
ERROR: Task 69 (/home/build/yocto/poky/meta/recipes-bsp/u-boot/
u-boot_2012.04.01.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 3421 tasks of which 319 didn't need to be
rerun and 1 failed.




On Tue, Feb 19, 2013 at 3:58 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-02-19 06:28, Satya Swaroop Damarla wrote:
>
>> Hi,
>>
>> I want to build a basic image for the Avionic Tamonten board using Yocto.
>> SO, I created a skidata-tamonten.conf in the list of machines based on the
>> beagleboard.conf but I dont
>> know what to add for the UBOOT_MACHINE= . I tried my best to use the same
>> "omap_beagle_conf" but it doesnot boot properly. Here is the
>> skidata-tamonten.conf file description
>>
>>
> Try 'tec_config'
>
>  #@TYPE: Machine
>> #@NAME: skidata-tamonten machine
>> #@DESCRIPTION: Machine configuration for the Tamonten board
>>
>> PREFERRED_PROVIDER_virtual/**xserver ?= "xserver-xorg"
>> XSERVER ?= "xserver-xorg \
>>             xf86-input-evdev \
>>             xf86-input-mouse \
>>             xf86-video-omapfb \
>>             xf86-input-keyboard"
>>
>> # Ship all kernel modules by default
>> MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>>
>> # Allow for MMC booting ()
>> EXTRA_IMAGEDEPENDS += "u-boot"
>>
>> # Uncomment the following line to enable the hard floating point abi.
>> Note that
>> # this breaks some binary libraries and 3D (neither of which ship with
>> # meta-yocto). For maximum compatibility, leave this disabled.
>> DEFAULTTUNE ?= "cortexa9thf"
>> include conf/machine/include/tune-**cortexa9.inc
>>
>> IMAGE_FSTYPES += "tar.bz2 ext2 ext3"
>>
>> SERIAL_CONSOLE = "115200 ttyO2"
>>
>> PREFERRED_PROVIDER_virtual/**kernel ?= "linux-yocto"
>> PREFERRED_VERSION_linux-yocto ?= "3.2%"
>>
>> KERNEL_IMAGETYPE = "uImage"
>>
>> PREFERRED_VERSION_u-boot ?= "v2012.04%"
>>
>> UBOOT_MACHINE = "???????????????????"
>>
>> UBOOT_ENTRYPOINT = "0x00008000"
>> UBOOT_LOADADDRESS = "0x00008000"
>>
>> MACHINE_FEATURES = "usbgadget usbhost vfat alsa screen touchscreen
>> keyboard"
>>
>>
>> Greetings & Regards,
>> Swaroop
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--f46d043c816c6174ec04d615f955
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Unfortunately &quot;tec_config&quot; didnot work. Here is =
the error message<div><br></div><div><div>Log data follows:</div><div>| DEB=
UG: Executing shell function do_compile</div><div>| NOTE: make -j 8 CROSS_C=
OMPILE=3Darm-poky-linux-gnueabi- CC=3Darm-poky-linux-gnueabi-gcc =A0--sysro=
ot=3D/home/build/yocto/poky/buildTamonten/tmp/sysroots/skidata-tamonten tec=
_config</div>
<div>| make: *** No rule to make target `tec_config&#39;. =A0Stop.</div><di=
v>| make: *** [tec_config] Error 1</div><div>| ERROR: oe_runmake failed</di=
v><div>| ERROR: Function failed: do_compile (see /home/build/yocto/poky/bui=
ldTamonten/tmp/work/skidata_tamonten-poky-linux-gnueabi/u-boot-v2012.04.01+=
git3+415d386877df49eb051b85ef74fa59a16dc17c7d-r2/temp/log.do_compile.21665 =
for further information)</div>
<div>ERROR: Task 69 (/home/build/yocto/poky/meta/recipes-bsp/u-boot/<a href=
=3D"http://u-boot_2012.04.01.bb">u-boot_2012.04.01.bb</a>, do_compile) fail=
ed with exit code &#39;1&#39;</div><div>NOTE: Tasks Summary: Attempted 3421=
 tasks of which 319 didn&#39;t need to be rerun and 1 failed.</div>
</div><div><br></div><div style><br></div></div><div class=3D"gmail_extra">=
<br><br><div class=3D"gmail_quote">On Tue, Feb 19, 2013 at 3:58 PM, Gary Th=
omas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_=
blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 2013-02-19 06:28, Satya=
 Swaroop Damarla wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I want to build a basic image for the Avionic Tamonten board using Yocto. S=
O, I created a skidata-tamonten.conf in the list of machines based on the b=
eagleboard.conf but I dont<br>
know what to add for the UBOOT_MACHINE=3D . I tried my best to use the same=
 &quot;omap_beagle_conf&quot; but it doesnot boot properly. Here is the ski=
data-tamonten.conf file description<br>
<br>
</blockquote>
<br></div>
Try &#39;tec_config&#39;<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"h5">
#@TYPE: Machine<br>
#@NAME: skidata-tamonten machine<br>
#@DESCRIPTION: Machine configuration for the Tamonten board<br>
<br>
PREFERRED_PROVIDER_virtual/<u></u>xserver ?=3D &quot;xserver-xorg&quot;<br>
XSERVER ?=3D &quot;xserver-xorg \<br>
=A0 =A0 =A0 =A0 =A0 =A0 xf86-input-evdev \<br>
=A0 =A0 =A0 =A0 =A0 =A0 xf86-input-mouse \<br>
=A0 =A0 =A0 =A0 =A0 =A0 xf86-video-omapfb \<br>
=A0 =A0 =A0 =A0 =A0 =A0 xf86-input-keyboard&quot;<br>
<br>
# Ship all kernel modules by default<br>
MACHINE_EXTRA_RRECOMMENDS =3D &quot; kernel-modules&quot;<br>
<br>
# Allow for MMC booting ()<br>
EXTRA_IMAGEDEPENDS +=3D &quot;u-boot&quot;<br>
<br>
# Uncomment the following line to enable the hard floating point abi. Note =
that<br>
# this breaks some binary libraries and 3D (neither of which ship with<br>
# meta-yocto). For maximum compatibility, leave this disabled.<br>
DEFAULTTUNE ?=3D &quot;cortexa9thf&quot;<br>
include conf/machine/include/tune-<u></u>cortexa9.inc<br>
<br>
IMAGE_FSTYPES +=3D &quot;tar.bz2 ext2 ext3&quot;<br>
<br>
SERIAL_CONSOLE =3D &quot;115200 ttyO2&quot;<br>
<br>
PREFERRED_PROVIDER_virtual/<u></u>kernel ?=3D &quot;linux-yocto&quot;<br>
PREFERRED_VERSION_linux-yocto ?=3D &quot;3.2%&quot;<br>
<br>
KERNEL_IMAGETYPE =3D &quot;uImage&quot;<br>
<br>
PREFERRED_VERSION_u-boot ?=3D &quot;v2012.04%&quot;<br>
<br>
UBOOT_MACHINE =3D &quot;???????????????????&quot;<br>
<br>
UBOOT_ENTRYPOINT =3D &quot;0x00008000&quot;<br>
UBOOT_LOADADDRESS =3D &quot;0x00008000&quot;<br>
<br>
MACHINE_FEATURES =3D &quot;usbgadget usbhost vfat alsa screen touchscreen k=
eyboard&quot;<br>
<br>
<br>
Greetings &amp; Regards,<br>
Swaroop<br>
<br>
<br>
<br></div></div>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br><span class=3D"HOEnZb"><font color=3D"#888888">
</font></span></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--f46d043c816c6174ec04d615f955--
