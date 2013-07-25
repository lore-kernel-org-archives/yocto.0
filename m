Return-Path: <djszapi@archlinux.us>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CC19E01492
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 07:32:34 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id jh10so2077920pab.17
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 07:32:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=EeeZdR0n1wwZcyxcMZuInf9QX2j2WB2bvmfXbIL32Ec=;
	b=KCEwyB3bQxaGGBUe5heHCFtGjqByFnIeTrCpZ95NwzcJ5ToN8gNwbyBDLCdeUOrLM6
	w76Bk7SSz17nWruaLvV8SeYkiB+13HASRVBmusNuO9/LpOeSyA5d1gtNutFZ98y9esQY
	KBSTZx4qsFZkvmqasniDY7dpVTh1kuoQLBbiCHoPlq99OPc88LDwZA+wG8hqmjQzdg19
	91KOqA6IE8+5DTTODrv4Q/PkdmQwbEzfzHkd8k+L67D/DIxvXi4TrejYyqGlSJwCAvKv
	gmoGfCFomDZJ7GTAVzNmdPczULP69U/Cz9QRNj6Np+E/7+r9CDB2TNN52cRD1b5dA82S
	hzmQ==
MIME-Version: 1.0
X-Received: by 10.66.216.129 with SMTP id oq1mr6671282pac.75.1374762753972;
	Thu, 25 Jul 2013 07:32:33 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Thu, 25 Jul 2013 07:32:33 -0700 (PDT)
In-Reply-To: <CAOMwXhOGXysXdHDfvYHmytspcigaKy7PUbRbxVhJpHpX96zqvA@mail.gmail.com>
References: <CAOMwXhMEn64Yw7GQbUKccg8_wSUaRpEDALAHwGj7BEWpiK+rsQ@mail.gmail.com>
	<CAFZh4h-TnF1J9j_AaWF4tSt4=oWD=tAttmrGLiT7ux7Nxs429A@mail.gmail.com>
	<CABcZANn2msXg+0iZLuW=u5+9vHzuDGaLkzaAzipDkf-q6rVfRQ@mail.gmail.com>
	<CAOMwXhOMqt9AWxi7pceZ=KqacxXC81CmxFm3FkC1AgS-hoRBJQ@mail.gmail.com>
	<CAOMwXhOVVQcdExysOk_MfXmgE1w=OKpznLfbNyMZqf8bDMU3cA@mail.gmail.com>
	<CAOMwXhPARqDrYYxRw8Ay1GbxRX-8cXcnyAy+KWK4fh+npZ3CeA@mail.gmail.com>
	<CAOMwXhOGXysXdHDfvYHmytspcigaKy7PUbRbxVhJpHpX96zqvA@mail.gmail.com>
Date: Thu, 25 Jul 2013 15:32:33 +0100
X-Google-Sender-Auth: ACo8r1uM45AykwecUFS_sR4gLH8
Message-ID: <CAOMwXhMQ0Ggk-nNS7xi2c=5D-+y0FVKdT7_xMMri79hNu-AzpA@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Chris Larson <clarson@kergoth.com>
X-Gm-Message-State: ALoCoQkcr8ITgmLI6076j2QwJq4wcSdhGURuRR99esfCFCNRL3HqQNk8VYtA+inRj8hDaq18hL6r
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: External toolchain (sourcery)
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
X-List-Received-Date: Thu, 25 Jul 2013 14:32:42 -0000
Content-Type: multipart/alternative; boundary=047d7b5d954999f39c04e256e5f7

--047d7b5d954999f39c04e256e5f7
Content-Type: text/plain; charset=ISO-8859-1

TCMODE = "external-csl"
EXTERNAL_TOOLCHAIN = "/usr/local/arm-2009q1"
TARGET_PREFIX = "arm-none-linux-gnueabi-"

INSANE_SKIP_external-sourcery-toolchain-dev += "ldflags"

PREFERRED_PROVIDER_linux-libc-headers = "external-sourcery-toolchain"
PREFERRED_PROVIDER_linux-libc-headers-dev = "external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-initial =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-intermediate =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++ =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}binutils =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-initial =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}compilerlibs =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_libgcc = "external-sourcery-toolchain"
PREFERRED_PROVIDER_eglibc = "external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/libc = "external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/libintl = "external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/libiconv = "external-sourcery-toolchain"
PREFERRED_PROVIDER_glibc-thread-db = "external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/linux-libc-headers =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_virtual/linux-libc-headers-dev =
"external-sourcery-toolchain"
PREFERRED_PROVIDER_gdbserver = "external-sourcery-toolchain"

For the setup above, I am getting the error below:

bitbake core-image-minimal
Pseudo is not present but is required, building this first before the main
build
Parsing recipes: 100%
|######################################################################################################################################################################################################|
Time: 00:00:27
Parsing of 831 .bb files complete (0 cached, 831 parsed). 1140 targets, 51
skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "arch-rolling"
TARGET_SYS        = "arm-foo-linux-gnueabi"
MACHINE           = "foo"
DISTRO            = "foo"
DISTRO_VERSION    = "0.1"
TUNE_FEATURES     = "armv5 thumb dsp"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-yocto-bsp    = "master:3d4147a43126a7b031ac583221012442dde7beab"
meta-sourcery     = "master:832ce1937780bbb508050f02ac8a8bf309045fef"
meta-foo      = "master:3d4147a43126a7b031ac583221012442dde7beab"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 63 tasks of which 0 didn't need to be rerun
and all succeeded.
Loading cache: 100%
|########################################################################################################################################################################################################|
ETA:  00:00:00
Loaded 1141 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "arch-rolling"
TARGET_SYS        = "arm-foo-linux-gnueabi"
MACHINE           = "foo"
DISTRO            = "foo"
DISTRO_VERSION    = "0.1"
TUNE_FEATURES     = "armv5 thumb dsp"
TARGET_FPU        = "soft"
meta
meta-yocto
meta-yocto-bsp    = "master:3d4147a43126a7b031ac583221012442dde7beab"
meta-sourcery     = "master:832ce1937780bbb508050f02ac8a8bf309045fef"
meta-foo      = "master:3d4147a43126a7b031ac583221012442dde7beab"

NOTE: Resolving any missing task queue dependencies
NOTE: preferred version 141 of udev not available (for item udev)
NOTE: versions of udev available: 182
NOTE: preferred version 141 of udev not available (for item udev-dev)
NOTE: versions of udev available: 182
NOTE: preferred version 141 of udev not available (for item udev-utils)
NOTE: versions of udev available: 182
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: Failed to fetch URL http://www.zlib.net/zlib-1.2.7.tar.bz2,
attempting MIRRORS if available
No currently running tasks (83 of 1366)
ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded:
ignored.
ERROR: Function failed: do_install (see
/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/foo-builds/tmp/work/armv5te-foo-linux-gnueabi/external-sourcery-toolchain/2009q1-203-r22/temp/log.do_install.25593
for further information)
ERROR: Logfile of failure stored in:
/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/foo-builds/tmp/work/armv5te-foo-linux-gnueabi/external-sourcery-toolchain/2009q1-203-r22/temp/log.do_install.25593
Log data follows:
| ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded:
ignored.
| DEBUG: Executing shell function do_install
| cp: target
'/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/foo-builds/tmp/work/armv5te-foo-linux-gnueabi/external-sourcery-toolchain/2009q1-203-r22/image/lib'
is not a directory
| ERROR: Function failed: do_install (see
/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/foo-builds/tmp/work/armv5te-foo-linux-gnueabi/external-sourcery-toolchain/2009q1-203-r22/temp/log.do_install.25593
for further information)
ERROR: Task 31
(/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta-sourcery/recipes/meta/
external-sourcery-toolchain.bb, do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 83 tasks of which 63 didn't need to be rerun
and 1 failed.
No currently running tasks (83 of 1366)

Summary: 1 task failed:

/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta-sourcery/recipes/meta/
external-sourcery-toolchain.bb, do_install
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


On Thu, Jul 25, 2013 at 1:48 PM, Laszlo Papp <lpapp@kde.org> wrote:

> I filed a bugreport against meta-sourcery:
> https://github.com/MentorEmbedded/meta-sourcery/issues/9
>
> It is very surprising to see a project without an actual documentation.
> Perhaps, it has been mostly used for internal purposes where the developers
> of the stuff were also the end users. That has to be fixed.
>
>
> On Thu, Jul 25, 2013 at 5:53 AM, Laszlo Papp <lpapp@kde.org> wrote:
>
>> So, is there any workaround in any way to get unblocked or I should just
>> switch away from Yocto for now? Unfortunately, if no workaround comes, I do
>> not have any other option because then it just does not work. :(
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4899
>>
>> Note, I have no clue how to use the meta-sourcery layer, and it has no
>> any proper documentation about that, nor example, like the Linaro guys
>> nicely made one for their solution.
>>
>>
>> On Wed, Jul 24, 2013 at 10:32 PM, Laszlo Papp <lpapp@kde.org> wrote:
>>
>>> Also, it seems to be a bit less lightweight than what we have in
>>> oe-core. I would not like to pull unnecessary recipes in. Is it possible to
>>> work the oe-core stuff around?
>>>
>>>
>>> On Wed, Jul 24, 2013 at 10:23 PM, Laszlo Papp <lpapp@kde.org> wrote:
>>>
>>>> I believe the developer story would be simpler with oe-core as opposed
>>>> to meta-sourcery. Besides, some documentation would be nice to have how to
>>>> use it, how it will work alongside the oe-core "example", and so forth.
>>>>
>>>> You know, something similar to what the Linaro people seem to have.
>>>>
>>>>
>>>> On Wed, Jul 24, 2013 at 9:59 PM, Chris Larson <clarson@kergoth.com>wrote:
>>>>
>>>>> On Wed, Jul 24, 2013 at 1:55 PM, Brian Hutchinson <
>>>>> b.hutchman@gmail.com> wrote:
>>>>>
>>>>>> On Wed, Jul 24, 2013 at 10:49 AM, Laszlo Papp <lpapp@kde.org> wrote:
>>>>>>
>>>>>>> is this officially supported by the Yocto project? I would not like
>>>>>>> to use Yocto for my own purposes if it is something unsupported, and I
>>>>>>> would need to put a significant investment into to it to make the releases
>>>>>>> buildable, et cetera.
>>>>>>>
>>>>>>
>>>>> I'm not certain as to the official Yocto support stance on
>>>>> external-sourcery as it exists in or-core at this time, but if you do want
>>>>> to use the Sourcery G++ toolchain rather than one of the alternatives
>>>>> suggested by others in this thread, you can use the meta-sourcery layer,
>>>>> which while it isn't officially supported by Yocto, is officially supported
>>>>> by Mentor Graphics, the company which provides the aforementioned toolchain.
>>>>>  --
>>>>> Christopher Larson
>>>>> clarson at kergoth dot com
>>>>> Founder - BitBake, OpenEmbedded, OpenZaurus
>>>>> Maintainer - Tslib
>>>>> Senior Software Engineer, Mentor Graphics
>>>>>
>>>>
>>>>
>>>
>>
>

--047d7b5d954999f39c04e256e5f7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>TCMODE =3D &quot;external-csl&quot;</div><div>EX=
TERNAL_TOOLCHAIN =3D &quot;/usr/local/arm-2009q1&quot;</div><div>TARGET_PRE=
FIX =3D &quot;arm-none-linux-gnueabi-&quot;</div><div><br></div><div>INSANE=
_SKIP_external-sourcery-toolchain-dev +=3D &quot;ldflags&quot;</div>
<div><br></div><div>PREFERRED_PROVIDER_linux-libc-headers =3D &quot;externa=
l-sourcery-toolchain&quot;</div><div>PREFERRED_PROVIDER_linux-libc-headers-=
dev =3D &quot;external-sourcery-toolchain&quot;</div><div>PREFERRED_PROVIDE=
R_virtual/${TARGET_PREFIX}gcc =3D &quot;external-sourcery-toolchain&quot;</=
div>
<div>PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}gcc-initial =3D &quot;exter=
nal-sourcery-toolchain&quot;</div><div>PREFERRED_PROVIDER_virtual/${TARGET_=
PREFIX}gcc-intermediate =3D &quot;external-sourcery-toolchain&quot;</div><d=
iv>
PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}g++ =3D &quot;external-sourcery-=
toolchain&quot;</div><div>PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}binuti=
ls =3D &quot;external-sourcery-toolchain&quot;</div><div>PREFERRED_PROVIDER=
_virtual/${TARGET_PREFIX}libc-initial =3D &quot;external-sourcery-toolchain=
&quot;</div>
<div>PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc =3D &quot;exte=
rnal-sourcery-toolchain&quot;</div><div>PREFERRED_PROVIDER_virtual/${TARGET=
_PREFIX}compilerlibs =3D &quot;external-sourcery-toolchain&quot;</div><div>
PREFERRED_PROVIDER_libgcc =3D &quot;external-sourcery-toolchain&quot;</div>=
<div>PREFERRED_PROVIDER_eglibc =3D &quot;external-sourcery-toolchain&quot;<=
/div><div>PREFERRED_PROVIDER_virtual/libc =3D &quot;external-sourcery-toolc=
hain&quot;</div>
<div>PREFERRED_PROVIDER_virtual/libintl =3D &quot;external-sourcery-toolcha=
in&quot;</div><div>PREFERRED_PROVIDER_virtual/libiconv =3D &quot;external-s=
ourcery-toolchain&quot;</div><div>PREFERRED_PROVIDER_glibc-thread-db =3D &q=
uot;external-sourcery-toolchain&quot;</div>
<div>PREFERRED_PROVIDER_virtual/linux-libc-headers =3D &quot;external-sourc=
ery-toolchain&quot;</div><div>PREFERRED_PROVIDER_virtual/linux-libc-headers=
-dev =3D &quot;external-sourcery-toolchain&quot;</div><div>PREFERRED_PROVID=
ER_gdbserver =3D &quot;external-sourcery-toolchain&quot;</div>
</div><div><br></div>For the setup above, I am getting the error below:<div=
><br></div><div><div>bitbake core-image-minimal</div><div>Pseudo is not pre=
sent but is required, building this first before the main build</div><div>
Parsing recipes: 100% |####################################################=
###########################################################################=
#######################################################################| Ti=
me: 00:00:27</div>
<div>Parsing of 831 .bb files complete (0 cached, 831 parsed). 1140 targets=
, 51 skipped, 0 masked, 0 errors.</div><div><br></div><div>Build Configurat=
ion:</div><div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quot;</div><div>B=
UILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div>
<div>NATIVELSBSTRING =A0 =3D &quot;arch-rolling&quot;</div><div>TARGET_SYS =
=A0 =A0 =A0 =A0=3D &quot;arm-foo-linux-gnueabi&quot;</div><div>MACHINE =A0 =
=A0 =A0 =A0 =A0 =3D &quot;foo&quot;</div><div>DISTRO =A0 =A0 =A0 =A0 =A0 =
=A0=3D &quot;foo&quot;</div><div>DISTRO_VERSION =A0 =A0=3D &quot;0.1&quot;<=
/div>
<div>TUNE_FEATURES =A0 =A0 =3D &quot;armv5 thumb dsp&quot;</div><div>TARGET=
_FPU =A0 =A0 =A0 =A0=3D &quot;soft&quot;</div><div>meta =A0 =A0 =A0 =A0 =A0=
 =A0 =A0</div><div>meta-yocto =A0 =A0 =A0 =A0</div><div>meta-yocto-bsp =A0 =
=A0=3D &quot;master:3d4147a43126a7b031ac583221012442dde7beab&quot;</div>
<div>meta-sourcery =A0 =A0 =3D &quot;master:832ce1937780bbb508050f02ac8a8bf=
309045fef&quot;</div><div>meta-foo =A0 =A0 =A0=3D &quot;master:3d4147a43126=
a7b031ac583221012442dde7beab&quot;</div><div><br></div><div>NOTE: Resolving=
 any missing task queue dependencies</div>
<div>NOTE: Preparing runqueue</div><div>NOTE: Executing SetScene Tasks</div=
><div>NOTE: Executing RunQueue Tasks</div><div>NOTE: Tasks Summary: Attempt=
ed 63 tasks of which 0 didn&#39;t need to be rerun and all succeeded.</div>
<div>Loading cache: 100% |#################################################=
###########################################################################=
###########################################################################=
#| ETA: =A000:00:00</div>
<div>Loaded 1141 entries from dependency cache.</div><div><br></div><div>Bu=
ild Configuration:</div><div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quo=
t;</div><div>BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div><d=
iv>NATIVELSBSTRING =A0 =3D &quot;arch-rolling&quot;</div>
<div>TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-foo-linux-gnueabi&quot;</div><=
div>MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;foo&quot;</div><div>DISTRO =A0 =
=A0 =A0 =A0 =A0 =A0=3D &quot;foo&quot;</div><div>DISTRO_VERSION =A0 =A0=3D =
&quot;0.1&quot;</div><div>TUNE_FEATURES =A0 =A0 =3D &quot;armv5 thumb dsp&q=
uot;</div>
<div>TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;soft&quot;</div><div>meta =A0 =A0 =
=A0 =A0 =A0 =A0 =A0</div><div>meta-yocto =A0 =A0 =A0 =A0</div><div>meta-yoc=
to-bsp =A0 =A0=3D &quot;master:3d4147a43126a7b031ac583221012442dde7beab&quo=
t;</div><div>meta-sourcery =A0 =A0 =3D &quot;master:832ce1937780bbb508050f0=
2ac8a8bf309045fef&quot;</div>
<div>meta-foo =A0 =A0 =A0=3D &quot;master:3d4147a43126a7b031ac583221012442d=
de7beab&quot;</div><div><br></div><div>NOTE: Resolving any missing task que=
ue dependencies</div><div>NOTE: preferred version 141 of udev not available=
 (for item udev)</div>
<div>NOTE: versions of udev available: 182</div><div>NOTE: preferred versio=
n 141 of udev not available (for item udev-dev)</div><div>NOTE: versions of=
 udev available: 182</div><div>NOTE: preferred version 141 of udev not avai=
lable (for item udev-utils)</div>
<div>NOTE: versions of udev available: 182</div><div>NOTE: Preparing runque=
ue</div><div>NOTE: Executing SetScene Tasks</div><div>NOTE: Executing RunQu=
eue Tasks</div><div>WARNING: Failed to fetch URL <a href=3D"http://www.zlib=
.net/zlib-1.2.7.tar.bz2">http://www.zlib.net/zlib-1.2.7.tar.bz2</a>, attemp=
ting MIRRORS if available</div>
<div>No currently running tasks (83 of 1366)</div><div>ERROR: ld.so: object=
 &#39;libpseudo.so&#39; from LD_PRELOAD cannot be preloaded: ignored.</div>=
<div>ERROR: Function failed: do_install (see /home/lpapp/Projects/foo/Yocto=
/poky-dylan-9.0.0/foo-builds/tmp/work/armv5te-foo-linux-gnueabi/external-so=
urcery-toolchain/2009q1-203-r22/temp/log.do_install.25593 for further infor=
mation)</div>
<div>ERROR: Logfile of failure stored in: /home/lpapp/Projects/foo/Yocto/po=
ky-dylan-9.0.0/foo-builds/tmp/work/armv5te-foo-linux-gnueabi/external-sourc=
ery-toolchain/2009q1-203-r22/temp/log.do_install.25593</div><div>Log data f=
ollows:</div>
<div>| ERROR: ld.so: object &#39;libpseudo.so&#39; from LD_PRELOAD cannot b=
e preloaded: ignored.</div><div>| DEBUG: Executing shell function do_instal=
l</div><div>| cp: target &#39;/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0=
.0/foo-builds/tmp/work/armv5te-foo-linux-gnueabi/external-sourcery-toolchai=
n/2009q1-203-r22/image/lib&#39; is not a directory</div>
<div>| ERROR: Function failed: do_install (see /home/lpapp/Projects/foo/Yoc=
to/poky-dylan-9.0.0/foo-builds/tmp/work/armv5te-foo-linux-gnueabi/external-=
sourcery-toolchain/2009q1-203-r22/temp/log.do_install.25593 for further inf=
ormation)</div>
<div>ERROR: Task 31 (/home/lpapp/Projects/foo/Yocto/poky-dylan-9.0.0/meta-s=
ourcery/recipes/meta/<a href=3D"http://external-sourcery-toolchain.bb">exte=
rnal-sourcery-toolchain.bb</a>, do_install) failed with exit code &#39;1&#3=
9;</div>
<div>NOTE: Tasks Summary: Attempted 83 tasks of which 63 didn&#39;t need to=
 be rerun and 1 failed.</div><div>No currently running tasks (83 of 1366)</=
div><div><br></div><div>Summary: 1 task failed:</div><div>=A0 /home/lpapp/P=
rojects/foo/Yocto/poky-dylan-9.0.0/meta-sourcery/recipes/meta/<a href=3D"ht=
tp://external-sourcery-toolchain.bb">external-sourcery-toolchain.bb</a>, do=
_install</div>
<div>Summary: There was 1 WARNING message shown.</div><div>Summary: There w=
as 1 ERROR message shown, returning a non-zero exit code.</div></div></div>=
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Jul 2=
5, 2013 at 1:48 PM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"mailto:lpa=
pp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I filed a bugreport against=
 meta-sourcery:=A0<a href=3D"https://github.com/MentorEmbedded/meta-sourcer=
y/issues/9" target=3D"_blank">https://github.com/MentorEmbedded/meta-source=
ry/issues/9</a><div>
<br></div><div>It is very surprising to see a project without an actual doc=
umentation. Perhaps, it has been mostly used for internal purposes where th=
e developers of the stuff were also the end users. That has to be fixed.</d=
iv>

</div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><b=
r><br><div class=3D"gmail_quote">On Thu, Jul 25, 2013 at 5:53 AM, Laszlo Pa=
pp <span dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" target=3D"_blank"=
>lpapp@kde.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">So, is there any workaround in any way to get unblocked or=
 I should just switch away from Yocto for now? Unfortunately, if no workaro=
und comes, I do not have any other option because then it just does not wor=
k. :(<div>


<br></div><div><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D4899" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?i=
d=3D4899</a><br></div><div><br></div><div>Note, I have no clue how to use t=
he meta-sourcery layer, and it has no any proper documentation about that, =
nor example, like the Linaro guys nicely made one for their solution.</div>


</div><div><div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">On Wed, Jul 24, 2013 at 10:32 PM, Laszlo Papp <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;</span>=
 wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">Also, it seems to be a bit less lightweight than what we h=
ave in oe-core. I would not like to pull unnecessary recipes in. Is it poss=
ible to work the oe-core stuff around?</div><div><div>
<div class=3D"gmail_extra"><br><br>
<div class=3D"gmail_quote">On Wed, Jul 24, 2013 at 10:23 PM, Laszlo Papp <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpap=
p@kde.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



<div dir=3D"ltr">I believe the developer story would be simpler with oe-cor=
e as opposed to meta-sourcery. Besides, some documentation would be nice to=
 have how to use it, how it will work alongside the oe-core &quot;example&q=
uot;, and so forth.<div>




<br></div><div>You know, something similar to what the Linaro people seem t=
o have.</div></div><div><div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Wed, Jul 24, 2013 at 9:59 PM, Chris Larson <span dir=3D=
"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@=
kergoth.com</a>&gt;</span> wrote:<br>




<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra">=
<div>On Wed, Jul 24, 2013 at 1:55 PM, Brian Hutchinson <span dir=3D"ltr">&l=
t;<a href=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmai=
l.com</a>&gt;</span> wrote:<br>




</div><div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div><div>On Wed, Jul 24, 2013 at 10:49=
 AM, Laszlo Papp <span dir=3D"ltr">&lt;<a href=3D"mailto:lpapp@kde.org" tar=
get=3D"_blank">lpapp@kde.org</a>&gt;</span> wrote:<br>






</div></div></div><div><div class=3D"gmail_quote"><div><div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">
<div dir=3D"ltr"><div>is this officially supported by the Yocto project? I =
would not like to use Yocto for my own purposes if it is something unsuppor=
ted, and I would need to put a significant investment into to it to make th=
e releases buildable, et cetera.</div>






</div></blockquote></div></div></div></div></blockquote><div><br></div><div=
>I&#39;m not certain as to the official Yocto support stance on external-so=
urcery as it exists in or-core at this time, but if you do want to use the =
Sourcery G++ toolchain rather than one of the alternatives suggested by oth=
ers in this thread, you can use the meta-sourcery layer, which while it isn=
&#39;t officially supported by Yocto, is officially supported by Mentor Gra=
phics, the company which provides the aforementioned toolchain.</div>




<span><font color=3D"#888888">

</font></span></div><span><font color=3D"#888888">-- <br>Christopher Larson=
<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaur=
us<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</font></span></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--047d7b5d954999f39c04e256e5f7--
