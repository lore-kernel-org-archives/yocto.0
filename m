Return-Path: <hector.oron@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4343E4C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 13:23:31 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk21 with SMTP id 21so1461999gxk.35
	for <yocto@yoctoproject.org>; Mon, 01 Nov 2010 11:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=YnrJewLRuip7lSFmn6CFa+6RMvjOgsaluEO3dsIaRxg=;
	b=aJoyCB/y0Ft4oT634tZPSsYeAltKLG8ZCO8s0UbKiXn925buXfjl2Wpkk6/vkNRPLI
	vYu+wkX4/QD1thZbiguZnTLde/HAeCH+7iOcCkzpNhq7ZqcC2e4EqHvbfiG9GxccIKA9
	SA4/7dLzmU70jg13++y7oE2+91/7p2PhIATKc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=fefBT87gvZK7X1ay0QhIsZPg66ouhtotyUZCk53+wQFFpIivNfxdWIripp+BE6BaTx
	ZbX0iaYbZCraGT9amTT+aEjE7Q+HaBQrx4fqvH2y38cc2SPrtUujB+mBOQ2QTWR8wyro
	hAYid1ZzuasK0RE+c7Zt/UkXr5CCdvQIHdAsY=
MIME-Version: 1.0
Received: by 10.229.235.4 with SMTP id ke4mr1949549qcb.201.1288635808391; Mon,
	01 Nov 2010 11:23:28 -0700 (PDT)
Received: by 10.229.105.142 with HTTP; Mon, 1 Nov 2010 11:23:28 -0700 (PDT)
Date: Mon, 1 Nov 2010 18:23:28 +0000
Message-ID: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
From: Hector Oron <hector.oron@gmail.com>
To: yocto@yoctoproject.org
Subject: Build failures on yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 18:23:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

#! /bin/sh

# Hello,

  case $Debian_build_system in

  lenny_amd64)
cat <<EOF
  [...]
| /srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/build/tm=
p/work/x86_64-linux/qemu-native-0.10.2+git9eab386edbf8cf002a731f8204a156f24=
3a47a57-r5/git/target-arm/dummygl.c:5:22:
warning: X11/Xlib.h: No such file or directory
| /srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/build/tm=
p/work/x86_64-linux/qemu-native-0.10.2+git9eab386edbf8cf002a731f8204a156f24=
3a47a57-r5/git/target-arm/dummygl.c:6:23:
warning: X11/Xutil.h: No such file or directory
| /srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/build/tm=
p/work/x86_64-linux/qemu-native-0.10.2+git9eab386edbf8cf002a731f8204a156f24=
3a47a57-r5/git/target-arm/dummygl.c:8:
error: expected ')' before '*' token
| /srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/build/tm=
p/work/x86_64-linux/qemu-native-0.10.2+git9eab386edbf8cf002a731f8204a156f24=
3a47a57-r5/git/target-arm/dummygl.c:13:
warning: no previous prototype for 'opengl_process_enable'
| /srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/build/tm=
p/work/x86_64-linux/qemu-native-0.10.2+git9eab386edbf8cf002a731f8204a156f24=
3a47a57-r5/git/target-arm/dummygl.c:19:
warning: no previous prototype for 'mem_opengl'
| make[1]: *** [dummygl.o] Error 1
| make[1]: Leaving directory
`/srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/build/tmp=
/work/x86_64-linux/qemu-native-0.10.2+git9eab386edbf8cf002a731f8204a156f243=
a47a57-r5/git/arm-linux-user'
| make: *** [subdir-arm-linux-user] Error 2
| FATAL: oe_runmake failed
NOTE: Task failed:
/srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/build/tmp/=
work/x86_64-linux/qemu-native-0.10.2+git9eab386edbf8cf002a731f8204a156f243a=
47a57-r5/temp/log.do_compile.28106
NOTE: package qemu-native-0.10.2+git9eab386edbf8cf002a731f8204a156f243a47a5=
7-r5:
task do_compile: failed
ERROR: TaskFailed event exception, aborting
NOTE: package qemu-native-0.10.2+git9eab386edbf8cf002a731f8204a156f243a47a5=
7:
failed
ERROR: Build of
/srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/meta/packa=
ges/qemu/qemu-native_git.bb
do_compile failed
ERROR: Task 597
(/srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/meta/pack=
ages/qemu/qemu-native_git.bb,
do_compile) failed
NOTE: Tasks Summary: Attempted 229 tasks of which 0 didn't need to be
rerun and 1 failed.
ERROR: '/srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2/me=
ta/packages/qemu/qemu-native_git.bb'
failed
NOTE: build 201011011610: completed
make: *** [/srv/build/builds/menuconfig2-test/build/rootfs/yocto/purple-3.2=
/foo]
Error 1
EOF
  ;;
  lenny_i386)
cat <<EOF
[...]
| NOTE: Running
/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/work/x86_64-linux=
/gmp-native-4.2.4-r0/gmp-4.2.4/configure
                --build=3Dx86_64-linux          --host=3Dx86_64-linux
   --target=3Dx86_64-linux
--prefix=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/stagin=
g/x86_64-linux/usr
          --exec_prefix=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/b=
uild/tmp/staging/x86_64-linux/usr

--bindir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/stagin=
g/x86_64-linux/usr/bin
         --sbindir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/=
tmp/staging/x86_64-linux/usr/sbin

--libexecdir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/st=
aging/x86_64-linux/usr/libexec

--datadir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/stagi=
ng/x86_64-linux/usr/share
            --sysconfdir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/=
build/tmp/staging/x86_64-linux/etc
      --sharedstatedir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/bu=
ild/tmp/staging/x86_64-linux/com
             --localstatedir=3D/srv/build/builds/build/rootfs/yocto/purple-=
3.2/build/tmp/staging/x86_64-linux/var
        --libdir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tm=
p/staging/x86_64-linux/usr/lib

--includedir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/st=
aging/x86_64-linux/usr/include

--oldincludedir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp=
/staging/x86_64-linux/usr/include
             --infodir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/bu=
ild/tmp/staging/x86_64-linux/usr/share/info
         --mandir=3D/srv/build/builds/build/rootfs/yocto/purple-3.2/build/t=
mp/staging/x86_64-linux/usr/share/man
                                       ...
| checking build system type... x86_64-pc-linux-gnu
| checking host system type... x86_64-pc-linux-gnu
| checking for a BSD-compatible install... /usr/bin/install -c
[...]
| checking size of unsigned short... 2
| checking for unsigned... yes
| checking size of unsigned... 4
| checking for unsigned long... yes
| checking size of unsigned long... 4
| checking for mp_limb_t... yes
| checking size of mp_limb_t... 4
| configure: error: Oops, mp_limb_t is 32 bits, but the assembler code
| in this configuration expects 64 bits.
| You appear to have set $CFLAGS, perhaps you also need to tell GMP the
| intended ABI, see "ABI and ISA" in the manual.
| FATAL: oe_runconf failed
NOTE: Task failed:
/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/work/x86_64-linux=
/gmp-native-4.2.4-r0/temp/log.do_configure.28892
NOTE: package gmp-native-4.2.4-r0: task do_configure: failed
ERROR: TaskFailed event exception, aborting
NOTE: package gmp-native-4.2.4: failed
ERROR: Build of
/srv/build/builds/build/rootfs/yocto/purple-3.2/meta/packages/gmp/gmp-nativ=
e_4.2.4.bb
do_configure failed
ERROR: Task 556
(/srv/build/builds/build/rootfs/yocto/purple-3.2/meta/packages/gmp/gmp-nati=
ve_4.2.4.bb,
do_configure) failed
NOTE: Tasks Summary: Attempted 135 tasks of which 135 didn't need to
be rerun and 1 failed.
ERROR: '/srv/build/builds/build/rootfs/yocto/purple-3.2/meta/packages/gmp/g=
mp-native_4.2.4.bb'
failed
NOTE: build 201011011717: completed
make: *** [/srv/build/builds/menuconfig2-i386/../build/rootfs/yocto/purple-=
3.2/foo]
Error 1
EOF
  ;;
  unstable_amd64)
cat <<EOF
  Still building......
EOF
  ;;
  unstable_i386)
cat <<EOF
[...]
| checking size of unsigned long... 4
| checking size of mp_limb_t... 4
| configure: error: Oops, mp_limb_t is 32 bits, but the assembler code
| in this configuration expects 64 bits.
| You appear to have set $CFLAGS, perhaps you also need to tell GMP the
| intended ABI, see "ABI and ISA" in the manual.
| FATAL: oe_runconf failed
| ERROR: Task failed: ('function do_configure failed',
'/srv/build/builds/build/rootfs/yocto/laverne-4.0/build/tmp/work/x86_64-lin=
ux/gmp-native-5.0.1-r0/temp/log.do_configure.13641')
NOTE: package gmp-native-5.0.1-r0: task do_configure: Failed
ERROR: Task 971
(virtual:native:/srv/build/builds/build/rootfs/yocto/laverne-4.0/meta/recip=
es-support/gmp/gmp_5.0.1.bb,
do_configure) failed with 1
Waiting for 1 active tasks to finish:
1: gettext-native-0.17-r5 do_compile (pid 13646)
NOTE: package gettext-native-0.17-r5: task do_compile: Succeeded
ERROR: 'virtual:native:/srv/build/builds/build/rootfs/yocto/laverne-4.0/met=
a/recipes-support/gmp/gmp_5.0.1.bb'
failed
make: *** [/srv/build/builds/menuconfig2-i386/../build/rootfs/yocto/laverne=
-4.0/foo]
Error 1
EOF
  ;;
  others|*)
cat <<EOF
    - I need to setup "vm.mmap_min_addr =3D 0" under /etc/sysctl.conf
    - sh linked to dash makes build system fail
(./build/rootfs/yocto/laverne-4.0/poky-init-build-env):
       (sid_i386)zumbi@enorme:/srv/build/builds/build/rootfs/yocto/laverne-=
4.0$
checkbashisms poky-init-build-env
possible bashism in poky-init-build-env line 24 ($BASH_SOMETHING):
elif test x"$BASH_SOURCE" =3D x; then
possible bashism in poky-init-build-env line 27 ($BASH_SOMETHING):
   . `dirname $BASH_SOURCE`/scripts/poky-env-internal
    - On lenny python 2.5 required, so Purple 3.2 was built (Laverne
was not tried)
    - On unstable Laverne 4.0 was attempted
EOF
    ;;
  esac

echo "Have a nice day!"

-- System Information:
Debian Release: squeeze/sid
  APT prefers unstable
  APT policy: (700, 'unstable'), (600, 'testing'), (500, 'stable'),
(1, 'experimental')
Architecture: amd64 (x86_64)

Kernel: Linux 2.6.32-5-amd64 (SMP w/8 CPU cores)
Locale: LANG=3Den_GB.UTF-8, LC_CTYPE=3Den_GB.UTF-8 (charmap=3DUTF-8)
Shell: /bin/sh linked to /bin/bash
# ^^^^^-----  I had to change it so I could build on unstable ;-)

--=20
=C2=A0H=C3=A9ctor Or=C3=B3n

"Our Sun unleashes tremendous flares expelling hot gas into the Solar
System, which one day will disconnect us."

-- Day DVB-T stop working nicely
Video flare: http://antwrp.gsfc.nasa.gov/apod/ap100510.html

