Return-Path: <sleepylight@jive-turkey.net>
Received: from mail-ee0-f43.google.com (mail-ee0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 425F4E01716
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 09:46:31 -0800 (PST)
Received: by mail-ee0-f43.google.com with SMTP id b47so1986718eek.30
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2013 09:46:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=MI4s1biKuWRA87AJ3mAZJodsq2Kkdh+YROiln/cq2JM=;
	b=l0KxKTTUjIJNBHAXHc+UWxJg26XCpP4LjwOO9DnUBUTE5k2usjVSDidyikJKz+xeP4
	alo4U8V8z2DttXM/6xk9TSLJx0WlJDZspBYstjgzC8JXrh1P+F7zcdNAG7z6MkMUJwmb
	1176rFWbWT9XLPHS1L2i+o+0q/OefzSv6t/axIWQr/wGJApD6T/9jAqofcn7tMSHwz/C
	aAH44hTC86J4li4+cR4KY2bnWLp82vzWlfv8ZnRqzn4aKJD7GSr0hVBoRvQL2UzWeQkI
	kOvmFhP1A4N5sdqPIaD+0eCaqpudcArsXQ5aU6Acmb2Tom+mXYoJydzjiX0olEZceS1y
	UEeg==
X-Gm-Message-State: ALoCoQmNn493BhCXrDRZjnLSRAiQ2fqDnHOjFFmy2SDV52HmaZV/cy01s4wWFO54aMQY0bRrzhnf
MIME-Version: 1.0
X-Received: by 10.14.29.67 with SMTP id h43mr25486378eea.7.1383673590537; Tue,
	05 Nov 2013 09:46:30 -0800 (PST)
Received: by 10.223.132.7 with HTTP; Tue, 5 Nov 2013 09:46:30 -0800 (PST)
In-Reply-To: <527873E7.8000103@windriver.com>
References: <CADi-vsxH-E=StkCnZtw9-U7RLSC6cn-RFw684GXfANEhhMAe7Q@mail.gmail.com>
	<527873E7.8000103@windriver.com>
Date: Tue, 5 Nov 2013 12:46:30 -0500
Message-ID: <CADi-vswgQRuh4dNwQkbX6EUAeBLEYO6WCqHtqZUPzVwQpGjqCQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 05 Nov 2013 17:46:35 -0000
Content-Type: multipart/alternative; boundary=001a11c370f2d971a204ea719c49

--001a11c370f2d971a204ea719c49
Content-Type: text/plain; charset=ISO-8859-1

Ok.  so, I should backtrack a bit, just so I understand the issue
completely.  This is my first time putting together a bitbake recipe, and
the kernel is a complex little beastie.

BTW, I'm building for an Atmel ARM cpu.  Sorry didn't mention that in my
first message.

So, when I was building my kernel by hand, here's what I was doing:
make ARCH=arm at91sam9x5ek_defconfig
make ARCH=arm menuconfig
make ARCH=arm
./mkimage -A arm -O linux -C none -T kernel -a 20008000 -e 20008000 -n
linux-2.6 -d arch/arm/boot/zImage uImage-2.6.39-at91sam9x5ek.bin

I took the .config file that I'd been using and placed it in depconfig,
then added a line to my bb file to include that configuration.  So, that's
good I think.

When the compile is complete, I should have an arm zImage, and mkimage
should run against that.  So, my understanding would be that mkimage should
be an x86 executable, and the kernel should be an arm, and mkimage should
generate a uImage kernel.  So, the complaint from do_package that the
executables are different architectures makes sense.

Bruce, I think what you're recommending I do is remove mkImage after the
compile and image creation are complete but before packaging takes place,
as that's where the QA is complaining.  (Which makes a lot of sense)  I
just want to list the details so I'm sure I understand the problem
completely.

To this end I've added a do_install_append to the end of my recipe to
remove the mkImage file.  I tried it a couple of different times, but it
looks like I'm seeing the same error message each time.  I think the issue
is I just don't understand the bb process well enough.  Maybe I'm trying to
delete the file at the wrong stage, or maybe there's something system
specific I don't know about.  I copied the guts of this recipe from a
linux-yocto-custom_3.6 bb file, which compiled cleanly for this chip.  I'll
list the bb recipe below.  Any advice is greatly appreciated.

linux-yocto-custom_2.6.39.bb
-------------------------------------
inherit kernel
require recipes-kernel/linux/linux-yocto.inc

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
#DEFAULT_PREFERENCE = "-1"


LINUX_VERSION = "2.6.39"
LINUX_VERSION_EXTENSION ?= "-custom"
KBRANCH = "master"
META = "meta"


SRC_URI =
"git:///home/blah/blah/blah/linux-2.6.39;protocol=file;branch=master"
SRC_URI += "file://defconfig"
#SRC_URI += "file://extra-cflags-override.patch"

KERNEL_EXTRA_ARGS="LOADADDR=0x2000000  V=1 KCFLAGS=-mno-unaligned-access"


UBOOT_ENTRYPOINT="2000000"

SRCREV="master"


PV = "${LINUX_VERSION}"

PR = "r1"

S = "${WORKDIR}/git"
EXTRA_OEMAKE = "${PARALLEL_MAKE}"

KERNEL_IMAGETYPE = "uImage"


# Override COMPATIBLE_MACHINE to include your machine in a bbappend
# file. Leaving it empty here ensures an early explicit build failure.
#COMPATIBLE_MACHINE = "(xo1-mvs)"
COMPATIBLE_MACHINE = "(sama5d3xek|at91sam9x5ek)"

# clean up after module installation
do_install_append() {
    rm -f mkimage
}


On Mon, Nov 4, 2013 at 11:28 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 13-11-04 8:41 PM, Maxwell Bottiger wrote:
>
>> I'm building a custom kernel, and I think I'm nearly there.  I'm seeing
>> an error when running mkimage.  bitbake is complaining about an
>> architecure mismatch, but I don't know which files it is comparing, or
>> if the mismatch really matters (32bit x86 vs 64bit x86 or whatever)
>>
>> Here's the error string:
>>
>> WARNING: File '/usr/src/kernel/mkimage' from linux-yocto-custom was
>> already stripped, this will prevent future debugging!
>>
>> ERROR: QA Issue: Architecture did not match (40 to 3) on
>> /work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/2.
>> 6.39-r1/packages-split/kernel-dev/usr/src/kernel/mkimage
>>
>
> The obvious answer is .. it is mkimage that it is complaining about. You
> are packaging mkimage (which is likely an x86 elf file) into your
> kernel-dev package (which is your target arch, likely powerpc or ARM).
> Hence the QA error.
>
> In your kernel recipe, you can remove the file before packaging
> (i.e. in the do_install_append) or inhibit the QA check for your recipe.
>
> What exactly does your kernel recipe look like ? What is building mkimage
> and then getting it installed into /usr/src/kernel ?
>
> My suggestion is to track that down, versus inhibiting the QA check.
>
> Bruce
>
>
>> ERROR: QA run found fatal errors. Please consider fixing them.
>>
>> ERROR: Function failed: do_package_qa
>>
>> ERROR: Logfile of failure stored in:
>> /home/sleepylight/workspace/yocto/poky/build-atmel/tmp/
>> work/at91sam9x5ek-poky-linux-gnueabi/linux-yocto-custom/2.
>> 6.39-r1/temp/log.do_package.11527
>>
>> ERROR: Task 18
>> (/home/sleepylight/workspace/yocto/poky/meta-atmel/recipes-kernel/linux/
>> linux-yocto-custom_2.6.39.bb
>> <http://linux-yocto-custom_2.6.39.bb>, do_package) failed with exit code
>> '1'
>>
>>
>>
>> I'm building on a 64 bit linux platform, I don't know if that makes a
>> difference.
>>
>> Thanks all.  I'm nearly there!
>>
>> -Max
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a11c370f2d971a204ea719c49
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Ok.=A0 so, I should backtrac=
k a bit, just so I understand the issue completely.=A0 This is my first tim=
e putting together a bitbake recipe, and the kernel is a complex little bea=
stie.<br>
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
<br></div><a href=3D"http://linux-yocto-custom_2.6.39.bb">linux-yocto-custo=
m_2.6.39.bb</a><br><div>-------------------------------------<br><div><div>=
<div><div><div><div><div><div><div class=3D"gmail_extra">inherit kernel<br>
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
do_install_append() {<br>=A0=A0=A0 rm -f mkimage<br>}<br><br><br><div class=
=3D"gmail_quote">On Mon, Nov 4, 2013 at 11:28 PM, Bruce Ashfield <span dir=
=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_bla=
nk">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>

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
v></div></div>

--001a11c370f2d971a204ea719c49--
