Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8554E00303
	for <yocto@yoctoproject.org>; Sun, 13 Nov 2011 21:37:25 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Nov 2011 21:37:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="74923053"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 13 Nov 2011 21:37:25 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sun, 13 Nov 2011 21:37:25 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.80]) with mapi id
	14.01.0355.002; Sun, 13 Nov 2011 21:37:24 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: autif khan <autif.mlist@gmail.com>
Thread-Topic: [yocto] Trying to cross compile Mono - glib link error
Thread-Index: AQHMoBvW5JPBSwUPB0CyAVqH9VykV5WnEXZwgAUIEQD//8Qo0A==
Date: Mon, 14 Nov 2011 05:37:24 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16EB85F5@ORSMSX101.amr.corp.intel.com>
References: <CADzUK1KLXD17HGgmXvuFkfYWwSzA=tj5O+XK-LfyQsSkbKZhNQ@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C16EB4658@ORSMSX101.amr.corp.intel.com>
	<CADzUK1Lxg+H_T+7FpBjgc0_XnNfpM03gwxBSUiDHNi1fhX5XEg@mail.gmail.com>
In-Reply-To: <CADzUK1Lxg+H_T+7FpBjgc0_XnNfpM03gwxBSUiDHNi1fhX5XEg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to cross compile Mono - glib link error
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
X-List-Received-Date: Mon, 14 Nov 2011 05:37:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Autif,

It should be tar.bz2 file instead of tar.gz file.  But I'd suggest to setup=
 your cross dev environment using the adt-installer.  You can follow the in=
struction in the ADT manual.  The way that you setup the curren cross-dev e=
nvironment is kind of hack around issues, which haven't been tested out and=
 prone to issues.

Thanks,
Jessica

-----Original Message-----
From: autif khan [mailto:autif.mlist@gmail.com]
Sent: Sunday, November 13, 2011 5:08 PM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Trying to cross compile Mono - glib link error

I bitbaked core-image-sato-sdk

It did not produce a tar.gz of the file system

I improvised and (-o loop) mounted the
core-image-sato-sdk-atom-pc.ext3 at
/home/autif/data/dev/projects/yocto/sysroot

autif@hp8440w:~/data/dev/projects/yocto/sysroot$ ls
bin   dev  home  lost+found  mnt   sbin  tmp  var
boot  etc  lib   media       proc  sys   usr

I changed the environment file as follows (notice how sysroot is
updated for all variables):

export PATH=3D/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky=
/1.1/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux:$PATH
export PKG_CONFIG_SYSROOT_DIR=3D/home/autif/data/dev/projects/yocto/sysroot
export PKG_CONFIG_PATH=3D/home/autif/data/dev/projects/yocto/sysroot/usr/li=
b/pkgconfig
export CONFIG_SITE=3D/opt/poky/1.1/site-config-i586-poky-linux
export CC=3Di586-poky-linux-gcc
export CXX=3Di586-poky-linux-g++
export GDB=3Di586-poky-linux-gdb
export TARGET_PREFIX=3Di586-poky-linux-
export CONFIGURE_FLAGS=3D"--target=3Di586-poky-linux
--host=3Di586-poky-linux --build=3Dx86_64-linux
--with-libtool-sysroot=3D/home/autif/data/dev/projects/yocto/sysroot"
export CFLAGS=3D" -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot"
export CXXFLAGS=3D" -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot"
export LDFLAGS=3D"  --sysroot=3D/home/autif/data/dev/projects/yocto/sysroot=
"
export CPPFLAGS=3D" -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot"
export OECORE_NATIVE_SYSROOT=3D"/opt/poky/1.1/sysroots/x86_64-pokysdk-linux=
"
export OECORE_TARGET_SYSROOT=3D"/home/autif/data/dev/projects/yocto/sysroot=
"
export OECORE_ACLOCAL_OPTS=3D"-I
/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/share/aclocal"
export OECORE_DISTRO_VERSION=3D"1.1"
export OECORE_SDK_VERSION=3D"1.1"

And I am still getting the same error.

LD      test-glib
libtool: link: warning: library
`/opt/poky/1.1/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.la' was
moved.
libtool: link: cannot find the library `=3D/usr/lib/libglib-2.0.la' or
unhandled argument `=3D/usr/lib/libglib-2.0.la'
make[4]: *** [test-glib] Error 1
make[4]: Leaving directory
`/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib/test'
make[3]: *** [all-recursive] Error 1
make[3]: Leaving directory
`/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib'
make[2]: *** [all] Error 2
make[2]: Leaving directory
`/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/home/autif/data/dev/projects/yocto/mono-2.10.6=
'
make: *** [all] Error 2
Command exited with non-zero status 2
7.05user 1.36system 0:12.62elapsed 66%CPU (0avgtext+0avgdata 60832maxreside=
nt)k
0inputs+37504outputs (0major+1185664minor)pagefaults 0swaps
autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep FLAGS
CFLAGS=3D' -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
CONFIGURE_FLAGS=3D'--target=3Di586-poky-linux --host=3Di586-poky-linux
--build=3Dx86_64-linux
--with-libtool-sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
CPPFLAGS=3D' -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
CXXFLAGS=3D' -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
LDFLAGS=3D'  --sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CXX
CXX=3Di586-poky-linux-g++
CXXFLAGS=3D' -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CC
CC=3Di586-poky-linux-gcc
                        SLAVE NONE ACCEPT' -- "$cur" ));
                COMPREPLY=3D($( compgen -W 'ACCEPT DROP LOG ULOG REJECT \
                    COMPREPLY=3D($( compgen -W 'ACCEPT DROP LOG ULOG REJECT=
 \
                        COMPREPLY=3D($( compgen -W 'ACCEPT DROP LOG ULOG RE=
JECT \
autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ ls
/home/autif/data/dev/projects/yocto/sysroot


Please advise. Did I set the environment correctly?

Thanks

Autif


On Thu, Nov 10, 2011 at 11:24 PM, Zhang, Jessica
<jessica.zhang@intel.com> wrote:
> Hi Autif,
>
> It seems the libgmodule-2.0.la is missing from the 1.1 tarball sysroot bu=
t I've checked it does exist under the sysroot that extracted from the core=
-image-sato-sdk image.  So, you have to do the following steps:
> 1. bitbake core-image-sato-sdk
> 2. source the environment-setup script under /opt/poky/1.1
> 3. Run runqemu-extract-sdk against the built out image file, it should be=
 under your .../build/tmp/deploy/image/core-image-sato-sdk.tar.bz2 and the =
directory you want the sysroot to be extracted to e.g. $HOME/qemux86
> 4. change your sysroot setting to point to the newly created sysroot dire=
ctory.
>
> Or, you can following the ADT manual and using the part that use adt-inst=
aller to setup your cross development environment.
>
> Hope these can get you going.
>
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of autif khan
> Sent: Thursday, November 10, 2011 6:44 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Trying to cross compile Mono - glib link error
>
> I followed the instructions and installed the ADT from the 1.1 tarball
> as outlined in documentation. And tested a few simple GTK apps.
> Everything worked well.
>
> After that I am trying to cross compile mono and I am getting the
> following error:
>
> LD      test-glib
> libtool: link: warning: library
> `/opt/poky/1.1/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.la' was
> moved.
> libtool: link: cannot find the library `=3D/usr/lib/libglib-2.0.la' or
> unhandled argument `=3D/usr/lib/libglib-2.0.la'
> make[4]: *** [test-glib] Error 1
> make[4]: Leaving directory
> `/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib/test'
> make[3]: *** [all-recursive] Error 1
> make[3]: Leaving directory
> `/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib'
> make[2]: *** [all] Error 2
> make[2]: Leaving directory
> `/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib'
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory `/home/autif/data/dev/projects/yocto/mono-2.10=
.6'
> make: *** [all] Error 2
>
> compiler flags seem to look fine
>
> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep LD
> BUILDDIR=3D/home/autif/data/dev/projects/yocto/poky-edison-6.0/build
> LDFLAGS=3D'  --sysroot=3D/opt/poky/1.1/sysroots/i586-poky-linux'
> OLDPWD=3D/home/autif/data/dev/projects/yocto
>
> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CPP
> CPPFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586=
-poky-linux'
>
> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CXX
> CXX=3Di586-poky-linux-g++
> CXXFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586=
-poky-linux'
>
> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep FLAGS
> CFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586-p=
oky-linux'
> CONFIGURE_FLAGS=3D'--target=3Di586-poky-linux --host=3Di586-poky-linux
> --build=3Dx86_64-linux
> --with-libtool-sysroot=3D/opt/poky/1.1/sysroots/i586-poky-linux'
> CPPFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586=
-poky-linux'
> CXXFLAGS=3D' -m32   -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i586=
-poky-linux'
> LDFLAGS=3D'  --sysroot=3D/opt/poky/1.1/sysroots/i586-poky-linux'
>
> Please advise.
>
> Thanks!
>
> Autif
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

