Return-Path: <sanjuchopracool@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74895E00CAF; Tue, 18 Dec 2018 05:06:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sanjuchopracool[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A98F4E00CAB
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 05:06:02 -0800 (PST)
Received: by mail-lj1-f173.google.com with SMTP id v1-v6so14167386ljd.0
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2018 05:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dCXS9bLGIhPhkOnv9+UsnvNPNEMAZUbOFsogwfmzmFM=;
	b=E2bO5dw6QML8pnQ8WUr/dbXN3MWZCtLlgy+dr71OJk/s9g5Z99Lq2bDgk83lm0zqlT
	8y2otSLxXO3/0FlM7yQQPYpWbp4Y3rlnUlTJLhtKN9Kg1PvnTxS0OI6TL8W5rB9UMxu8
	Up4htOdnMV7rFx2+Q2Ju0O7+VR7+QHQLLfVxA65GZKRxsDxXAMiu7gDBibrURLP2FPWr
	BgRBNA0FQKyweNo2mfsybNmKHYwFVT8+wFge9gP3ZoM18jPTmRBjgyAjBK/k+uN5IlCj
	xcRZyCpodcM8vlC+xf5W0hh03lcZTPa1zImy9BeeZtYu2ROpHaofS8W/hAnGz5JkNAaV
	zhJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dCXS9bLGIhPhkOnv9+UsnvNPNEMAZUbOFsogwfmzmFM=;
	b=q7GoaobtSpeIhLmKO09bFXUAmy+pzeXgJPGSqPUYmr0W3GUYwEmMVlxTFDjy1YMt21
	yWtC6oOwA6i5BF+EUSFnfSt7FH8G5Om+PX5+bnaS/BVxbxGMY0ujxz4tlndHkP3M/Yl2
	C/b3Xowb+SzrcusoHyT72Qox0HEQWnSAniZGNXGwbMoVWg/n3BTdYtrqD4ZPsx1S8Vvk
	xOAKW2LL22OPo6r9ztG7Vr2D4hy1oUgxPw5D/s8xrN+Vhj5pg+UX6FwXtOBsc6c88/rN
	N517DeSB+OoH0oGeix8kdzZW9XQ2H2lPXeZEuVbw4kf9irZw5vvkLg+gzQG03u2DrVFi
	lYAw==
X-Gm-Message-State: AA+aEWak7Lgjv/7xj1jh5I14agwUVOiFlEHZfxJSfgn8UFQiYasbP00K
	r3Ckys4niNJUkHe0Hkacn1aLQbJNEy8wfV+LvfA=
X-Google-Smtp-Source: AFSGD/U6HkJm8bA+ACDATOPGIjOkguRvbV0HK3pd4R0YP+UAtfeKJDiwk/yQbBmBXwnsuYcjSfjMWzMa2mOZF/4cKh8=
X-Received: by 2002:a2e:2b11:: with SMTP id
	q17-v6mr9864991lje.25.1545138361343; 
	Tue, 18 Dec 2018 05:06:01 -0800 (PST)
MIME-Version: 1.0
References: <CAC0z2vGV8rTV2-jGXrVcrmuLNrbN_x0_Rv5gZ2NjUTfrrt-kjA@mail.gmail.com>
	<CAMKF1spucHUvqu0apW0ysXEjmTh772OFuR0nzwi-Z0eHK-qOyg@mail.gmail.com>
	<CAC0z2vG_v93qpq_q6vx+S-Kg+Z=_MbsycRAkWeByQ0m=NtvMGQ@mail.gmail.com>
	<CAMKF1so-DSbCCb5PavqLCkdsQ0vVPSOr6kRV_HEZrenzWDwWEQ@mail.gmail.com>
In-Reply-To: <CAMKF1so-DSbCCb5PavqLCkdsQ0vVPSOr6kRV_HEZrenzWDwWEQ@mail.gmail.com>
From: sanjay chopra <sanjuchopracool@gmail.com>
Date: Tue, 18 Dec 2018 18:35:50 +0530
Message-ID: <CAC0z2vFvJPrwMQSjRsJZGitb9WP0JOsOEBWTc=2tDJTf5czNZg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: build fails for qemux86
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
X-List-Received-Date: Tue, 18 Dec 2018 13:06:04 -0000
Content-Type: multipart/alternative; boundary="00000000000028256c057d4b8fe8"

--00000000000028256c057d4b8fe8
Content-Type: text/plain; charset="UTF-8"

I tried to create core-image-minimal from other laptop, I was able to build
it without any problem. On my machine , I tried with ubuntu , debian and
CENTOS, I am getting same issue every time.
Looks like it is more related to my hardware ?  I tried with verbose
information also, It is not invoking qemu with proper arguments, please
check following log.

NOTE: core-image-minimal-1.0-r0 do_rootfs: Installing complementary
packages ...
NOTE: core-image-minimal-1.0-r0 do_rootfs: Running ['oe-pkgdata-util',
'-p', '/home/sanju/qemu_check/tmp/pkgdata/qemux86', 'glob',
'/tmp/installed-pkgsqopdztld', '']
NOTE: core-image-minimal-1.0-r0 do_rootfs: Running intercept scripts:
NOTE: core-image-minimal-1.0-r0 do_rootfs: > Executing update_font_cache
intercept ...
NOTE: core-image-minimal-1.0-r0 do_rootfs: Exit code 1. Output:
+ '[' True = False ']'
+ qemu-i386 -r 3.2.0 -E
LD_LIBRARY_PATH=/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/lib:/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib
-L
/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs
-E
/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/libexec/fc-cache
--sysroot=/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs
--system-only
usage: qemu-i386 [options] program [arguments...]
Linux CPU emulator (compiled for i386 emulation)

Options and associated environment variables:

Argument             Env-variable      Description
-h                                     print this help
-help
-g port              QEMU_GDB          wait gdb connection to 'port'
-L path              QEMU_LD_PREFIX    set the elf interpreter prefix to
'path'
-s size              QEMU_STACK_SIZE   set the stack size to 'size' bytes
-cpu model           QEMU_CPU          select CPU (-cpu help for list)
-E var=value         QEMU_SET_ENV      sets targets environment variable
(see below)
-U var               QEMU_UNSET_ENV    unsets targets environment variable
(see below)
-0 argv0             QEMU_ARGV0        forces target process argv[0] to be
'argv0'
-r uname             QEMU_UNAME        set qemu uname release string to
'uname'
-B address           QEMU_GUEST_BASE   set guest_base address to 'address'
-R size              QEMU_RESERVED_VA  reserve 'size' bytes for guest
virtual address space
-d item[,...]        QEMU_LOG          enable logging of specified items
(use '-d help' for a list of items)
-dfilter range[,...] QEMU_DFILTER      filter logging based on address range
-D logfile           QEMU_LOG_FILENAME write logs to 'logfile' (default
stderr)
-p pagesize          QEMU_PAGESIZE     set the host page size to 'pagesize'
-singlestep          QEMU_SINGLESTEP   run in singlestep mode
-strace              QEMU_STRACE       log system calls
-seed                QEMU_RAND_SEED    Seed for pseudo-random number
generator
-trace               QEMU_TRACE
[[enable=]<pattern>][,events=<file>][,file=<file>]
-version             QEMU_VERSION      display version information and exit

Defaults:
QEMU_LD_PREFIX  =
/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs
QEMU_STACK_SIZE = 8388608 byte

You can use -E and -U options or the QEMU_SET_ENV and
QEMU_UNSET_ENV environment variables to set and unset
environment variables for the target process.
It is possible to provide several variables by separating them
by commas in getsubopt(3) style. Additionally it is possible to
provide the -E and -U options multiple times.
The following lines are equivalent:
    -E var1=val2 -E var2=val2 -U LD_PRELOAD -U LD_DEBUG
    -E var1=val2,var2=val2 -U LD_PRELOAD,LD_DEBUG
    QEMU_SET_ENV=var1=val2,var2=val2 QEMU_UNSET_ENV=LD_PRELOAD,LD_DEBUG
Note that if you provide several changes to a single variable
the last change will stay in effect.

See <https://qemu.org/contribute/report-a-bug> for how to report bugs.
More information on the QEMU project at <https://qemu.org>.

ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept hook
'update_font_cache' failed, details in
/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs
ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.22110
ERROR: Task
(/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
failed with exit code '1'


On Tue, Dec 18, 2018 at 10:40 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Mon, Dec 17, 2018 at 9:06 PM sanjay chopra <sanjuchopracool@gmail.com>
> wrote:
> >
> > Hi,
> >
> > It also happens when I build for raspberry pi, core-image-sato works
> fine though.
> >
>
> thats ok. it just says something is not right about the tools being
> used during build
> I suspect qemu usermode since thats whats used to execute some of post
> install hooks
>
> > On Tue 18 Dec, 2018, 6:33 AM Khem Raj <raj.khem@gmail.com wrote:
> >>
> >> On Mon, Dec 17, 2018 at 12:09 PM sanjay chopra
> >> <sanjuchopracool@gmail.com> wrote:
> >> >
> >> > Hi,
> >> >
> >> > Whenever I try to build core-image-minimal , it fails in rootfs
> step.But I am able to build core-image-sato.
> >> >
> >> > With thud and master branch I am getting this issue. Sumo branch was
> working fine.Please help me to figure this out.
> >> >
> >>
> >> such errors sometimes pop up when qemu is failing on the built machine
> >> you might want to dig a bit deeper and find out what cmd particularly
> is failing
> >> and then try to run that manually to check if its specific to build
> host.
> >> >
> >> >
> >> > bitbake core-image-minimal
> >> > Loading cache: 100%
> |###############################################################################################################################################################################|
> Time: 0:00:00
> >> > Loaded 1263 entries from dependency cache.
> >> > NOTE: Resolving any missing task queue dependencies
> >> >
> >> > Build Configuration:
> >> > BB_VERSION           = "1.40.0"
> >> > BUILD_SYS            = "x86_64-linux"
> >> > NATIVELSBSTRING      = "universal"
> >> > TARGET_SYS           = "i586-poky-linux"
> >> > MACHINE              = "qemux86"
> >> > DISTRO               = "poky"
> >> > DISTRO_VERSION       = "2.6"
> >> > TUNE_FEATURES        = "m32 i586"
> >> > TARGET_FPU           = ""
> >> > meta
> >> > meta-poky
> >> > meta-yocto-bsp       = "thud:d0e0a3d7a8218fbbf057a922c86bcdd2cf469ce9"
> >> >
> >> > Initialising tasks: 100%
> |##########################################################################################################################################################################|
> Time: 0:00:01
> >> > Sstate summary: Wanted 2 Found 0 Missed 2 Current 736 (0% match, 99%
> complete)
> >> > NOTE: Executing SetScene Tasks
> >> > NOTE: Executing RunQueue Tasks
> >> > ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept
> hook 'update_font_cache' failed, details in
> /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs
> >> > ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
> >> > ERROR: Logfile of failure stored in:
> /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.18035
> >> > ERROR: Task
> (/mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
> failed with exit code '1'
> >> > NOTE: Tasks Summary: Attempted 2420 tasks of which 2419 didn't need
> to be rerun and 1 failed.
> >> >
> >> > Summary: 1 task failed:
> >> >
>  /mnt/DATA_PARTITION/poky/meta/recipes-core/images/core-image-minimal.bb:
> do_rootfs
> >> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> >> >
> >> > --
> >> > Regards
> >> > Sanjay
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
>


-- 

*RegardsSanjay*

--00000000000028256c057d4b8fe8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small;color:rgb(0,0,0)">I tried to create core-image-minimal from ot=
her laptop, I was able to build it without any problem. On my machine , I t=
ried with ubuntu , debian and CENTOS, I am getting same issue every time.</=
div><div class=3D"gmail_default" style=3D"font-size:small;color:rgb(0,0,0)"=
>Looks like it is more related to my hardware ?=C2=A0 I tried with verbose =
information also, It is not invoking qemu with proper arguments, please che=
ck following log.</div><div class=3D"gmail_default" style=3D"font-size:smal=
l;color:rgb(0,0,0)"><br></div><div class=3D"gmail_default" style=3D"font-si=
ze:small;color:rgb(0,0,0)">NOTE: core-image-minimal-1.0-r0 do_rootfs: Insta=
lling complementary packages ...<br>NOTE: core-image-minimal-1.0-r0 do_root=
fs: Running [&#39;oe-pkgdata-util&#39;, &#39;-p&#39;, &#39;/home/sanju/qemu=
_check/tmp/pkgdata/qemux86&#39;, &#39;glob&#39;, &#39;/tmp/installed-pkgsqo=
pdztld&#39;, &#39;&#39;]<br>NOTE: core-image-minimal-1.0-r0 do_rootfs: Runn=
ing intercept scripts:<br>NOTE: core-image-minimal-1.0-r0 do_rootfs: &gt; E=
xecuting update_font_cache intercept ...<br>NOTE: core-image-minimal-1.0-r0=
 do_rootfs: Exit code 1. Output:<br>+ &#39;[&#39; True =3D False &#39;]&#39=
;<br>+ qemu-i386 -r 3.2.0 -E LD_LIBRARY_PATH=3D/home/sanju/qemu_check/tmp/w=
ork/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/usr/lib:/home/sanju=
/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/li=
b -L /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/=
1.0-r0/rootfs -E /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-im=
age-minimal/1.0-r0/rootfs/usr/libexec/fc-cache --sysroot=3D/home/sanju/qemu=
_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs --syste=
m-only<br>usage: qemu-i386 [options] program [arguments...]<br>Linux CPU em=
ulator (compiled for i386 emulation)<br><br>Options and associated environm=
ent variables:<br><br>Argument=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Env-variable=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Desc=
ription<br>-h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 print this help<br>-help=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>-g port=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 QEMU_GDB=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 wait gdb connection to &#39;port&#39;<br>-L path=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 QEMU_LD_PRE=
FIX=C2=A0=C2=A0=C2=A0 set the elf interpreter prefix to &#39;path&#39;<br>-=
s size=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 QEMU_STACK_SIZE=C2=A0=C2=A0 set the stack size to &#39;size&#39; =
bytes<br>-cpu model=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 QEMU_CPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 selec=
t CPU (-cpu help for list)<br>-E var=3Dvalue=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 QEMU_SET_ENV=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sets targets =
environment variable (see below)<br>-U var=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 QEMU_UNSET_ENV=C2=A0=C2=
=A0=C2=A0 unsets targets environment variable (see below)<br>-0 argv0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 QEMU_ARG=
V0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 forces target process argv[0] =
to be &#39;argv0&#39;<br>-r uname=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 QEMU_UNAME=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 set qemu uname release string to &#39;uname&#39;<br>-B address=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 QEMU_GUEST_BASE=
=C2=A0=C2=A0 set guest_base address to &#39;address&#39;<br>-R size=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 QE=
MU_RESERVED_VA=C2=A0 reserve &#39;size&#39; bytes for guest virtual address=
 space<br>-d item[,...]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 QEMU_LOG=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enable logging of sp=
ecified items (use &#39;-d help&#39; for a list of items)<br>-dfilter range=
[,...] QEMU_DFILTER=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 filter logging based on a=
ddress range<br>-D logfile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 QEMU_LOG_FILENAME write logs to &#39;logfile&#39; (default std=
err)<br>-p pagesize=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Q=
EMU_PAGESIZE=C2=A0=C2=A0=C2=A0=C2=A0 set the host page size to &#39;pagesiz=
e&#39;<br>-singlestep=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 QEMU_SINGLESTEP=C2=A0=C2=A0 run in singlestep mode<br>-strace=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 QEMU_STR=
ACE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 log system calls<br>-seed=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 QEMU_RAND_SEED=C2=A0=C2=A0=C2=A0 Seed for pseudo-random number gener=
ator<br>-trace=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 QEMU_TRACE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 [[enable=3D]&lt;pattern&gt;][,events=3D&lt;file&gt;][,file=3D&lt;file&g=
t;]<br>-version=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 QEMU_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 display version inf=
ormation and exit<br><br>Defaults:<br>QEMU_LD_PREFIX=C2=A0 =3D /home/sanju/=
qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs<br>=
QEMU_STACK_SIZE =3D 8388608 byte<br><br>You can use -E and -U options or th=
e QEMU_SET_ENV and<br>QEMU_UNSET_ENV environment variables to set and unset=
<br>environment variables for the target process.<br>It is possible to prov=
ide several variables by separating them<br>by commas in getsubopt(3) style=
. Additionally it is possible to<br>provide the -E and -U options multiple =
times.<br>The following lines are equivalent:<br>=C2=A0=C2=A0=C2=A0 -E var1=
=3Dval2 -E var2=3Dval2 -U LD_PRELOAD -U LD_DEBUG<br>=C2=A0=C2=A0=C2=A0 -E v=
ar1=3Dval2,var2=3Dval2 -U LD_PRELOAD,LD_DEBUG<br>=C2=A0=C2=A0=C2=A0 QEMU_SE=
T_ENV=3Dvar1=3Dval2,var2=3Dval2 QEMU_UNSET_ENV=3DLD_PRELOAD,LD_DEBUG<br>Not=
e that if you provide several changes to a single variable<br>the last chan=
ge will stay in effect.<br><br>See &lt;<a href=3D"https://qemu.org/contribu=
te/report-a-bug">https://qemu.org/contribute/report-a-bug</a>&gt; for how t=
o report bugs.<br>More information on the QEMU project at &lt;<a href=3D"ht=
tps://qemu.org">https://qemu.org</a>&gt;.<br><br>ERROR: core-image-minimal-=
1.0-r0 do_rootfs: The postinstall intercept hook &#39;update_font_cache&#39=
; failed, details in /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/cor=
e-image-minimal/1.0-r0/temp/log.do_rootfs<br>ERROR: core-image-minimal-1.0-=
r0 do_rootfs: Function failed: do_rootfs<br>ERROR: Logfile of failure store=
d in: /home/sanju/qemu_check/tmp/work/qemux86-poky-linux/core-image-minimal=
/1.0-r0/temp/log.do_rootfs.22110<br>ERROR: Task (/mnt/DATA_PARTITION/poky/m=
eta/recipes-core/images/core-image-minimal.bb:do_rootfs) failed with exit c=
ode &#39;1&#39;<br></div><div class=3D"gmail_default" style=3D"font-size:sm=
all;color:rgb(0,0,0)"><br></div></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">On Tue, Dec 18, 2018 at 10:40 AM Khem Raj &lt;<a href=3D"m=
ailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On Mon, Dec 17, 2018 at 9:06 PM=
 sanjay chopra &lt;<a href=3D"mailto:sanjuchopracool@gmail.com" target=3D"_=
blank">sanjuchopracool@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; It also happens when I build for raspberry pi, core-image-sato works f=
ine though.<br>
&gt;<br>
<br>
thats ok. it just says something is not right about the tools being<br>
used during build<br>
I suspect qemu usermode since thats whats used to execute some of post<br>
install hooks<br>
<br>
&gt; On Tue 18 Dec, 2018, 6:33 AM Khem Raj &lt;<a href=3D"mailto:raj.khem@g=
mail.com" target=3D"_blank">raj.khem@gmail.com</a> wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Dec 17, 2018 at 12:09 PM sanjay chopra<br>
&gt;&gt; &lt;<a href=3D"mailto:sanjuchopracool@gmail.com" target=3D"_blank"=
>sanjuchopracool@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Whenever I try to build core-image-minimal , it fails in root=
fs step.But I am able to build core-image-sato.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; With thud and master branch I am getting this issue. Sumo bra=
nch was working fine.Please help me to figure this out.<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; such errors sometimes pop up when qemu is failing on the built mac=
hine<br>
&gt;&gt; you might want to dig a bit deeper and find out what cmd particula=
rly is failing<br>
&gt;&gt; and then try to run that manually to check if its specific to buil=
d host.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; bitbake core-image-minimal<br>
&gt;&gt; &gt; Loading cache: 100% |########################################=
###########################################################################=
############################################################| Time: 0:00:00=
<br>
&gt;&gt; &gt; Loaded 1263 entries from dependency cache.<br>
&gt;&gt; &gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Build Configuration:<br>
&gt;&gt; &gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
1.40.0&quot;<br>
&gt;&gt; &gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;=
x86_64-linux&quot;<br>
&gt;&gt; &gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;=
<br>
&gt;&gt; &gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
i586-poky-linux&quot;<br>
&gt;&gt; &gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;qemux86&quot;<br>
&gt;&gt; &gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;poky&quot;<br>
&gt;&gt; &gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.6&quot;<=
br>
&gt;&gt; &gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m32 i586&q=
uot;<br>
&gt;&gt; &gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;=
&quot;<br>
&gt;&gt; &gt; meta<br>
&gt;&gt; &gt; meta-poky<br>
&gt;&gt; &gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;thud:d0e0a=
3d7a8218fbbf057a922c86bcdd2cf469ce9&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Initialising tasks: 100% |###################################=
###########################################################################=
############################################################| Time: 0:00:01=
<br>
&gt;&gt; &gt; Sstate summary: Wanted 2 Found 0 Missed 2 Current 736 (0% mat=
ch, 99% complete)<br>
&gt;&gt; &gt; NOTE: Executing SetScene Tasks<br>
&gt;&gt; &gt; NOTE: Executing RunQueue Tasks<br>
&gt;&gt; &gt; ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall i=
ntercept hook &#39;update_font_cache&#39; failed, details in /home/sanju/qe=
mu_check/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_=
rootfs<br>
&gt;&gt; &gt; ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: =
do_rootfs<br>
&gt;&gt; &gt; ERROR: Logfile of failure stored in: /home/sanju/qemu_check/t=
mp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_rootfs.180=
35<br>
&gt;&gt; &gt; ERROR: Task (/mnt/DATA_PARTITION/poky/meta/recipes-core/image=
s/core-image-minimal.bb:do_rootfs) failed with exit code &#39;1&#39;<br>
&gt;&gt; &gt; NOTE: Tasks Summary: Attempted 2420 tasks of which 2419 didn&=
#39;t need to be rerun and 1 failed.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Summary: 1 task failed:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0/mnt/DATA_PARTITION/poky/meta/recipes-core/images=
/core-image-minimal.bb:do_rootfs<br>
&gt;&gt; &gt; Summary: There were 2 ERROR messages shown, returning a non-z=
ero exit code.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Regards<br>
&gt;&gt; &gt; Sanjay<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><span style=3D"background-color:rgb(0=
,0,0)"><i style=3D"color:rgb(51,204,255)"><span style=3D"background-color:r=
gb(255,255,255)"><span style=3D"color:rgb(0,0,0)">Regards<br>Sanjay</span><=
span></span></span></i></span><br></div></div></div>

--00000000000028256c057d4b8fe8--
