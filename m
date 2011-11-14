Return-Path: <autif.mlist@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5862CE00303
	for <yocto@yoctoproject.org>; Sun, 13 Nov 2011 18:22:03 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yenq10 with SMTP id q10so3887014yen.35
	for <yocto@yoctoproject.org>; Sun, 13 Nov 2011 18:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=TBHdeb/0TobAzLq2es75qSdpmaOy+CICda7u2oRsF04=;
	b=PTa8n8CkY2aHKVD5kgH3vx5L23g+7TJlTRJj1aUug91iFgHKHcoh5Vx+J95r/JPyuq
	3mfEkeuuMvh9N1VbtEGGLcJ+YDcu6GTYiVP/FTeXtd2+hUCnPo1vC3JHE8+URD848/5u
	5wtVxUPLupra6eEuEE12LinI7bHf+tTCP00I4=
MIME-Version: 1.0
Received: by 10.236.192.200 with SMTP id i48mr11182370yhn.125.1321237321776;
	Sun, 13 Nov 2011 18:22:01 -0800 (PST)
Received: by 10.236.208.194 with HTTP; Sun, 13 Nov 2011 18:22:01 -0800 (PST)
In-Reply-To: <CADzUK1Lxg+H_T+7FpBjgc0_XnNfpM03gwxBSUiDHNi1fhX5XEg@mail.gmail.com>
References: <CADzUK1KLXD17HGgmXvuFkfYWwSzA=tj5O+XK-LfyQsSkbKZhNQ@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C16EB4658@ORSMSX101.amr.corp.intel.com>
	<CADzUK1Lxg+H_T+7FpBjgc0_XnNfpM03gwxBSUiDHNi1fhX5XEg@mail.gmail.com>
Date: Sun, 13 Nov 2011 21:22:01 -0500
Message-ID: <CADzUK1KNX8Dpmdosz13B8=7gwNc1VXHBpdJqc0uUQmNqmJR-Ag@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
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
X-List-Received-Date: Mon, 14 Nov 2011 02:22:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Here are some more environment variables (they all look as expected, I
am not sure if they are right):

autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep i586
CC=3Di586-poky-linux-gcc
CFLAGS=3D' -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
CONFIGURE_FLAGS=3D'--target=3Di586-poky-linux --host=3Di586-poky-linux
--build=3Dx86_64-linux
--with-libtool-sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
CONFIG_SITE=3D/opt/poky/1.1/site-config-i586-poky-linux
CPPFLAGS=3D' -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
CXX=3Di586-poky-linux-g++
CXXFLAGS=3D' -m32   -march=3Di586
--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
GDB=3Di586-poky-linux-gdb
PATH=3D/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky/1.1/sy=
sroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux:/opt/poky/1.1/sysroots/=
x86_64-pokysdk-linux/usr/bin:/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/us=
r/bin/i586-poky-linux:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sb=
in:/bin:/usr/games
TARGET_PREFIX=3Di586-poky-linux-
autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$


On Sun, Nov 13, 2011 at 8:07 PM, autif khan <autif.mlist@gmail.com> wrote:
> I bitbaked core-image-sato-sdk
>
> It did not produce a tar.gz of the file system
>
> I improvised and (-o loop) mounted the
> core-image-sato-sdk-atom-pc.ext3 at
> /home/autif/data/dev/projects/yocto/sysroot
>
> autif@hp8440w:~/data/dev/projects/yocto/sysroot$ ls
> bin =A0 dev =A0home =A0lost+found =A0mnt =A0 sbin =A0tmp =A0var
> boot =A0etc =A0lib =A0 media =A0 =A0 =A0 proc =A0sys =A0 usr
>
> I changed the environment file as follows (notice how sysroot is
> updated for all variables):
>
> export PATH=3D/opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/po=
ky/1.1/sysroots/x86_64-pokysdk-linux/usr/bin/i586-poky-linux:$PATH
> export PKG_CONFIG_SYSROOT_DIR=3D/home/autif/data/dev/projects/yocto/sysro=
ot
> export PKG_CONFIG_PATH=3D/home/autif/data/dev/projects/yocto/sysroot/usr/=
lib/pkgconfig
> export CONFIG_SITE=3D/opt/poky/1.1/site-config-i586-poky-linux
> export CC=3Di586-poky-linux-gcc
> export CXX=3Di586-poky-linux-g++
> export GDB=3Di586-poky-linux-gdb
> export TARGET_PREFIX=3Di586-poky-linux-
> export CONFIGURE_FLAGS=3D"--target=3Di586-poky-linux
> --host=3Di586-poky-linux --build=3Dx86_64-linux
> --with-libtool-sysroot=3D/home/autif/data/dev/projects/yocto/sysroot"
> export CFLAGS=3D" -m32 =A0 -march=3Di586
> --sysroot=3D/home/autif/data/dev/projects/yocto/sysroot"
> export CXXFLAGS=3D" -m32 =A0 -march=3Di586
> --sysroot=3D/home/autif/data/dev/projects/yocto/sysroot"
> export LDFLAGS=3D" =A0--sysroot=3D/home/autif/data/dev/projects/yocto/sys=
root"
> export CPPFLAGS=3D" -m32 =A0 -march=3Di586
> --sysroot=3D/home/autif/data/dev/projects/yocto/sysroot"
> export OECORE_NATIVE_SYSROOT=3D"/opt/poky/1.1/sysroots/x86_64-pokysdk-lin=
ux"
> export OECORE_TARGET_SYSROOT=3D"/home/autif/data/dev/projects/yocto/sysro=
ot"
> export OECORE_ACLOCAL_OPTS=3D"-I
> /opt/poky/1.1/sysroots/x86_64-pokysdk-linux/usr/share/aclocal"
> export OECORE_DISTRO_VERSION=3D"1.1"
> export OECORE_SDK_VERSION=3D"1.1"
>
> And I am still getting the same error.
>
> LD =A0 =A0 =A0test-glib
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
> Command exited with non-zero status 2
> 7.05user 1.36system 0:12.62elapsed 66%CPU (0avgtext+0avgdata 60832maxresi=
dent)k
> 0inputs+37504outputs (0major+1185664minor)pagefaults 0swaps
> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep FLAGS
> CFLAGS=3D' -m32 =A0 -march=3Di586
> --sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
> CONFIGURE_FLAGS=3D'--target=3Di586-poky-linux --host=3Di586-poky-linux
> --build=3Dx86_64-linux
> --with-libtool-sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
> CPPFLAGS=3D' -m32 =A0 -march=3Di586
> --sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
> CXXFLAGS=3D' -m32 =A0 -march=3Di586
> --sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
> LDFLAGS=3D' =A0--sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CXX
> CXX=3Di586-poky-linux-g++
> CXXFLAGS=3D' -m32 =A0 -march=3Di586
> --sysroot=3D/home/autif/data/dev/projects/yocto/sysroot'
> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CC
> CC=3Di586-poky-linux-gcc
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0SLAVE NONE ACCEPT' -- "$cu=
r" ));
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0COMPREPLY=3D($( compgen -W 'ACCEPT DROP LO=
G ULOG REJECT \
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0COMPREPLY=3D($( compgen -W 'ACCEPT=
 DROP LOG ULOG REJECT \
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0COMPREPLY=3D($( compgen -W=
 'ACCEPT DROP LOG ULOG REJECT \
> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ ls
> /home/autif/data/dev/projects/yocto/sysroot
>
>
> Please advise. Did I set the environment correctly?
>
> Thanks
>
> Autif
>
>
> On Thu, Nov 10, 2011 at 11:24 PM, Zhang, Jessica
> <jessica.zhang@intel.com> wrote:
>> Hi Autif,
>>
>> It seems the libgmodule-2.0.la is missing from the 1.1 tarball sysroot b=
ut I've checked it does exist under the sysroot that extracted from the cor=
e-image-sato-sdk image. =A0So, you have to do the following steps:
>> 1. bitbake core-image-sato-sdk
>> 2. source the environment-setup script under /opt/poky/1.1
>> 3. Run runqemu-extract-sdk against the built out image file, it should b=
e under your .../build/tmp/deploy/image/core-image-sato-sdk.tar.bz2 and the=
 directory you want the sysroot to be extracted to e.g. $HOME/qemux86
>> 4. change your sysroot setting to point to the newly created sysroot dir=
ectory.
>>
>> Or, you can following the ADT manual and using the part that use adt-ins=
taller to setup your cross development environment.
>>
>> Hope these can get you going.
>>
>> Jessica
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org] On Behalf Of autif khan
>> Sent: Thursday, November 10, 2011 6:44 PM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Trying to cross compile Mono - glib link error
>>
>> I followed the instructions and installed the ADT from the 1.1 tarball
>> as outlined in documentation. And tested a few simple GTK apps.
>> Everything worked well.
>>
>> After that I am trying to cross compile mono and I am getting the
>> following error:
>>
>> LD =A0 =A0 =A0test-glib
>> libtool: link: warning: library
>> `/opt/poky/1.1/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.la' was
>> moved.
>> libtool: link: cannot find the library `=3D/usr/lib/libglib-2.0.la' or
>> unhandled argument `=3D/usr/lib/libglib-2.0.la'
>> make[4]: *** [test-glib] Error 1
>> make[4]: Leaving directory
>> `/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib/test'
>> make[3]: *** [all-recursive] Error 1
>> make[3]: Leaving directory
>> `/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib'
>> make[2]: *** [all] Error 2
>> make[2]: Leaving directory
>> `/home/autif/data/dev/projects/yocto/mono-2.10.6/eglib'
>> make[1]: *** [all-recursive] Error 1
>> make[1]: Leaving directory `/home/autif/data/dev/projects/yocto/mono-2.1=
0.6'
>> make: *** [all] Error 2
>>
>> compiler flags seem to look fine
>>
>> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep LD
>> BUILDDIR=3D/home/autif/data/dev/projects/yocto/poky-edison-6.0/build
>> LDFLAGS=3D' =A0--sysroot=3D/opt/poky/1.1/sysroots/i586-poky-linux'
>> OLDPWD=3D/home/autif/data/dev/projects/yocto
>>
>> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CPP
>> CPPFLAGS=3D' -m32 =A0 -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i=
586-poky-linux'
>>
>> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep CXX
>> CXX=3Di586-poky-linux-g++
>> CXXFLAGS=3D' -m32 =A0 -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i=
586-poky-linux'
>>
>> autif@hp8440w:~/data/dev/projects/yocto/mono-2.10.6$ set | grep FLAGS
>> CFLAGS=3D' -m32 =A0 -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i58=
6-poky-linux'
>> CONFIGURE_FLAGS=3D'--target=3Di586-poky-linux --host=3Di586-poky-linux
>> --build=3Dx86_64-linux
>> --with-libtool-sysroot=3D/opt/poky/1.1/sysroots/i586-poky-linux'
>> CPPFLAGS=3D' -m32 =A0 -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i=
586-poky-linux'
>> CXXFLAGS=3D' -m32 =A0 -march=3Di586 --sysroot=3D/opt/poky/1.1/sysroots/i=
586-poky-linux'
>> LDFLAGS=3D' =A0--sysroot=3D/opt/poky/1.1/sysroots/i586-poky-linux'
>>
>> Please advise.
>>
>> Thanks!
>>
>> Autif
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

