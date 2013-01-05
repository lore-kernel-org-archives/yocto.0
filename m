Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB08CE004D1
	for <yocto@yoctoproject.org>; Sat,  5 Jan 2013 06:24:07 -0800 (PST)
Received: by mail-ee0-f50.google.com with SMTP id b45so8715642eek.23
	for <yocto@yoctoproject.org>; Sat, 05 Jan 2013 06:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=MD3d++S2smsY0p9QXtdL+oFKWBE+EbckRZovDBlzFFA=;
	b=OZubPJZNURsX/c7ceS7FYsgUioHYvFg8HEeNt3GmvzOdVhfFwCUtLi2RFV6AdCcy7m
	kunK1ABZR5J2XbKzmqDrqDe5FhQefgm1pQzPx6Lf165JZV4aHT+eUqL/YFv9foCk/+Us
	VN1M+PK+/NmFV+1TGGjHL0QPmaLmvcZuC438pPnKTzrpndMKCHNY4eK8gC+EbuFUZjgU
	692zpV4h0hA/TnM1ATItvhYWNRYUjxVz5Dxqed9folF9xbeqeXVzTabiUzc0drMfzcWT
	YANAPOpN4r3hn7fRoeHMatyqL9LeH/1u4ehHTEkmbrD/0jYMM2QSR8btQyDg41pjcoB3
	K5mA==
MIME-Version: 1.0
Received: by 10.14.219.72 with SMTP id l48mr152577978eep.37.1357395846090;
	Sat, 05 Jan 2013 06:24:06 -0800 (PST)
Received: by 10.14.130.207 with HTTP; Sat, 5 Jan 2013 06:24:05 -0800 (PST)
In-Reply-To: <CANwz6nyVznkKCeHjAxUO1zY8x7jQq2-iLRTfddH86P_agubBrA@mail.gmail.com>
References: <CANwz6nyVznkKCeHjAxUO1zY8x7jQq2-iLRTfddH86P_agubBrA@mail.gmail.com>
Date: Sat, 5 Jan 2013 07:24:05 -0700
Message-ID: <CANwz6nyMKvixwYmBYE_p+vR5+vd6P_LXXv+z=2Gx-ZqMWci5Gw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: bitbake problem or a meta-ti problem.
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
X-List-Received-Date: Sat, 05 Jan 2013 14:24:08 -0000
Content-Type: multipart/alternative; boundary=047d7b62212439ce7204d28b5964

--047d7b62212439ce7204d28b5964
Content-Type: text/plain; charset=ISO-8859-1

---------- Forwarded message ----------
From: Edward Vidal <vidal.develone@gmail.com>
Date: Sat, Jan 5, 2013 at 7:20 AM
Subject: bitbake problem or a meta-ti problem.
To: Discussion of the angstrom distribution development <
angstrom-distro-devel@linuxtogo.org>


Hello,
Any and all help will be appreciated.

With Angstrom the linux-omap_3.1.0-r1a is built.  This uses
meta-ti/receipes-kernel/linux/linux-omap4_3.1.0.bb which has

SRC_URI = "git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282
\

Angstrom is using bitbake 1.15.2
OE Build Configuration:
BB_VERSION        = "1.15.2"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "pandaboard"
DISTRO            = "angstrom"
DISTRO_VERSION    = "v2012.05"
TUNE_FEATURES     = "armv7a vfp neon cortexa9"
TARGET_FPU        = "vfp-neon"
meta-angstrom     =
"angstrom-v2012.05-yocto1.2:6a2febed13f179c042c2371b2e86286c
80c0df5e"
meta-oe
toolchain-layer
meta-efl
meta-gpe
meta-gnome
meta-xfce
meta-initramfs    = "denzil:a6f56d7eabe50dc55198aa8b8b349dbbb40757b1"
meta-opie         = "master:efa3892b20a4ef80274e56e5633ebd62c16f9731"
meta-java         = "master:3386ea6c96096f107f43f282f654e5afa456109e"
meta-browser      = "master:c47f59df2e723495679c751cbdf6a8c6adec4b6a"
meta-mono         = "master:83f8233b0498aadb18bf7605c3ba6c71d9e13a3a"
meta-kde          = "master:5b0882d951cfd71886d423c190faaa7c7f932333"
meta-ti           =
"angstrom-staging-yocto1.2:edfd9649cbd16b2cdb5385954c0441c7b

With meta-ti and yocto the linux-omap_3.1.0-r0 would hang up do a
do_fetch.  This uses
meta-ti/receipes-kernel/linux/linux-omap4_3.1.0.bbwhich has

SRC_URI = "git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282
\

Yocto is using bitbake 1.17.0
Build Configuration:
BB_VERSION        = "1.17.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Unknown"
TARGET_SYS        = "arm-poky-linux-gnueabi"

MACHINE           = "pandaboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121230"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"

meta
meta-yocto        = "master:4a36a32567ecfbc7ce7b967803e6e23314953ef5"
meta-ti           = "master:d3ff5630a74640f46ca2ceaef1aa1baa86b9b795"

I found the following at
http://www.mail-archive.com/yocto@yoctoproject.org/msg09315.html

and https://lists.yoctoproject.org/pipermail/yocto/2012-October/012023.html

Both of these sites have deferences to changing   protocol=git to protocol=http

I just changed my recipe
meta-ti/receipes-kernel/linux/linux-omap4_3.1.0.bb which has

SRC_URI = "git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=git;branch=ti-ubuntu-3.1-1282
\
to meta-ti/receipes-kernel/linux/linux-omap4_3.1.0.bb which has

SRC_URI = "git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=http;branch=ti-ubuntu-3.1-1282
\
and the fetch worked.
Is this a bitbake problem or a meta-ti problem.
Thanks Ed vidal

On Fri, Jan 4, 2013 at 11:09 AM, Edward Vidal <vidal.develone@gmail.com>wrote:

> Hello,
> I am still trying to get the pandaboard to boot with meta-ti and yocto.
> I built the kernel on a Fedora17 pandaboard,  This took appoximately 9 hrs.
> The following are the steps that I have taken.  What needs to set to have
> the kernel display the process as it is booting?
> This is far as get with Angstrom and meta-ti with Yocto.
> Basic steps
> fetch the kernel
> checkout ti-ubuntu-3.1.0-1282.11
> configure the kernel
> make
> change zImage to uImage with mkimage
> copy files to SD card
>
>  As always any and all help will be appreciated.
> regards Ed Vidal
>
> On Thu, Jan 3, 2013 at 1:25 PM, Edward Vidal <vidal.develone@gmail.com>wrote:
>
>> Hello,
>> the Angstrom build just finished.
>> I get the same as meta-ti and yocto
>>
>> Texas Instruments OMAP4460 ES1.1
>> OMAP SD/MMC: 0
>> reading    u-boot.img
>> reading    u-boot.img
>>
>>
>> U-Boot 2011.12-dirty (Jan 03 2013 - 12:29:15)
>>
>>
>> CPU  : OMAP4460 ES1.1
>> Board: OMAP4 Panda
>> I2C:   ready
>> DRAM:  1 GiB
>> MMC:   OMAP SD/MMC: 0
>> Using default environment
>>
>> In:    serial
>> Out:   serial
>> Err:   serial
>> Hit any key to stop autoboot:  0
>> reading boot.scr
>>
>> 342 bytes read
>>
>> Running bootscript from mmc0 ...
>> ## Executing script at 82000000
>> Booting from mmc0
>> Device:    OMAP SD/MMC
>> Manufacturer ID: 2
>> OEM: 544d
>> Name: SA16G
>> Tran Speed: 25000000
>> Rd Block Len: 512
>> SD version 2.0
>> High Capacity: Yes
>> Capacity: 14.6 GiB
>> Bus Width: 4-bit
>> reading uImage
>>
>> 4164360 bytes read
>> ## Booting kernel from Legacy Image at 80300000 ...
>>    Image Name:   Angstrom/3.1.0/pandaboard
>>
>>    Image Type:   ARM Linux Kernel Image (uncompressed)
>>    Data Size:      4164296 Bytes = 4 MiB
>>
>>    Load Address: 80008000
>>    Entry Point:     80008000
>>    Verifying Checksum ... OK
>>    Loading Kernel Image ... OK
>> OK
>>
>> Starting kernel ...
>>
>> Uncompressing Linux... done, booting the kernel.
>> As always any and all help will be appreciated.
>> regards Ed Vidal
>>
>> On Thu, Jan 3, 2013 at 1:09 PM, Edward Vidal <vidal.develone@gmail.com>wrote:
>>
>>> Hello All from Ed Vidal
>>> I have not changed any recipes.
>>>
>>>  I have been trying with a current version of angstrom which downloads
>>> linux-omap_3.1.0-r1a. cd
>>> ~/angstrom/setup-scripts/build/tmp-angstrom_v2012_05-eglibc/deploy/images/pandaboard/
>>> This creates the following files
>>>  ls
>>> MLO
>>> MLO-pandaboard
>>> MLO-pandaboard-2011.12
>>> modules-3.1.0-r1a-pandaboard.tgz
>>> README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
>>> u-boot.img
>>> u-boot-pandaboard-2011.12-r8.img
>>> u-boot-pandaboard.img
>>> uImage
>>> uImage-3.1.0-r1a-pandaboard-20130103162548.bin
>>> uImage-pandaboard.bin
>>> I also have tried using meta-ti with yocto which creates the following
>>> files
>>>
>>> u-boot-pandaboard-2011.12-r8.img
>>> u-boot-pandaboard.img
>>> uImage
>>> uImage-3.1.0-r1a-pandaboard-20130103162548.bin
>>> uImage-pandaboard.bin
>>> [vidal@ws009 pandaboard]$ cd
>>> ~/POKY/build122912_panda/poky/build/tmp/deploy/images/
>>> [vidal@ws009 images]$ ls
>>> core-image-sato-sdk-pandaboard-20121230164443.rootfs.tar.bz2
>>> core-image-sato-sdk-pandaboard-20130101172231.rootfs.tar.bz2
>>> core-image-sato-sdk-pandaboard.tar.bz2
>>> MLO
>>> MLO-pandaboard
>>> MLO-pandaboard-2011.12
>>> modules--3.1.0-r0-pandaboard-20121230164443.tgz
>>> modules--3.1.0-r0-pandaboard-20130101172231.tgz
>>> README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
>>> u-boot.img
>>> u-boot-pandaboard-2011.12-r8.img
>>> u-boot-pandaboard.img
>>> uImage
>>> uImage-3.1.0-r0-pandaboard-20121230164443.bin
>>> uImage-3.1.0-r0-pandaboard-20130101172231.bin
>>> The difference between uImage-3.1.0-r0-pandaboard-20121230164443.bin and
>>> uImage-3.1.0-r0-pandaboard-20130101172231.bin is I added to local.conf
>>> CMDLINE_DEBUG ?= "debug" to see if I could be some debug out of the boot
>>> process. All
>>> I get is Starting kernel ...
>>>
>>>
>>> Uncompressing Linux... done, booting the kernel.
>>> My angstrom build should be done shortly. May this will give a tar.vz2
>>> file so I can test the kernel that I get above in
>>> ~/angstrom/setup-scripts/build/tmp-angstrom_v2012_05-eglibc/deploy/images/pandaboard/
>>>  As always any and all help will be appreciated.
>>> regards Ed Vidal
>>>
>>> On Thu, Jan 3, 2013 at 11:50 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>>
>>>> On 2013-01-03 11:40, Alan DuBoff wrote:
>>>>
>>>>> On Tue, 25 Dec 2012, Gary Thomas wrote:
>>>>>
>>>>>  Please try to answer the question that was asked: what did you change
>>>>>> in the *recipe*??
>>>>>>
>>>>>
>>>>> I *DID* answer, please go back and read my messages, here it is again
>>>>> for your convenience:
>>>>>
>>>>> setup-scripts/sources/meta-ti/**recipes-kernel/linux/linux-**
>>>>> ti33x-psp_3.2.bb <http://linux-ti33x-psp_3.2.bb>
>>>>>
>>>>> If you change the kernel version on that recipe it will build the
>>>>> image with that kernel, AFAICT.
>>>>>
>>>>
>>>> Exactly what do you mean?  Did you actually change the recipe (i.e.
>>>> edit the file
>>>> mentioned above)?  Or did you try to select that kernel via some other
>>>> means?  If
>>>> so, how?
>>>>
>>>> If you'll be more explicit about how you are trying to get this
>>>> alternate
>>>> kernel to be used, we can help figure out why it's not working for you.
>>>>
>>>>
>>>>
>>>>>  The kernel and the modules [package] have to match or else you'll
>>>>>> have problems.
>>>>>>
>>>>>
>>>>> They do. I've included the kernel-modules in my recipes.
>>>>>
>>>>
>>>> query: why isn't this discussion on the meta-ti list where the
>>>> supporters
>>>> of this recipe (and layer) hang out?
>>>>
>>>>
>>>> --
>>>> ------------------------------**------------------------------
>>>> Gary Thomas                 |  Consulting for the
>>>> MLB Associates              |    Embedded world
>>>> ------------------------------**------------------------------
>>>>
>>>> ______________________________**_________________
>>>> Angstrom-distro-devel mailing list
>>>> Angstrom-distro-devel@**linuxtogo.org<Angstrom-distro-devel@linuxtogo.org>
>>>> http://lists.linuxtogo.org/**cgi-bin/mailman/listinfo/**
>>>> angstrom-distro-devel<http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-distro-devel>
>>>>
>>>
>>>
>>
>

--047d7b62212439ce7204d28b5964
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">---------- Forwarded message ----------<=
br>From: <b class=3D"gmail_sendername">Edward Vidal</b> <span dir=3D"ltr">&=
lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>=
&gt;</span><br>
Date: Sat, Jan 5, 2013 at 7:20 AM<br>Subject: bitbake problem or a meta-ti =
problem.<br>To: Discussion of the angstrom distribution development &lt;<a =
href=3D"mailto:angstrom-distro-devel@linuxtogo.org">angstrom-distro-devel@l=
inuxtogo.org</a>&gt;<br>
<br><br>Hello,<br>Any and all help will be appreciated.<br><br>With Angstro=
m the linux-omap_3.1.0-r1a is built.=A0 This uses meta-ti/receipes-kernel/l=
inux/<a href=3D"http://linux-omap4_3.1.0.bb" target=3D"_blank">linux-omap4_=
3.1.0.bb</a> which has <br>

<pre>SRC_URI =3D &quot;git://<a href=3D"http://dev.omapzoom.org/pub/scm/int=
egration/kernel-ubuntu.git;protocol=3Dgit;branch=3Dti-ubuntu-3.1-1282" targ=
et=3D"_blank">dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protoc=
ol=3Dgit;branch=3Dti-ubuntu-3.1-1282</a> \</pre>

 Angstrom is using bitbake 1.15.2<br>OE Build Configuration:<br>BB_VERSION=
=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.15.2&quot;<br>TARGET_ARCH=A0=A0=A0=A0=A0=
=A0 =3D &quot;arm&quot;<br>TARGET_OS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;linu=
x-gnueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;pandaboa=
rd&quot;<br>

DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;angstrom&quot;<br>DISTRO_=
VERSION=A0=A0=A0 =3D &quot;v2012.05&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D =
&quot;armv7a vfp neon cortexa9&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D=
 &quot;vfp-neon&quot;<br>meta-angstrom=A0=A0=A0=A0 =3D &quot;angstrom-v2012=
.05-yocto1.2:6a2febed13f179c042c2371b2e86286c<br>

80c0df5e&quot;<br>meta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>toolchain-layer=
=A0=A0 <br>meta-efl=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>meta-gpe=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 <br>meta-gnome=A0=A0=A0=A0=A0=A0=A0 <br>meta-xfce=A0=A0=A0=A0=
=A0=A0=A0=A0 <br>meta-initramfs=A0=A0=A0 =3D &quot;denzil:a6f56d7eabe50dc55=
198aa8b8b349dbbb40757b1&quot;<br>

meta-opie=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:efa3892b20a4ef80274e56e5=
633ebd62c16f9731&quot;<br>meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;maste=
r:3386ea6c96096f107f43f282f654e5afa456109e&quot;<br>meta-browser=A0=A0=A0=
=A0=A0 =3D &quot;master:c47f59df2e723495679c751cbdf6a8c6adec4b6a&quot;<br>

meta-mono=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:83f8233b0498aadb18bf7605=
c3ba6c71d9e13a3a&quot;<br>meta-kde=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;mas=
ter:5b0882d951cfd71886d423c190faaa7c7f932333&quot;<br>meta-ti=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;angstrom-staging-yocto1.2:edfd9649cbd16b2cdb53=
85954c0441c7b<br>

<br>With meta-ti and yocto  the linux-omap_3.1.0-r0 would hang up do a do_f=
etch.=A0 This uses meta-ti/receipes-kernel/linux/<a href=3D"http://linux-om=
ap4_3.1.0.bb" target=3D"_blank">linux-omap4_3.1.0.bb</a> which has <br>
<pre>SRC_URI =3D &quot;git://<a href=3D"http://dev.omapzoom.org/pub/scm/int=
egration/kernel-ubuntu.git;protocol=3Dgit;branch=3Dti-ubuntu-3.1-1282" targ=
et=3D"_blank">dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protoc=
ol=3Dgit;branch=3Dti-ubuntu-3.1-1282</a> \<br>

<br>Yocto is using bitbake 1.17.0<br>Build Configuration:<br>BB_VERSION    =
    =3D &quot;1.17.0&quot;<br>BUILD_SYS         =3D &quot;x86_64-linux&quot=
;<br>NATIVELSBSTRING   =3D &quot;Unknown&quot;<br>TARGET_SYS        =3D &qu=
ot;arm-poky-linux-gnueabi&quot;<br>

MACHINE           =3D &quot;pandaboard&quot;<br>DISTRO            =3D &quot=
;poky&quot;<br>DISTRO_VERSION    =3D &quot;1.3+snapshot-20121230&quot;<br>T=
UNE_FEATURES     =3D &quot;armv7a vfp neon&quot;<br>TARGET_FPU        =3D &=
quot;vfp-neon&quot;<br>

meta              <br>meta-yocto        =3D &quot;master:4a36a32567ecfbc7ce=
7b967803e6e23314953ef5&quot;<br>meta-ti           =3D &quot;master:d3ff5630=
a74640f46ca2ceaef1aa1baa86b9b795&quot;<br><br>I found the following at <a h=
ref=3D"http://www.mail-archive.com/yocto@yoctoproject.org/msg09315.html" ta=
rget=3D"_blank">http://www.mail-archive.com/yocto@yoctoproject.org/msg09315=
.html</a><br>

<br>and <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2012-Octo=
ber/012023.html" target=3D"_blank">https://lists.yoctoproject.org/pipermail=
/yocto/2012-October/012023.html</a><br><br>Both of these sites have deferen=
ces to changing   protocol=3Dgit to protocol=3Dhttp<br>

<br>I just changed my recipe meta-ti/receipes-kernel/linux/<a href=3D"http:=
//linux-omap4_3.1.0.bb" target=3D"_blank">linux-omap4_3.1.0.bb</a> which ha=
s <br>
SRC_URI =3D &quot;git://<a href=3D"http://dev.omapzoom.org/pub/scm/integrat=
ion/kernel-ubuntu.git;protocol=3Dgit;branch=3Dti-ubuntu-3.1-1282" target=3D=
"_blank">dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=3D=
git;branch=3Dti-ubuntu-3.1-1282</a> \
to meta-ti/receipes-kernel/linux/<a href=3D"http://linux-omap4_3.1.0.bb" ta=
rget=3D"_blank">linux-omap4_3.1.0.bb</a> which has <br>
SRC_URI =3D &quot;git://<a href=3D"http://dev.omapzoom.org/pub/scm/integrat=
ion/kernel-ubuntu.git;protocol=3Dhttp;branch=3Dti-ubuntu-3.1-1282" target=
=3D"_blank">dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=
=3Dhttp;branch=3Dti-ubuntu-3.1-1282</a> \
and the fetch worked.  <br>Is this a bitbake problem or a meta-ti problem.<=
br>Thanks Ed vidal <br></pre>
<div class=3D"gmail_quote">On Fri, Jan 4, 2013 at 11:09 AM, Edward Vidal <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmail.com" target=3D"_=
blank">vidal.develone@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">

Hello,<br>I am still trying to get the pandaboard to boot with meta-ti and =
yocto.<br>I built the kernel on a Fedora17 pandaboard,=A0 This took appoxim=
ately 9 hrs.<br>The following are the steps that I have taken.=A0 What need=
s to set to have the kernel display the process as it is booting?<br>


This is far as get with Angstrom and meta-ti with Yocto.<br>Basic steps<br>=
fetch the kernel<br>checkout ti-ubuntu-3.1.0-1282.11<br>configure the kerne=
l<br>make<br>change zImage to uImage with mkimage<br>copy files to SD card<=
div>

<br>
=A0As always any and all help will be appreciated. <br>regards Ed Vidal<br>=
<br></div><div><div><div class=3D"gmail_quote">On Thu, Jan 3, 2013 at 1:25 =
PM, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gma=
il.com" target=3D"_blank">vidal.develone@gmail.com</a>&gt;</span> wrote:<br=
>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hello,<br>the Angstrom build just finished.<=
br>I get the same as meta-ti and yocto<div><br>Texas Instruments OMAP4460 E=
S1.1<br>


OMAP SD/MMC: 0<br>reading=A0=A0=A0 u-boot.img<br>reading=A0=A0=A0 u-boot.im=
g<br><br><br></div>U-Boot 2011.12-dirty (Jan 03 2013 - 12:29:15)<div><br>
<br>CPU=A0 : OMAP4460 ES1.1<br>Board: OMAP4 Panda<br>I2C:=A0=A0 ready<br>DR=
AM:=A0 1 GiB<br>MMC:=A0=A0 OMAP SD/MMC: 0<br>Using default environment<br><=
br>In:=A0=A0=A0 serial<br>Out:=A0=A0 serial<br>Err:=A0=A0 serial<br></div>H=
it any key to stop autoboot:=A0 0 <br>



reading boot.scr<br><br>342 bytes read<div><br>Running bootscript from mmc0=
 ...<br>## Executing script at 82000000<br></div>Booting from mmc0<br>Devic=
e:=A0=A0=A0 OMAP SD/MMC<br>Manufacturer ID: 2<br>OEM: 544d<br>Name: SA16G<b=
r>


Tran Speed: 25000000<br>
Rd Block Len: 512<br>SD version 2.0<br>High Capacity: Yes<br>Capacity: 14.6=
 GiB<br>Bus Width: 4-bit<br>reading uImage<br><br>4164360 bytes read<br>## =
Booting kernel from Legacy Image at 80300000 ...<br>=A0=A0 Image Name:=A0=
=A0 Angstrom/3.1.0/pandaboard<div>


<br>
=A0=A0 Image Type:=A0=A0 ARM Linux Kernel Image (uncompressed)<br></div>=A0=
=A0 Data Size: =A0=A0=A0 =A04164296 Bytes =3D 4 MiB<div><br>=A0=A0 Load Add=
ress: 80008000<br>=A0=A0 Entry Point:=A0=A0=A0 =A080008000<br>=A0=A0 Verify=
ing Checksum ... OK<br>
=A0=A0 Loading Kernel Image ... OK<br>
OK<br><br></div><div>Starting kernel ...<br><br>Uncompressing Linux... done=
, booting the kernel.<br></div><div>As always any and all help will be appr=
eciated. <br>regards Ed Vidal<br><br>
</div><div><div><div class=3D"gmail_quote">On Thu, Jan 3, 2013 at 1:09 PM, =
Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"mailto:vidal.develone@gmail.c=
om" target=3D"_blank">vidal.develone@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hello All from Ed Vidal<br>I have not change=
d any recipes.<br><br>=A0I have been trying with a current version of angst=
rom which downloads linux-omap_3.1.0-r1a. cd ~/angstrom/setup-scripts/build=
/tmp-angstrom_v2012_05-eglibc/deploy/images/pandaboard/=A0 This creates the=
 following files<br>




=A0ls<br>MLO<br>MLO-pandaboard<br>MLO-pandaboard-2011.12<br>modules-3.1.0-r=
1a-pandaboard.tgz<br>README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt<br>=
u-boot.img<br>u-boot-pandaboard-2011.12-r8.img<br>u-boot-pandaboard.img<br>




uImage<br>uImage-3.1.0-r1a-pandaboard-20130103162548.bin<br>uImage-pandaboa=
rd.bin<br>I also have tried using meta-ti with yocto which creates the foll=
owing files<br><br>u-boot-pandaboard-2011.12-r8.img<br>u-boot-pandaboard.im=
g<br>




uImage<br>uImage-3.1.0-r1a-pandaboard-20130103162548.bin<br>uImage-pandaboa=
rd.bin<br>[vidal@ws009 pandaboard]$ cd ~/POKY/build122912_panda/poky/build/=
tmp/deploy/images/<br>[vidal@ws009 images]$ ls<br>core-image-sato-sdk-panda=
board-20121230164443.rootfs.tar.bz2<br>




core-image-sato-sdk-pandaboard-20130101172231.rootfs.tar.bz2<br>core-image-=
sato-sdk-pandaboard.tar.bz2<br>MLO<br>MLO-pandaboard<br>MLO-pandaboard-2011=
.12<br>modules--3.1.0-r0-pandaboard-20121230164443.tgz<br>modules--3.1.0-r0=
-pandaboard-20130101172231.tgz<br>




README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt<br>u-boot.img<br>u-boot-=
pandaboard-2011.12-r8.img<br>u-boot-pandaboard.img<br>uImage<br>uImage-3.1.=
0-r0-pandaboard-20121230164443.bin<br>uImage-3.1.0-r0-pandaboard-2013010117=
2231.bin<br>




The difference between uImage-3.1.0-r0-pandaboard-20121230164443.bin and uI=
mage-3.1.0-r0-pandaboard-20130101172231.bin is I added to local.conf<br>CMD=
LINE_DEBUG ?=3D &quot;debug&quot; to see if I could be some debug out of th=
e boot process. All<br>




I get is Starting kernel ...<div><br><br>Uncompressing Linux... done, booti=
ng the kernel.<br></div>My angstrom build should be done shortly. May this =
will give a tar.vz2 file so I can test the kernel that I get above in=A0 ~/=
angstrom/setup-scripts/build/tmp-angstrom_v2012_05-eglibc/deploy/images/pan=
daboard/<br>




=A0As always any and all help will be appreciated. <br>regards Ed Vidal<div=
><div><br><div class=3D"gmail_quote">On Thu, Jan 3, 2013 at 11:50 AM, Gary =
Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D=
"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>




<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 2013-01-03 11:40, Alan DuBoff wrote:=
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Tue, 25 Dec 2012, Gary Thomas wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Please try to answer the question that was asked: what did you change in th=
e *recipe*??<br>
</blockquote>
<br>
I *DID* answer, please go back and read my messages, here it is again for y=
our convenience:<br>
<br>
setup-scripts/sources/meta-ti/<u></u>recipes-kernel/linux/<a href=3D"http:/=
/linux-ti33x-psp_3.2.bb" target=3D"_blank">linux-<u></u>ti33x-psp_3.2.bb</a=
><br>
<br>
If you change the kernel version on that recipe it will build the image wit=
h that kernel, AFAICT.<br>
</blockquote>
<br></div>
Exactly what do you mean? =A0Did you actually change the recipe (i.e. edit =
the file<br>
mentioned above)? =A0Or did you try to select that kernel via some other me=
ans? =A0If<br>
so, how?<br>
<br>
If you&#39;ll be more explicit about how you are trying to get this alterna=
te<br>
kernel to be used, we can help figure out why it&#39;s not working for you.=
<div><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
The kernel and the modules [package] have to match or else you&#39;ll have =
problems.<br>
</blockquote>
<br>
They do. I&#39;ve included the kernel-modules in my recipes.<br>
</blockquote>
<br></div>
query: why isn&#39;t this discussion on the meta-ti list where the supporte=
rs<br>
of this recipe (and layer) hang out?<div><br>
<br>
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
<br></div><div><div>
______________________________<u></u>_________________<br>
Angstrom-distro-devel mailing list<br>
<a href=3D"mailto:Angstrom-distro-devel@linuxtogo.org" target=3D"_blank">An=
gstrom-distro-devel@<u></u>linuxtogo.org</a><br>
<a href=3D"http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/angstrom-dis=
tro-devel" target=3D"_blank">http://lists.linuxtogo.org/<u></u>cgi-bin/mail=
man/listinfo/<u></u>angstrom-distro-devel</a><br>
</div></div></blockquote></div><br>
</div></div></blockquote></div><br>
</div></div></blockquote></div><br>
</div></div></blockquote></div><br>
</div><br>

--047d7b62212439ce7204d28b5964--
