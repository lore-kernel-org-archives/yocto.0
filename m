Return-Path: <errordeveloper@gmail.com>
Received: from mail-bk0-f68.google.com (mail-bk0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25602E013AF
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2012 16:48:11 -0800 (PST)
Received: by mail-bk0-f68.google.com with SMTP id jg9so125540bkc.11
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2012 16:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=/jA3n2/VJxXcTXSRwL9vlpKJadI8k5kPhSAGPoPJJ5Q=;
	b=xz2dglntI2RWWM1cc+pnWDDP+ZhkW40nPntQssRge4e/jg0rMNQFDweIi6meNKtDKs
	Qqt5+sTFyYqHUxLOisgBs8utOH2OYV+YNEf6TuRvfbZ2X7/BcWLb6fXR19OkO7iRjF60
	0pa8P1Rf+UTUAegZA7ovv0P7UPmGSN5Ha7/DS/FPCZjF7LzUeOSkY1b0PWjoPTT88D80
	pfh7yFQ0AjJL/VZN/jZbY4GxbGuBTlvagLuwHrBpgPcbdoO/2d83pR8iMduayclIJhM+
	nI1mkxXj8/92rcibc+3y+8x108FgoFUpflaEkFOeAX1lP8op/2mXDwMSK18CkXbccDIk
	m9IA==
MIME-Version: 1.0
Received: by 10.204.149.2 with SMTP id r2mr6604013bkv.0.1352681289881; Sun, 11
	Nov 2012 16:48:09 -0800 (PST)
Received: by 10.205.112.81 with HTTP; Sun, 11 Nov 2012 16:48:09 -0800 (PST)
Date: Mon, 12 Nov 2012 00:48:09 +0000
Message-ID: <CAPhDKbFa_=AAmLQ1axAamuEY8arLLG7RVwYN=-m++fquLX3W-g@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: yocto@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Mon, 12 Nov 2012 00:48:12 -0000
Content-Type: multipart/alternative; boundary=0015175cac42c7183f04ce41a78f

--0015175cac42c7183f04ce41a78f
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm getting this on Ubuntu 10.04:

> bitbake core-image-minimal
                                                                [224/1821]
Pseudo is not present but is required, building this first before the main
build
Parsing recipes: 100%
|##############################################################################################################################################|
Time: 00:01:12
Parsing of 1262 .bb files complete (0 cached, 1262 parsed). 1605 targets,
64 skipped, 6 masked, 0 errors.

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121111"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:78983e939ab17f02f8911c8b0d0e326b419856b9"
meta-oe           = "master:ae2926ef202541014cde7c91a9ff75ed8b4eb390"
meta-ti           = "master:53dcf7977a86714cbd27f919a473dac8f6f16434"
meta-yocto-bsp    = "master:78983e939ab17f02f8911c8b0d0e326b419856b9"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 56 tasks of which 0 didn't need to be rerun
and all succeeded.
Loading cache: 100%
|################################################################################################################################################|
ETA:  00:00:00
Loaded 1606 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121111"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:78983e939ab17f02f8911c8b0d0e326b419856b9"
meta-oe           = "master:ae2926ef202541014cde7c91a9ff75ed8b4eb390"
meta-ti           = "master:53dcf7977a86714cbd27f919a473dac8f6f16434"
meta-yocto-bsp    = "master:78983e939ab17f02f8911c8b0d0e326b419856b9"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 63 tasks of which 42 didn't need to be rerun
and all succeeded.
Loading cache: 100%
|################################################################################################################################################|
ETA:  00:00:00
Loaded 1606 entries from dependency cache.

Build Configuration:

                    [173/1821]
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121111"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:78983e939ab17f02f8911c8b0d0e326b419856b9"
meta-oe           = "master:ae2926ef202541014cde7c91a9ff75ed8b4eb390"
meta-ti           = "master:53dcf7977a86714cbd27f919a473dac8f6f16434"
meta-yocto-bsp    = "master:78983e939ab17f02f8911c8b0d0e326b419856b9"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: Unpack failure for URL: '
http://ymorin.is-a-geek.org/download/kconfig-frontends/kconfig-frontends-3.5.0-0.tar.xz'.
Unpack command PATH="/home/ilya/oe/poky/sc
ripts/native-intercept:/home/ilya/oe/poky/scripts:/mnt/build/poky//tmp/sysroots/x86_64-linux/usr/bin/armv7a-vfp-neon-linux:/mnt/build/poky//tmp/sysroots/x86_64-linux/usr/bin:/mnt/bu
ild/poky//tmp/sysroots/x86_64-linux/usr/sbin:/mnt/build/poky//tmp/sysroots/x86_64-linux/usr/bin:/mnt/build/poky//tmp/sysroots/x86_64-linux/sbin:/mnt/build/poky//tmp/sysroots/x86_64-
linux//bin:/home/ilya/oe/poky/scripts:/home/ilya/oe/poky/bitbake/bin/:/etc/rbenv/shims:/usr/local/rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
xz -dc /home/ilya/oe/poky/build/downloads/kconfig-frontends-3.5.0-0.tar.xz
| tar x --no-same-owner -f - failed with return value 2
ERROR: Logfile of failure stored in:
/mnt/build/poky//tmp/work/x86_64-linux/kconfig-frontends-native-3.5.0-r1/temp/log.do_unpack.894
Log data follows:
| DEBUG: Executing python function do_unpack
| DEBUG: Executing python function base_do_unpack
| NOTE: Unpacking
/home/ilya/oe/poky/build/downloads/kconfig-frontends-3.5.0-0.tar.xz to
/mnt/build/poky/tmp/work/x86_64-linux/kconfig-frontends-native-3.5.0-r1/
| xz: error while loading shared libraries: liblzma.so.5: cannot open
shared object file: No such file or directory
| tar: This does not look like a tar archive
| tar: Exiting with failure status due to previous errors
| DEBUG: Python function base_do_unpack finished
| DEBUG: Python function do_unpack finished
| ERROR: Function failed: Unpack failure for URL: '
http://ymorin.is-a-geek.org/download/kconfig-frontends/kconfig-frontends-3.5.0-0.tar.xz'.
Unpack command PATH="/home/ilya/oe/poky/
scripts/native-intercept:/home/ilya/oe/poky/scripts:/mnt/build/poky//tmp/sysroots/x86_64-linux/usr/bin/armv7a-vfp-neon-linux:/mnt/build/poky//tmp/sysroots/x86_64-linux/usr/bin:/mnt/
build/poky//tmp/sysroots/x86_64-linux/usr/sbin:/mnt/build/poky//tmp/sysroots/x86_64-linux/usr/bin:/mnt/build/poky//tmp/sysroots/x86_64-linux/sbin:/mnt/build/poky//tmp/sysroots/x86_6
4-linux//bin:/home/ilya/oe/poky/scripts:/home/ilya/oe/poky/bitbake/bin/:/etc/rbenv/shims:/usr/local/rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
" xz -dc
/home/ilya/oe/poky/build/downloads/kconfig-frontends-3.5.0-0.tar.xz | tar x
--no-same-owner -f - failed with return value 2
ERROR: Task 343
(virtual:native:/home/ilya/oe/poky/build/../meta/recipes-devtools/kconfig-frontends/
kconfig-frontends_3.5.bb, do_unpack) failed with exit code '1'
NOTE: Tasks Summary: Attempted 148 tasks of which 70 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:

virtual:native:/home/ilya/oe/poky/build/../meta/recipes-devtools/kconfig-frontends/
kconfig-frontends_3.5.bb, do_unpack
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

I managed to get past this by symlinking libzma.so.5 into /usr/local/lib/,
though then I got another error from nativesdk and trying to rebuild it
with `bitbake meta-toolchain` reproduced the error again:
bitbake meta-toolchain
Loading cache: 100%
|################################################################################################################################################|
ETA:  00:00:00
Loaded 1606 entries from dependency cache.

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3+snapshot-20121111"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:78983e939ab17f02f8911c8b0d0e326b419856b9"
meta-oe           = "master:ae2926ef202541014cde7c91a9ff75ed8b4eb390"
meta-ti           = "master:53dcf7977a86714cbd27f919a473dac8f6f16434"
meta-yocto-bsp    = "master:78983e939ab17f02f8911c8b0d0e326b419856b9"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_configure (see
/mnt/build/poky//tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc-initial-2.16-r17/temp/log.do_configure.28615
for further information)
ERROR: Logfile of failure stored in:
/mnt/build/poky//tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc-initial-2.16-r17/temp/log.do_configure.28615
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc',
'bit-64', 'x86_64-linux', 'common']
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing shell function do_configure
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... x86_64-pokysdk-linux-gnu
| checking for x86_64-pokysdk-linux-gcc... x86_64-pokysdk-linux-gcc
 --sysroot=/mnt/build/poky//tmp/sysroots/x86_64-nativesdk-pokysdk-linux
| checking for suffix of object files... configure: error: in
`/mnt/build/poky/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc-initial-2.16-r17/build-x86_64-pokysdk-linux':
| configure: error: cannot compute suffix of object files: cannot compile
| See `config.log' for more details
| ERROR: Function failed: do_configure (see
/mnt/build/poky//tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc-initial-2.16-r17/temp/log.do_configure.28615
for further information)
ERROR: Task 1000
(virtual:nativesdk:/home/ilya/oe/poky/build/../meta/recipes-core/eglibc/
eglibc-initial_2.16.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 252 tasks of which 177 didn't need to be
rerun and 1 failed.
Waiting for 0 running tasks to finish:
Summary: 1 task failed:
  virtual:nativesdk:/home/ilya/oe/poky/build/../meta/recipes-core/eglibc/
eglibc-initial_2.16.bb, do_configure
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

not sure what to do here ... is it a possible breakage in the master branch
or host distro/version related?

I'm about to deploy the appliance image, will see if I get this same error
or what not ...

--0015175cac42c7183f04ce41a78f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div><div><br></div><div>I&#39;m getting this on Ubuntu 10.04:</di=
v><div><br></div><div>&gt; bitbake core-image-minimal =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 [224/1821]</div>
<div>Pseudo is not present but is required, building this first before the =
main build</div><div>Parsing recipes: 100% |###############################=
###########################################################################=
####################################| Time: 00:01:12</div>
<div>Parsing of 1262 .bb files complete (0 cached, 1262 parsed). 1605 targe=
ts, 64 skipped, 6 masked, 0 errors.</div><div><br></div><div>Build Configur=
ation:</div><div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quot;</div><div=
>TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;</div>
<div>TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;</div><div>MACH=
INE =A0 =A0 =A0 =A0 =A0 =3D &quot;beaglebone&quot;</div><div>DISTRO =A0 =A0=
 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =A0 =A0=3D &q=
uot;1.3+snapshot-20121111&quot;</div><div>
TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon cortexa8&quot;</div><div>TA=
RGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;</div><div>meta =A0 =A0 =A0=
 =A0 =A0 =A0 =A0</div><div>meta-yocto =A0 =A0 =A0 =A0=3D &quot;master:78983=
e939ab17f02f8911c8b0d0e326b419856b9&quot;</div>
<div>meta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;master:ae2926ef202541014cde7c91a=
9ff75ed8b4eb390&quot;</div><div>meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;maste=
r:53dcf7977a86714cbd27f919a473dac8f6f16434&quot;</div><div>meta-yocto-bsp =
=A0 =A0=3D &quot;master:78983e939ab17f02f8911c8b0d0e326b419856b9&quot;</div=
>
<div><br></div><div>NOTE: Resolving any missing task queue dependencies</di=
v><div>NOTE: Preparing runqueue</div><div>NOTE: Executing SetScene Tasks</d=
iv><div>NOTE: Executing RunQueue Tasks</div><div>NOTE: Tasks Summary: Attem=
pted 56 tasks of which 0 didn&#39;t need to be rerun and all succeeded.</di=
v>
<div>Loading cache: 100% |#################################################=
###########################################################################=
####################| ETA: =A000:00:00</div><div>Loaded 1606 entries from d=
ependency cache.</div>
<div><br></div><div>Build Configuration:</div><div>BB_VERSION =A0 =A0 =A0 =
=A0=3D &quot;1.16.0&quot;</div><div>TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&q=
uot;</div><div>TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;</div=
><div>MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beaglebone&quot;</div>
<div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VE=
RSION =A0 =A0=3D &quot;1.3+snapshot-20121111&quot;</div><div>TUNE_FEATURES =
=A0 =A0 =3D &quot;armv7a vfp neon cortexa8&quot;</div><div>TARGET_FPU =A0 =
=A0 =A0 =A0=3D &quot;vfp-neon&quot;</div>
<div>meta =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div>meta-yocto =A0 =A0 =A0 =A0=
=3D &quot;master:78983e939ab17f02f8911c8b0d0e326b419856b9&quot;</div><div>m=
eta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;master:ae2926ef202541014cde7c91a9ff75e=
d8b4eb390&quot;</div><div>meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;master:53dc=
f7977a86714cbd27f919a473dac8f6f16434&quot;</div>
<div>meta-yocto-bsp =A0 =A0=3D &quot;master:78983e939ab17f02f8911c8b0d0e326=
b419856b9&quot;</div><div><br></div><div>NOTE: Resolving any missing task q=
ueue dependencies</div><div>NOTE: Preparing runqueue</div><div>NOTE: Execut=
ing SetScene Tasks</div>
<div>NOTE: Executing RunQueue Tasks</div><div>NOTE: Tasks Summary: Attempte=
d 63 tasks of which 42 didn&#39;t need to be rerun and all succeeded.</div>=
<div>Loading cache: 100% |#################################################=
###########################################################################=
####################| ETA: =A000:00:00</div>
<div>Loaded 1606 entries from dependency cache.</div><div><br></div><div><d=
iv>Build Configuration: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 [173/1821]</div>
<div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quot;</div><div>TARGET_ARCH=
 =A0 =A0 =A0 =3D &quot;arm&quot;</div><div>TARGET_OS =A0 =A0 =A0 =A0 =3D &q=
uot;linux-gnueabi&quot;</div><div>MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;bea=
glebone&quot;</div><div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<=
/div>
<div>DISTRO_VERSION =A0 =A0=3D &quot;1.3+snapshot-20121111&quot;</div><div>=
TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon cortexa8&quot;</div><div>TA=
RGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;</div><div>meta =A0 =A0 =A0=
 =A0 =A0 =A0 =A0</div><div>meta-yocto =A0 =A0 =A0 =A0=3D &quot;master:78983=
e939ab17f02f8911c8b0d0e326b419856b9&quot;</div>
<div>meta-oe =A0 =A0 =A0 =A0 =A0 =3D &quot;master:ae2926ef202541014cde7c91a=
9ff75ed8b4eb390&quot;</div><div>meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;maste=
r:53dcf7977a86714cbd27f919a473dac8f6f16434&quot;</div><div>meta-yocto-bsp =
=A0 =A0=3D &quot;master:78983e939ab17f02f8911c8b0d0e326b419856b9&quot;</div=
>
<div><br></div><div>NOTE: Resolving any missing task queue dependencies</di=
v><div>NOTE: Preparing runqueue</div><div>NOTE: Executing SetScene Tasks</d=
iv><div>NOTE: Executing RunQueue Tasks</div><div>ERROR: Function failed: Un=
pack failure for URL: &#39;<a href=3D"http://ymorin.is-a-geek.org/download/=
kconfig-frontends/kconfig-frontends-3.5.0-0.tar.xz">http://ymorin.is-a-geek=
.org/download/kconfig-frontends/kconfig-frontends-3.5.0-0.tar.xz</a>&#39;. =
Unpack command PATH=3D&quot;/home/ilya/oe/poky/sc</div>
<div>ripts/native-intercept:/home/ilya/oe/poky/scripts:/mnt/build/poky//tmp=
/sysroots/x86_64-linux/usr/bin/armv7a-vfp-neon-linux:/mnt/build/poky//tmp/s=
ysroots/x86_64-linux/usr/bin:/mnt/bu</div><div>ild/poky//tmp/sysroots/x86_6=
4-linux/usr/sbin:/mnt/build/poky//tmp/sysroots/x86_64-linux/usr/bin:/mnt/bu=
ild/poky//tmp/sysroots/x86_64-linux/sbin:/mnt/build/poky//tmp/sysroots/x86_=
64-</div>
<div>linux//bin:/home/ilya/oe/poky/scripts:/home/ilya/oe/poky/bitbake/bin/:=
/etc/rbenv/shims:/usr/local/rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/s=
bin:/usr/bin:/sbin:/bin:/usr/games&quot;=A0</div><div>xz -dc /home/ilya/oe/=
poky/build/downloads/kconfig-frontends-3.5.0-0.tar.xz | tar x --no-same-own=
er -f - failed with return value 2</div>
<div>ERROR: Logfile of failure stored in: /mnt/build/poky//tmp/work/x86_64-=
linux/kconfig-frontends-native-3.5.0-r1/temp/log.do_unpack.894</div><div>Lo=
g data follows:</div><div>| DEBUG: Executing python function do_unpack</div=
>
<div>| DEBUG: Executing python function base_do_unpack</div><div>| NOTE: Un=
packing /home/ilya/oe/poky/build/downloads/kconfig-frontends-3.5.0-0.tar.xz=
 to /mnt/build/poky/tmp/work/x86_64-linux/kconfig-frontends-native-3.5.0-r1=
/</div>
<div>| xz: error while loading shared libraries: liblzma.so.5: cannot open =
shared object file: No such file or directory</div><div>| tar: This does no=
t look like a tar archive</div><div>| tar: Exiting with failure status due =
to previous errors</div>
<div>| DEBUG: Python function base_do_unpack finished</div><div>| DEBUG: Py=
thon function do_unpack finished</div><div>| ERROR: Function failed: Unpack=
 failure for URL: &#39;<a href=3D"http://ymorin.is-a-geek.org/download/kcon=
fig-frontends/kconfig-frontends-3.5.0-0.tar.xz">http://ymorin.is-a-geek.org=
/download/kconfig-frontends/kconfig-frontends-3.5.0-0.tar.xz</a>&#39;. Unpa=
ck command PATH=3D&quot;/home/ilya/oe/poky/</div>
<div>scripts/native-intercept:/home/ilya/oe/poky/scripts:/mnt/build/poky//t=
mp/sysroots/x86_64-linux/usr/bin/armv7a-vfp-neon-linux:/mnt/build/poky//tmp=
/sysroots/x86_64-linux/usr/bin:/mnt/</div><div>build/poky//tmp/sysroots/x86=
_64-linux/usr/sbin:/mnt/build/poky//tmp/sysroots/x86_64-linux/usr/bin:/mnt/=
build/poky//tmp/sysroots/x86_64-linux/sbin:/mnt/build/poky//tmp/sysroots/x8=
6_6</div>
<div>4-linux//bin:/home/ilya/oe/poky/scripts:/home/ilya/oe/poky/bitbake/bin=
/:/etc/rbenv/shims:/usr/local/rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr=
/sbin:/usr/bin:/sbin:/bin:/usr/games</div><div>&quot; xz -dc /home/ilya/oe/=
poky/build/downloads/kconfig-frontends-3.5.0-0.tar.xz | tar x --no-same-own=
er -f - failed with return value 2</div>
<div>ERROR: Task 343 (virtual:native:/home/ilya/oe/poky/build/../meta/recip=
es-devtools/kconfig-frontends/<a href=3D"http://kconfig-frontends_3.5.bb">k=
config-frontends_3.5.bb</a>, do_unpack) failed with exit code &#39;1&#39;</=
div>
<div>NOTE: Tasks Summary: Attempted 148 tasks of which 70 didn&#39;t need t=
o be rerun and 1 failed.</div><div>Waiting for 0 running tasks to finish:</=
div><div><br></div><div>Summary: 1 task failed:</div><div>=A0 virtual:nativ=
e:/home/ilya/oe/poky/build/../meta/recipes-devtools/kconfig-frontends/<a hr=
ef=3D"http://kconfig-frontends_3.5.bb">kconfig-frontends_3.5.bb</a>, do_unp=
ack</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div></div><div><br></div><div>I managed to get past this by symlinking=
 libzma.so.5 into /usr/local/lib/, though then I got another error from nat=
ivesdk and trying to rebuild it with `bitbake meta-toolchain` reproduced th=
e error again:</div>
<div><div>bitbake meta-toolchain</div><div>Loading cache: 100% |###########=
###########################################################################=
##########################################################| ETA: =A000:00:0=
0</div>
<div>Loaded 1606 entries from dependency cache.</div><div><br></div><div>Bu=
ild Configuration:</div><div>BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quo=
t;</div><div>TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;</div><div>TARGET_O=
S =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;</div>
<div>MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beaglebone&quot;</div><div>DISTR=
O =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VERSION =A0 =
=A0=3D &quot;1.3+snapshot-20121111&quot;</div><div>TUNE_FEATURES =A0 =A0 =
=3D &quot;armv7a vfp neon cortexa8&quot;</div>
<div>TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;</div><div>meta =A0 =
=A0 =A0 =A0 =A0 =A0 =A0</div><div>meta-yocto =A0 =A0 =A0 =A0=3D &quot;maste=
r:78983e939ab17f02f8911c8b0d0e326b419856b9&quot;</div><div>meta-oe =A0 =A0 =
=A0 =A0 =A0 =3D &quot;master:ae2926ef202541014cde7c91a9ff75ed8b4eb390&quot;=
</div>
<div>meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;master:53dcf7977a86714cbd27f919a=
473dac8f6f16434&quot;</div><div>meta-yocto-bsp =A0 =A0=3D &quot;master:7898=
3e939ab17f02f8911c8b0d0e326b419856b9&quot;</div><div><br></div><div>NOTE: R=
esolving any missing task queue dependencies</div>
<div>NOTE: Preparing runqueue</div><div>NOTE: Executing SetScene Tasks</div=
><div>NOTE: Executing RunQueue Tasks</div><div>ERROR: Function failed: do_c=
onfigure (see /mnt/build/poky//tmp/work/x86_64-nativesdk-pokysdk-linux/nati=
vesdk-eglibc-initial-2.16-r17/temp/log.do_configure.28615 for further infor=
mation)</div>
<div>ERROR: Logfile of failure stored in: /mnt/build/poky//tmp/work/x86_64-=
nativesdk-pokysdk-linux/nativesdk-eglibc-initial-2.16-r17/temp/log.do_confi=
gure.28615</div><div>Log data follows:</div><div>| DEBUG: Executing python =
function sysroot_cleansstate</div>
<div>| DEBUG: Python function sysroot_cleansstate finished</div><div>| DEBU=
G: SITE files [&#39;endian-little&#39;, &#39;common-linux&#39;, &#39;common=
-glibc&#39;, &#39;bit-64&#39;, &#39;x86_64-linux&#39;, &#39;common&#39;]</d=
iv>
<div>| DEBUG: Executing shell function autotools_preconfigure</div><div>| D=
EBUG: Shell function autotools_preconfigure finished</div><div>| DEBUG: Exe=
cuting shell function do_configure</div><div>| checking build system type..=
. x86_64-pc-linux-gnu</div>
<div>| checking host system type... x86_64-pokysdk-linux-gnu</div><div>| ch=
ecking for x86_64-pokysdk-linux-gcc... x86_64-pokysdk-linux-gcc =A0--sysroo=
t=3D/mnt/build/poky//tmp/sysroots/x86_64-nativesdk-pokysdk-linux</div><div>
| checking for suffix of object files... configure: error: in `/mnt/build/p=
oky/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-eglibc-initial-2.16-r=
17/build-x86_64-pokysdk-linux&#39;:</div><div>| configure: error: cannot co=
mpute suffix of object files: cannot compile</div>
<div>| See `config.log&#39; for more details</div><div>| ERROR: Function fa=
iled: do_configure (see /mnt/build/poky//tmp/work/x86_64-nativesdk-pokysdk-=
linux/nativesdk-eglibc-initial-2.16-r17/temp/log.do_configure.28615 for fur=
ther information)</div>
<div>ERROR: Task 1000 (virtual:nativesdk:/home/ilya/oe/poky/build/../meta/r=
ecipes-core/eglibc/<a href=3D"http://eglibc-initial_2.16.bb">eglibc-initial=
_2.16.bb</a>, do_configure) failed with exit code &#39;1&#39;</div><div>NOT=
E: Tasks Summary: Attempted 252 tasks of which 177 didn&#39;t need to be re=
run and 1 failed.</div>
<div>Waiting for 0 running tasks to finish:</div><div>Summary: 1 task faile=
d:</div><div>=A0 virtual:nativesdk:/home/ilya/oe/poky/build/../meta/recipes=
-core/eglibc/<a href=3D"http://eglibc-initial_2.16.bb">eglibc-initial_2.16.=
bb</a>, do_configure</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div></div><div><br></div><div>not sure what to do here ... is it a pos=
sible breakage in the master branch or host distro/version related?</div>
<div><br></div><div>I&#39;m about to deploy the appliance image, will see i=
f I get this same error or what not ...</div><div><br></div>

--0015175cac42c7183f04ce41a78f--
