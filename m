Return-Path: <sleepylight@jive-turkey.net>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 079E3E0174E
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 17:08:57 -0800 (PST)
Received: by mail-ea0-f182.google.com with SMTP id o10so4640518eaj.27
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2013 17:08:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=cFrrrGYzlDKLARU/abcW0v2ncYSoaTQot2kpq8xxc5g=;
	b=CnZTiy2lMSoCn8Wg5jy7O7Thi1sB2WFnjGzK8Da+6+s+DRR004X+l6u489fBLCLM4F
	3jiajNdkNU761sRTQijzYABMH/h/7dPnAEYL7mRjOo9bdj2JO65WyBeDiVAwKWa6cLJB
	YUNg9WMBYxlKcvWW5lCLJ9ans3+xODeRszBkQxGUhU1QJ361foAJrVCo1DI4ihT3ySDs
	09emyO3A/VLJsgMGf+tZMgBrN7P15+sMzE1irO6MAsHzPpAj4TxFRl3KR8Rh6TN8H2C5
	EifAWIrAu+qmgFCeS4zg2eg4zJ6UaMfe/ggYUVdVqrAcqiv9zzALMW3zOispHs8kNlhq
	5MPA==
X-Gm-Message-State: ALoCoQmX4TsfjJHmFRJb7O+ZlQy2QA8+l2Yzqrbxfg/zVA8W2YzPBCpsnGov21yA+duWfyN+QkfY
MIME-Version: 1.0
X-Received: by 10.15.60.197 with SMTP id g45mr42209eex.103.1383700136665; Tue,
	05 Nov 2013 17:08:56 -0800 (PST)
Received: by 10.223.132.7 with HTTP; Tue, 5 Nov 2013 17:08:56 -0800 (PST)
In-Reply-To: <CADi-vswgQRuh4dNwQkbX6EUAeBLEYO6WCqHtqZUPzVwQpGjqCQ@mail.gmail.com>
References: <CADi-vsxH-E=StkCnZtw9-U7RLSC6cn-RFw684GXfANEhhMAe7Q@mail.gmail.com>
	<527873E7.8000103@windriver.com>
	<CADi-vswgQRuh4dNwQkbX6EUAeBLEYO6WCqHtqZUPzVwQpGjqCQ@mail.gmail.com>
Date: Tue, 5 Nov 2013 20:08:56 -0500
Message-ID: <CADi-vsxj-b4E1Yf-9GPEgc1gCM-gH0RWjHKtXsWUNXt-NWx+ow@mail.gmail.com>
From: Maxwell Bottiger <sleepylight@jive-turkey.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: architecture mismatch during kernel build (40 to 3)
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
X-List-Received-Date: Wed, 06 Nov 2013 01:08:59 -0000
Content-Type: multipart/alternative; boundary=089e01681c441f3a5204ea77cb22

--089e01681c441f3a5204ea77cb22
Content-Type: text/plain; charset=ISO-8859-1

Turns out this is a phantom error.  Instead of building mkimage, I had
accidentally added it to my git master branch, but deleted it from my local
copy.  I didn't see it for the longest time, but the whole project compiled
correctly as soon as I removed the binary from the git repo.

Woops.

-Max




On Tue, Nov 5, 2013 at 12:46 PM, Maxwell Bottiger <
sleepylight@jive-turkey.net> wrote:

> Ok.  so, I should backtrack a bit, just so I understand the issue
> completely.  This is my first time putting together a bitbake recipe, and
> the kernel is a complex little beastie.
>
> BTW, I'm building for an Atmel ARM cpu.  Sorry didn't mention that in my
> first message.
>
> So, when I was building my kernel by hand, here's what I was doing:
> make ARCH=arm at91sam9x5ek_defconfig
> make ARCH=arm menuconfig
> make ARCH=arm
> ./mkimage -A arm -O linux -C none -T kernel -a 20008000 -e 20008000 -n
> linux-2.6 -d arch/arm/boot/zImage uImage-2.6.39-at91sam9x5ek.bin
>
> I took the .config file that I'd been using and placed it in depconfig,
> then added a line to my bb file to include that configuration.  So, that's
> good I think.
>
> When the compile is complete, I should have an arm zImage, and mkimage
> should run against that.  So, my understanding would be that mkimage should
> be an x86 executable, and the kernel should be an arm, and mkimage should
> generate a uImage kernel.  So, the complaint from do_package that the
> executables are different architectures makes sense.
>
> Bruce, I think what you're recommending I do is remove mkImage after the
> compile and image creation are complete but before packaging takes place,
> as that's where the QA is complaining.  (Which makes a lot of sense)  I
> just want to list the details so I'm sure I understand the problem
> completely.
>
> To this end I've added a do_install_append to the end of my recipe to
> remove the mkImage file.  I tried it a couple of different times, but it
> looks like I'm seeing the same error message each time.  I think the issue
> is I just don't understand the bb process well enough.  Maybe I'm trying to
> delete the file at the wrong stage, or maybe there's something system
> specific I don't know about.  I copied the guts of this recipe from a
> linux-yocto-custom_3.6 bb file, which compiled cleanly for this chip.  I'll
> list the bb recipe below.  Any advice is greatly appreciated.
>
> linux-yocto-custom_2.6.39.bb
> -------------------------------------
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> #DEFAULT_PREFERENCE = "-1"
>
>
> LINUX_VERSION = "2.6.39"
> LINUX_VERSION_EXTENSION ?= "-custom"
> KBRANCH = "master"
> META = "meta"
>
>
> SRC_URI =
> "git:///home/blah/blah/blah/linux-2.6.39;protocol=file;branch=master"
> SRC_URI += "file://defconfig"
> #SRC_URI += "file://extra-cflags-override.patch"
>
> KERNEL_EXTRA_ARGS="LOADADDR=0x2000000  V=1 KCFLAGS=-mno-unaligned-access"
>
>
> UBOOT_ENTRYPOINT="2000000"
>
> SRCREV="master"
>
>
> PV = "${LINUX_VERSION}"
>
> PR = "r1"
>
> S = "${WORKDIR}/git"
> EXTRA_OEMAKE = "${PARALLEL_MAKE}"
>
> KERNEL_IMAGETYPE = "uImage"
>
>
> # Override COMPATIBLE_MACHINE to include your machine in a bbappend
> # file. Leaving it empty here ensures an early explicit build failure.
> #COMPATIBLE_MACHINE = "(xo1-mvs)"
> COMPATIBLE_MACHINE = "(sama5d3xek|at91sam9x5ek)"
>
> # clean up after module installation
> do_install_append() {
>     rm -f mkimage
>
> }
>
>
> On Mon, Nov 4, 2013 at 11:28 PM, Bruce Ashfield <
> bruce.ashfield@windriver.com> wrote:
>
>> On 13-11-04 8:41 PM, Maxwell Bottiger wrote:
>>
>>> I'm building a custom kernel, and I think I'm nearly there.  I'm seeing
>>> an error when running mkimage.  bitbake is complaining about an
>>> architecure mismatch, but I don't know which files it is comparing, or
>>> if the mismatch really matters (32bit x86 vs 64bit x86 or whatever)
>>>
>>> Here's the error string:
>>>
>>> WARNING: File '/usr/src/kernel/mkimage' from linux-yocto-custom was
>>> already stripped, this will prevent future debugging!
>>>
>>> ERROR: QA Issue: Architecture did not match (40 to 3) on
>>> /work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/2.
>>> 6.39-r1/packages-split/kernel-dev/usr/src/kernel/mkimage
>>>
>>
>> The obvious answer is .. it is mkimage that it is complaining about. You
>> are packaging mkimage (which is likely an x86 elf file) into your
>> kernel-dev package (which is your target arch, likely powerpc or ARM).
>> Hence the QA error.
>>
>> In your kernel recipe, you can remove the file before packaging
>> (i.e. in the do_install_append) or inhibit the QA check for your recipe.
>>
>> What exactly does your kernel recipe look like ? What is building mkimage
>> and then getting it installed into /usr/src/kernel ?
>>
>> My suggestion is to track that down, versus inhibiting the QA check.
>>
>> Bruce
>>
>>
>>> ERROR: QA run found fatal errors. Please consider fixing them.
>>>
>>> ERROR: Function failed: do_package_qa
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/sleepylight/workspace/yocto/poky/build-atmel/tmp/
>>> work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/2.
>>> 6.39-r1/temp/log.do_package.11527
>>>
>>> ERROR: Task 18
>>> (/home/sleepylight/workspace/yocto/poky/meta-atmel/recipes-kernel/linux/
>>> linux-yocto-custom_2.6.39.bb
>>> <http://linux-yocto-custom_2.6.39.bb>, do_package) failed with exit
>>> code '1'
>>>
>>>
>>>
>>> I'm building on a 64 bit linux platform, I don't know if that makes a
>>> difference.
>>>
>>> Thanks all.  I'm nearly there!
>>>
>>> -Max
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>

--089e01681c441f3a5204ea77cb22
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Turns out this is a phantom error.=A0 Instead of=
 building mkimage, I had accidentally added it to my git master branch, but=
 deleted it from my local copy.=A0 I didn&#39;t see it for the longest time=
, but the whole project compiled correctly as soon as I removed the binary =
from the git repo.<br>
<br></div>Woops.<br><br></div>-Max<br><div><br><br></div></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Nov 5, 2013 at =
12:46 PM, Maxwell Bottiger <span dir=3D"ltr">&lt;<a href=3D"mailto:sleepyli=
ght@jive-turkey.net" target=3D"_blank">sleepylight@jive-turkey.net</a>&gt;<=
/span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div><d=
iv>Ok.=A0 so, I should backtrack a bit, just so I understand the issue comp=
letely.=A0 This is my first time putting together a bitbake recipe, and the=
 kernel is a complex little beastie.<br>

<br></div><div>BTW, I&#39;m building for an Atmel ARM cpu.=A0 Sorry didn&#3=
9;t mention that in my first message.<br></div><div><br></div>So, when I wa=
s building my kernel by hand, here&#39;s what I was doing:<br>make ARCH=3Da=
rm at91sam9x5ek_defconfig<br>

make ARCH=3Darm menuconfig<br>make ARCH=3Darm<br>./mkimage -A arm -O linux =
-C none -T kernel -a 20008000 -e 20008000 -n linux-2.6 -d arch/arm/boot/zIm=
age uImage-2.6.39-at91sam9x5ek.bin<br><br></div>I took the .config file tha=
t I&#39;d been using and placed it in depconfig, then added a line to my bb=
 file to include that configuration.=A0 So, that&#39;s good I think.<br>

<br></div>When the compile is complete, I should have an arm zImage, and mk=
image should run against that.=A0 So, my understanding would be that mkimag=
e should be an x86 executable, and the kernel should be an arm, and mkimage=
 should generate a uImage kernel.=A0 So, the complaint from do_package that=
 the executables are different architectures makes sense.<br>

<br></div>Bruce, I think what you&#39;re recommending I do is remove mkImag=
e after the compile and image creation are complete but before packaging ta=
kes place, as that&#39;s where the QA is complaining.=A0 (Which makes a lot=
 of sense)=A0 I just want to list the details so I&#39;m sure I understand =
the problem completely.<br>

<br></div>To this end I&#39;ve added a do_install_append to the end of my r=
ecipe to remove the mkImage file.=A0 I tried it a couple of different times=
, but it looks like I&#39;m seeing the same error message each time.=A0 I t=
hink the issue is I just don&#39;t understand the bb process well enough.=
=A0 Maybe I&#39;m trying to delete the file at the wrong stage, or maybe th=
ere&#39;s something system specific I don&#39;t know about.=A0 I copied the=
 guts of this recipe from a linux-yocto-custom_3.6 bb file, which compiled =
cleanly for this chip.=A0 I&#39;ll list the bb recipe below.=A0 Any advice =
is greatly appreciated.<br>

<br></div><a href=3D"http://linux-yocto-custom_2.6.39.bb" target=3D"_blank"=
>linux-yocto-custom_2.6.39.bb</a><br><div>---------------------------------=
----<br><div><div><div><div><div><div><div><div><div class=3D"gmail_extra">=
inherit kernel<br>

require recipes-kernel/linux/linux-yocto.inc<br><br>LICENSE =3D &quot;GPLv2=
&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aa=
d327b76f1be7cd7&quot;<br>#DEFAULT_PREFERENCE =3D &quot;-1&quot;<br><br><br>=
LINUX_VERSION =3D &quot;2.6.39&quot;<br>

LINUX_VERSION_EXTENSION ?=3D &quot;-custom&quot;<br>KBRANCH =3D &quot;maste=
r&quot;<br>META =3D &quot;meta&quot;<br><br><br>SRC_URI =3D &quot;git:///ho=
me/blah/blah/blah/linux-2.6.39;protocol=3Dfile;branch=3Dmaster&quot;<br>SRC=
_URI +=3D &quot;file://defconfig&quot;<br>

#SRC_URI +=3D &quot;file://extra-cflags-override.patch&quot;<br><br>KERNEL_=
EXTRA_ARGS=3D&quot;LOADADDR=3D0x2000000=A0 V=3D1 KCFLAGS=3D-mno-unaligned-a=
ccess&quot;<br><br><br>UBOOT_ENTRYPOINT=3D&quot;2000000&quot;<br><br>SRCREV=
=3D&quot;master&quot;<br>

<br><br>PV =3D &quot;${LINUX_VERSION}&quot;<br><br>PR =3D &quot;r1&quot;<br=
><br>S =3D &quot;${WORKDIR}/git&quot;<br>EXTRA_OEMAKE =3D &quot;${PARALLEL_=
MAKE}&quot;<br><br>KERNEL_IMAGETYPE =3D &quot;uImage&quot;<br><br><br># Ove=
rride COMPATIBLE_MACHINE to include your machine in a bbappend<br>

# file. Leaving it empty here ensures an early explicit build failure.<br>#=
COMPATIBLE_MACHINE =3D &quot;(xo1-mvs)&quot;<br>COMPATIBLE_MACHINE =3D &quo=
t;(sama5d3xek|at91sam9x5ek)&quot;<br><br># clean up after module installati=
on<br>

do_install_append() {<br>=A0=A0=A0 rm -f mkimage<div><div class=3D"h5"><br>=
}<br><br><br><div class=3D"gmail_quote">On Mon, Nov 4, 2013 at 11:28 PM, Br=
uce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriv=
er.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote=
:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div>On 13-11-04 8:41 PM,=
 Maxwell Bottiger wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
I&#39;m building a custom kernel, and I think I&#39;m nearly there. =A0I&#3=
9;m seeing<br>
an error when running mkimage. =A0bitbake is complaining about an<br>
architecure mismatch, but I don&#39;t know which files it is comparing, or<=
br>
if the mismatch really matters (32bit x86 vs 64bit x86 or whatever)<br>
<br>
Here&#39;s the error string:<br>
<br>
WARNING: File &#39;/usr/src/kernel/mkimage&#39; from linux-yocto-custom was=
<br>
already stripped, this will prevent future debugging!<br>
<br>
ERROR: QA Issue: Architecture did not match (40 to 3) on<br>
/work/at91sam9x5ek-poky-linux-<u></u>gnueabi/linux-yocto-custom/2.<u></u>6.=
39-r1/packages-split/kernel-<u></u>dev/usr/src/kernel/mkimage<br>
</blockquote>
<br></div>
The obvious answer is .. it is mkimage that it is complaining about. You<br=
>
are packaging mkimage (which is likely an x86 elf file) into your<br>
kernel-dev package (which is your target arch, likely powerpc or ARM). Henc=
e the QA error.<br>
<br>
In your kernel recipe, you can remove the file before packaging<br>
(i.e. in the do_install_append) or inhibit the QA check for your recipe.<br=
>
<br>
What exactly does your kernel recipe look like ? What is building mkimage<b=
r>
and then getting it installed into /usr/src/kernel ?<br>
<br>
My suggestion is to track that down, versus inhibiting the QA check.<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div>
<br>
ERROR: QA run found fatal errors. Please consider fixing them.<br>
<br>
ERROR: Function failed: do_package_qa<br>
<br>
ERROR: Logfile of failure stored in:<br>
/home/sleepylight/workspace/<u></u>yocto/poky/build-atmel/tmp/<u></u>work/a=
t91sam9x5ek-poky-linux-<u></u>gnueabi/linux-yocto-custom/2.<u></u>6.39-r1/t=
emp/log.do_package.<u></u>11527<br>
<br>
ERROR: Task 18<br>
(/home/sleepylight/workspace/<u></u>yocto/poky/meta-atmel/recipes-<u></u>ke=
rnel/linux/<a href=3D"http://linux-yocto-custom_2.6.39.bb" target=3D"_blank=
">linux-yocto-<u></u>custom_2.6.39.bb</a><br></div>
&lt;<a href=3D"http://linux-yocto-custom_2.6.39.bb" target=3D"_blank">http:=
//linux-yocto-custom_2.<u></u>6.39.bb</a>&gt;, do_package) failed with exit=
 code &#39;1&#39;<div><br>
<br>
<br>
I&#39;m building on a 64 bit linux platform, I don&#39;t know if that makes=
 a<br>
difference.<br>
<br>
Thanks all. =A0I&#39;m nearly there!<br>
<br>
-Max<br>
<br>
<br></div>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
<br>
</blockquote></div><br></div></div></div></div></div></div></div></div></di=
v></div></div></div></div>
</blockquote></div><br></div>

--089e01681c441f3a5204ea77cb22--
