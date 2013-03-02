Return-Path: <swaroop@weisser.at>
Received: from smtp01.udag.de (smtp01.udag.de [62.146.106.17])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5588DE014A7
	for <yocto@yoctoproject.org>; Sat,  2 Mar 2013 07:37:13 -0800 (PST)
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by smtp01.udag.de (Postfix) with ESMTPA id CDDCD80274
	for <yocto@yoctoproject.org>; Sat,  2 Mar 2013 16:37:09 +0100 (CET)
Received: by mail-ve0-f180.google.com with SMTP id jx10so3644691veb.25
	for <yocto@yoctoproject.org>; Sat, 02 Mar 2013 07:37:08 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.52.65.147 with SMTP id x19mr4831435vds.27.1362238628407;
	Sat, 02 Mar 2013 07:37:08 -0800 (PST)
Received: by 10.58.187.42 with HTTP; Sat, 2 Mar 2013 07:37:08 -0800 (PST)
In-Reply-To: <5130B1EA.4040004@windriver.com>
References: <CABTzgQ4aGxsRgpFMBZf0t7KVfmBYihePSbkD_D8azAGdCpTgiA@mail.gmail.com>
	<CA+gsK-osjB9NK4gdMBuJU98d3RZiZqJ6yZBh9jR21hJrkx3gkQ@mail.gmail.com>
	<CABTzgQ6pWQD8Rs=NRCvemTy1WWfeH_Rvb2+XaeSLVx_urXkw5A@mail.gmail.com>
	<CA+gsK-rp8LOrmJ6k+3Xja-j4Acu559g9BE1-eJT5-kZOi7457Q@mail.gmail.com>
	<CABTzgQ6MuY=+-63b5jwxQzaFa3F8pV-jXWyKqLCtwb7oBd2BAw@mail.gmail.com>
	<5130B1EA.4040004@windriver.com>
Date: Sat, 2 Mar 2013 16:37:08 +0100
Message-ID: <CABTzgQ4cZf6YUmgB52oA39rRoRqo9=C=CJ7vjMj=Q+o0XsuEzg@mail.gmail.com>
From: Satya Swaroop DAMARLA <swaroop@weisser.at>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
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
X-List-Received-Date: Sat, 02 Mar 2013 15:37:14 -0000
Content-Type: multipart/alternative; boundary=20cf3071ca048be6be04d6f2e54c

--20cf3071ca048be6be04d6f2e54c
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce and Hi Rudy,

You are right and it works until it failes at the do_configure. Suggestions
please. Here is the file for linux-skidata.bb

DESCRIPTION = "Skidata Linux Kernel"
SECTION = "kernel"
LICENSE = "GPLv2"

LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

PV = "3.2"

inherit kernel

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:${THISDIR}/${PN}/patches:"

# GIT repository location
KSRC ?= "/home/damarla/linux-nvidia.git"

# Branch to check out
KBRANCH ?= "remotes/origin/tamonten/l4t"

# Revision tag or AUTOREV
SRCREV ?= "${AUTOREV}"

SRC_URI = "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel \
           file://skidata-carrier_defconfig \
           "

COMPATIBLE_MACHINE = "skidata-carrier"

S = "${WORKDIR}/linux-nvidia-skidata"

The following is the error. I just need some suggestions. and other thing
is there are several device tree compilers. Please tell me the variable and
where to place it for the specific dts file to be used..

ERROR: Function failed: do_configure (see
/home/damarla/yocto/poky/buildSkidata/tmp/work/skidata_carrier-poky-linux-gnueabi/linux-skidata/3.2-r0/temp/log.do_configure.29911
for further information)
ERROR: Logfile of failure stored in:
/home/damarla/yocto/poky/buildSkidata/tmp/work/skidata_carrier-poky-linux-gnueabi/linux-skidata/3.2-r0/temp/log.do_configure.29911
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| NOTE: make oldconfig
| make: *** No rule to make target `oldconfig'.  Stop.
| ERROR: oe_runmake failed
| ERROR: Function failed: do_configure (see
/home/damarla/yocto/poky/buildSkidata/tmp/work/skidata_carrier-poky-linux-gnueabi/linux-skidata/3.2-r0/temp/log.do_configure.29911
for further information)
ERROR: Task 766 (/home/damarla/yocto/poky/meta/recipes-kernel/linux/
linux-skidata.bb, do_configure) failed with exit code '1'


Thanks a million



On Fri, Mar 1, 2013 at 2:49 PM, Bruce Ashfield <bruce.ashfield@windriver.com
> wrote:

> On 13-03-01 03:53 AM, Satya Swaroop Damarla wrote:
>
>> Hi Rudy,
>>
>> Thank you for the basic file... I have a question here... The git
>> directory is already saved on my work pc. What is the necessity to
>> download it again? The reason behind my asking this question is, it is
>> secured and so password is required. So, in order to avoid confusion I
>> already downloaded it to a directory called
>> "/home/damarla/linux-skidata.**git". So can I just write
>>
>> SRC_URI = "dir://home/damarla/linux-**skidata.git"
>>
>> I think in the above way I can just simply remove the KSRC and KBRANCH
>> variables from the linux-skidata.bb <http://linux-skidata.bb> file. The
>>
>> revision tag is also not required in this cases as we are using the
>> kernel provided by the company itself, I mean for the first basic build.
>>
>
> The example code that was posted, already does this. KSRC points to
> a git repository on your local machine:
>
>
>    KSRC ?= "<path to>/linux-skidata.git"
>
> And the protocol is set to "file" in the SRC_URI
>
>
>    SRC_URI = "git://${KSRC};protocol=file;**branch=${KBRANCH};name=kernel
> \
>        file://defconfig"
>
> There's nothing more that you need to do.
>
>
>
>> One more thing is the skidata-carrier_defconfig is already in the
>> directory git I mentioned above at
>> "/home/damarla/linux-skidata.**git/arch/arm/configs/skidata-**
>> carrier_defconfig"
>> ... When compiling the kernel how can we tell the build system to build
>> the kernel using that specific defconfig file?
>>
>
> Putting the defconfig on the SRC_URI is all that you have to do.
>
> This information is also covered in the quickstart and development
> guides .. have you had a look at them ? If you have a look, you'll
> see that more options are available with linux-yocto based recipes
> (custom or the ones part of oe-core), which will allow you some more
> flexibility in handling modifications to the kernel.
>
> Cheers,
>
> Bruce
>
>
>
>
>> Thanks Rudy in advance,
>> Satya
>>
>>
>>
>>
>>
>>
>> On Thu, Feb 28, 2013 at 9:31 PM, Rudolf Streif
>> <rstreif@linuxfoundation.org <mailto:rstreif@**linuxfoundation.org<rstreif@linuxfoundation.org>>>
>> wrote:
>>
>>     Hi Satya,
>>
>>     You will first need a kernel recipe, let's call it linux-skidata.bb
>>     <http://linux-skidata.bb>. It can look like this:
>>
>>
>>     DESCRIPTION = "Skidata Linux Kernel"
>>     SECTION = "kernel"
>>     LICENSE = "GPLv2"
>>
>>     LIC_FILES_CHKSUM = "file://COPYING;md5=**
>> d7810fab7487fb0aad327b76f1be7c**d7"
>>
>>     PV = "3.2"
>>
>>     inherit kernel
>>
>>     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:${THISDIR}/$**
>> {PN}/patches:"
>>
>>     # GIT repository location
>>     KSRC ?= "<path to>/linux-skidata.git"
>>
>>     # Branch to check out
>>     KBRANCH ?= "<branch>"
>>
>>     # Revision tag or AUTOREV
>>     SRCREV ?= "${AUTOREV}"
>>
>>     SRC_URI = "git://${KSRC};protocol=file;**branch=${KBRANCH};name=kernel
>> \
>>        file://defconfig \
>>         "
>>
>>     S = "${WORKDIR}/git"
>>
>>
>>     You will need to provide a defconfig file next to your recipe
>>     containing the kernel configuration settings. Your kernel GIT repo
>>     may contain a .config that is good for your hardware. In that case
>>     you do not need a defconfig but is still a good practice and will
>>     allow you to easily change the settings.
>>
>>     Then you need to adjust your machine configuration file:
>>
>>     PREFERRED_PROVIDER_virtual/**kernel ?= "linux-skidata"
>>     PREFERRED_VERSION_skidata ?= "3.2%"
>>
>>
>>     That should do it.
>>
>>     :rjs
>>
>>
>>     On Thu, Feb 28, 2013 at 11:21 AM, Satya Swaroop Damarla
>>     <swaroop.damarla@gmail.com <mailto:swaroop.damarla@gmail.**com<swaroop.damarla@gmail.com>>>
>> wrote:
>>
>>         Yes I got an error message when I was building the kernel...
>>           Actuallly I have a kernel git given by the company.... I
>>         downloaded it and is in my work pc.. How can I tell the build
>>         system to use that kernel?
>>
>>
>>         On Thu, Feb 28, 2013 at 8:17 PM, Rudolf Streif
>>         <rstreif@linuxfoundation.org
>>         <mailto:rstreif@**linuxfoundation.org<rstreif@linuxfoundation.org>>>
>> wrote:
>>
>>             Satya,
>>
>>             your machine configuration file looks ok as far as I can
>>             tell. Did you get an error message when building the kernel?
>>             Did you try to build just the kernel e.g. bitbake linux-yocto?
>>
>>             :rjs
>>
>>
>>             On Mon, Feb 25, 2013 at 11:31 PM, Satya Swaroop Damarla
>>             <swaroop.damarla@gmail.com
>>             <mailto:swaroop.damarla@gmail.**com<swaroop.damarla@gmail.com>>>
>> wrote:
>>
>>                 Hello Guys... I think uImage is important but it is not
>>                 being generated by the yocto project. It only generated
>>                 the rootfs and uboot.bin. Is there any variable that has
>>                 to be introduced in the machine.conf (in my case it is
>>                 skidata-tamonten.conf)....
>>
>>                 Here is the configuration file
>>
>>                 #@TYPE: Machine
>>                 #@NAME: skidata-tamonten machine
>>                 #@DESCRIPTION: Machine configuration for the Tamonten
>> board
>>
>>                 PREFERRED_PROVIDER_virtual/**xserver ?= "xserver-xorg"
>>
>>                 IMAGE_FEATURES += "package-management"
>>                 EXTRA_IMAGEDEPENDS += " u-boot"
>>
>>                 # Uncomment the following line to enable the hard
>>                 floating point abi. Note that
>>                 # this breaks some binary libraries and 3D (neither of
>>                 which ship with
>>                 # meta-yocto). For maximum compatibility, leave this
>>                 disabled.
>>                 DEFAULTTUNE ?= "cortexa9t"
>>                 include conf/machine/include/tune-**cortexa9.inc
>>
>>                 IMAGE_FSTYPES += "tar.bz2 ext2"
>>
>>                 SERIAL_CONSOLE = "115200 ttyS0"
>>
>>                 PREFERRED_PROVIDER_virtual/**kernel ?= "linux-yocto"
>>                 PREFERRED_VERSION_linux-yocto ?= "3.2%"
>>
>>                 KERNEL_IMAGETYPE = " uImage"
>>
>>                 PREFERRED_VERSION_u-boot ?= "v2013.01.01%"
>>
>>                 UBOOT_MACHINE = "tec_config"
>>                 UBOOT_ENTRYPOINT = "0x17000000"
>>                 UBOOT_LOADADDRESS = "0x17000000"
>>
>>                 MACHINE_FEATURES = "usbgadget usbhost vfat screen
>>                 touchscreen keyboard"
>>
>>
>>                 Greets,
>>                 Satya
>>
>>                 ______________________________**_________________
>>                 yocto mailing list
>>                 yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>                 https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>>
>>
>>             --
>>             --
>>             *Rudolf J. Streif*
>>
>>             Director of Embedded Solutions
>>             The Linux Foundation
>>
>>             rudolf.streif@linux.com <mailto:rudolf.streif@linux.**com<rudolf.streif@linux.com>
>> >
>>             Phone: +1.619.631.5383 <tel:%2B1.619.631.5383>
>>
>>             Skype: rudolfstreif
>>             PGP: RSA 2048/2048 D6E7D28B
>>
>>             Linux Foundation Events Schedule: events.linuxfoundation.org
>>             <http://events.**linuxfoundation.org/<http://events.linuxfoundation.org/>
>> >
>>
>>             Linux Foundation Training Schedule:
>>             training.linuxfoundation.org
>>             <http://training.**linuxfoundation.org/<http://training.linuxfoundation.org/>
>> >
>>
>>
>>
>>
>>
>>     --
>>     --
>>     *Rudolf J. Streif*
>>
>>     Director of Embedded Solutions
>>     The Linux Foundation
>>
>>     rudolf.streif@linux.com <mailto:rudolf.streif@linux.**com<rudolf.streif@linux.com>
>> >
>>     Phone: +1.619.631.5383 <tel:%2B1.619.631.5383>
>>
>>     Skype: rudolfstreif
>>     PGP: RSA 2048/2048 D6E7D28B
>>
>>     Linux Foundation Events Schedule: events.linuxfoundation.org
>>     <http://events.**linuxfoundation.org/<http://events.linuxfoundation.org/>
>> >
>>
>>     Linux Foundation Training Schedule: training.linuxfoundation.org
>>     <http://training.**linuxfoundation.org/<http://training.linuxfoundation.org/>
>> >
>>
>>
>>
>>
>>
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>

--20cf3071ca048be6be04d6f2e54c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Bruce and Hi Rudy,<div><br></div><div>You are right and=
 it works until it failes at the do_configure. Suggestions please. Here is =
the file for <a href=3D"http://linux-skidata.bb">linux-skidata.bb</a></div>=
<div>
<br></div><div><div>DESCRIPTION =3D &quot;Skidata Linux Kernel&quot;</div><=
div>SECTION =3D &quot;kernel&quot;</div><div>LICENSE =3D &quot;GPLv2&quot;<=
/div><div><br></div><div>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7=
810fab7487fb0aad327b76f1be7cd7&quot;</div>
<div><br></div><div>PV =3D &quot;3.2&quot;</div><div><br></div><div>inherit=
 kernel</div><div><br></div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISD=
IR}/${PN}:${THISDIR}/${PN}/patches:&quot;</div><div><br></div><div># GIT re=
pository location</div>
<div>KSRC ?=3D &quot;/home/damarla/linux-nvidia.git&quot;</div><div><br></d=
iv><div># Branch to check out</div><div>KBRANCH ?=3D &quot;remotes/origin/t=
amonten/l4t&quot;</div><div><br></div><div># Revision tag or AUTOREV</div><=
div>
SRCREV ?=3D &quot;${AUTOREV}&quot;</div><div><br></div><div>SRC_URI =3D &qu=
ot;git://${KSRC};protocol=3Dfile;branch=3D${KBRANCH};name=3Dkernel \</div><=
div>=A0 =A0 =A0 =A0 =A0 =A0file://skidata-carrier_defconfig \</div><div>=A0=
 =A0 =A0 =A0 =A0 =A0&quot;</div>
<div><br></div><div>COMPATIBLE_MACHINE =3D &quot;skidata-carrier&quot;</div=
><div><br></div><div>S =3D &quot;${WORKDIR}/linux-nvidia-skidata&quot;</div=
><div><br></div><div style>The following is the error. I just need some sug=
gestions. and other thing is there are several device tree compilers. Pleas=
e tell me the variable and where to place it for the specific dts file to b=
e used..=A0</div>
<div style><br></div><div style><div>ERROR: Function failed: do_configure (=
see /home/damarla/yocto/poky/buildSkidata/tmp/work/skidata_carrier-poky-lin=
ux-gnueabi/linux-skidata/3.2-r0/temp/log.do_configure.29911 for further inf=
ormation)</div>
<div>ERROR: Logfile of failure stored in: /home/damarla/yocto/poky/buildSki=
data/tmp/work/skidata_carrier-poky-linux-gnueabi/linux-skidata/3.2-r0/temp/=
log.do_configure.29911</div><div>Log data follows:</div><div>| DEBUG: Execu=
ting python function sysroot_cleansstate</div>
<div>| DEBUG: Python function sysroot_cleansstate finished</div><div>| DEBU=
G: Executing shell function do_configure</div><div>| NOTE: make oldconfig</=
div><div>| make: *** No rule to make target `oldconfig&#39;. =A0Stop.</div>
<div>| ERROR: oe_runmake failed</div><div>| ERROR: Function failed: do_conf=
igure (see /home/damarla/yocto/poky/buildSkidata/tmp/work/skidata_carrier-p=
oky-linux-gnueabi/linux-skidata/3.2-r0/temp/log.do_configure.29911 for furt=
her information)</div>
<div>ERROR: Task 766 (/home/damarla/yocto/poky/meta/recipes-kernel/linux/<a=
 href=3D"http://linux-skidata.bb">linux-skidata.bb</a>, do_configure) faile=
d with exit code &#39;1&#39;</div><div><br></div><div><br></div><div style>
Thanks a million</div></div><div><br></div></div></div><div class=3D"gmail_=
extra"><br><br><div class=3D"gmail_quote">On Fri, Mar 1, 2013 at 2:49 PM, B=
ruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windri=
ver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrot=
e:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 13-03-01 03:53 AM, Saty=
a Swaroop Damarla wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im">
Hi Rudy,<br>
<br>
Thank you for the basic file... I have a question here... The git<br>
directory is already saved on my work pc. What is the necessity to<br>
download it again? The reason behind my asking this question is, it is<br>
secured and so password is required. So, in order to avoid confusion I<br>
already downloaded it to a directory called<br>
&quot;/home/damarla/linux-skidata.<u></u>git&quot;. So can I just write<br>
<br>
SRC_URI =3D &quot;dir://home/damarla/linux-<u></u>skidata.git&quot;<br>
<br>
I think in the above way I can just simply remove the KSRC and KBRANCH<br><=
/div>
variables from the <a href=3D"http://linux-skidata.bb" target=3D"_blank">li=
nux-skidata.bb</a> &lt;<a href=3D"http://linux-skidata.bb" target=3D"_blank=
">http://linux-skidata.bb</a>&gt; file. The<div class=3D"im"><br>
revision tag is also not required in this cases as we are using the<br>
kernel provided by the company itself, I mean for the first basic build.<br=
>
</div></blockquote>
<br>
The example code that was posted, already does this. KSRC points to<br>
a git repository on your local machine:<div class=3D"im"><br>
<br>
=A0 =A0KSRC ?=3D &quot;&lt;path to&gt;/linux-skidata.git&quot;<br>
<br></div>
And the protocol is set to &quot;file&quot; in the SRC_URI<div class=3D"im"=
><br>
<br>
=A0 =A0SRC_URI =3D &quot;git://${KSRC};protocol=3Dfile;<u></u>branch=3D${KB=
RANCH};name=3Dkernel \<br>
=A0 =A0 =A0 =A0file://defconfig&quot;<br>
<br></div>
There&#39;s nothing more that you need to do.<div class=3D"im"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
One more thing is the skidata-carrier_defconfig is already in the<br>
directory git I mentioned above at<br>
&quot;/home/damarla/linux-skidata.<u></u>git/arch/arm/configs/skidata-<u></=
u>carrier_defconfig&quot;<br>
... When compiling the kernel how can we tell the build system to build<br>
the kernel using that specific defconfig file?<br>
</blockquote>
<br></div>
Putting the defconfig on the SRC_URI is all that you have to do.<br>
<br>
This information is also covered in the quickstart and development<br>
guides .. have you had a look at them ? If you have a look, you&#39;ll<br>
see that more options are available with linux-yocto based recipes<br>
(custom or the ones part of oe-core), which will allow you some more<br>
flexibility in handling modifications to the kernel.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
Thanks Rudy in advance,<br>
Satya<br>
<br>
<br>
<br>
<br>
<br>
<br>
On Thu, Feb 28, 2013 at 9:31 PM, Rudolf Streif<br></div><div class=3D"im">
&lt;<a href=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstrei=
f@linuxfoundation.org</a> &lt;mailto:<a href=3D"mailto:rstreif@linuxfoundat=
ion.org" target=3D"_blank">rstreif@<u></u>linuxfoundation.org</a>&gt;&gt; w=
rote:<br>

<br>
=A0 =A0 Hi Satya,<br>
<br>
=A0 =A0 You will first need a kernel recipe, let&#39;s call it <a href=3D"h=
ttp://linux-skidata.bb" target=3D"_blank">linux-skidata.bb</a><br></div>
=A0 =A0 &lt;<a href=3D"http://linux-skidata.bb" target=3D"_blank">http://li=
nux-skidata.bb</a>&gt;. It can look like this:<div><div class=3D"h5"><br>
<br>
=A0 =A0 DESCRIPTION =3D &quot;Skidata Linux Kernel&quot;<br>
=A0 =A0 SECTION =3D &quot;kernel&quot;<br>
=A0 =A0 LICENSE =3D &quot;GPLv2&quot;<br>
<br>
=A0 =A0 LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<u></u>d7810fab7487=
fb0aad327b76f1be7c<u></u>d7&quot;<br>
<br>
=A0 =A0 PV =3D &quot;3.2&quot;<br>
<br>
=A0 =A0 inherit kernel<br>
<br>
=A0 =A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:${THISDIR}/$<u>=
</u>{PN}/patches:&quot;<br>
<br>
=A0 =A0 # GIT repository location<br>
=A0 =A0 KSRC ?=3D &quot;&lt;path to&gt;/linux-skidata.git&quot;<br>
<br>
=A0 =A0 # Branch to check out<br>
=A0 =A0 KBRANCH ?=3D &quot;&lt;branch&gt;&quot;<br>
<br>
=A0 =A0 # Revision tag or AUTOREV<br>
=A0 =A0 SRCREV ?=3D &quot;${AUTOREV}&quot;<br>
<br>
=A0 =A0 SRC_URI =3D &quot;git://${KSRC};protocol=3Dfile;<u></u>branch=3D${K=
BRANCH};name=3Dkernel \<br>
=A0 =A0 =A0 =A0file://defconfig \<br>
=A0 =A0 =A0 =A0 &quot;<br>
<br>
=A0 =A0 S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
<br>
=A0 =A0 You will need to provide a defconfig file next to your recipe<br>
=A0 =A0 containing the kernel configuration settings. Your kernel GIT repo<=
br>
=A0 =A0 may contain a .config that is good for your hardware. In that case<=
br>
=A0 =A0 you do not need a defconfig but is still a good practice and will<b=
r>
=A0 =A0 allow you to easily change the settings.<br>
<br>
=A0 =A0 Then you need to adjust your machine configuration file:<br>
<br>
=A0 =A0 PREFERRED_PROVIDER_virtual/<u></u>kernel ?=3D &quot;linux-skidata&q=
uot;<br>
=A0 =A0 PREFERRED_VERSION_skidata ?=3D &quot;3.2%&quot;<br>
<br>
<br>
=A0 =A0 That should do it.<br>
<br>
=A0 =A0 :rjs<br>
<br>
<br>
=A0 =A0 On Thu, Feb 28, 2013 at 11:21 AM, Satya Swaroop Damarla<br></div></=
div><div class=3D"im">
=A0 =A0 &lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">=
swaroop.damarla@gmail.com</a> &lt;mailto:<a href=3D"mailto:swaroop.damarla@=
gmail.com" target=3D"_blank">swaroop.damarla@gmail.<u></u>com</a>&gt;&gt; w=
rote:<br>

<br>
=A0 =A0 =A0 =A0 Yes I got an error message when I was building the kernel..=
.<br>
=A0 =A0 =A0 =A0 =A0 Actuallly I have a kernel git given by the company.... =
I<br>
=A0 =A0 =A0 =A0 downloaded it and is in my work pc.. How can I tell the bui=
ld<br>
=A0 =A0 =A0 =A0 system to use that kernel?<br>
<br>
<br>
=A0 =A0 =A0 =A0 On Thu, Feb 28, 2013 at 8:17 PM, Rudolf Streif<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:rstreif@linuxfoundation.org" target=
=3D"_blank">rstreif@linuxfoundation.org</a><br></div><div class=3D"im">
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:rstreif@linuxfoundation.org" t=
arget=3D"_blank">rstreif@<u></u>linuxfoundation.org</a>&gt;&gt; wrote:<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 Satya,<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 your machine configuration file looks ok as far as =
I can<br>
=A0 =A0 =A0 =A0 =A0 =A0 tell. Did you get an error message when building th=
e kernel?<br>
=A0 =A0 =A0 =A0 =A0 =A0 Did you try to build just the kernel e.g. bitbake l=
inux-yocto?<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 :rjs<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 On Mon, Feb 25, 2013 at 11:31 PM, Satya Swaroop Dam=
arla<br>
=A0 =A0 =A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:swaroop.damarla@gmail.com" ta=
rget=3D"_blank">swaroop.damarla@gmail.com</a><br></div><div><div class=3D"h=
5">
=A0 =A0 =A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:swaroop.damarla@gmail.=
com" target=3D"_blank">swaroop.damarla@gmail.<u></u>com</a>&gt;&gt; wrote:<=
br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Hello Guys... I think uImage is important b=
ut it is not<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 being generated by the yocto project. It on=
ly generated<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 the rootfs and uboot.bin. Is there any vari=
able that has<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 to be introduced in the machine.conf (in my=
 case it is<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 skidata-tamonten.conf)....<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Here is the configuration file<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 #@TYPE: Machine<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 #@NAME: skidata-tamonten machine<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 #@DESCRIPTION: Machine configuration for th=
e Tamonten board<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PREFERRED_PROVIDER_virtual/<u></u>xserver ?=
=3D &quot;xserver-xorg&quot;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IMAGE_FEATURES +=3D &quot;package-managemen=
t&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 EXTRA_IMAGEDEPENDS +=3D &quot; u-boot&quot;=
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 # Uncomment the following line to enable th=
e hard<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 floating point abi. Note that<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 # this breaks some binary libraries and 3D =
(neither of<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 which ship with<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 # meta-yocto). For maximum compatibility, l=
eave this<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 disabled.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 DEFAULTTUNE ?=3D &quot;cortexa9t&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 include conf/machine/include/tune-<u></u>co=
rtexa9.inc<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 IMAGE_FSTYPES +=3D &quot;tar.bz2 ext2&quot;=
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 SERIAL_CONSOLE =3D &quot;115200 ttyS0&quot;=
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PREFERRED_PROVIDER_virtual/<u></u>kernel ?=
=3D &quot;linux-yocto&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PREFERRED_VERSION_linux-yocto ?=3D &quot;3.=
2%&quot;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 KERNEL_IMAGETYPE =3D &quot; uImage&quot;<br=
>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PREFERRED_VERSION_u-boot ?=3D &quot;v2013.0=
1.01%&quot;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 UBOOT_MACHINE =3D &quot;tec_config&quot;<br=
>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 UBOOT_ENTRYPOINT =3D &quot;0x17000000&quot;=
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 UBOOT_LOADADDRESS =3D &quot;0x17000000&quot=
;<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 MACHINE_FEATURES =3D &quot;usbgadget usbhos=
t vfat screen<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 touchscreen keyboard&quot;<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Greets,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Satya<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ______________________________<u></u>______=
___________<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 yocto mailing list<br></div></div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" t=
arget=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yo=
cto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&g=
t;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<u></u>org/list=
info/yocto</a><br>
<br>
<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 --<br>
=A0 =A0 =A0 =A0 =A0 =A0 --<br>
=A0 =A0 =A0 =A0 =A0 =A0 *Rudolf J. Streif*<div class=3D"im"><br>
=A0 =A0 =A0 =A0 =A0 =A0 Director of Embedded Solutions<br>
=A0 =A0 =A0 =A0 =A0 =A0 The Linux Foundation<br>
<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"mailto:rudolf.streif@linux.com" target=
=3D"_blank">rudolf.streif@linux.com</a> &lt;mailto:<a href=3D"mailto:rudolf=
.streif@linux.com" target=3D"_blank">rudolf.streif@linux.<u></u>com</a>&gt;=
<br>
=A0 =A0 =A0 =A0 =A0 =A0 Phone: <a href=3D"tel:%2B1.619.631.5383" value=3D"+=
16196315383" target=3D"_blank">+1.619.631.5383</a> &lt;tel:%2B1.619.631.538=
3&gt;<div class=3D"im"><br>
=A0 =A0 =A0 =A0 =A0 =A0 Skype: rudolfstreif<br>
=A0 =A0 =A0 =A0 =A0 =A0 PGP: RSA 2048/2048 D6E7D28B<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 Linux Foundation Events Schedule: <a href=3D"http:/=
/events.linuxfoundation.org" target=3D"_blank">events.linuxfoundation.org</=
a><br></div>
=A0 =A0 =A0 =A0 =A0 =A0 &lt;<a href=3D"http://events.linuxfoundation.org/" =
target=3D"_blank">http://events.<u></u>linuxfoundation.org/</a>&gt;<div cla=
ss=3D"im"><br>
=A0 =A0 =A0 =A0 =A0 =A0 Linux Foundation Training Schedule:<br>
=A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://training.linuxfoundation.org" tar=
get=3D"_blank">training.linuxfoundation.org</a><br></div>
=A0 =A0 =A0 =A0 =A0 =A0 &lt;<a href=3D"http://training.linuxfoundation.org/=
" target=3D"_blank">http://training.<u></u>linuxfoundation.org/</a>&gt;<br>
<br>
<br>
<br>
<br>
<br>
=A0 =A0 --<br>
=A0 =A0 --<br>
=A0 =A0 *Rudolf J. Streif*<div class=3D"im"><br>
=A0 =A0 Director of Embedded Solutions<br>
=A0 =A0 The Linux Foundation<br>
<br></div>
=A0 =A0 <a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank">rudolf=
.streif@linux.com</a> &lt;mailto:<a href=3D"mailto:rudolf.streif@linux.com"=
 target=3D"_blank">rudolf.streif@linux.<u></u>com</a>&gt;<br>
=A0 =A0 Phone: <a href=3D"tel:%2B1.619.631.5383" value=3D"+16196315383" tar=
get=3D"_blank">+1.619.631.5383</a> &lt;tel:%2B1.619.631.5383&gt;<div class=
=3D"im"><br>
=A0 =A0 Skype: rudolfstreif<br>
=A0 =A0 PGP: RSA 2048/2048 D6E7D28B<br>
<br>
=A0 =A0 Linux Foundation Events Schedule: <a href=3D"http://events.linuxfou=
ndation.org" target=3D"_blank">events.linuxfoundation.org</a><br></div>
=A0 =A0 &lt;<a href=3D"http://events.linuxfoundation.org/" target=3D"_blank=
">http://events.<u></u>linuxfoundation.org/</a>&gt;<div class=3D"im"><br>
=A0 =A0 Linux Foundation Training Schedule: <a href=3D"http://training.linu=
xfoundation.org" target=3D"_blank">training.linuxfoundation.org</a><br></di=
v>
=A0 =A0 &lt;<a href=3D"http://training.linuxfoundation.org/" target=3D"_bla=
nk">http://training.<u></u>linuxfoundation.org/</a>&gt;<div class=3D"im"><b=
r>
<br>
<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</div></blockquote>
<br>
</blockquote></div><br></div>

--20cf3071ca048be6be04d6f2e54c--
