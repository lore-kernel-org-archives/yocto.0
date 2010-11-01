Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB61B4C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 15:48:32 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA1KmUNq025503;
	Mon, 1 Nov 2010 20:48:30 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25319-04; Mon,  1 Nov 2010 20:48:26 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA1KmPSn025497
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 1 Nov 2010 20:48:25 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Hector Oron <hector.oron@gmail.com>
In-Reply-To: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
References: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
Date: Mon, 01 Nov 2010 20:48:19 +0000
Message-ID: <1288644499.28481.67.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Build failures on yocto
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
X-List-Received-Date: Mon, 01 Nov 2010 20:48:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I don't have answers to all of the failures but let me try and respond
to the ones I have some ideas about:

On Mon, 2010-11-01 at 18:23 +0000, Hector Oron wrote:
>   lenny_i386)
> cat <<EOF
> [...]
> | NOTE: Running
> /srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/work/x86_64-linux/gmp-native-4.2.4-r0/gmp-4.2.4/configure
>                 --build=x86_64-linux          --host=x86_64-linux
>    --target=x86_64-linux
> --prefix=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr
>           --exec_prefix=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr
> 
> --bindir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/bin
>          --sbindir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/sbin
> 
> --libexecdir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/libexec
> 
> --datadir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/share
>             --sysconfdir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/etc
>       --sharedstatedir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/com
>              --localstatedir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/var
>         --libdir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/lib
> 
> --includedir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/include
> 
> --oldincludedir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/include
>              --infodir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/share/info
>          --mandir=/srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/staging/x86_64-linux/usr/share/man
>                                        ...
> | checking build system type... x86_64-pc-linux-gnu
> | checking host system type... x86_64-pc-linux-gnu
> | checking for a BSD-compatible install... /usr/bin/install -c
> [...]
> | checking size of unsigned short... 2
> | checking for unsigned... yes
> | checking size of unsigned... 4
> | checking for unsigned long... yes
> | checking size of unsigned long... 4
> | checking for mp_limb_t... yes
> | checking size of mp_limb_t... 4
> | configure: error: Oops, mp_limb_t is 32 bits, but the assembler code
> | in this configuration expects 64 bits.
> | You appear to have set $CFLAGS, perhaps you also need to tell GMP the
> | intended ABI, see "ABI and ISA" in the manual.
> | FATAL: oe_runconf failed
> NOTE: Task failed:
> /srv/build/builds/build/rootfs/yocto/purple-3.2/build/tmp/work/x86_64-linux/gmp-native-4.2.4-r0/temp/log.do_configure.28892
> NOTE: package gmp-native-4.2.4-r0: task do_configure: failed
> ERROR: TaskFailed event exception, aborting
> NOTE: package gmp-native-4.2.4: failed
> ERROR: Build of
> /srv/build/builds/build/rootfs/yocto/purple-3.2/meta/packages/gmp/gmp-native_4.2.4.bb
> do_configure failed
> ERROR: Task 556
> (/srv/build/builds/build/rootfs/yocto/purple-3.2/meta/packages/gmp/gmp-native_4.2.4.bb,
> do_configure) failed
> NOTE: Tasks Summary: Attempted 135 tasks of which 135 didn't need to
> be rerun and 1 failed.
> ERROR: '/srv/build/builds/build/rootfs/yocto/purple-3.2/meta/packages/gmp/gmp-native_4.2.4.bb'
> failed
> NOTE: build 201011011717: completed
> make: *** [/srv/build/builds/menuconfig2-i386/../build/rootfs/yocto/purple-3.2/foo]
> Error 1
> EOF

At a guess this is a 64 bit kernel and a 32 bit userspace? What does
"uname -a" show?

I suspect if you add

BUILD_ARCH = "i686"

to your local.conf, the build might work better? If you can confirm that
we can probably detect this problem and avoid this failure.
>   ;;
>   unstable_i386)
> cat <<EOF
> [...]
> | checking size of unsigned long... 4
> | checking size of mp_limb_t... 4
> | configure: error: Oops, mp_limb_t is 32 bits, but the assembler code
> | in this configuration expects 64 bits.
> | You appear to have set $CFLAGS, perhaps you also need to tell GMP the
> | intended ABI, see "ABI and ISA" in the manual.
> | FATAL: oe_runconf failed
> | ERROR: Task failed: ('function do_configure failed',
> '/srv/build/builds/build/rootfs/yocto/laverne-4.0/build/tmp/work/x86_64-linux/gmp-native-5.0.1-r0/temp/log.do_configure.13641')
> NOTE: package gmp-native-5.0.1-r0: task do_configure: Failed
> ERROR: Task 971
> (virtual:native:/srv/build/builds/build/rootfs/yocto/laverne-4.0/meta/recipes-support/gmp/gmp_5.0.1.bb,
> do_configure) failed with 1
> Waiting for 1 active tasks to finish:
> 1: gettext-native-0.17-r5 do_compile (pid 13646)
> NOTE: package gettext-native-0.17-r5: task do_compile: Succeeded
> ERROR: 'virtual:native:/srv/build/builds/build/rootfs/yocto/laverne-4.0/meta/recipes-support/gmp/gmp_5.0.1.bb'
> failed
> make: *** [/srv/build/builds/menuconfig2-i386/../build/rootfs/yocto/laverne-4.0/foo]
> Error 1
> EOF

Same as the above failure (64 bit kernel and 32 bit userspace)?

>   ;;
>   others|*)
> cat <<EOF
>     - I need to setup "vm.mmap_min_addr = 0" under /etc/sysctl.conf

Right, but it detected that?

>     - sh linked to dash makes build system fail
> (./build/rootfs/yocto/laverne-4.0/poky-init-build-env):
>        (sid_i386)zumbi@enorme:/srv/build/builds/build/rootfs/yocto/laverne-4.0$
> checkbashisms poky-init-build-env
> possible bashism in poky-init-build-env line 24 ($BASH_SOMETHING):
> elif test x"$BASH_SOURCE" = x; then
> possible bashism in poky-init-build-env line 27 ($BASH_SOMETHING):
>    . `dirname $BASH_SOURCE`/scripts/poky-env-internal

Ouch. We don't support building with /bin/sh as dash (way too many
broken scripts our there still) and the system would tell you as such if
it detected that. Looks like bashisms have made it into the setup script
though which we need to fix.

Cheers,

Richard



