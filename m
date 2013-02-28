Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 79A3BE003BC
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 12:31:41 -0800 (PST)
Received: by mail-ea0-f175.google.com with SMTP id d1so217246eab.34
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 12:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=7iXoHIa7ryZG/XPbdXs7AAlcUqJEggqTQu/S3JjVglM=;
	b=ZCw9k3GW9OAvPrXrwcB9nc9pPLiCUB56piD98y/n9E+ivZn+pg18UGLakbcC/UjJuu
	k+3/ahE0ghhAzxgPAbvt680D3El7Qcbw2nB6PC5PPlXfdqAhfIjwTtZ+cT/smWNcabnQ
	H8hw9EonU1eaKViaRUzqeDotIvvgjnpCes3o8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type:x-gm-message-state;
	bh=7iXoHIa7ryZG/XPbdXs7AAlcUqJEggqTQu/S3JjVglM=;
	b=fqzMmIDIZ4UyCUGdLROJlxWoHSGiIAaFj8ILnAcB5AGwbOdjxQ7o4X5nXwXltVgqXr
	OhV+BRvolO5jjz3sbHWFx9wpfZhzBCimpMb33qVkpxTi0CqdPSNyUNDhFvjpQ8Dppc0H
	egMk+EqnyKqGZGEywYkfWNsBXNfp8zqRXsVWJ5I1Fp+8tkiKdrDAkObMBltE+55toxQB
	I7Q/F7YdBLwRG+9/qsTLQGtJ4svJHhvTB3wG6wdMDc+lFvuTJgEUN07dRDrSF3o0jmet
	1kkiYpu4odftb/mrh7puBm62sEYfxpPlBOcD3BmZ9NQYT4jFk0CR0uPH8bNJTYcLMzFf
	vi1A==
MIME-Version: 1.0
X-Received: by 10.14.215.193 with SMTP id e41mr20321571eep.32.1362083499635;
	Thu, 28 Feb 2013 12:31:39 -0800 (PST)
Received: by 10.223.43.200 with HTTP; Thu, 28 Feb 2013 12:31:39 -0800 (PST)
In-Reply-To: <CABTzgQ6pWQD8Rs=NRCvemTy1WWfeH_Rvb2+XaeSLVx_urXkw5A@mail.gmail.com>
References: <CABTzgQ4aGxsRgpFMBZf0t7KVfmBYihePSbkD_D8azAGdCpTgiA@mail.gmail.com>
	<CA+gsK-osjB9NK4gdMBuJU98d3RZiZqJ6yZBh9jR21hJrkx3gkQ@mail.gmail.com>
	<CABTzgQ6pWQD8Rs=NRCvemTy1WWfeH_Rvb2+XaeSLVx_urXkw5A@mail.gmail.com>
Date: Thu, 28 Feb 2013 12:31:39 -0800
Message-ID: <CA+gsK-rp8LOrmJ6k+3Xja-j4Acu559g9BE1-eJT5-kZOi7457Q@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQmC87WN3ZYQphJuJf3BjO7jPu3/KRvPhDBuRwxUOtfVvILuO26DIrrU5gG/nWjWet2DHMDS
Subject: Re: uboot.bin and rootfs but not uImage
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
X-List-Received-Date: Thu, 28 Feb 2013 20:31:42 -0000
Content-Type: multipart/alternative; boundary=e89a8f647ac326b4e104d6cec762

--e89a8f647ac326b4e104d6cec762
Content-Type: text/plain; charset=ISO-8859-1

Hi Satya,

You will first need a kernel recipe, let's call it linux-skidata.bb. It can
look like this:

DESCRIPTION = "Skidata Linux Kernel"
SECTION = "kernel"
LICENSE = "GPLv2"

LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

PV = "3.2"

inherit kernel

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:${THISDIR}/${PN}/patches:"

# GIT repository location
KSRC ?= "<path to>/linux-skidata.git"

# Branch to check out
KBRANCH ?= "<branch>"

# Revision tag or AUTOREV
SRCREV ?= "${AUTOREV}"

SRC_URI = "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel \
   file://defconfig \
   "

S = "${WORKDIR}/git"


You will need to provide a defconfig file next to your recipe containing
the kernel configuration settings. Your kernel GIT repo may contain a
.config that is good for your hardware. In that case you do not need a
defconfig but is still a good practice and will allow you to easily change
the settings.

Then you need to adjust your machine configuration file:

PREFERRED_PROVIDER_virtual/kernel ?= "linux-skidata"
PREFERRED_VERSION_skidata ?= "3.2%"


That should do it.

:rjs


On Thu, Feb 28, 2013 at 11:21 AM, Satya Swaroop Damarla <
swaroop.damarla@gmail.com> wrote:

> Yes I got an error message when I was building the kernel...  Actuallly I
> have a kernel git given by the company.... I downloaded it and is in my
> work pc.. How can I tell the build system to use that kernel?
>
>
> On Thu, Feb 28, 2013 at 8:17 PM, Rudolf Streif <
> rstreif@linuxfoundation.org> wrote:
>
>> Satya,
>>
>> your machine configuration file looks ok as far as I can tell. Did you
>> get an error message when building the kernel? Did you try to build just
>> the kernel e.g. bitbake linux-yocto?
>>
>> :rjs
>>
>>
>> On Mon, Feb 25, 2013 at 11:31 PM, Satya Swaroop Damarla <
>> swaroop.damarla@gmail.com> wrote:
>>
>>> Hello Guys... I think uImage is important but it is not being generated
>>> by the yocto project. It only generated the rootfs and uboot.bin. Is there
>>> any variable that has to be introduced in the machine.conf (in my case it
>>> is skidata-tamonten.conf)....
>>>
>>> Here is the configuration file
>>>
>>> #@TYPE: Machine
>>> #@NAME: skidata-tamonten machine
>>> #@DESCRIPTION: Machine configuration for the Tamonten board
>>>
>>> PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>>>
>>> IMAGE_FEATURES += "package-management"
>>> EXTRA_IMAGEDEPENDS += " u-boot"
>>>
>>> # Uncomment the following line to enable the hard floating point abi.
>>> Note that
>>> # this breaks some binary libraries and 3D (neither of which ship with
>>> # meta-yocto). For maximum compatibility, leave this disabled.
>>> DEFAULTTUNE ?= "cortexa9t"
>>> include conf/machine/include/tune-cortexa9.inc
>>>
>>> IMAGE_FSTYPES += "tar.bz2 ext2"
>>>
>>> SERIAL_CONSOLE = "115200 ttyS0"
>>>
>>> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>> PREFERRED_VERSION_linux-yocto ?= "3.2%"
>>>
>>> KERNEL_IMAGETYPE = " uImage"
>>>
>>> PREFERRED_VERSION_u-boot ?= "v2013.01.01%"
>>>
>>> UBOOT_MACHINE = "tec_config"
>>> UBOOT_ENTRYPOINT = "0x17000000"
>>> UBOOT_LOADADDRESS = "0x17000000"
>>>
>>> MACHINE_FEATURES = "usbgadget usbhost vfat screen touchscreen keyboard"
>>>
>>>
>>> Greets,
>>> Satya
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>>
>> --
>> --
>> *Rudolf J. Streif*
>> Director of Embedded Solutions
>> The Linux Foundation
>>
>> rudolf.streif@linux.com
>> Phone: +1.619.631.5383
>> Skype: rudolfstreif
>> PGP: RSA 2048/2048 D6E7D28B
>>
>> Linux Foundation Events Schedule:  events.linuxfoundation.org
>> Linux Foundation Training Schedule: training.linuxfoundation.org
>>
>>
>


-- 
-- 
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--e89a8f647ac326b4e104d6cec762
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Satya,<div><br></div><div style>You will first need a k=
ernel recipe, let&#39;s call it <a href=3D"http://linux-skidata.bb">linux-s=
kidata.bb</a>. It can look like this:</div><div style><br></div><div style>=
<div>
DESCRIPTION =3D &quot;Skidata Linux Kernel&quot;</div><div>SECTION =3D &quo=
t;kernel&quot;</div><div>LICENSE =3D &quot;GPLv2&quot;</div><div><br></div>=
<div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b=
76f1be7cd7&quot;</div>
<div><br></div><div>PV =3D &quot;3.2&quot;</div><div><br></div><div>inherit=
 kernel</div><div><br></div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISD=
IR}/${PN}:${THISDIR}/${PN}/patches:&quot;</div><div><br></div><div style># =
GIT repository location</div>
<div>KSRC ?=3D &quot;&lt;path to&gt;/linux-skidata.git&quot;</div><div><br>=
</div><div style># Branch to check out</div><div>KBRANCH ?=3D &quot;&lt;bra=
nch&gt;&quot;</div><div><br></div><div style># Revision tag or AUTOREV</div=
>
<div>SRCREV ?=3D &quot;${AUTOREV}&quot;</div><div><br></div><div>SRC_URI =
=3D &quot;git://${KSRC};protocol=3Dfile;branch=3D${KBRANCH};name=3Dkernel \=
</div><div><span class=3D"" style=3D"white-space:pre">	</span> =A0 file://d=
efconfig \</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>=A0 =A0&quot;</div>=
<div><br></div><div>S =3D &quot;${WORKDIR}/git&quot;<br></div><div><br></di=
v><div><br></div><div style>You will need to provide a defconfig file next =
to your recipe containing the kernel configuration settings. Your kernel GI=
T repo may contain a .config that is good for your hardware. In that case y=
ou do not need a defconfig but is still a good practice and will allow you =
to easily change the settings.</div>
<div style><br></div><div style>Then you need to adjust your machine config=
uration file:</div><div style><br></div><div style><div>PREFERRED_PROVIDER_=
virtual/kernel ?=3D &quot;linux-skidata&quot;</div><div>PREFERRED_VERSION_s=
kidata ?=3D &quot;3.2%&quot;</div>
<div><br></div><div><br></div><div style>That should do it.</div><div style=
><br></div><div style>:rjs</div></div></div></div><div class=3D"gmail_extra=
"><br><br><div class=3D"gmail_quote">On Thu, Feb 28, 2013 at 11:21 AM, Saty=
a Swaroop Damarla <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop.damarla@g=
mail.com" target=3D"_blank">swaroop.damarla@gmail.com</a>&gt;</span> wrote:=
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Yes I got an error message =
when I was building the kernel... =A0Actuallly I have a kernel git given by=
 the company.... I downloaded it and is in my work pc.. How can I tell the =
build system to use that kernel?</div>
<div class=3D"HOEnZb"><div class=3D"h5">
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Feb 2=
8, 2013 at 8:17 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a href=3D"mailto:r=
streif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfoundation.org</=
a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Satya,<div><br></div><div>y=
our machine configuration file looks ok as far as I can tell. Did you get a=
n error message when building the kernel? Did you try to build just the ker=
nel e.g. bitbake linux-yocto?</div>


<div><br></div><div>:rjs</div></div><div class=3D"gmail_extra"><br><br><div=
 class=3D"gmail_quote"><div><div>On Mon, Feb 25, 2013 at 11:31 PM, Satya Sw=
aroop Damarla <span dir=3D"ltr">&lt;<a href=3D"mailto:swaroop.damarla@gmail=
.com" target=3D"_blank">swaroop.damarla@gmail.com</a>&gt;</span> wrote:<br>


</div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div><div dir=3D"ltr">Hello=
 Guys... I think uImage is important but it is not being generated by the y=
octo project. It only generated the rootfs and uboot.bin. Is there any vari=
able that has to be introduced in the machine.conf (in my case it is skidat=
a-tamonten.conf)....<div>



<br></div><div>Here is the configuration file=A0</div><div><br></div><div><=
div>#@TYPE: Machine</div><div>#@NAME: skidata-tamonten machine</div><div>#@=
DESCRIPTION: Machine configuration for the Tamonten board</div>
<div><br></div><div>PREFERRED_PROVIDER_virtual/xserver ?=3D &quot;xserver-x=
org&quot;</div><div><br></div><div>IMAGE_FEATURES +=3D &quot;package-manage=
ment&quot;</div><div>EXTRA_IMAGEDEPENDS +=3D &quot; u-boot&quot;</div><div>=
<br>



</div><div># Uncomment the following line to enable the hard floating point=
 abi. Note that</div><div># this breaks some binary libraries and 3D (neith=
er of which ship with</div><div># meta-yocto). For maximum compatibility, l=
eave this disabled.</div>



<div>DEFAULTTUNE ?=3D &quot;cortexa9t&quot;</div><div>include conf/machine/=
include/tune-cortexa9.inc</div><div><br></div><div>IMAGE_FSTYPES +=3D &quot=
;tar.bz2 ext2&quot;</div><div><br></div><div>SERIAL_CONSOLE =3D &quot;11520=
0 ttyS0&quot;</div>



<div><br></div><div>PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-yoct=
o&quot;</div><div>PREFERRED_VERSION_linux-yocto ?=3D &quot;3.2%&quot;</div>=
<div><br></div><div>KERNEL_IMAGETYPE =3D &quot; uImage&quot;</div><div><br>=
</div>



<div>PREFERRED_VERSION_u-boot ?=3D &quot;v2013.01.01%&quot;</div><div><br><=
/div><div>UBOOT_MACHINE =3D &quot;tec_config&quot;</div><div>UBOOT_ENTRYPOI=
NT =3D &quot;0x17000000&quot;</div><div>UBOOT_LOADADDRESS =3D &quot;0x17000=
000&quot;</div>



<div><br></div><div>MACHINE_FEATURES =3D &quot;usbgadget usbhost vfat scree=
n touchscreen keyboard&quot;</div><div><br></div><div><br></div><div>Greets=
,</div><div>Satya</div></div></div>
<br></div></div>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><span><font color=3D"#888888"><br><br clear=3D"all">=
<div><br></div>-- <br>--=A0<br><font face=3D"arial, helvetica, sans-serif">=
<b>Rudolf J. Streif</b></font><div><font face=3D"arial, helvetica, sans-ser=
if">Director of Embedded Solutions</font></div>


<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>


<div><font face=3D"arial, helvetica, sans-serif">Phone: <a href=3D"tel:%2B1=
.619.631.5383" value=3D"+16196315383" target=3D"_blank">+1.619.631.5383</a>=
</font></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolf=
streif</font></div>

<div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 2048/2048 D6E7D28=
B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>


Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>


</span></font></div>
</font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
--=A0<br><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b=
></font><div><font face=3D"arial, helvetica, sans-serif">Director of Embedd=
ed Solutions</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--e89a8f647ac326b4e104d6cec762--
