Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 561B9E00348
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 00:53:37 -0800 (PST)
Received: by mail-ve0-f180.google.com with SMTP id jx10so2632479veb.39
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 00:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=PC1QzuXEik9qFJ7C4JrUv8ngH9eN3MubSQhkwhYzBVA=;
	b=gEDlgP0c0shW/PtkuiBDxpDUNOfWCBRYo4Btk8zfTBAgxY8v8yFyvpqIYT+lJ2tJtQ
	QP4Oo9rnczG7eu/iqUkKS8vekozJ2nNZvwdvQCD6dfVbg7C5AoZIt7IAkIIGbwO91uzh
	ZLAHwAAeqtQthcCvTxi7TyrqSajpJ0+ljlPcbbCGqgw9jRVROmz/uLznMcAsfbuFrkyO
	FNK0fUwh25T4/K0hq7EnGfKkVBCAHupNpT7vq+C+7oQFpk3MXEkOsI5WvIcWc5/23k1f
	pjkRhSg7cjk1ITprONmjW1xiUWH+r8CVqfmuc0AOdAfUL8ahajEOx/tQJlEmXNYDNl8W
	4hRA==
MIME-Version: 1.0
X-Received: by 10.220.149.198 with SMTP id u6mr3675174vcv.52.1362128016159;
	Fri, 01 Mar 2013 00:53:36 -0800 (PST)
Received: by 10.58.187.42 with HTTP; Fri, 1 Mar 2013 00:53:36 -0800 (PST)
In-Reply-To: <CA+gsK-rp8LOrmJ6k+3Xja-j4Acu559g9BE1-eJT5-kZOi7457Q@mail.gmail.com>
References: <CABTzgQ4aGxsRgpFMBZf0t7KVfmBYihePSbkD_D8azAGdCpTgiA@mail.gmail.com>
	<CA+gsK-osjB9NK4gdMBuJU98d3RZiZqJ6yZBh9jR21hJrkx3gkQ@mail.gmail.com>
	<CABTzgQ6pWQD8Rs=NRCvemTy1WWfeH_Rvb2+XaeSLVx_urXkw5A@mail.gmail.com>
	<CA+gsK-rp8LOrmJ6k+3Xja-j4Acu559g9BE1-eJT5-kZOi7457Q@mail.gmail.com>
Date: Fri, 1 Mar 2013 09:53:36 +0100
Message-ID: <CABTzgQ6MuY=+-63b5jwxQzaFa3F8pV-jXWyKqLCtwb7oBd2BAw@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	=?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
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
X-List-Received-Date: Fri, 01 Mar 2013 08:53:37 -0000
Content-Type: multipart/alternative; boundary=f46d043c816c8d3d6204d6d924ed

--f46d043c816c8d3d6204d6d924ed
Content-Type: text/plain; charset=ISO-8859-1

Hi Rudy,

Thank you for the basic file... I have a question here... The git directory
is already saved on my work pc. What is the necessity to download it again?
The reason behind my asking this question is, it is secured and so password
is required. So, in order to avoid confusion I already downloaded it to a
directory called "/home/damarla/linux-skidata.git". So can I just write

SRC_URI = "dir://home/damarla/linux-skidata.git"

I think in the above way I can just simply remove the KSRC and KBRANCH
variables from the linux-skidata.bb file. The revision tag is also not
required in this cases as we are using the kernel provided by the company
itself, I mean for the first basic build.

One more thing is the skidata-carrier_defconfig is already in the directory
git I mentioned above at
"/home/damarla/linux-skidata.git/arch/arm/configs/skidata-carrier_defconfig"
... When compiling the kernel how can we tell the build system to build the
kernel using that specific defconfig file?

Thanks Rudy in advance,
Satya






On Thu, Feb 28, 2013 at 9:31 PM, Rudolf Streif
<rstreif@linuxfoundation.org>wrote:

> Hi Satya,
>
> You will first need a kernel recipe, let's call it linux-skidata.bb. It
> can look like this:
>
> DESCRIPTION = "Skidata Linux Kernel"
> SECTION = "kernel"
> LICENSE = "GPLv2"
>
> LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>
> PV = "3.2"
>
> inherit kernel
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:${THISDIR}/${PN}/patches:"
>
> # GIT repository location
> KSRC ?= "<path to>/linux-skidata.git"
>
> # Branch to check out
> KBRANCH ?= "<branch>"
>
> # Revision tag or AUTOREV
> SRCREV ?= "${AUTOREV}"
>
> SRC_URI = "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel \
>    file://defconfig \
>     "
>
> S = "${WORKDIR}/git"
>
>
> You will need to provide a defconfig file next to your recipe containing
> the kernel configuration settings. Your kernel GIT repo may contain a
> .config that is good for your hardware. In that case you do not need a
> defconfig but is still a good practice and will allow you to easily change
> the settings.
>
> Then you need to adjust your machine configuration file:
>
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-skidata"
> PREFERRED_VERSION_skidata ?= "3.2%"
>
>
> That should do it.
>
> :rjs
>
>
> On Thu, Feb 28, 2013 at 11:21 AM, Satya Swaroop Damarla <
> swaroop.damarla@gmail.com> wrote:
>
>> Yes I got an error message when I was building the kernel...  Actuallly I
>> have a kernel git given by the company.... I downloaded it and is in my
>> work pc.. How can I tell the build system to use that kernel?
>>
>>
>> On Thu, Feb 28, 2013 at 8:17 PM, Rudolf Streif <
>> rstreif@linuxfoundation.org> wrote:
>>
>>> Satya,
>>>
>>> your machine configuration file looks ok as far as I can tell. Did you
>>> get an error message when building the kernel? Did you try to build just
>>> the kernel e.g. bitbake linux-yocto?
>>>
>>> :rjs
>>>
>>>
>>> On Mon, Feb 25, 2013 at 11:31 PM, Satya Swaroop Damarla <
>>> swaroop.damarla@gmail.com> wrote:
>>>
>>>> Hello Guys... I think uImage is important but it is not being generated
>>>> by the yocto project. It only generated the rootfs and uboot.bin. Is there
>>>> any variable that has to be introduced in the machine.conf (in my case it
>>>> is skidata-tamonten.conf)....
>>>>
>>>> Here is the configuration file
>>>>
>>>> #@TYPE: Machine
>>>> #@NAME: skidata-tamonten machine
>>>> #@DESCRIPTION: Machine configuration for the Tamonten board
>>>>
>>>> PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>>>>
>>>> IMAGE_FEATURES += "package-management"
>>>> EXTRA_IMAGEDEPENDS += " u-boot"
>>>>
>>>> # Uncomment the following line to enable the hard floating point abi.
>>>> Note that
>>>> # this breaks some binary libraries and 3D (neither of which ship with
>>>> # meta-yocto). For maximum compatibility, leave this disabled.
>>>> DEFAULTTUNE ?= "cortexa9t"
>>>> include conf/machine/include/tune-cortexa9.inc
>>>>
>>>> IMAGE_FSTYPES += "tar.bz2 ext2"
>>>>
>>>> SERIAL_CONSOLE = "115200 ttyS0"
>>>>
>>>> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>>> PREFERRED_VERSION_linux-yocto ?= "3.2%"
>>>>
>>>> KERNEL_IMAGETYPE = " uImage"
>>>>
>>>> PREFERRED_VERSION_u-boot ?= "v2013.01.01%"
>>>>
>>>> UBOOT_MACHINE = "tec_config"
>>>> UBOOT_ENTRYPOINT = "0x17000000"
>>>> UBOOT_LOADADDRESS = "0x17000000"
>>>>
>>>> MACHINE_FEATURES = "usbgadget usbhost vfat screen touchscreen keyboard"
>>>>
>>>>
>>>> Greets,
>>>> Satya
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>>
>>> --
>>> --
>>> *Rudolf J. Streif*
>>> Director of Embedded Solutions
>>> The Linux Foundation
>>>
>>> rudolf.streif@linux.com
>>> Phone: +1.619.631.5383
>>> Skype: rudolfstreif
>>> PGP: RSA 2048/2048 D6E7D28B
>>>
>>> Linux Foundation Events Schedule:  events.linuxfoundation.org
>>> Linux Foundation Training Schedule: training.linuxfoundation.org
>>>
>>>
>>
>
>
> --
> --
> *Rudolf J. Streif*
> Director of Embedded Solutions
> The Linux Foundation
>
> rudolf.streif@linux.com
> Phone: +1.619.631.5383
> Skype: rudolfstreif
> PGP: RSA 2048/2048 D6E7D28B
>
> Linux Foundation Events Schedule:  events.linuxfoundation.org
> Linux Foundation Training Schedule: training.linuxfoundation.org
>
>

--f46d043c816c8d3d6204d6d924ed
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rudy,<div><br></div><div style>Thank you for the basic =
file... I have a question here... The git directory is already saved on my =
work pc. What is the necessity to download it again? The reason behind my a=
sking this question is, it is secured and so password is required. So, in o=
rder to avoid confusion I already downloaded it to a directory called &quot=
;/home/damarla/linux-skidata.git&quot;. So can I just write=A0</div>
<div style><br></div><div style>SRC_URI =3D &quot;dir://home/damarla/linux-=
skidata.git&quot;</div><div style><br></div><div style>I think in the above=
 way I can just simply remove the KSRC and KBRANCH variables from the <a hr=
ef=3D"http://linux-skidata.bb">linux-skidata.bb</a> file. The revision tag =
is also not required in this cases as we are using the kernel provided by t=
he company itself, I mean for the first basic build.</div>
<div style><br></div><div style>One more thing is the skidata-carrier_defco=
nfig is already in the directory git I mentioned above at &quot;/home/damar=
la/linux-skidata.git/arch/arm/configs/skidata-carrier_defconfig&quot; ... W=
hen compiling the kernel how can we tell the build system to build the kern=
el using that specific defconfig file?</div>
<div style><br></div><div style>Thanks Rudy in advance,</div><div style>Sat=
ya</div><div style><br></div><div style><br></div><div style><br></div><div=
 style><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gma=
il_quote">
On Thu, Feb 28, 2013 at 9:31 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfou=
ndation.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">Hi Satya,<div><br></div><div>You will first need a kernel =
recipe, let&#39;s call it <a href=3D"http://linux-skidata.bb" target=3D"_bl=
ank">linux-skidata.bb</a>. It can look like this:</div><div><br></div><div>=
<div>

DESCRIPTION =3D &quot;Skidata Linux Kernel&quot;</div><div>SECTION =3D &quo=
t;kernel&quot;</div><div>LICENSE =3D &quot;GPLv2&quot;</div><div><br></div>=
<div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b=
76f1be7cd7&quot;</div>

<div><br></div><div>PV =3D &quot;3.2&quot;</div><div><br></div><div>inherit=
 kernel</div><div><br></div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISD=
IR}/${PN}:${THISDIR}/${PN}/patches:&quot;</div><div><br></div><div># GIT re=
pository location</div>

<div>KSRC ?=3D &quot;&lt;path to&gt;/linux-skidata.git&quot;</div><div><br>=
</div><div># Branch to check out</div><div>KBRANCH ?=3D &quot;&lt;branch&gt=
;&quot;</div><div><br></div><div># Revision tag or AUTOREV</div>
<div>SRCREV ?=3D &quot;${AUTOREV}&quot;</div><div><br></div><div>SRC_URI =
=3D &quot;git://${KSRC};protocol=3Dfile;branch=3D${KBRANCH};name=3Dkernel \=
</div><div><span style=3D"white-space:pre-wrap">	</span> =A0 file://defconf=
ig \</div>
<div><span style=3D"white-space:pre-wrap">	</span>=A0 =A0&quot;</div><div><=
br></div><div>S =3D &quot;${WORKDIR}/git&quot;<br></div><div><br></div><div=
><br></div><div>You will need to provide a defconfig file next to your reci=
pe containing the kernel configuration settings. Your kernel GIT repo may c=
ontain a .config that is good for your hardware. In that case you do not ne=
ed a defconfig but is still a good practice and will allow you to easily ch=
ange the settings.</div>

<div><br></div><div>Then you need to adjust your machine configuration file=
:</div><div><br></div><div><div>PREFERRED_PROVIDER_virtual/kernel ?=3D &quo=
t;linux-skidata&quot;</div><div>PREFERRED_VERSION_skidata ?=3D &quot;3.2%&q=
uot;</div>

<div><br></div><div><br></div><div>That should do it.</div><div><br></div><=
div>:rjs</div></div></div></div><div class=3D"HOEnZb"><div class=3D"h5"><di=
v class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Feb 28, =
2013 at 11:21 AM, Satya Swaroop Damarla <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop.damarla@gmail.com=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Yes I got an error message =
when I was building the kernel... =A0Actuallly I have a kernel git given by=
 the company.... I downloaded it and is in my work pc.. How can I tell the =
build system to use that kernel?</div>

<div><div>
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
</div>
</div></div></blockquote></div><br></div>

--f46d043c816c8d3d6204d6d924ed--
